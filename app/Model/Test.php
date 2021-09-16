<?php


class Test extends Model
{

    /**
     * Test constructor.
     */
    public function __construct()
    {
        parent::__construct();
    }

    function test(){
        $st = $this->db->run("show tables");
        print_r($st);
    }

    function show(){
        $st = $this->db->run("select * from questions where id = 8");
        return $st;
    }

}