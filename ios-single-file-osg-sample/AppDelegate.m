
#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@property (nonatomic, strong) ViewController *viewController;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window =
        [[UIWindow alloc]
            initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [self createMainVC];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    return YES;
}

- (UIViewController *)createMainVC
{
    self.viewController = [ViewController new];
    return self.viewController;
}

@end

