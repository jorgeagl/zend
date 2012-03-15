<?php

class  Application_Model_Posts extends Zend_Db_Table_Abstract
{
    protected $_name='posts';
    protected $_primary='idpost';
    
    
    public function getAll()
    {
        $select = $this->select();
        $select->order('idpost','DESC');
    return $this->fetchAll($select);
    }
    
    public function save($bind)
    {
        $row = $this->createRow();
        $row->setFromArray($bind);
    return $row->save();
    }
    
    public function getWebD(){
        $select = $this->select();
        $select->where('categoria=?','2');
        $select->order('idpost','DESC');
    return $this->fetchAll($select);
    }
    
    public function getSofwareA(){
        $select = $this->select();
        $select->where('categoria=?','3');
        $select->order('idpost','DESC');
    return $this->fetchAll($select);
    }
}


