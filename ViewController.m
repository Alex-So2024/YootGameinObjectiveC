//
//  ViewController.m
//  yoot app in C
//
//  Created by Alex So on 9/16/23.
//

#import "ViewController.h"

UIImageView *imgview;

@interface ViewController ()

@end

@implementation ViewController

@synthesize gamelbl = null;

//new stuff im adding 11/4 starts below



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //UIImage *img = [[UIImage alloc] init];
    //img = [UIImage imageNamed:@"img"];
    //imgview = [UIImageView init];
    //imgview.image = img;
    for (int i = 0; i < self.view.subviews.count; i++) {
        UIImageView *imgVw = (UIImageView *)[self.view viewWithTag:100];
        
        if(imgVw.tag == 100)
        {
            imgVw.frame = CGRectMake(190, 530, 20, 20);
            [self.view bringSubviewToFront:imgVw];

        }
    }
        
        
        
        
        
        
        //label for throwing sticks
        UILabel *throwlbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 80)];
        throwlbl.numberOfLines = 1;
        throwlbl.baselineAdjustment = YES;
        throwlbl.adjustsFontSizeToFitWidth = YES;
        throwlbl.clipsToBounds = YES;
        throwlbl.backgroundColor = [UIColor clearColor];
        throwlbl.textColor = [UIColor whiteColor];
        throwlbl.textAlignment = NSTextAlignmentCenter;
        throwlbl.text = @"this is a test";
        throwlbl.tag = 200;
        [self.view addSubview:throwlbl];
        
        
        
    }
    
    
    -(IBAction)btnclicked:(id)sender{
        
        //Code for button pressed throw sticks
        self.gamelbl.text = @"test";
        int rollNumber = arc4random_uniform(5) + 1;
        
        for (int i = 0; i < self.view.subviews.count; i++) {
            UILabel *label = (UILabel *)[self.view viewWithTag:200];
            
            if(label.tag == 200)
            {
                label.text = [NSString stringWithFormat:@"You rolled a %d", rollNumber];
                
            }
            
        }
        
        //move player
        //imgVw.frame = CGRectMake(233, 507, 20, 20); first coordinate
        //imgVw.frame = CGRectMake(271, 479, 20, 20); second coordinate
        //imgVw.frame = CGRectMake(303, 445, 20, 20); third coordinate
        //imgVw.frame = CGRectMake(333, 415, 20, 20); fourth coordinate
        //imgVw.frame = CGRectMake(303, 385, 20, 20); fifth coordinate

        
        
        //create coordinate array
        
        NSArray *coordarray = [NSArray arrayWithObjects:
                          [NSArray arrayWithObjects:[NSNumber numberWithInt:233], [NSNumber numberWithInt:507],nil],
                          [NSArray arrayWithObjects:[NSNumber numberWithInt:271], [NSNumber numberWithInt:479],nil],
                          [NSArray arrayWithObjects:[NSNumber numberWithInt:303], [NSNumber numberWithInt:445],nil],
                          [NSArray arrayWithObjects:[NSNumber numberWithInt:333], [NSNumber numberWithInt:415],nil],
                          [NSArray arrayWithObjects:[NSNumber numberWithInt:303], [NSNumber numberWithInt:385],nil],

                          nil];

        
        
        
        for (int i = 0; i < [coordarray count]; i++) {
        NSArray *coordFound = [coordarray objectAtIndex: rollNumber - 1];
        // getting the coordinate
            
            
            NSNumber *xns = [coordFound objectAtIndex: 0];
            NSNumber *yns = [coordFound objectAtIndex: 1];
            
            
            int x = [xns intValue];
            int y = [yns intValue];

            
            
            for (int i = 0; i < self.view.subviews.count; i++) {
                UIImageView *imgVw = (UIImageView *)[self.view viewWithTag:100];
                
                if(imgVw.tag == 100)
                {
                   
                    imgVw.frame = CGRectMake(x, y, 20, 20);
                    [self.view bringSubviewToFront:imgVw];

                }
            }
            //save last coord
            int lastcoordX = x;
            int lastcoordY = y;
          
            
            
            
    }
        
    }


@end
