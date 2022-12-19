//
//  DeviceOrientationModule.m
//  nxkb
//
//  Created by lzp on 2022/12/13.
//

#import "DeviceOrientationModule.h"

@interface DeviceOrientationModule()

@property UIDeviceOrientation deviceOrientation;

@end

@implementation DeviceOrientationModule


RCT_EXPORT_MODULE(DeviceOrientationModule)

RCT_EXPORT_METHOD(makeFullscreen: (nonnull NSNumber *) full)
{
  [[NSNotificationCenter defaultCenter] postNotificationName:@"DeviceOrientationViewController" object:nil userInfo:@{@"full": full}];
}

- (void)dealloc
{
  [[NSNotificationCenter defaultCenter] removeObserver:self];
  [[NSNotificationCenter defaultCenter] removeObserver:self name:UIDeviceOrientationDidChangeNotification object:nil];
}

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}
+ (BOOL)requiresMainQueueSetup
{
  return YES;
}
@end
