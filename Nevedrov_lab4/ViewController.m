//
//  ViewController.m
//  Nevedrov_lab4
//
//  Created by Admin on 27.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSData *plistData = [NSData dataWithContentsOfURL:[self plistURL]];
    _students = [[NSKeyedUnarchiver unarchiveObjectWithData:plistData] mutableCopy];
    if (!_students)
        _students = [NSMutableArray array];
    NSMutableString *str = [NSMutableString string];
    for (Student *stud in _students)
        [str appendFormat:@"First name: %@, Last name: %@.\n", stud.first_name, stud.last_name]; self.text_view.text = str;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSURL *)plistURL {
    return [[[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject] URLByAppendingPathComponent:@"data.plist"];
}

- (IBAction)button_touch:(id)sender
{
    Student *new_student = [[Student alloc] initWithFirstName:self.text_field_save.text initWithLastName:self.text_field_last_name.text];
    [_students addObject:new_student];
    NSMutableArray *student_strings = [NSMutableArray array];
    for (Student *st in _students) {
        [student_strings addObject: [NSString stringWithFormat:@"First name: %@, Last name: %@.",st.first_name, st.last_name ]];
    }
    self.text_view.text = [student_strings componentsJoinedByString:@"\n"];
    NSMutableData *data = [NSMutableData data]; NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data]; archiver.outputFormat = NSPropertyListXMLFormat_v1_0;
    [archiver encodeObject:_students forKey:@"root"]; [archiver finishEncoding];
    [data writeToURL:[self plistURL] atomically:YES];
}
@end
