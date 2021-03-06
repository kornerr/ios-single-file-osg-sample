
#import "ViewController.h"

#import "library.h"

@interface ViewController ()

@property (nonatomic, strong) CADisplayLink *displayLink;
@property (nonatomic, strong) UIView *renderView;
@property (nonatomic, strong) IBOutlet UIView *parentView;

@end

@implementation ViewController

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    // NOTE This must be done exactly once!
    [self setupRenderView];
}

- (void)setupRenderView
{
    // Remove old display link.
    if (self.displayLink)
    {
        [self.displayLink invalidate];
        self.displayLink = nil;
    }
    // Create new display link.
    self.displayLink =
        [CADisplayLink
            displayLinkWithTarget:self
            selector:@selector(step)];
    [self.displayLink
        addToRunLoop:[NSRunLoop currentRunLoop]
        forMode:NSDefaultRunLoopMode];
    // TODO
    // Embed OpenSceneGraph render view.
    /*
    self.renderView =
        library::init(
            self.parentView.frame.size.width,
            self.parentView.frame.size.height,
            [UIScreen mainScreen].scale,
            self.parentView
        );
    [self.view sendSubviewToBack:self.renderView];
    */
}

- (void)step
{
    library::frame();
}

@end

