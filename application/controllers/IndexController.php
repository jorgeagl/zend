<?php

class IndexController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
       $post=new Application_Model_Posts();
       $this->view->posts = $post->getAll();
    }
 

}

