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
        let backgroundColorOne = UIColor(red: 217/255, green: 72/255, blue: 89/355, alpha: 1)
        let backgroundColorTwo = UIColor(red: 106/255, green: 166/255, blue: 211/355, alpha: 1)
        let backgroundColorThree = UIColor(red: 168/255, green: 200/255, blue: 78/355, alpha: 1)
        
        let titleFont = UIFont(name: "AvenirNext-Bold", size: 24)!
        let descriptionFont = UIFont(name: "AvenirNext-Regular", size: 18)!
        
        let firstImage = UIImage(named:"HomeService app_icon")
//        let emptyImage : UIImage? = nil
        
        return[(firstImage,FIRST_INTROSCREEN_TITLE_STRING, FIRST_INTROSCREEN_DESCRIPTION_STRING, firstImage,backgroundColorOne,UIColor.white,UIColor.white,titleFont,descriptionFont),
            (firstImage,Second_INTROSCREEN_TITLE_STRING,SECOND_INTROSCREEN_DESCRIPTION_STRING, firstImage, backgroundColorTwo, UIColor.white,UIColor.white, titleFont, descriptionFont),
            (firstImage,THIRD_INTROSCREEN_TITLE_STRING,THIRD_INTROSCREEN_DESCRIPTION_STRING, firstImage, backgroundColorThree, UIColor.white,UIColor.white, titleFont, descriptionFont),
            (firstImage,FOURTH_INTROSCREEN_TITLE_STRING,FOURTH_INTROSCREEN_DESCRIPTION_STRING, firstImage, backgroundColorOne, UIColor.white,UIColor.white, titleFont, descriptionFont)][index] as! OnboardingItemInfo
        
        
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
            UIView.animate(withDuration: 04, animations: {
                self.getStartedButton.alpha = 1
            })
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

