//
//  ContentView.swift
//  KmpPlaygroundiOS
//
//  Created by Brad Patras on 8/5/24.
//

import SwiftUI
import Shared

struct ContentView: View {
	@State var selectedDays = Set<Day>()
	@State var days: [Day] = Day.self.entries

    var body: some View {
		List {
			Section {
				ForEach(days) { day in
					Button {
						if selectedDays.contains(day) {
							selectedDays.remove(day)
						} else {
							selectedDays.insert(day)
						}
					} label: {
						dayRow(day: day, isSelected: selectedDays.contains(day))
							.contentShape(Rectangle())
					}
					.buttonStyle(.plain)
				}
			} header: {
				Text("When would you like to be reminded?")
			} footer: {
				if selectedDays.isEmpty {
					Text("No reminders set.")
				} else {
					Text("Reminder will be sent out at 9am on \(days.filter({ selectedDays.contains($0) }).map { $0.shorthand() }.joined(separator: ", ")).")
				}
			}
		}
    }

	func dayRow(day: Day, isSelected: Bool) -> some View {
		HStack {
			Text(day.name())
			Spacer()
			if isSelected {
				Image(systemName: "checkmark")
			}
		}
	}
}

#Preview {
    ContentView()
}

extension Day: Identifiable {
	public var id: String { self.name() }
}
