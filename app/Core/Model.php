<?php
/**
 * Model.php
 * Generic model class
 * @author     Aleksy Ruszala <16pxdesign@gmial.com>
 * @copyright  2020 Aleksy Ruszala
 */


class Model
{

    public $db = null;
    public function __construct()
    {
        $this->db = new Database();
    }

}