//
//  ViewController.h
//  t
//
//  Created by lzp on 2022/12/18.
//

#import <UIKit/UIKit.h>
#import "DeviceOrientationModule.h"

@interface ViewController : UIViewController

@property (nonatomic,strong) NSNumber *hidden;
-(BOOL) prefersHomeIndicatorAutoHidden;

@end

