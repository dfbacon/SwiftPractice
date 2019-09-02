import Foundation

/*
 * Filename: a1_swift
 * Author: Daniel Bacon
 * Date: 01 September 2019
 *
 * Copy of programming assignment originally for C++.
 *
 * This is the a1_1 program. The program is designed to determine if the
 * product of a given month and day combination equals a given two-digit
 * year. The date for evaluation is input by the user in the strict
 * format, month/day/2-digit year. The input values are stored in three
 * int-type variables, 'month' for the month, 'day' for the day, and
 * 'year' for the year. The program displays "the date is magic!" if the
 * evaluation is true, otherwise it displays "the date is not magic."
 *
 * The main concepts being explored are input, output and formatting for
 * both. Instructions regarding input validation or other error handling
 * was not specified or requested and so has not been implemented.
 */

var inputMonth, inputDay, inputYear : String?
var month = -1, day = -1 , year = -1

while inputMonth == nil {
    print("Enter month (MM)", terminator: ": ")
    inputMonth = readLine()

    if let strMonth = inputMonth  {
        month = Int(strMonth) ?? -1
        
        if month < 1 || month > 12 {
            print("Invalid month...")

            inputMonth = nil
        }
    }
}

while inputDay == nil {
    print("Enter day (DD)", terminator: ": ")
    inputDay = readLine()

    if let strDay = inputDay {
        day = Int(strDay) ?? -1

        if day < 1 || day > 31 {
            print("Invalid day...")

            inputDay = nil
        }
    }
}

while inputYear == nil {
    print("Enter year (YY)", terminator: ": ")
    inputYear = readLine()

    if let strYear = inputYear {
        year = Int(strYear) ?? -1

        if year < 0 || year > 99 {
            print("Invalid year...")

            inputYear = nil
        }
    }
}

if year == month * day {
    print("That date is magic!")
} else {
    print("That date is not magic.")
}

