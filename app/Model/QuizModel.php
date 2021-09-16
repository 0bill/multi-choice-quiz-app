<?php


class QuizModel extends Model
{

    /**
     * QuizModel constructor.
     */
    public function __construct()
    {
        parent::__construct();
    }

    public function getRandomQuestion()
    {
        $sql = "SELECT questions.id AS id, questions.text as text, progress.date as lastpass FROM `questions` 
left JOIN progress ON progress.questionID = questions.id
WHERE DATE(progress.date) < DATE_SUB(CURDATE(), INTERVAL 2 DAY ) OR progress.date IS NULL
ORDER BY RAND() LIMIT 1";
        return $this->db->run($sql);
    }

    public function getAnswersForQuestion($id)
    {
        $sql = "Select * from answers where questionid = " . $id . " ORDER BY RAND()";
        return $this->db->run($sql);
    }

    public function getQuestionById($id)
    {
        $sql = "select * from questions where id =" . $id;
        return $this->db->run($sql);
    }

    public function saveProgress($id)
    {
        $sql = "select * from progress where questionID =" . $id;
        $result = $this->db->run($sql);
        if ($result == null) {
            $sql = "INSERT INTO progress (questionID,date,level) VALUES (" . $id . ", now() , 1)";
            $this->db->run($sql);
        } else {
            $sql = "UPDATE progress SET date = now(), level = level + 1 where questionID = " . $id;
            $this->db->run($sql);
        }
    }

    public function DeleteQuestion($id)
    {
        $sql = "delete from questions where id = ".$id;
        $this->db->run($sql);
        $sql = "delete from answers where questionid = ".$id;
        $this->db->run($sql);
    }
}