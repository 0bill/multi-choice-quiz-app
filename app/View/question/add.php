<html>

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

<div class="container mt-3">


    <form method="POST">
        <button type="submit" class="btn btn-primary">Submit</button>
        <input type="number" name="amount" min="1" max="10" value="<?php echo $data["amount"] ?>">


        <div class="form-group">
            <label for="question">Question</label>
            <textarea class="form-control" name="question" id="question" rows="5"></textarea>
        </div>


        <?php

        for ($i=0 ; $i < $data["amount"] ; $i++){

            echo "  <div class=\"form-row align-items-center\">
            <div class=\"col-md-10\">

                <textarea class=\"form-control\" id=\"answer1\" name=\"answer[".$i."][text]\" rows=\"2\"></textarea>
            </div>

            <div class=\"col-auto\">
                <div class=\"form-check mb-2\">
                    <input class=\"form-check-input\" type=\"checkbox\" name=\"answer[".$i."][correct]\" id=\"autoSizingCheck".$i."\">
                    <label class=\"form-check-label\" for=\"autoSizingCheck".$i."\">
                        Correct?
                    </label>
                </div>
            </div>

        </div>
        <br>";
        }
        ?>





    </form>


</div>


</body>


</html>







