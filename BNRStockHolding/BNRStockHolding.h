//
//  BNRStockHolding.h
//  BNRStockHolding
//
//  Created by Lee on 15-06-09.
//  Copyright (c) 2015 Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

// challenge: create a class called BNRStockHolding to represent stocks that you have purchased

{

    // BNRStockHolding has 3 instance variables

    int _numberofShares;
    float _purchaseSharePrice;
    float _currentSharePrice;

}

// BNRStockHolding has methods to read and set its instance variables

- (float)currentSharePrice;
- (void)setCurrentSharePrice:(float)cp;
- (float)purchaseSharePrice;
- (void)setPurchaseSharePrice:(float)pp;
- (int)numberOfShares;
- (void)setNumberOfShares:(int)n;
- (void)addYourselfToArray:(NSMutableArray *)theArray;

// BNRStockHolding has a method that calculates the cost and value in dollars 

- (float)costInDollars;
- (float)valueInDollars;


@end
