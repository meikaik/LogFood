//
//  ViewController.m
//  LogFood
//
//  Created by Mei Kai Koh on 5/11/16.
//  Copyright © 2016 UW. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    timer = [NSTimer scheduledTimerWithTimeInterval:0.5f
                                                  target:self
                                                selector:@selector(showTime)
                                                userInfo:NULL
                                                 repeats:YES];
    // Category Food Carbs Protein Fats Calories
    NSArray *ingredients =
    [NSArray arrayWithObjects:
     [NSArray arrayWithObjects:@"Breakfast", @"Orange Juice", @"26", @"2", @"1", @"110", nil],
     [NSArray arrayWithObjects:@"Breakfast", @"Milk", @"12", @"8", @"8", @"150", nil],
     [NSArray arrayWithObjects:@"Breakfast", @"Cereal", @"33", @"9", @"5", @"20", nil],
     [NSArray arrayWithObjects:@"Breakfast", @"Bacon", @"1", @"5", @"7", @"80", nil],
     [NSArray arrayWithObjects:@"Breakfast", @"Oatmeal", @"13", @"2", @"1", @"72", nil],
     [NSArray arrayWithObjects:@"Breakfast", @"Pancake", @"40", @"5", @"3", @"200", nil],
     [NSArray arrayWithObjects:@"Breakfast", @"Muffin", @"20", @"3", @"10", @"200", nil],
     [NSArray arrayWithObjects:@"Breakfast", @"Banana", @"23", @"1", @"0", @"90", nil],
     [NSArray arrayWithObjects:@"Breakfast", @"Breakfast Sausage", @"3", @"5", @"14", @"150", nil],
     [NSArray arrayWithObjects:@"Breakfast", @"Italian Bread", @"14", @"2", @"1", @"77", nil],
     [NSArray arrayWithObjects:@"Breakfast", @"Plain Bagel", @"48", @"10", @"2", @"245", nil],
     [NSArray arrayWithObjects:@"Breakfast", @"Egg", @"0", @"8", @"5", @"72", nil],
     [NSArray arrayWithObjects:@"Breakfast", @"Peanut Butter", @"8", @"7", @"16", @"190", nil],
     [NSArray arrayWithObjects:@"Breakfast", @"Jam", @"8", @"0", @"0", @"30", nil],
     [NSArray arrayWithObjects:@"Lunch/Dinner", @"Spinach", @"3", @"2", @"0", @"20", nil],
     [NSArray arrayWithObjects:@"Lunch/Dinner", @"Chicken Noodle Soup", @"7", @"7", @"3", @"79", nil],
     [NSArray arrayWithObjects:@"Lunch/Dinner", @"Rice", @"35", @"3", @"0", @"150", nil],
     [NSArray arrayWithObjects:@"Lunch/Dinner", @"Chicken", @"1", @"21", @"3", @"120", nil],
     [NSArray arrayWithObjects:@"Lunch/Dinner", @"Pizza - Slice", @"35", @"13", @"12", @"300", nil],
     [NSArray arrayWithObjects:@"Lunch/Dinner", @"Ground Beef", @"0", @"23", @"8", @"200", nil],
     [NSArray arrayWithObjects:@"Lunch/Dinner", @"Gourmet - Burger", @"0", @"22", @"12", @"200", nil],
     [NSArray arrayWithObjects:@"Lunch/Dinner", @"Beefsteak Tomato", @"5", @"1", @"0", @"25", nil],
     [NSArray arrayWithObjects:@"Lunch/Dinner", @"Red Pepper", @"9", @"1", @"0", @"46", nil],
     [NSArray arrayWithObjects:@"Lunch/Dinner", @"Green Pepper", @"7", @"0", @"8", @"30", nil],
     [NSArray arrayWithObjects:@"Lunch/Dinner", @"Carrots", @"8", @"1", @"0", @"35", nil],
     [NSArray arrayWithObjects:@"Lunch/Dinner", @"Hummus", @"6", @"3", @"4", @"70", nil],
     [NSArray arrayWithObjects:@"Lunch/Dinner", @"Broccoli", @"0", @"0", @"0", @"31", nil],
     [NSArray arrayWithObjects:@"Lunch/Dinner", @"Chickpeas", @"17", @"5", @"2", @"100", nil],
     [NSArray arrayWithObjects:@"Lunch/Dinner", @"Salmon", @"0", @"24", @"10", @"200", nil],
     [NSArray arrayWithObjects:@"Lunch/Dinner", @"Tofu", @"1", @"10", @"7", @"60", nil],
     [NSArray arrayWithObjects:@"Lunch/Dinner", @"Cheddar Cheese", @"0", @"7", @"10", @"115", nil],
     [NSArray arrayWithObjects:@"Lunch/Dinner", @"Couscous", @"36", @"6", @"0", @"176", nil],
     [NSArray arrayWithObjects:@"Lunch/Dinner", @"Pasta", @"42", @"7", @"1", @"200", nil], nil];
    

    
    
    
    NSLog(@"%@", [[ingredients objectAtIndex:0] objectAtIndex:3]);
}

- (void)showTime{
    NSDate *now=[NSDate date];
    NSDateFormatter *dateFormatter=[NSDateFormatter new];
    [dateFormatter setDateFormat:@"HH:mm"];
    timeLabel.text=[dateFormatter stringFromDate:now];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)AddPage:(id)sender {
}
- (IBAction)SettingsPage:(id)sender {
}

@end
