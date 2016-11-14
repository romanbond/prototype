//: Playground - noun: a place where people can play

import UIKit

//This is considered a dictionary
var TSLA = [
    "9/26/16": 208.99,
    "9/27/16": 205.81,
    "9/28/16": 206.27,
    "9/29/16": 200.70,
    "9/30/16": 204.03,
    "10/3/16": 213.70,
    "10/4/16": 211.41,
    "10/5/16": 208.46,
    "10/6/16": 201.00,
    "10/7/16": 196.61
]

//Data like this should be stored in integers keep track of what factor
//So 55033 in ints would be $550.33

var min = TSLA["9/26/16"]
print(min)
var min2:Double = min!
print(min2)

var max: Double = 0
var lowPrice: Double = 0
var numA: Int = 0
for (stockDate, stockPrice) in TSLA {
    if (min2 > stockPrice) {
        min2 = stockPrice
    }
    if (max < stockPrice) {
        max = stockPrice
    }
    numA = numA + 1
    if(numA == TSLA.count){
        print(" ")
        print("All of the Dates and Prices for TSLA:")
        for (stockDate, stockPrice) in TSLA {
            print("\(stockDate): \(stockPrice)")
        }
        print(" ")
        print("Min: \(min2)")
        print("Max: \(max)")
    }
}

var averagePrice: Double = 0
var numB: Double = 0
for (stockDate, stockPrice) in TSLA {
    averagePrice = averagePrice + stockPrice
    numB=numB+1
}
averagePrice = averagePrice/numB
print("The average price this week was: \(averagePrice)")
