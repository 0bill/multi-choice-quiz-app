<?php


class Quiz extends Controller
{

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $model = new QuizModel();

        //var_dump($_POST);
        if (isset($_POST["questionID"])) {
            $id = $_POST["questionID"];
            $answerArr = array();
            if (isset($_POST["answer"]))
                $answerArr = $_POST["answer"];
            $dbAnsArr = $model->getAnswersForQuestion($id);


            $dbAnsArr = $this->sortArray($answerArr,$dbAnsArr);

            $wrongArr = array();
            foreach ($dbAnsArr as $item) {

                foreach ($answerArr as $x) {
                    if ($item["id"] == $x["answerID"]) {
                        $bool = 0;
                        if (isset($x["bool"]))
                            if ($x["bool"] == "on")
                                $bool = 1;
                        if ($item["correct"] == $bool) {

                        } else {
                            $wrongArr[] = $item;
                        }
                    }


                }
            }
            if ($wrongArr != array()) {
                $data["question"] = $model->getQuestionById($id)[0]["text"];
                $data["questionID"] = $id;
                $data["answers"] = array();

                //list of wrong answers

                foreach ($dbAnsArr as $dbAns) {

                    if ($dbAns["correct"] == 1){
                        $dbAns["green"] = true;
                        $dbAns["greenred"] = true;
                        //var_dump($dbAns["correct"]);
                    }
                    // var_dump($dbAns);
                    // var_dump("<br>");
                    $isWrong = false;
                    foreach ($wrongArr as $ans) {

                        if ($ans["id"] == $dbAns["id"]) {
                            if ($dbAns["correct"] == 0) {

                                $dbAns["wrong"] = true;
                                $isWrong = true;
                                $data["answers"][] = $dbAns;
                          
                            }else{
                                $dbAns["wrong"] = true;
                                $isWrong = true;
                                $data["answers"][] = $dbAns;
                            }
                        }


                    }

                    if (!$isWrong) {



                        $data["answers"][] = $dbAns;


                    }


                }
                //var_dump($data["answers"]);
                $this->_view->render("quiz/index", $data);
                return;
            } else {
                $model->saveProgress($id);
            }


        }
        $question = $model->getRandomQuestion();
        if ($question == null) {
            echo " no more questions";
            return;
        }
        $data["question"] = $question[0]["text"];
        $data["questionID"] = $question[0]["id"];

        $answer = $model->getAnswersForQuestion($question[0]["id"]);

        $data["answers"] = $answer;

        $this->_view->render("quiz/index", $data);


        //var_dump($_POST);
    }

    private function sortArray(array $source, array $input)
    {

        $tempArr = array();
        foreach ($source as $s){
            foreach ($input as $i){
                if($s["answerID"] == $i["id"] ){
                    $tempArr[] = $i;
                }
            }
        }
        return $tempArr;
    }


}