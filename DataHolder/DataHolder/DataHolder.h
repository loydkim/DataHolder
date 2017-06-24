//
//  DataHolder.h
//  DataHolder
//
//  Created by YOUNGSIC KIM on 2017-06-24.
//  Copyright © 2017 YOUNGSIC KIM. All rights reserved.
//

#ifndef DataHolder_h
#define DataHolder_h


#endif /* DataHolder_h */

#import <Foundation/Foundation.h>

@interface DataHolder : NSObject

+ (DataHolder *)sharedInstance;

@property(assign) int age;
@property(assign) NSString *name;
@property(assign) NSString *city;

-(void) saveData;
-(void) loadData;

@end
