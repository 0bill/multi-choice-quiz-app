<?php
/**
 * Controller.php
 * Generic controller class
 * @author     Aleksy Ruszala <16pxdesign@gmial.com>
 * @copyright  2020 Aleksy Ruszala
 */

/**
 * Class Controller is parent class of each controller in app
 * to create new controller need to extend current controller.
 * The current class defines controller behavior
 */
class Controller
{

    protected $_view;
    protected $_model;
    protected $_url;

    function __construct($session = false)
    {
        //Init view and model
        $this->_model = new Model();
        $this->_view = new View();


    }

    /**
     * This function returns url
     * Function returns url
     */
    protected function _getUrl()
    {
        $url = isset($_GET['url']) ? rtrim($_GET['url'], '/') : NULL;
        $url = filter_var($url, FILTER_SANITIZE_URL);
        $this->_url = explode('/', $url);
    }


    /**
     * Function redirect current page to other page
     * @param null $url Page url to redirect to
     */
    public static function redirect($url = null)
    {

        $dir = "/~1902371";
        $HeadTo = $dir . "/" . $url;
        Header("Location: " . $HeadTo);

        exit;
    }



}

?>
