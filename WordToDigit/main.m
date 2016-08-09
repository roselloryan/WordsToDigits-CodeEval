//
//  main.m
//  WordToDigit


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSString *line = @"zero;two;five;seven;eight;four";
        
        NSArray *sepArray = [line componentsSeparatedByString:@";"];
        
        NSDictionary *namesAndNumbersDict = [[NSDictionary alloc]initWithObjectsAndKeys: @"0", @"zero", @"1", @"one", @"2", @"two", @"3", @"three", @"4", @"four", @"5", @"five", @"6", @"six", @"7", @"seven", @"8", @"eight", @"9", @"nine",  nil];
        
        NSMutableString *solutionString = [[NSMutableString alloc]init];
        
        for (NSString *numName in sepArray) {
            [solutionString appendString: [namesAndNumbersDict valueForKey:numName]];
            
//            NSLog(@"%@", [namesAndNumbersDict valueForKey:numName]);
        }
        NSLog(@"%@", solutionString);
        
    }
    return 0;
}
