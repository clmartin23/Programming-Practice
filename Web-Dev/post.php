<?php class Post{

    private $conn;
    private $table = 'tv_shows';

//post properties
    public $title;
    public $year;
    public $age;
    public $imdb;
    public $rotten;
    public $netflix;
    public $hulu;
    public $type;

    //constructor with db

    public function __construct($db){
        $this->conn = $db;
    }

//Get posts
public function read(){
    //query
    $query = 'SELECT * FROM $table';

    //prepare statement

    $stmt = $this->conn->prepare($query);

    //execute query
    $stmt->execute();

    return $stmt;

}
}
