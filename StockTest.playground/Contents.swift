//: Playground - noun: a place where people can play

import UIKit
import SwiftStockKit

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








// Pass in your search term
SwiftStockKit.fetchStocksFromSearchTerm(term: searchText) { (stockInfoArray) -> () in
    
    // And it returns an array of results of type
    struct StockSearchResult {
        var symbol: String?
        var name: String?
        var exchange: String?
        var assetType: String?
    }
    
}

// Pass in your symbol
SwiftStockKit.fetchStockForSymbol(symbol: stockSymbol) { (stock) -> () in
    
    //And it returns a stock object that looks like this
    struct Stock {
        var ask: String?
        var averageDailyVolume: String?
        var bid: String?
        var bookValue: String?
        var changeNumeric: String?
        var changePercent: String?
        var dayHigh: String?
        var dayLow: String?
        var dividendShare: String?
        var dividendYield: String?
        var ebitda: String?
        var epsEstimateCurrentYear: String?
        var epsEstimateNextQtr: String?
        var epsEstimateNextYr: String?
        var eps: String?
        var fiftydayMovingAverage: String?
        var lastTradeDate: String?
        var last: String?
        var lastTradeTime: String?
        var marketCap: String?
        var companyName: String?
        var oneYearTarget: String?
        var open: String?
        var pegRatio: String?
        var peRatio: String?
        var previousClose: String?
        var priceBook: String?
        var priceSales: String?
        var shortRatio: String?
        var stockExchange: String?
        var symbol: String?
        var twoHundreddayMovingAverage: String?
        var volume: String?
        var yearHigh: String?
        var yearLow: String?
        
        //this has everything neatly packaged to go into a datasource
        var dataFields: [[String : String]]
    }
    
}

