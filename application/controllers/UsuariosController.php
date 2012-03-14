<?php

class UsuariosController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        echo "Hola usuarios";exit;
    }

    public function nuevoAction()
    {
        $this->view->insercion='nuevo usuario';
    }

}



