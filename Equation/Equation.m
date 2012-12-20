//
//  Equation.m
//  Equation
//
//  Created by 山崎 進 on 2012/12/12.
//  Copyright (c) 2012年 zacky1972. All rights reserved.
//

#import "Equation.h"

@implementation Equation

@synthesize a,b,c;

- (id)initWithA:(double)_a b:(double)_b c:(double)_c
{
    self = [super init];
    if(self != nil) {
        a = _a;
        b = _b;
        c = _c;
    }
    return self;
}



// 判別式 discriminant
- (double)discriminant
{
    return b * b - 4 * a * c;
}

// 実数解ならば true を返す
- (BOOL)isReal
{
    return [self discriminant] >= 0;
}

- (double)real1
{
    if(a!=0){
    if([self isReal]) {
        return (-b + sqrt([self discriminant]))/(2*a);
    }
    return (-b)/(2*a);
    }
    else{if(b!=0)
        return (-b)/(c);
    else{if(c==0)
        return 0;
        
    }
    }
}


- (double)real2
{
    if(a!=0){
    if([self isReal]) {
        return (-b - sqrt([self discriminant]))/(2*a);
    }
    return (-b)/(2*a);
    }
    else {
        return 0;
    }

}
- (double)imaginary1
{
    if(a!=0){
    if([self isReal]) {
        return 0;
    }
    return (sqrt(-[self discriminant]))/(2*a);
}
    else {
        return 0;
    }
}
- (double)imaginary2
{
    if(a!=0){
    if([self isReal]) {
        return 0;
    }
    return -(sqrt(-[self discriminant]))/(2*a);
}
    else {return 0;
    }

}

@end
