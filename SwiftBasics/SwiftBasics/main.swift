//
//  main.swift
//  SwiftBasics
//
//  Created by YP-21031 on 2022/3/3.
//

import Foundation

print(Int.max)

print(Int64.max)


var i8: UInt8 = 20;

var i32: Int32 = 255;

var intMax = Int.max

//intMax += 1

print("???")

var x = 1;
var u = 1;

//if x= u {
//
//}

print(9 % 4)

print(-9 % 4)

print(-9 % -4)

print(9 % -4)

var abc = ...3

//for p in abc {
//    error
//    print(p)
//}

let singleLineString = "sda"

let multilineString = """
    asdasdasdasd
    asdad
"""


var arr = ["1", "2", "3"]


arr[1...2] = ["3", "4", "5"]

print(arr)

arr[1...2] = ["6", "6"]

print(arr)

arr[1...2] = ["0", "0"]

print(arr)

func func1(param1: String = "dasd", param2: String) {
    print(param1)
    print(param2)
}

func1(param2: "avs")
func1(param1: "FF", param2: "String")

actor TemperatureLogger {
    let label: String
    var measurements: [Int]
    private(set) var max: Int

    init(label: String, measurement: Int) {
        self.label = label
        self.measurements = [measurement]
        self.max = measurement
    }
}


extension TemperatureLogger {
    func update(with measurement: Int) {
        measurements.append(measurement)
        if measurement > max {
            max = measurement
        }
    }
}

func test() async {
    let logger = TemperatureLogger(label: "Outdoors", measurement: 25)
    print(await logger.max)
    // Prints "25"

    await logger.update(with: 3)
}

