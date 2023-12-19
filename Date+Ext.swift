//
//  Date+Ext.swift
//  RaceTrack
//
//  Authors:
//  * Saurav Maheshkar (@wasmftw)
//

import SwiftUI

extension Date {
    // Bahrain GrandPrix Date
    static let bahrainDate = Calendar.current.date(from: DateComponents(year: 2024, month: 3, day: 2))!
    static let bahrainDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: bahrainDate)!
    
    // Saudi Arabia GrandPrix Date
    static let saudiArabiaDate = Calendar.current.date(from: DateComponents(year: 2024, month: 3, day: 9))!
    static let saudiArabiaDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: saudiArabiaDate)!
    
    // Australia GrandPrix Date
    static let australiaDate = Calendar.current.date(from: DateComponents(year: 2024, month: 3, day: 24))!
    static let australiaDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: australiaDate)!
    
    // Japan GrandPrix Date
    static let japanDate = Calendar.current.date(from: DateComponents(year: 2024, month: 4, day: 5))!
    static let japanDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: japanDate)!
    
    // China GrandPrix Date
    static let chinaDate = Calendar.current.date(from: DateComponents(year: 2024, month: 4, day: 21))!
    static let chinaDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: chinaDate)!
    
    // Miami GrandPrix Date
    static let miamiDate = Calendar.current.date(from: DateComponents(year: 2024, month: 5, day: 5))!
    static let miamiDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: miamiDate)!
    
    // Emilia Romagna GrandPrix Date
    static let emiliaRomagnaDate = Calendar.current.date(from: DateComponents(year: 2024, month: 5, day: 19))!
    static let emiliaRomagnaDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: emiliaRomagnaDate)!
    
    // Monaco GrandPrix Date
    static let monacoDate = Calendar.current.date(from: DateComponents(year: 2024, month: 5, day: 26))!
    static let monacoDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: monacoDate)!
    
    // Canada GrandPrix Date
    static let canadaDate = Calendar.current.date(from: DateComponents(year: 2024, month: 6, day: 9))!
    static let canadaDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: canadaDate)!
    
    // Spain GrandPrix Date
    static let spainDate = Calendar.current.date(from: DateComponents(year: 2024, month: 6, day: 23))!
    static let spainDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: spainDate)!
    
    // Austria GrandPrix Date
    static let austriaDate = Calendar.current.date(from: DateComponents(year: 2024, month: 6, day: 30))!
    static let austriaDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: austriaDate)!
    
    // United Kingdom GrandPrix Date
    static let unitedKingdomDate = Calendar.current.date(from: DateComponents(year: 2024, month: 7, day: 7))!
    static let unitedKingdomDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: unitedKingdomDate)!
    
    // Hungary GrandPrix Date
    static let hungaryDate = Calendar.current.date(from: DateComponents(year: 2024, month: 7, day: 21))!
    static let hungaryDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: hungaryDate)!
    
    // Belgium GrandPrix Date
    static let belgiumDate = Calendar.current.date(from: DateComponents(year: 2024, month: 7, day: 28))!
    static let belgiumDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: belgiumDate)!
    
    // Netherlands GrandPrix Date
    static let netherlandsDate = Calendar.current.date(from: DateComponents(year: 2024, month: 8, day: 25))!
    static let netherlandsDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: netherlandsDate)!
    
    // Italy GrandPrix Date
    static let italyDate = Calendar.current.date(from: DateComponents(year: 2024, month: 9, day: 1))!
    static let italyDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: italyDate)!
    
    // Azerbaijan GrandPrix Date
    static let azerbaijanDate = Calendar.current.date(from: DateComponents(year: 2024, month: 9, day: 15))!
    static let azerbaijanDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: azerbaijanDate)!
    
    // Singapore GrandPrix Date
    static let singaporeDate = Calendar.current.date(from: DateComponents(year: 2024, month: 9, day: 22))!
    static let singaporeDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: singaporeDate)!
    
    // USA GrandPrix Date
    static let usaDate = Calendar.current.date(from: DateComponents(year: 2024, month: 10, day: 20))!
    static let usaDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: usaDate)!
    
    // Mexico GrandPrix Date
    static let mexicoDate = Calendar.current.date(from: DateComponents(year: 2024, month: 10, day: 27))!
    static let mexicoDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: mexicoDate)!
    
    // Brazil GrandPrix Date
    static let brazilDate = Calendar.current.date(from: DateComponents(year: 2024, month: 11, day: 3))!
    static let brazilDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: brazilDate)!
    
    // Las Vegas GrandPrix Date
    static let lasVegasDate = Calendar.current.date(from: DateComponents(year: 2024, month: 11, day: 23))!
    static let lasVegasDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: lasVegasDate)!
    
    // Qatar GrandPrix Date
    static let qatarDate = Calendar.current.date(from: DateComponents(year: 2024, month: 12, day: 1))!
    static let qatarDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: qatarDate)!
    
    // Abu Dhabi GrandPrix Date
    static let abuDhabiDate = Calendar.current.date(from: DateComponents(year: 2024, month: 12, day: 8))!
    static let abuDhabiDateOfTheYear = Calendar.current.ordinality(of: .day, in: .year, for: abuDhabiDate)!
}
