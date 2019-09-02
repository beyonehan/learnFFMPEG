//
//  ViewController.m
//  testFFMPEG
//
//  Created by mac on 2019/9/2.
//  Copyright © 2019 mac. All rights reserved.
//

#import "ViewController.h"

#import "avformat.h"
#import "ffmpeg.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *fromFile = [[NSBundle mainBundle]pathForResource:@"test.mp4" ofType:nil];
    NSString *toFile = @"/Users/mac/Desktop/video.gif";
    
    int argc = 4;
    char **arguments = calloc(argc, sizeof(char*));
    if(arguments != NULL)
    {
        arguments[0] = "ffmpeg";
        arguments[1] = "-i";
        arguments[2] = (char *)[fromFile UTF8String];
        arguments[3] = (char *)[toFile UTF8String];
        
        if (!ffmpeg_main(argc, arguments)) {
            NSLog(@"生成成功");
        }
    }


    // Do any additional setup after loading the view.
}


@end
