//
//  MathOperations.m
//  MyTrialProgect
//
//  Created by Roman Cheremin on 26/09/2019.
//  Copyright © 2019 Roman Cheremin. All rights reserved.
//

#import "MathOperations.h"

@implementation MathOperations

/// Метод класса MathOperations, который позволяет сортировать массив чисел в зависимост от нужд: по возрастанию или по убыванию
/// @param myArray  массив который требуетсяотсортировать
/// @param myRule  флаг указывающий на способ сортировки: 1 - по возрастанию, 0 - по убыванию
- (void)sortWithRule:(NSMutableArray <NSString *> *)myArray withRule:(NSNumber *)myRule
{
    for (NSUInteger i = myArray.count - 1; i > 0; i--)
    {
        for (NSUInteger j = 0; j < i; j++)
        {
            if (([myRule isEqualToNumber:@(1)] && myArray[j].intValue > myArray[j + 1].intValue) || ([myRule isEqualToNumber:@(0)] && !(myArray[j].intValue > myArray[j + 1].intValue)))
            {
                NSString *tmp = myArray[j];
                myArray[j] = myArray[j + 1];
                myArray[j + 1] = tmp;
            }
        }
    }
}
@end
