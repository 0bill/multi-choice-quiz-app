<?php


class SaveQuestions extends Model
{

    /**
     * SaveQuestions constructor.
     */
    public function __construct()
    {
        parent::__construct();
    }


    public function saveQesetion($question){
        $sql = "INSERT INTO `questions` (`text`) VALUES ( \"".$question."\" );";
        $e = $this->db->prepare($sql);
        $e->execute();
        return $this->db->lastInsertId();

    }

    public function saveAnswer($answer){
        $sql = "INSERT INTO `answers` (`text`, `correct`, `questionid`) VALUES ( ?,?,?)";
        $st = $this->db->prepare($sql);
        $st->execute($answer);
    }

    public function findDuplicate($value)
    {
        $sql = "select * from questions where text = '" . $value ."'";
        return $this->db->run($sql);

    }
}