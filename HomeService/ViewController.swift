//
//  ViewController.swift
//  HomeService
//
//  Created by Prashant Dwivedi on 3/30/18.
//  Copyright © 2018 Prashant Dwivedi. All rights reserved.
//

import UIKit
import paper_onboarding
//import Hero
//import Constants.swift



class ViewController: UIViewController, PaperOnboardingDataSource, PaperOnboardingDelegate {

    @IBOutlet weak var onboardingView: OnboardingTutorialView!
    @IBOutlet weak var getStartedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        onboardingView.delegate = self
        onboardingView.dataSource = self
    }
    
    func onboardingItemsCount() -> Int {
        return 4
    }
    
    func onboardingItemAtIndex(_ index: Int) -> OnboardingItemInfo {
        
        let titleFont = UIFont(name: "AvenirNext-Bold", size: 24)!
        let descriptionFont = UIFont(name: "AvenirNext-Regular", size: 18)!
        
        let firstImage = UIImage(named:"HomeService app_icon")
        let emptyImage : UIImage? = UIImage()
        
        return[(firstImage,Onboarding.FIRST_INTROSCREEN_TITLE_STRING, Onboarding.FIRST_INTROSCREEN_DESCRIPTION_STRING, emptyImage,OnboardingBackgroundColor.backgroundColorOne,UIColor.white,UIColor.white,titleFont,descriptionFont),
            (firstImage,Onboarding.Second_INTROSCREEN_TITLE_STRING,Onboarding.SECOND_INTROSCREEN_DESCRIPTION_STRING, emptyImage, OnboardingBackgroundColor.backgroundColorTwo, UIColor.white,UIColor.white, titleFont, descriptionFont),
            (firstImage,Onboarding.THIRD_INTROSCREEN_TITLE_STRING,Onboarding.THIRD_INTROSCREEN_DESCRIPTION_STRING, emptyImage, OnboardingBackgroundColor.backgroundColorThree, UIColor.white,UIColor.white, titleFont, descriptionFont),
            (firstImage, Onboarding.FOURTH_INTROSCREEN_TITLE_STRING,Onboarding.FOURTH_INTROSCREEN_DESCRIPTION_STRING, emptyImage, OnboardingBackgroundColor.backgroundColorFourth, UIColor.white,UIColor.white, titleFont, descriptionFont)][index] as! OnboardingItemInfo
        
    }
    
    func onboardingConfigurationItem(_ item: OnboardingContentViewItem, index: Int) {
        
    }
    
    func onboardingWillTransitonToIndex(_ index: Int) {
        if index == 2 && self.getStartedButton.alpha == 1 {
            UIView.animate(withDuration: 0.2, animations: {
                self.getStartedButton.alpha = 0;
            })
        }
    }
    
    func onboardingDidTransitonToIndex(_ index: Int) {
        if index == 3 {
            UIView.animate(withDuration: 0.4, animations: {
                self.getStartedButton.alpha = 1
            })
        }
    }
    
    @IBAction func getStartedButtonClicked(_ sender: Any) {
        let userDefaults = UserDefaults.standard
        
        userDefaults.set("true", forKey: "onboardingCompleted")
        userDefaults.synchronize()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

