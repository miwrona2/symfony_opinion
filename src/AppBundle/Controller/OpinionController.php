<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use AppBundle\Entity\Opinion;

use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

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
    
    
    /**
     * @Route("/opinion/create", name="opinion_create")
     */
    public function createAction(Request $request) {
        
        $opinion = new Opinion;
        
        $form = $this->createFormBuilder($opinion)
            ->add('content', TextType::class)
            ->add('rate', ChoiceType::class,array('choices' => array('1'=>1,'1'=>1,'2'=>2,'3'=>3,'4'=>4,'5'=>5)))
            ->add('nickname', TextType::class)
//            ->add('modified', DateTimeType::class)
            ->add('save', SubmitType::class, array('label' => 'Create Opinion'))
            ->getForm();
        
            $form->handleRequest($request);
            
            if($form->isSubmitted() && $form->isValid()) {
                $content = $form['content']->getData();
                $rate = $form['rate']->getData();
                $nickname = $form['nickname']->getData();
//                $modified = $form['modified']->getData();
                
                $now = new\DateTime('now');
                
                $opinion->setContent($content);
                $opinion->setRate($rate);
                $opinion->setNickname($nickname);
                $opinion->setModified($now);
                
                $em = $this->getDoctrine()->getManager();
                
                $em->persist($opinion);
                $em->flush();
                
//                $em->addFlash('notice',
//                        'Opinion Added');
                
                return $this->redirectToRoute('opinion');
                
            }
            
            return $this->render('opinion/create.html.twig', array('form' => $form->createView()));
    }
    
}

