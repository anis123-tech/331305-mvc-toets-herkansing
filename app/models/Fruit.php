<?php

class Fruit {
    private $db;

    public function __construct() {
        $this->db = new Database;
    }

    public function getFruit() {
        $this->db->query("SELECT * FROM `fruits`");
        
        $this->db->execute();
        $result = $this->db->resultSet();
        
        return $result;
    }
}