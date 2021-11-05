//
//  ViewController.swift
//  DynamicTypeTutorial-iOS
//
//  Created by kimhyungyu on 2021/11/05.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - @IBOutlet Properties
    
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var calloutLabel: UILabel!
    @IBOutlet weak var caption1Label: UILabel!
    @IBOutlet weak var caption2Label: UILabel!
    @IBOutlet weak var footnoteLabel: UILabel!
    @IBOutlet weak var headlineLabel: UILabel!
    @IBOutlet weak var subheadLabel: UILabel!
    @IBOutlet weak var largeTitleLabel: UILabel!
    @IBOutlet weak var title1Label: UILabel!
    @IBOutlet weak var title2Label: UILabel!
    @IBOutlet weak var title3Label: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bodyLabel.font = UIFont.preferredFont(forTextStyle: .body)
        bodyLabel.adjustsFontForContentSizeCategory = true
        
        calloutLabel.font = UIFont.preferredFont(forTextStyle: .callout)
        calloutLabel.adjustsFontForContentSizeCategory = true
        
        caption1Label.font = UIFont.preferredFont(forTextStyle: .caption1)
        caption1Label.adjustsFontForContentSizeCategory = true
        
        caption1Label.font = UIFont.preferredFont(forTextStyle: .caption1)
        caption1Label.adjustsFontForContentSizeCategory = true
        
        caption1Label.font = UIFont.preferredFont(forTextStyle: .caption1)
        caption1Label.adjustsFontForContentSizeCategory = true
        
        caption1Label.font = UIFont.preferredFont(forTextStyle: .caption1)
        caption1Label.adjustsFontForContentSizeCategory = true
        
        caption2Label.font = UIFont.preferredFont(forTextStyle: .caption2)
        caption2Label.adjustsFontForContentSizeCategory = true
        
        footnoteLabel.font = UIFont.preferredFont(forTextStyle: .footnote)
        footnoteLabel.adjustsFontForContentSizeCategory = true
        
        // ✅ custom font
        let customFont = UIFont(name: "Kefa", size: 30)!
        headlineLabel.font = UIFontMetrics(forTextStyle: .headline).scaledFont(for: customFont)
        headlineLabel.adjustsFontForContentSizeCategory = true
        
        subheadLabel.font = UIFont.preferredFont(forTextStyle: .subheadline)
        subheadLabel.adjustsFontForContentSizeCategory = true
        
        largeTitleLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        largeTitleLabel.adjustsFontForContentSizeCategory = true
        
        title1Label.font = UIFont.preferredFont(forTextStyle: .title1)
        title1Label.adjustsFontForContentSizeCategory = true
        
        title2Label.font = UIFont.preferredFont(forTextStyle: .title2)
        title2Label.adjustsFontForContentSizeCategory = true
        
        title3Label.font = UIFont.preferredFont(forTextStyle: .title3)
        title3Label.adjustsFontForContentSizeCategory = true
    }
    
    // ✅ Called when the iOS interface environment changes.
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        print(UIApplication.shared.preferredContentSizeCategory)
        
        if self.traitCollection.preferredContentSizeCategory > .large {
            print("\(self.traitCollection.preferredContentSizeCategory) > .large")
        } else {
            print("\(self.traitCollection.preferredContentSizeCategory) <= .large")
        }
    }
}
