//
//  ViewController.m
//  HQUIKit
//
//  Created by HanQi on 2017/8/30.
//  Copyright © 2017年 HanQi. All rights reserved.
//

#import "ViewController.h"
#import "HQUIKit.h"
#import "HQCategory.h"

#define ScreenWidth [[UIScreen mainScreen] bounds].size.width
#define ScreenHeight [[UIScreen mainScreen] bounds].size.height

@interface ViewController () <UITableViewDelegate, UITableViewDataSource> {

}

@property (nonatomic, strong) UITableView *tableView;;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UILabel *label = [HQUIKit hq_labelWithTextColor:[UIColor hq_randomColor] fontSize:20 textAlignment:NSTextAlignmentRight];
//    label.frame = CGRectMake(0, 20, 100, 80);
//    label.text = @"13512";
//    [self.view addSubview:label];

    self.view.backgroundColor = [UIColor whiteColor];
    
//    UIImageView *imageView = [HQUIKit hq_imageViewWithImageUrlString:@"http://upload-images.jianshu.io/upload_images/2162015-4724f8b0b1058e9e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/12" placeholderImageNamed:@"header"];
//    imageView.frame = CGRectMake(0, 0, 100, 100);
//    [self.view addSubview:imageView];
    
    
    UIButton *button = [HQUIKit hq_navigationButtonWithImageNamed:@"icon_return"];
    
    UIButton *button2 = [HQUIKit hq_navigationButtonWithImageNamed:@"header"];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button2];

    
//    _tableView = [HQUIKit hq_tableViewWithGrouped];
//    _tableView.delegate = self;
//    _tableView.dataSource = self;
//    
//    _tableView.frame = CGRectMake(0, 0, ScreenWidth, ScreenHeight);
//    
//    [self.view addSubview:_tableView];

    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 10;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {

    return 30;
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {

    UIView *view = [[UIView alloc] initWithFrame:CGRectZero];
    view.backgroundColor = [UIColor hq_randomColor];
    
    return view;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.textLabel.text = @"asdfasdfa";
    
    
    return cell;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
