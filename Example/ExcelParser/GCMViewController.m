//
//  GCMViewController.m
//  ExcelParser
//
//  Created by 984603904@qq.com on 12/15/2020.
//  Copyright (c) 2020 984603904@qq.com. All rights reserved.
//

#import "GCMViewController.h"
#import "LAWExcelTool.h"

@interface GCMViewController ()<LAWExcelParserDelegate>

@end

@implementation GCMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *path = [[NSBundle mainBundle] pathForResource:@"test3" ofType:@"xlsx"];
    [LAWExcelTool shareInstance].delegate = self;
    [[LAWExcelTool shareInstance] parserExcelWithPath:path];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)parser:(LAWExcelTool *)parser success:(id)responseObj
{
    NSLog(@"%@",responseObj);
}

@end
