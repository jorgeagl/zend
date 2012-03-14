<?php

class Application_Form_Posts extends Zend_Form
{

    public function init()
    {
        $fecha=date('d/m/Y');
        $this->addElement(
                'text','titulo',array(
                    'label'=>'Titulo:',
                    'required'=>'true'
                    
                )
                
        );
        $this->addElement(
                'textarea','contenido',array(
                    'label'=>'Contenido:',
                    'required'=>'true'
                )
                
        );
        $this->addElement(
                'submit','Publicar',array()
                
        );
        
        $this->addElement(
                'hidden','fecha',array('value'=>$fecha)
        );
        $this->addElement(
                'hidden','categoria',array('value'=>'1')
        );
        $this->addElement(
                'hidden','imagen',array('value'=>'/img/post.JPG')
        );
        
    }


}

