#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    FlutterViewController* controller = (FlutterViewController*)self.window.rootViewController;

    FlutterMethodChannel* batteryChannel = [FlutterMethodChannel
                                           methodChannelWithName:@"com.channels/test"
                                           binaryMessenger:controller];

    [batteryChannel setMethodCallHandler:^(FlutterMethodCall* call, FlutterResult result){
        if([@"test" isEqualToString:call.method]){
            BOOL res = [self channelTest];
            if(!res){
                result([FlutterError errorWithCode:@"UNAVAILABLE"
                                           message:@"test fail"
                                           details:nil]);
            }else{
                result(@"test worked");
            }

        }else{
            result(FlutterMethodNotImplemented);
        }
    }];

  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (BOOL)channelTest{

    return true;
}
@end
