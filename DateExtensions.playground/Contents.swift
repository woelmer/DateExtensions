import Foundation

var dateTimeFormatter = DateFormatter()
dateTimeFormatter.dateFormat = "MM-dd-yyyy HH:mm:ss.SSSS"

let wednesday10AM = dateTimeFormatter.date(from: "07-05-2017 10:00:00.0000")!
let december25 = dateTimeFormatter.date(from: "12-25-2017 20:34:23.0000")!

let monday = wednesday10AM.firstDayOfWeek

let jan8th = december25.addWeeks(2)
let december18 = jan8th.weeksAgo(3)

let jan9th = jan8th.addDays(1)
let december31 = jan9th.daysAgo(9)

let noon = wednesday10AM.addHours(2)
let eightAM = noon.hoursAgo(4)
noon.hoursFrom(eightAM)

let ninePM = december25.addMinutes(26)
let eightThirtyPM = ninePM.minutesAgo(30)

let midnightOnDec25th = december25.startOfDay
dateTimeFormatter.string(from: midnightOnDec25th)
let endOfDayOnDec25th = december25.endOfDay
dateTimeFormatter.string(from: endOfDayOnDec25th)

let dayIndex = wednesday10AM.zeroBasedDayOfWeek

december25.daysBetween(jan8th)
noon.percentageOfDay

december25.numberOfWeeksInMonth
