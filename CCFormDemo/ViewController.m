//
//  ViewController.m
//  CCFormDemo
//
//  Created by CC on 2020/7/29.
//  Copyright © 2020 CC (deng you hua | cworld1000@gmail.com). All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"CC Bug Test";

    XLFormDescriptor *form = [XLFormDescriptor formDescriptor];
    XLFormSectionDescriptor *section = [XLFormSectionDescriptor formSection];
    [form addFormSection:section];
    
    XLFormRowDescriptor *row = [XLFormRowDescriptor formRowDescriptorWithTag:@"CCTag" rowType:XLFormRowDescriptorTypeSelectorPush];
    row.noValueDisplayText = @"NONE";
    row.selectorTitle = @"CC Test";
    row.selectorOptions = @[
        @"CC 1",
        @"CC 2",
        @"CC 3",
        @"CC 4",
        @"CC 5",
        @"CC 6",
    ];
    row.title = self.title;
    [section addFormRow:row];
    
    self.form = form;
}


@end
