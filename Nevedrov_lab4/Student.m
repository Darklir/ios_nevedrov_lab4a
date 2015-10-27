//
//  Student.m
//  Nevedrov_lab4
//
//  Created by Admin on 27.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import "Student.h"

@implementation Student

-(id) initWithFirstName:(NSString *) first_name initWithLastName:(NSString *)last_name;
{
    self = [super init];
    if (self)
    {
        self.first_name = first_name;
        self.last_name = last_name;
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self)
    {
        self.first_name = [aDecoder decodeObjectForKey:@"name"];
        self.last_name = [aDecoder decodeObjectForKey:@"surname"];
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:self.first_name forKey:@"name"];
    [encoder encodeObject:self.last_name forKey:@"surname"];
}


@end
