//
//  NextGrandPrixConfig.swift
//  RaceTrackWidgetExtension
//
//  Authors:
//  * Saurav Maheshkar (@wasmftw)
//

import SwiftUI

struct NextGrandPrixConfig {
    let backgroundColor: Color
    let grandPrix: String
    let venue: String
    
    static func determineConfig(from date: Date) -> NextGrandPrixConfig {
        let dayOfTheYear: Int = Calendar.current.ordinality(of: .day, in: .year, for: date)!

        switch true {
        case dayOfTheYear < Date.bahrainDateOfTheYear:
            // Bahrain GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Bahrain", venue: "🇧🇭 Sakhir"
            )
        case Date.bahrainDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.saudiArabiaDateOfTheYear:
            // Saudi Arabia GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Saudia Arabia", venue: "🇸🇦 Jeddah"
            )
        case Date.saudiArabiaDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.australiaDateOfTheYear:
            // Australia GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Australia", venue: "🇦🇺 Melbourne"
            )
        case Date.australiaDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.japanDateOfTheYear:
            // Japan GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Japan", venue: "🇯🇵 Suzuka"
            )
        case Date.japanDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.chinaDateOfTheYear:
            // China GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "China", venue: "🇨🇳 Shanghai"
            )
        case Date.chinaDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.miamiDateOfTheYear:
            // Miami GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Miami", venue: "🇺🇸 Miami"
            )
        case Date.miamiDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.emiliaRomagnaDateOfTheYear:
            // Emilia Romagna GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Emilia Romagna", venue: "🇮🇹 Imola"
            )
        case Date.emiliaRomagnaDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.monacoDateOfTheYear:
            // Monaco GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Monaco", venue: "🇲🇨 Monaco"
            )
        case Date.monacoDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.canadaDateOfTheYear:
            // Canada GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Canada", venue: "🇨🇦 Montreal"
            )
        case Date.canadaDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.spainDateOfTheYear:
            // Spain GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Spain", venue: "🇪🇸 Barcelona"
            )
        case Date.spainDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.austriaDateOfTheYear:
            // Austria GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Austria", venue: "🇦🇹 Spielberg"
            )
        case Date.austriaDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.unitedKingdomDateOfTheYear:
            // United Kingdom GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "United Kingdom", venue: "🇬🇧 Silverstone"
            )
        case Date.unitedKingdomDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.hungaryDateOfTheYear:
            // Hungary GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Hungary", venue: "🇭🇺 Budapest"
            )
        case Date.hungaryDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.belgiumDateOfTheYear:
            // Belgium GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Belgium", venue: "🇧🇪 Spa"
            )
        case Date.belgiumDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.netherlandsDateOfTheYear:
            // Netherlands GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Netherlands", venue: "🇳🇱 Zandvoort"
            )
        case Date.netherlandsDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.italyDateOfTheYear:
            // Italy GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Italy", venue: "🇮🇹 Monza"
            )
        case Date.italyDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.azerbaijanDateOfTheYear:
            // Azerbaijan GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Azerbaijan", venue: "🇦🇿 Baku"
            )
        case Date.azerbaijanDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.singaporeDateOfTheYear:
            // Singapore GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Singapore", venue: "🇸🇬 Singapore"
            )
        case Date.singaporeDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.usaDateOfTheYear:
            // USA GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "USA", venue: "🇺🇸 Austin"
            )
        case Date.usaDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.mexicoDateOfTheYear:
            // Mexico GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Mexico", venue: "🇲🇽 Mexico City"
            )
        case Date.mexicoDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.brazilDateOfTheYear:
            // Brazil GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Brazil", venue: "🇧🇷 Sao Paulo"
            )
        case Date.brazilDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.lasVegasDateOfTheYear:
            // Las Vegas GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Las Vegas", venue: "🇺🇸 Las Vegas"
            )
        case Date.lasVegasDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.qatarDateOfTheYear:
            // Qatar GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Qatar", venue: "🇶🇦 Lusail"
            )
        case Date.qatarDateOfTheYear < dayOfTheYear && dayOfTheYear < Date.abuDhabiDateOfTheYear:
            // Abu Dhabi GrandPrix Date
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Abu Dhabi", venue: "🇦🇪 Yas Marina"
            )
        default:
            return NextGrandPrixConfig(
                backgroundColor: .blue, grandPrix: "Next Grand Prix", venue: "🏎️"
            )
        }
    }
}
