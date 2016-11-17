//: Playground - noun: a place where people can play

import UIKit
import SwiftStockKit

//This is in Int format being cents
var TSLA = [
    "9/26/16": 20899,
    "9/27/16": 20581,
    "9/28/16": 20627,
    "9/29/16": 20070,
    "9/30/16": 20403,
    "10/3/16": 21370,
    "10/4/16": 21141,
    "10/5/16": 20846,
    "10/6/16": 20100,
    "10/7/16": 19661
]

//Add a pull from yahoo, look at SwiftStock

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