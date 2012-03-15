<?php

class PostsController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
       
    }
    
    public function agregarAction()
    {
        $form= new Application_Form_Posts();
        //$bind = $form->getValues();
        //$name=$bind['imagen'];
        if($this->getRequest()->isPost())
        {
           if($form->isValid($this->_getAllParams()))
           {
               $model = new Application_Model_Posts();
               
               $id = $model->save($form->getValues());
              //IMAGEN
               /* 
                // Traemos el adapter de Zend_File_Transfer
               $upload = $form->imagen->getTransferAdapter();

                // Lo ideal es que el path lo trajeramos de un archivo de configuracion.
               $upload->addFilter('Rename', array(
                    'target' => APPLICATION_PATH . '/../public/img/posts/post_'. $id .' .jpg',
                    'overwrite' => true
                ));
               
               //$model->updateImage($id, $name);
               */
               return $this->_redirect('/');
           }
        }
        
        $this->view->form=$form;
    }


}

