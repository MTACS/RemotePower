#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)twitterButton:(UIButton *)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://twitter.com/mtac8"]];

}

@end
