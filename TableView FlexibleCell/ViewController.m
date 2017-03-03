//
//  ViewController.m
//  TableView FlexibleCell
//
//  Created by Nagam Pawan on 3/3/17.
//  Copyright © 2017 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController{
    
    NSArray *testArray;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myTableView.estimatedRowHeight = 2.0;
    self.myTableView.rowHeight = UITableViewAutomaticDimension;
    self.myTableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    testArray = [NSArray arrayWithObjects:@"My first Text aaaaaaaaaaaaaaaaaaasasasa asass asasas asas asas asas addd dcd  cddcd  cdsdcdddc dccdcd  vf vfv vvf", @"heloow whats up", @"dhdhhdhsdfghdfg asdfgasdfg asdfsdfg qwertqwert xcvbcvb sdfsdfg qwerwert sdfgsdfgasdfghj zxcvbn poiuytre dfghjk mnbvcx asdfghjk qwertyu dfghjk cvbnm rtyui sdfgh asdcvbnm qwsdfvbnmko edcvbnjiol esxcvguik tesxcvbhj", @"ththtgerevgdregg", nil];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return testArray.count;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    TableViewCell *cell = [self.myTableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.label.text = [testArray objectAtIndex:indexPath.row];
    return cell;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
//    TableViewCell *cell = [self.myTableView dequeueReusableCellWithIdentifier:@"cell"];
    
//    cell.label.text = @"My text";
    return UITableViewAutomaticDimension;
    
}
@end
