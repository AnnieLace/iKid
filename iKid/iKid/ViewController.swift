//
//  ViewController.swift
//  iKid
//
//  Created by Annie Lace on 4/27/16.
//  Copyright © 2016 Annie Lace. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var goodSetUp : GoodSetUpViewController!
    private var punSetUp : PunSetUpViewController!
    private var badSetUp : BadSetUpViewController!
    
    private var goodPunch : GoodPunchViewController!
    private var punPunch : PunPunchViewController!
    private var badPunch : BadPunchViewController!
    
    private func goodSetBuilder()
    {
        if goodSetUp == nil {
            goodSetUp = storyboard?.instantiateViewControllerWithIdentifier("GoodFirst") as! GoodSetUpViewController
        }
    }
    
    private func badSetBuilder()
    {
        if badSetUp == nil {
            badSetUp = storyboard?.instantiateViewControllerWithIdentifier("BadFirst") as! BadSetUpViewController
        }
    }
    
    private func punSetBuilder()
    {
        if punSetUp == nil {
            punSetUp = storyboard?.instantiateViewControllerWithIdentifier("PunFirst") as! PunSetUpViewController
        }
    }
    
    private func goodPunchBuilder()
    {
        if goodPunch == nil {
            goodPunch = storyboard?.instantiateViewControllerWithIdentifier("GoodSecond") as! GoodPunchViewController
        }
    }
    
    private func punPunchBuilder()
    {
        if punPunch == nil {
            punPunch = storyboard?.instantiateViewControllerWithIdentifier("PunSecond") as! PunPunchViewController
        }
    }
    
    private func badPunchBuilder()
    {
        if badPunch == nil {
            badPunch = storyboard?.instantiateViewControllerWithIdentifier("BadSecond") as! BadPunchViewController
        }
    }
    
    @IBAction func showGood(sender: UIBarButtonItem) {
        goodSetBuilder()
        punSetBuilder()
        badSetBuilder()
        goodPunchBuilder()
        punPunchBuilder()
        badPunchBuilder()
        
        if(punSetUp != nil && punSetUp?.view.superview != nil)
        {
            goodSetUp.view.frame = view.frame
            switchViewController(punSetUp, to: goodSetUp)
        }
        else if(badSetUp != nil && badSetUp?.view.superview != nil)
        {
            goodSetUp.view.frame = view.frame
            switchViewController(badSetUp, to: goodSetUp)
        }
        else if(punPunch != nil && punPunch?.view.superview != nil)
        {
            goodSetUp.view.frame = view.frame
            switchViewController(punPunch, to: goodSetUp)
        }
        else if(badPunch != nil && badPunch?.view.superview != nil)
        {
            goodSetUp.view.frame = view.frame
            switchViewController(badPunch, to: goodSetUp)
        }
        else if(goodPunch != nil && goodPunch?.view.superview != nil)
        {
            goodSetUp.view.frame = view.frame
            switchViewController(goodPunch, to: goodSetUp)
        }
        else
        {
            goodSetUp.view.frame = view.frame
            switchViewController(badSetUp, to: goodSetUp)
        }
    }
    
    @IBAction func showPun(sender: UIBarButtonItem) {
        goodSetBuilder()
        punSetBuilder()
        badSetBuilder()
        goodPunchBuilder()
        punPunchBuilder()
        badPunchBuilder()
        
        if(goodSetUp != nil && goodSetUp?.view.superview != nil)
        {
            punSetUp.view.frame = view.frame
            switchViewController(goodSetUp, to: punSetUp)
        }
        else if(badSetUp != nil && badSetUp?.view.superview != nil)
        {
            punSetUp.view.frame = view.frame
            switchViewController(badSetUp, to: punSetUp)
        }
        else if(goodPunch != nil && goodPunch?.view.superview != nil)
        {
            punSetUp.view.frame = view.frame
            switchViewController(goodPunch, to: punSetUp)
        }
        else if(badPunch != nil && badPunch?.view.superview != nil)
        {
            punSetUp.view.frame = view.frame
            switchViewController(badPunch, to: punSetUp)
        }
        else if(punPunch != nil && punPunch?.view.superview != nil)
        {
            punSetUp.view.frame = view.frame
            switchViewController(punPunch, to: punSetUp)
        }
        else
        {
            punSetUp.view.frame = view.frame
            switchViewController(goodSetUp, to: punSetUp)
        }
        
    }
    
    @IBAction func flipJoke(sender: UIBarButtonItem) {
        goodSetBuilder()
        punSetBuilder()
        badSetBuilder()
        goodPunchBuilder()
        punPunchBuilder()
        badPunchBuilder()
        
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.EaseInOut)
        
        if(goodSetUp != nil && goodSetUp?.view.superview != nil)
        {
            goodPunch.view.frame = view.frame
            UIView.setAnimationTransition(.FlipFromRight, forView: view, cache: true)
            switchViewController(goodSetUp, to: goodPunch)
        }
        else if(badSetUp != nil && badSetUp?.view.superview != nil)
        {
            badPunch.view.frame = view.frame
            UIView.setAnimationTransition(.FlipFromRight, forView: view, cache: true)
            switchViewController(badSetUp, to: badPunch)
        }
        else if(goodPunch != nil && goodPunch?.view.superview != nil)
        {
            goodSetUp.view.frame = view.frame
            UIView.setAnimationTransition(.FlipFromLeft, forView: view, cache: true)
            switchViewController(goodPunch, to: goodSetUp)
        }
        else if(badPunch != nil && badPunch?.view.superview != nil)
        {
            badSetUp.view.frame = view.frame
            UIView.setAnimationTransition(.FlipFromLeft, forView: view, cache: true)
            switchViewController(badPunch, to: badSetUp)
        }
        else if(punSetUp != nil && punSetUp?.view.superview != nil)
        {
            punPunch.view.frame = view.frame
            UIView.setAnimationTransition(.FlipFromRight, forView: view, cache: true)
            switchViewController(punSetUp, to: punPunch)
        }
        else if(punPunch != nil && punPunch?.view.superview != nil)
        {
            punSetUp.view.frame = view.frame
            UIView.setAnimationTransition(.FlipFromLeft, forView: view, cache: true)
            switchViewController(punPunch, to: punSetUp)
        }
        UIView.commitAnimations()
    }
    
    @IBAction func showBad(sender: UIBarButtonItem) {
        goodSetBuilder()
        punSetBuilder()
        badSetBuilder()
        goodPunchBuilder()
        punPunchBuilder()
        badPunchBuilder()
        
        if(punSetUp != nil && punSetUp?.view.superview != nil)
        {
            badSetUp.view.frame = view.frame
            switchViewController(punSetUp, to: badSetUp)
        }
        else if(goodSetUp != nil && goodSetUp?.view.superview != nil)
        {
            badSetUp.view.frame = view.frame
            switchViewController(goodSetUp, to: badSetUp)
        }
        else if(punPunch != nil && punPunch?.view.superview != nil)
        {
            badSetUp.view.frame = view.frame
            switchViewController(punPunch, to: badSetUp)
        }
        else if(goodPunch != nil && goodPunch?.view.superview != nil)
        {
            badSetUp.view.frame = view.frame
            switchViewController(goodPunch, to: badSetUp)
        }
        else if(badPunch != nil && badPunch?.view.superview != nil)
        {
            badSetUp.view.frame = view.frame
            switchViewController(badPunch, to: badSetUp)
        }
        else
        {
            badSetUp.view.frame = view.frame
            switchViewController(goodSetUp, to: badSetUp)
        }
    }
    
    
    private func switchViewController(from: UIViewController?, to: UIViewController?) {
        if from != nil {
            from!.willMoveToParentViewController(nil)
            from!.view.removeFromSuperview()
            from!.removeFromParentViewController()
        }
        
        if to != nil {
            self.addChildViewController(to!)
            self.view.insertSubview(to!.view, atIndex: 0)
            to!.didMoveToParentViewController(self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

