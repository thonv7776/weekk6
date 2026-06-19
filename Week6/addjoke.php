<?php
if(isset($_POST['joketext'])){
    try{
        include 'includes/DatabaseConnection.php';

        $image = $_FILES['image']['name'];
        move_uploaded_file($_FILES['image']['tmp_name'], 'images/' . $image);

        $sql = 'INSERT INTO joke SET 
        joketext = :joketext,
        jokedate = CURDATE(),
        authorid = 1,





        
        image = :image';
        $stmt = $pdo->prepare($sql);
        $stmt->bindValue(':joketext', $_POST['joketext']);
        $stmt->bindValue(':image', $image);
        $stmt->execute();
        header('location: jokes.php');
    }catch (PDOException $e){
        $title = 'An error has occurred';
        $output = 'Database error: ' . $e->getMessage();
    }
}else{
    $title = 'Add a new joke';
    ob_start();
    include 'templates/addjoke.html.php';
    $output = ob_get_clean();
}
include 'templates/layout.html.php';
?>