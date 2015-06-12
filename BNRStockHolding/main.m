//
//  main.m
//  BNRStockHolding
//
//  Created by Lee on 15-06-09.
//  Copyright (c) 2015 Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create instances of BNRStockHolding
        
        BNRStockHolding *kate_spade = [[BNRStockHolding alloc] init];
        BNRStockHolding *michael_kors = [[BNRStockHolding alloc] init];
        BNRStockHolding *nordstrom = [[BNRStockHolding alloc] init];
        
        // Create an array with each of the instances
        
        NSMutableArray *portfolio = [[NSMutableArray alloc] init];
        
        // Set the instance variables for each one
        
        [kate_spade setNumberOfShares:127660000];
        [kate_spade setPurchaseSharePrice:10.18];
        [kate_spade setCurrentSharePrice:25.50];
        [kate_spade addYourselfToArray:portfolio];
        
        [michael_kors setNumberOfShares:199660000];
        [michael_kors setPurchaseSharePrice:29.33];
        [michael_kors setCurrentSharePrice:48.57];
        [michael_kors addYourselfToArray:portfolio];
        
        [nordstrom setNumberOfShares:191000000];
        [nordstrom setPurchaseSharePrice:65.59];
        [nordstrom setCurrentSharePrice:73.16];
        [nordstrom addYourselfToArray:portfolio];
        
        // Print out the data in the array
        
        for (BNRStockHolding *sh in portfolio)
        {
            int n = [sh numberOfShares];
            float pp = [sh purchaseSharePrice];
            float cp = [sh currentSharePrice];
            float cd = [sh costInDollars];
            float vd = [sh valueInDollars];
            
            NSLog(@"The number of shares is %i", n);
            NSLog(@"The purchase price of the share was %.2f", pp);
            NSLog(@"The current share price is now %.2f", cp);
            NSLog(@"The cost to the portfolio is %-.2f", cd);
            NSLog(@"The current value of the holding is %.2f", vd);
            
        }
        
        
        
        
    }
    return 0;
}

