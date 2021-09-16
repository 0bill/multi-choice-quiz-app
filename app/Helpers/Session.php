<?php
/**
 * Session.php
 * Session tracking class
 * @author     Aleksy Ruszala <16pxdesign@gmial.com>
 * @copyright  2020 Aleksy Ruszala
 */

class Session
{
    private $logged_in=false;
    private $user_id;
    public static $user_firstname;
    public function __construct()
    {

        session_start();
        $this->check();
    }


    private function destroy()
    {
        if(isset($_SESSION['user_id']))
        session_unset($_SESSION['user_id']);
        if(isset($_SESSION['user_firstname']))
        session_unset($_SESSION['user_firstname']);
        session_destroy();
        session_start();
    }

    public function login($user){

        if($user){
            $this->user_id = $_SESSION['user_id'] = $user->id;
            self::$user_firstname = $_SESSION['user_firstname'] = $user->firstname;
            $this->logged_in = true;
        }
    }

    public function logout(){
        $this->destroy();
        $this->logged_in = false;
        $this->user_id = null;
        self::$user_firstname = null;
    }

    public function is_login() {
        return $this->logged_in;
    }

    private function check() {
        if(isset($_SESSION['user_id'])) {
            $this->user_id = $_SESSION['user_id'];
            if(isset($_SESSION['user_firstname']))
                self::$user_firstname = $_SESSION['user_firstname'];
            $this->logged_in = true;
        } else {

            $this->logout();
        }
    }

}