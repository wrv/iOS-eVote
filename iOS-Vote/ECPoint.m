//
//  ECPoint.m
//  iOS-Vote
//
//  Created by willy on 09/07/15.
//  Copyright (c) 2015 wrv. All rights reserved.
//

#import "ECPoint.h"

@implementation ECPoint

@synthesize x = _x;
@synthesize y = _y;
@synthesize curve = _curve;

- (id) initWithXY: (mpz_t *) x
			 yVal: (mpz_t *) y
         andCurve: (ECCurve *) curve{
    self.x = x;
    self.y = y;
    self.curve = curve;
}

- (ECPoint *) addPoint: (ECPoint *) other{
	mpz_t * x_1, y_1, x_2, y_2;
	x_1 = self.x;
	y_1 = self.y;
	x_2 = other.x;
	y_2 = other.y;
	if (x_1 == x_2) && (y_1 == y_2){
		return [self doublePoint];
	} else {
		if (x_1 == x_2){
			return [[ECPointIdeal alloc] initWithCurve: self.curve];
		}
		//To do: restof addPoint code
	}
}

- (ECPoint *) doublePoint{
	//To do: doublePoint code
}

- (ECPoint *) negatePoint{
	mpz_t * negY;
	mpz_init(negY);
	mpz_neg(negY, self.y);
	return [ECPoint initWithXY: self.x yVal: negY andCurve: self.curve];
}

@end

//
// ECPointIdeal 
//  The class for our ideal points
//
@implementation ECPointIdeal : ECPoint

- (id) initWithCurve: (ECCurve *) curve{
	self.curve = curve;
}

- (ECPoint *) negatePoint{
	return self;
}
- (ECPoint *) addPoint: (ECPoint *) other{
	return other;
}

@end