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
        $opinions = $this->getDoctrine()
            ->getRepository('AppBundle:Opinion')
            ->findAll();
        
    return $this->render('opinion/index.html.twig', array('opinions' => $opinions));
    }
    
}

