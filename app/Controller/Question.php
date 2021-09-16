<?php


class Question extends Controller
{
    private $amount = 4;
    private $data = null;
    private $return = false;
    private $duplicate = false;
    private $duplicateID = null;
    /**
     * Question constructor.
     */
    public function __construct()
    {
        $this->data["amount"] = $this->amount;
        parent::__construct();
    }

    public function add(){

        //var_dump($GLOBALS);

       // var_dump($_POST);


        if(isset($_POST)){
        }

        foreach($_POST as $key => $value) {

            if($key == "amount" && $value != $this->amount){
                $this->data["amount"] = $value;
                $this->_view->render("question/add", $this->data);
                $this->return = true;
            }

            if($key == "question" && $value != ""){

                $sq = new SaveQuestions();
                $duplic = $sq->findDuplicate($value);
                if($duplic != null){
                    var_dump($duplic);
                    $this->duplicate = true;
                    $dup = $duplic;
                    $this->duplicateID = $dup[0]["id"];
                }
                $id = $sq->saveQesetion($value);

                $answer = array();
                if(isset($_POST["answer"])){

                    foreach ($_POST["answer"] as $item){
                        $text = null;
                        $correctans = false;
                        if(isset($item["text"])){
                            if($item["text"]!=""){
                                $text = $item["text"];
                                if(isset($item["correct"])){
                                    if($item["correct"]=="on") {
                                        $correctans = true;
                                    }
                                }
                            }
                        }
                        if($text!= null){
                            $dumy = array($text,$correctans,$id);
                            $answer[sizeof($answer)]=$dumy;

                        }


                    }
                }



                foreach ($answer as $a){
                     $sq->saveAnswer($a);
                }

                echo "save!";
                if($this->duplicate){
                    echo "dup";
                    header('Location: /Question/duplicate/'.$this->duplicateID.'/'.$id);
                    return;
                }

            }


        }

        $question = "";

        if($this->return){
            return;
        }

        $this->_view->render("question/add", $this->data);


    }

    public function duplicate($id, $new){

        $sq = new QuizModel();
        $question = $sq->getQuestionById($id);
        echo "Found duplicate: <br>";
        echo $question[0]["text"] . "<br>";
        $aswers = $sq->getAnswersForQuestion($id);

        foreach ($aswers as $item){
            echo $item["text"] . "<br>";
        }

        echo "<a href=\"/Question/delete/".$new."\"> Delete new</a><br>";
        echo "<a href=\"/Question/delete/".$id."\"> Delete duplicate</a><br>";
        echo "<a href=\"/Question/add/\"> Back </a><br>";


    }

    public function delete($id){
        $sq = new QuizModel();
        $question = $sq->DeleteQuestion($id);
        echo "Deleted! <br>";
        echo "<a href=\"/Question/add/\"> Back </a>";
    }
}