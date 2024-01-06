//
//  RaceTrackWidget.swift
//  RaceTrackWidget
//
//  Authors:
//  * Saurav Maheshkar (@wasmftw)
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> DayEntry {
        DayEntry(date: Date())
    }

    func getSnapshot(in context: Context, completion: @escaping (DayEntry) -> ()) {
        let entry = DayEntry(date: Date())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [DayEntry] = []

        let currentDate = Date()
        for monthOffset in 0 ..< 11 {
            let entryDate = Calendar.current.date(byAdding: .month, value: monthOffset, to: currentDate)!
            let startOfDay = Calendar.current.startOfDay(for: entryDate)
            let entry = DayEntry(date: startOfDay)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct DayEntry: TimelineEntry {
    let date: Date
}

struct RaceTrackWidgetEntryView : View {
    var entry: DayEntry
    var config: NextGrandPrixConfig
    
    init(entry: DayEntry) {
        self.entry = entry
        self.config = NextGrandPrixConfig.determineConfig(from: entry.date)
    }
    
    var body: some View {
        ZStack {
            ContainerRelativeShape().fill(
                LinearGradient(
                    gradient: Gradient(colors :[ config.primaryColor, config.secondaryColor]),
                    startPoint: .bottomLeading,
                    endPoint: .topTrailing
                )
            )
            
            VStack{
                Spacer() // Top Spacer
                Text(config.grandPrix)
                    .font(.title3)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.6)
                Spacer() // Content Spacer
                Divider()
                    .frame(height: 0.4)
                    .overlay(.white)
                Text(config.venue)
                Spacer() // Bottom Spacer
            }
            .padding()
        }
    }
}

struct RaceTrackWidget: Widget {
    let kind: String = "RaceTrackWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            if #available(iOS 17.0, *) {
                RaceTrackWidgetEntryView(entry: entry)
                    .containerBackground(.fill.tertiary, for: .widget)
            } else {
                RaceTrackWidgetEntryView(entry: entry)
                    .padding()
                    .background()
            }
        }
        .configurationDisplayName("Next Grand Prix")
        .description("Shows the next upcoming Grand Prix.")
        // Removes Additional Margin
        // Source: https://stackoverflow.com/a/76842922
        .contentMarginsDisabled()
        // Only Support Small Size Widget
        .supportedFamilies([.systemSmall])
    }
}

#Preview(as: .systemSmall) {
    RaceTrackWidget()
} timeline: {
    // Current Date
    DayEntry(date: .now)
    // Bahrain Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 1,
        day: 2
    ))!)
    // Saudi Arabia Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 3,
        day: 4
    ))!)
    // Australia Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 3,
        day: 18
    ))!)
    // Japan Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 4,
        day: 3
    ))!)
    // China Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 4,
        day: 12
    ))!)
    // Miami Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 4,
        day: 26
    ))!)
    // Emilia Romagna Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 5,
        day: 7
    ))!)
    // Monaco Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 5,
        day: 22
    ))!)
    // Canada Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 6,
        day: 4
    ))!)
    // Spain Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 6,
        day: 12
    ))!)
    // Austria Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 6,
        day: 25
    ))!)
    // United Kingdom Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 7,
        day: 2
    ))!)
    // Hungary Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 7,
        day: 12
    ))!)
    // Belgium Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 7,
        day: 23
    ))!)
    // Netherlands Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 8,
        day: 2
    ))!)
    // Italy Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 8,
        day: 27
    ))!)
    // Azerbaijan Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 9,
        day: 2
    ))!)
    // Singapore Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 9,
        day: 18
    ))!)
    // USA Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 9,
        day: 29
    ))!)
    // Mexico Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 10,
        day: 22
    ))!)
    // Brazil Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 10,
        day: 28
    ))!)
    // Las Vegas Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 11,
        day: 16
    ))!)
    // Qatar Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 11,
        day: 25
    ))!)
    // Abu Dhabi Grand Prix
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 12,
        day: 4
    ))!)
    // Default Case
    DayEntry(date: Calendar.current.date(from: DateComponents(
        calendar: Calendar.current,
        year: 2024,
        month: 12,
        day: 20
    ))!)
}
