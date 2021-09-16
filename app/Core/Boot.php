<?php
/**
 * Boot.php
 * Init MVC engine
 * @author     Aleksy Ruszala <16pxdesign@gmial.com>
 * @copyright  2020 Aleksy Ruszala
 */

class Boot
{
    private $debug = true;
    private $_url;
    private $_controller = 'Index';
    private $_method = 'index';
    private $_params = [];

    /**
     * Init MVC features
     */
    public function init()
    {
        $this->_getUrl();
        $this->_loadController();
        $this->_loadMethod();
    }

    /**
     * Fetch HTTP url
     */
    protected function _getUrl()
    {
        $url = isset($_GET['url']) ? rtrim($_GET['url'], '/') : NULL;
        $url = filter_var($url, FILTER_SANITIZE_URL);
        $this->_url = explode('/', $url);

    }

    /**
     * Load controller based on provided http url
     */
    protected function _loadController()
    {

        //get controller name form url
        $controller = $this->_controller;
        if (!empty($this->_url[0])) {
            $controller = $this->_url[0];
            unset($this->_url[0]);
        }

        //Import controller or show error
        $file = DOCROOT . '/app/Controller/' . $controller . '.php';
        if (file_exists($file)) {
            $session = new Session();
            $this->_controller = new $controller($session);

        } else {
            //404 - controller not found
            echo "Controller not exist: " . $controller . "<br>";
            echo __DIR__  . '/../';
            if(!$this->debug) header('Location: 404.html');
            die;
        }
    }

    /**
     * Load controller method based on provided http url
     * @throws ReflectionException Returns error if cannot reflect class
     */
    protected function _loadMethod()
    {

        //get method name from url
        if (!empty($this->_url[1])) {
            $this->_method = $this->_url[1];
            unset($this->_url[1]);
        }
        //fetch params to array
        $this->_params = $this->_url ? array_values($this->_url) : [];

        //checking and calling controller method
        if (!empty($this->_method)) {
            if (method_exists($this->_controller, $this->_method)) {
                $reflection = new ReflectionMethod($this->_controller, $this->_method);
                if ($reflection->isPublic()){

                    call_user_func_array([$this->_controller, $this->_method], $this->_params);

                }else{
                    //404 - Cannot access to private method
                    echo "Error: You cannot access to private method";
                    die;
                }

            } else {
                //404 - method not exist
                echo "Method not exist: " . $this->_method;
                if(!$this->debug) header('Location: 404.html');
                die;
            }
        } else {
            //404 - unexpected error
            echo"404 - unexpected error - method null point exception";
            if(!$this->debug) header('Location: 404.html');
        }


    }


}

?>
