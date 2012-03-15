<?php

class Application_Form_Posts extends Zend_Form
{

    public function init()
    {
        $fecha=date('d/m/Y');
        $this->setAttrib('enctype', 'multipart/form-data');
        
        $this->addElement(
                'text','titulo',array(
                    'placeholder'=>'Titulo:',
                    'required'=>'true',
                    'size'=>'90'
                    
                )
                
        );
        $this->addElement(
                'textarea','contenido',array(
                    'placeholder'=>'Contenido:',
                    'required'=>'true',
                    'rows'=>'10',
                    'class'=>'ckeditor'
                )
                
        );
        
        $this->addElement(
                    'select','categoria',array(
                    'required' => true,
                    'multiOptions' => array('1' => '---Categorias---', '2' =>'Diseño', '3' => 'Software')
               )
        );
        
        //Imagen
        /*$this->addElement(
                'file', 'imagen', array()
         );
        $this->imagen->addValidator('Extension', false, 'jpg,png,gif,jpeg' );
        $this->imagen->addValidator( 'Size', false, '10024000' );
        $this->imagen
            ->setDestination( APPLICATION_PATH . '/../public/img/posts/' )
            ->setValueDisabled( true );
        */
        $this->addElement(
                'submit','Publicar',array()
                
        );
        
        $this->addElement(
                'hidden','fecha',array('value'=>$fecha)
        );
        

        
    }


}

