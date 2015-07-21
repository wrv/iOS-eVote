//
//  ECPoint.h
//  iOS-Vote
//
//   This is a class that works with points on the Barreto-Naehrig Curves
//
//  Created by willy on 09/07/15.
//  Copyright (c) 2015 wrv. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "gmp.h"
#import "gmpxx.h"
#import "ECCurve.h"

@interface ECPoint : NSObject

@property (nonatomic) mpz_t *x;
@property (nonatomic) mpz_t *y;
@property (nonatomic) ECCurve * curve;

- (id) initWithXY: (mpz_t *) x
			 yVal: (mpz_t *) y
         andCurve: (ECCurve *) curve;

- (ECPoint *) addPoint: (ECPoint *) other;
- (ECPoint *) doublePoint;
- (ECPoint *) negatePoint;

@end

@interface ECPointIdeal : ECPoint

- (id) initWithCurve: (ECCurve *) curve;

- (ECPoint *) negatePoint;
- (ECPoint *) addPoint: (ECPoint *) other;

@end