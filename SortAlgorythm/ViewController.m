//
//  ViewController.m
//  SortAlgorythm
//
//  Created by Ian Tsai on 2015-07-05.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *dArray =@[@101, @201, @301, @121,@11,@123,@21,@14,@32,@76,@89,@987,@65];
    NSMutableArray *unsortedArray = [NSMutableArray arrayWithArray:dArray];
    
    NSLog(@"%@", unsortedArray);
    
    NSArray *sortedArray = [self bubbleSort:unsortedArray];
    
    NSLog(@"%@", sortedArray);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSArray *)bubbleSort:(NSMutableArray *)unsortedArray {
    
    BOOL swapped = YES;
    
    while (swapped) {
        
        swapped = NO;
    
        for (int i = 1; i < unsortedArray.count; i++) {
            
            if (unsortedArray[i-1] > unsortedArray[i]) {
                
                [unsortedArray exchangeObjectAtIndex:i-1 withObjectAtIndex:i];
                
                swapped = YES;
            }
        }
    }
    
    
    
    return unsortedArray;
}

@end
