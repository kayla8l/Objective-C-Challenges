//
//  BNRStockHolding.m
//  BNRStockHolding
//
//  Created by Lee on 15-06-09.
//  Copyright (c) 2015 Lee. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (int)numberOfShares
{
    return _numberofShares;
}

- (float)purchaseSharePrice
{
    return _purchaseSharePrice;
}

- (float)currentSharePrice
{
    return _currentSharePrice;
}

- (void)setNumberOfShares:(int)n
{
    _numberofShares = n;
}

- (void)setPurchaseSharePrice:(float)pp
{
    _purchaseSharePrice = pp;
}

- (void)setCurrentSharePrice:(float)cp
{
    _currentSharePrice = cp;
}

- (float)costInDollars
{
    float pp = [self purchaseSharePrice];
    int n = [self numberOfShares];
    
    return pp * n;
}

- (float)valueInDollars
{
    float cp = [self currentSharePrice];
    int n = [self numberOfShares];
    
    return cp * n;
}

- (void)addYourselfToArray:(NSMutableArray *)theArray
{
    [theArray addObject:self];
}

@end
