<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

Class OpinionController extends Controller
{
    
    /**
     * @Route("/opinion", name="opinion")
     */
    public function listAction(Request $request) 
    {
        $todos = $this->getDoctrine()
            ->getRepository('AppBundle:Opinion')
            ->findAll();
//        $todos = array ('1' => 'val1', '2' => 'val2');
    return $this->render('todo/index.html.twig', array('todos' => $todos));
    }
    
}

