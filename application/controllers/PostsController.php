<?php

class PostsController extends Zend_Controller_Action
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
    public function agregarAction()
    {
        $form= new Application_Form_Posts();
        
        if($this->getRequest()->isPost()){
           if($form->isValid($this->_getAllParams())){
               $model = new Application_Model_Posts();
               $model->save($form->getValues());
               return $this->_redirect('/');
           }
        }
        
        $this->view->form=$form;
    }


}

