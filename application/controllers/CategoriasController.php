<?php

class CategoriasController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        // action body
    }
    public function softwareAction()
    {
        $post=new Application_Model_Posts();
        $this->view->soft = $post->getSofwareA();
    }
    
    public function webAction()
    {
        $post=new Application_Model_Posts();
        $this->view->web = $post->getWebD();
    }

}

