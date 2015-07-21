//
//  ECCurve.m
//  iOS-Vote
//
//  Created by willy on 09/07/15.
//  Copyright (c) 2015 wrv. All rights reserved.
//

#import "ECCurve.h"

@implementation ECCurve

@synthesize b = _b;
@synthesize discriminant = _discriminant;

- (id) initWithB: (mpz_t) bVal{
	self.b = bVal;

	mpz_t *throwaway;
	mpz_init(throwaway);

	mpz_pow_ui(throwaway, self.b, 2);
    mpz_mul_si(throwaway, throwaway, 27);
	mpz_mul_si(self.discriminant,throwaway, 16);

	if (self.isSmooth() == 0){
		NSLog(@"Curve parameters are not smooth");
	}

}

- (int) isSmooth{
	return mpz_cmp_si(self.discriminant, 0);
}

- (bool) testPoint: (mpz_t) x
			  yVal: (mpz_t) y{
	mpz_t* rhs, lhs;
	mpz_init(rhs);
	mpz_init(lhs);

	mpz_pow_ui(lhs, y, 2);
	mpz_pow_ui(rhs, x, 3);
	mpz_add(rhs, rhs, self.b);
	return lhs == rhs;
}

- (NSString*) toString{
    NSString* dat
	return [[NSString alloc] stringWithFormat:@"y^2 = x^3 + %@",self.b];
}
- (int) Equal: (ECCurve*) other{

	return mpz_cmp(self.b, other.b);
}

@end
