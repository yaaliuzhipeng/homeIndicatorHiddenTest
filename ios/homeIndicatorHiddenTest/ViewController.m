//
//  ViewController.m
//  t
//
//  Created by lzp on 2022/12/18.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (instancetype)init {
  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onEvent:) name:@"DeviceOrientationViewController" object:nil];
  return [super init];
}
- (void)onEvent: (NSNotification *)notification
{
  NSNumber *full = [notification.userInfo valueForKey:@"full"];
  NSLog(@"ready to set home indicator hidden with value : %@",full);
  dispatch_async(dispatch_get_main_queue(), ^{
    self.hidden = full;
    [self setNeedsUpdateOfHomeIndicatorAutoHidden];
  });
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"view did load");
}

- (void) viewDidAppear:(BOOL)animated
{
  
}
-(BOOL) prefersHomeIndicatorAutoHidden
{
    if(_hidden == nil) {
        _hidden = @0;
    }
    NSLog(@"prefersHomeIndicatorAutoHidden => %@",_hidden);
    return [_hidden integerValue] > 0;
}
- (UIInterfaceOrientationMask) supportedInterfaceOrientations
{
  return UIInterfaceOrientationMaskPortrait;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
  return UIInterfaceOrientationPortrait;
}

@end
