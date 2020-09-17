//
//  CalendarViewController.swift
//  IDIAZM_Example
//
//  Created by Iván Díaz Molina on 15/09/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var spanishLabel: UILabel!
    @IBOutlet weak var spanishCalendar: SmallCalendarView!
    @IBOutlet weak var americanLabel: UILabel!
    @IBOutlet weak var americanCalendar: SmallCalendarView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
    
    // MARK: private methods
    fileprivate func setupView() {
        self.title = "Calendar View"
        
        // setup Calendars
        setupSpanishCalendar()
        setupAmericanCalendar()
    }
    
    /// Setup Spanish Calendar
    fileprivate func setupSpanishCalendar() {
        
        spanishLabel.text = "Spanish Calendar"
        spanishLabel.font = UIFont.boldSystemFont(ofSize: spanishLabel.font.pointSize)
        spanishCalendar.isAmericanCalendar = false
    }
    
    /// Setup American Calendar
    fileprivate func setupAmericanCalendar() {
        
        americanLabel.text = "American Calendar"
        americanLabel.font = UIFont.boldSystemFont(ofSize: americanLabel.font.pointSize)
        americanCalendar.isAmericanCalendar = true
        
        
    }
}