<?php
/**
 * Index.php
 * Website entry point
 * @author     Aleksy Ruszala <16pxdesign@gmial.com>
 * @copyright  2020 Aleksy Ruszala
 */

/**
 * Init reporting errors
 */
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
ini_set("log_errors", 1);

error_reporting(E_ALL);

/**
 * Define root path
 */
define('DOCROOT', dirname(__FILE__));
ini_set("error_log", DOCROOT ."/php-error.txt");
/**
 * @param $class
 * Autoload all classes stored from directories
 */
function autoload($class)
{
    //var_dump($class);
    $filename = DOCROOT . "/app/Helpers/" . $class . ".php";
    if(file_exists($filename)){
        require_once $filename;
    }
    $filename = DOCROOT . "/app/Core/" . $class . ".php";
    if (file_exists($filename)) {
        require_once $filename;
    }

    $filename = DOCROOT . "/app/Controller/" . $class . ".php";
    if (file_exists($filename)) {
        require_once $filename;
    }
    $filename = DOCROOT . "/app/Model/" . $class . ".php";
    if (file_exists($filename)) {
        require_once $filename;
    }


}

spl_autoload_register("autoload");

/**
 * Init MVC engine
 */
$boot = new Boot();
$boot->init();

?>