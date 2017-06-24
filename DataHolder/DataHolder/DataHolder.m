//
//  DataHolder.m
//  DataHolder
//
//  Created by YOUNGSIC KIM on 2017-06-24.
//  Copyright © 2017 YOUNGSIC KIM. All rights reserved.
//

#import "DataHolder.h"

NSString *const kAge = @"kAge";
NSString *const kName = @"kName";
NSString *const kCity = @"kCity";

@implementation DataHolder

-(id)init {
    self = [super init];
    if (self) {
        _age = 0;
        _name = @"";
        _city = @"";
    }
    return self;
}

+ (DataHolder *)sharedInstance {
    static DataHolder *_sharedInstance = nil;
    static dispatch_once_t onceSecurePredicate;
    
    dispatch_once(&onceSecurePredicate, ^{
        _sharedInstance = [[self alloc]init];
    });
    
    return _sharedInstance;
}

-(void) saveData {
    [[NSUserDefaults standardUserDefaults]setObject:[NSNumber numberWithInt:self.age] forKey:kAge];
    [[NSUserDefaults standardUserDefaults]setObject:[NSString stringWithFormat:@"%@",self.name] forKey:kName];
    [[NSUserDefaults standardUserDefaults]setObject:[NSString stringWithFormat:@"%@",self.city] forKey:kCity];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
-(void) loadData {
    if([[NSUserDefaults standardUserDefaults]objectForKey:kAge]) {
        self.age = [(NSNumber *)[[NSUserDefaults standardUserDefaults] objectForKey:kAge] intValue];
        self.name = [[NSUserDefaults standardUserDefaults]objectForKey:kName];
        self.city = [[NSUserDefaults standardUserDefaults]objectForKey:kCity];
    }else {
        self.age = 0;
        self.name = @"";
        self.city = @"";
    }
}

@end
