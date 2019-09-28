//
//  ViewController.m
//  MyTrialProgect
//
//  Created by Roman Cheremin on 23/09/2019.
//  Copyright © 2019 Roman Cheremin. All rights reserved.
//

#import "ViewController.h"
#import "MathOperations.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad]; //вызов родительского метода (проксирование)
    
    [self exersizeWithArrayOfNumbers];
    [self exersizeWithArrayOfStrings];
}

/// Задание 1
- (void)exersizeWithArrayOfNumbers
{
    NSMutableArray <NSNumber *> * myArray = [@[@(3), @(6), @(32), @(24), @(81)] mutableCopy];
    NSMutableArray <NSNumber *> * additionalArray = [NSMutableArray new];
    MathOperations * helper = [MathOperations new];
    
    [helper sortWithRule:(NSMutableArray *)myArray withRule:@(1)];
    for (NSUInteger j = 0; j < myArray.count; j++)
    {
        if (myArray[j].intValue > 20)
        {
            [additionalArray addObject:myArray[j]];
        }
    }
    for (NSUInteger j = 0; j < additionalArray.count; j++)
    {
        if (additionalArray[j].intValue % 3)
        {
            [additionalArray removeObject:additionalArray[j]];
        }
    }
    for (NSUInteger j = 0; j < additionalArray.count; j++)
    {
        [myArray addObject:additionalArray[j]];
    }
    [helper sortWithRule:(NSMutableArray *)myArray withRule:@(0)];
}

/// Задание 2
- (void)exersizeWithArrayOfStrings
{
    NSMutableArray <NSString *> * arrayOfWords = [@[@"cataclism", @"catepillar", @"cat", @"teapot", @"truncate"] mutableCopy];
    NSPredicate * checker = [NSPredicate predicateWithFormat: @"SELF beginsWith[c] %@", @"cat"];
    NSMutableDictionary * howMuchLetters = [NSMutableDictionary new];
    
    arrayOfWords = (NSMutableArray *)[arrayOfWords filteredArrayUsingPredicate:checker];
    for (NSString *word in arrayOfWords)
    {
        NSLog(@"%@\n", word);
    }
    for (NSInteger index = 0; index < arrayOfWords.count; index++)
    {
        [howMuchLetters setValue:@(arrayOfWords[index].length) forKey:arrayOfWords[index]];
    }
}

@end
