<?php

class Application_Model_Posts
{
    protected $_name='posts';
    protected $_primary='idpost';
    
    
    public function getAll()
    {
        return $this->fetchAll();
    }
    
    public function save($bind)
    {
        $row = $this->createRow();
        $row->setFromArray($bind);
        return $row->save();
    }
}


