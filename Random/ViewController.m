//
//  ViewController.m
//  Random
//
//  Created by MAEDA HAJIME on 2014/03/24.
//  Copyright (c) 2014年 MAEDA HAJIME. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// [クラスメソッド TEST]ボタンを押した時 Min:6 max:1に変更した場合
- (IBAction)doTest:(id)sender {
    
    // 乱数発生
    unsigned int ret = [ViewController getRandomWithMin:6 max:1];
    NSLog(@"%d", ret);
    
}

//// 乱数発生（汎用）サイコロ
//-(unsigned int)getRandomWithMin:(unsigned int)minVal
//                            max:(unsigned int)maxVal {
//    
//    return minVal + arc4random() % (maxVal + 1 - minVal);
//}

//// クラスメソッド乱数発生（汎用）サイコロ
//+ (unsigned int)getRandomWithMin:(unsigned int)minVal
//                            max:(unsigned int)maxVal {
//    
//    return minVal + arc4random() % (maxVal + 1 - minVal);
//}

// クラスメソッド乱数発生（汎用）サイコロ Min:6 max:1に変更した場合
+ (unsigned int)getRandomWithMin:(unsigned int)minVal
                            max:(unsigned int)maxVal {
    
    // 大小逆転対応１
//  if (minVal < maxVal) return 0;
    
    // 大小逆転対応２
    if (minVal > maxVal) {
        unsigned int tmpVal = minVal;
        minVal = maxVal;
        maxVal = tmpVal;
    }
    
    return minVal + arc4random() % (maxVal + 1 - minVal);
}

@end
