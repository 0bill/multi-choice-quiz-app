<html xmlns="http://www.w3.org/1999/html">

<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"

          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"

            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"

            crossorigin="anonymous"></script>

    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


</head>


<body>

<?php
$wrong = false;
?>

<div class="container">
    <form method="POST">
        <div class="card mt-3">
            <div class="card-body">
                <?php
                if (isset($data["question"])) {
                    echo "<span>" . $data["question"] . "</span>";
                    echo " <input type=\"hidden\" name=\"questionID\" value=\"" . $data["questionID"] . "\">";
                }
                ?>

            </div>
        </div>




        <div style="position:relative;width:100%;" class="mt-3">

            <?php

            if (isset($data["answers"])) {
                for ($i = 0; $i < sizeof($data["answers"]); $i++) {
                    if(isset($data["answers"][$i]["wrong"])){
                        $wrong = true;
                    }
                    echo "  <div id=\"altcontainer\">
                <label class='radiocontainer " . (isset($data["answers"][$i]["wrong"]) ? "red " : "") . " ".(isset($data["answers"][$i]["green"]) ? "green " : "")."' id='label" . $i . "'>
                    <span> " . $data["answers"][$i]["text"] . "</span>
                    <input type=\"hidden\" name='answer[" . $i . "][answerID]' value=\"" . $data["answers"][$i]["id"] . "\">
                    <input type='checkbox' name='answer[" . $i . "][bool]' id='" . $i . "' ".(isset($data["answers"][$i]["select"]) ? (($data["answers"][$i]["select"])? "select" : "") : "")."/>
                    <span class='checkmark'></span>
                </label>

            </div>";

                }
            }
            ?>


        </div>

        <?php
        if(!$wrong){
            echo "<button type=\"submit\" class=\"btn btn-primary mt-3\">Submit</button>";
        }
        ?>
        <a class="btn btn-primary mt-3" href="/Quiz" role="button"> Next </a>
    </form>


</div>


<style>
    span {
        white-space: pre-line;
        padding: 0;
    }

    #altcontainer {
        font-family: "Segoe UI", Arial, sans-serif;
        background-color: #fff;
        font-size: 120%;
        line-height: 1.7em;
    }

    /* The radiocontainer */
    .radiocontainer {
        background-color: #f1f1f1;
        display: block;
        position: relative;
        padding: 10px 10px 10px 50px;
        margin-bottom: 1px;
        cursor: pointer;
        font-size: 18px;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        word-wrap: break-word;
    }

    .radiocontainer.red {
        background-color: red;
    }

    .radiocontainer.red.green{
        border: solid 2px green;
    }

    .radiocontainer.green.red{
        border: dashed 2px red;
        background-color: green;

    }

    .radiocontainer.green {
        background-color: green;
    }

    /* Hide the browser's default radio button */
    .radiocontainer input {
        position: absolute;
        opacity: 0;
        cursor: pointer;
    }

    /* Create a custom radio button */
    .checkmark {
        position: absolute;
        top: 15px;
        left: 15px;
        height: 19px;
        width: 19px;
        background-color: #fff;
        border-radius: 50%;
    }

    .checkedlabel {
        background-color: #ddd;
    }

    /* On mouse-over, add a grey background color */
    .radiocontainer:hover input ~ .checkmark {
        /*nothing*/
    }

    .radiocontainer:hover {
        /* background-color: #ddd; */
    }

    /* When the radio button is checked, add a blue background */
    .radiocontainer input:checked ~ .checkmark {
        background-color: #2196F3;
    }

    /* Create the indicator (the dot/circle - hidden when not checked) */
    .checkmark:after {
        content: "";
        position: absolute;
        display: none;
    }

    /* Show the indicator (dot/circle) when checked */
    .radiocontainer input:checked ~ .checkmark:after {
        display: block;
    }

    /* Style the indicator (dot/circle) */
    .radiocontainer .checkmark:after {
        top: 6px;
        left: 6px;
        width: 7px;
        height: 7px;
        border-radius: 50%;
        background: white;
    }

</style>
</body>
</html>