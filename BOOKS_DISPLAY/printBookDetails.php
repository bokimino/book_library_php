<?php
require_once __DIR__ . '/../connection.php';
session_start();
if (isset($_SESSION['user_id'])) {

    $loggedInUserId=$_SESSION['user_id']; 
    $userRole = $_SESSION['user_role']; 
} 
$bookId = $_GET['id'];
$refresh = isset($_GET['refresh']) ? $_GET['refresh'] : null;
$bookDetails = getBookDetailsWithComments($pdo, $bookId, $refresh);

function getBookDetailsWithComments($pdo, $bookId, $refresh = null)
{
    $sql = "SELECT 
                b.id AS book_id,
                b.title AS book_title,
                b.year_of_publication,
                b.number_of_pages,
                b.image_url,
                a.first_name AS author_first_name,
                a.last_name AS author_last_name,
                c.title AS category_title
            FROM 
                book b
            JOIN 
                author a ON b.author_id = a.id
            JOIN 
                category c ON b.category_id = c.id
            WHERE 
                b.id = ? 
                AND b.deleted_at IS NULL
                AND a.deleted_at IS NULL
                AND c.deleted_at IS NULL";

    $query = $pdo->prepare($sql);
    $query->execute([$bookId]);
    $bookDetails = $query->fetch(PDO::FETCH_ASSOC);

    if (!$bookDetails) {
        return null;
    }

    $commentSql = "SELECT 
                        id,
                        user_id,
                        comment_text,
                        created_at,
                        is_approved,
                        deleted_at  
                    FROM                                   
                        comment
                    WHERE 
                        book_id = ? 
                        AND deleted_at IS NULL
                    ORDER BY 
                        created_at DESC";

    if ($refresh !== null) {
        $commentSql .= ' LIMIT ' . (int)$refresh;
    }

    $commentQuery = $pdo->prepare($commentSql);
    $commentQuery->execute([$bookId]);
    $comments = $commentQuery->fetchAll(PDO::FETCH_ASSOC);

    if (isset($_SESSION['user_id'])) {
        $userId = $_SESSION['user_id'];

        $unapprovedUserComments = array_filter($comments, function ($comment) use ($userId) {
            return $comment['user_id'] === $userId && $comment['is_approved'] == 0;
        });

        $comments = array_merge($unapprovedUserComments, array_filter($comments, function ($comment) {
            return $comment['is_approved'] == 1;
        }));
    } else {
        $comments = array_filter($comments, function ($comment) {
            return $comment['is_approved'] == 1;
        });
    }

    $bookDetails['comments'] = $comments;

    return $bookDetails;
}

function printBookDetails($bookDetails, $loggedInUserId, $userRole)


{
    echo '<div class="card text-center style="width: 300">';
    echo '<div class="w-25 m-auto">';
    echo '<img class="card-img-top pt-3" src="' . $bookDetails['image_url'] . '" alt="Card image cap">';
    echo '</div>';
    echo '<div class="card-body">';
    echo '<h5 class="card-title font-italic">' . $bookDetails['book_title'] . '</h5>';
    echo '<p class="card-text text-capitalize">' . $bookDetails['author_first_name'] . ' ' . $bookDetails['author_last_name'] . '</p>';
    echo '</div>';
    echo '<ul class="list-group list-group-flush text-white">';
    echo '<li class="list-group-item bg-warning">Category: ' . $bookDetails['category_title'] . '</li>';
    echo '<li class="list-group-item bg-warning">Year of Publication: ' . $bookDetails['year_of_publication'] . '</li>';
    echo '<li class="list-group-item bg-warning">Number of Pages: ' . $bookDetails['number_of_pages'] . '</li>';
    echo '</ul>';
    echo '<div class="card-body bg-success text-white">';

    
    echo '<h6>Comments:</h6>';
    echo '<ul class="px-0">';
    echo '<ul class="list-group mt-3">';
            foreach ($bookDetails['comments'] as $comment) {
                echo '<li class="list-group-item  bg-success">' . $comment['comment_text'] . ' - ' .  $comment['created_at'];
                echo '</li>';
            }
            echo '</ul>';
    leaveComment($bookDetails, $loggedInUserId, $userRole); 
}function printingBook($pdo, $loggedInUserId, $userRole) {
    if (isset($_GET['id'])) {
        $bookId = $_GET['id'];

        $bookDetails = getBookDetailsWithComments($pdo, $bookId);

        if ($bookDetails) {
            printBookDetails($bookDetails, $loggedInUserId, $userRole);
        } else {
            echo 'Book not found.';
        }
    } else {
        echo 'No book selected.';
    }
}
function leaveComment($bookDetails, $loggedInUserId, $userRole) {
    if (isset($_SESSION['user_id'])) {
        $userId = $_SESSION['user_id'];
        $userComment = null;
        
        if ($userRole == 2) {
          $userComment = null;
            

        foreach ($bookDetails['comments'] as $comment) {
            if ($comment['deleted_at'] === null) {
                

                echo '</li>';
                
                if ($loggedInUserId && $loggedInUserId == $comment['user_id']) {
                    $userComment = $comment;
                    
                }
            }
        }
    
        if ($userComment === null || $userComment['deleted_at'] !== null) {
            echo '<form action="../COMMENT/process_comment.php" method="post">';
            echo '<label for="comment_text">Leave a comment:</label>';
            echo '<textarea class="form-control m-2" name="comment_text" id="comment_text" rows="4" cols="50"></textarea>';
            echo '<input type="hidden" name="book_id" value="' . $bookDetails['book_id'] . '">';
            echo '<button class="btn btn-warning" type="submit">Submit Comment</button>';
            echo '</form>';
        } elseif ($userComment['deleted_at'] === null) {
            echo '<p>Your comment:</p>';
            echo '<p>' . $userComment['comment_text'] . ' - ' . $userComment['created_at'] . '</p>';
            echo '<p><a class="btn btn-danger" href="../COMMENT/delete_comment.php?comment_id=' . $userComment['id'] . '&book_id=' . $bookDetails['book_id'] . '">Delete Comment</a></p>';
        }
    }
}
}