//
//  ECCurve.h
//  iOS-Vote
//
//   We will be working with Barreto-Naehrig curves so these functions are defined
//   with that format in mind.
//
//  Created by willy on 09/07/15.
//  Copyright (c) 2015 wrv. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "gmp.h"
#import "gmpxx.h"

@interface ECCurve : NSObject

@property (nonatomic, strong) mpz_t * b; 
@property (nonatomic, strong) mpz_t * discriminant;

- (id) initWithB: (mpz_t) bVal;
- (int) isSmooth;
- (bool) testPoint: (mpz_t) x
			  yVal: (mpz_t) y;
- (NSString) toString;
- (int) Equal: (ECCurve) other;

@end
