//
//  ViewController.h
//  Nevedrov_lab4
//
//  Created by Admin on 27.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
@private
    NSMutableArray *_students;
}

@property (weak, nonatomic) IBOutlet UIButton *button_save;
@property (weak, nonatomic) IBOutlet UITextField *text_field_save;
- (IBAction)button_touch:(id)sender;
@property (weak, nonatomic) IBOutlet UITextView *text_view;
@property (weak, nonatomic) IBOutlet UITextField *text_field_last_name;

- (NSURL *)plistURL;

@end

