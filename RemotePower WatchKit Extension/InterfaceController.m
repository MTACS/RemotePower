#import "InterfaceController.h"

@interface InterfaceController()

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *label;
@property (weak, nonatomic) IBOutlet WKInterfaceButton *btn;

@end


@implementation InterfaceController

- (IBAction)aboutButton {
}

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
    NSLog(@"%@ awakeWithContext", self);
}
- (IBAction)sendRequest {
    
    NSDictionary *requst = @{@"request":@"Hello"};
    
    [InterfaceController openParentApplication:requst reply:^(NSDictionary *replyInfo, NSError *error) {
        
        if (error) {
            NSLog(@"%@", error);
        } else {
            
            [self.label setText:[replyInfo objectForKey:@"response"]];
        }
        
    }];
}

- (IBAction)reboot {
    
    NSDictionary *requst = @{@"request":@"reboot"};
    
    [InterfaceController openParentApplication:requst reply:^(NSDictionary *replyInfo, NSError *error) {
        
        if (error) {
            NSLog(@"%@", error);
        } else {
            
            [self.label setText:[replyInfo objectForKey:@"response"]];
        }
        
    }];
    
}

- (IBAction)shutdown {
    
    NSDictionary *requst = @{@"request":@"shutdown"};
    
    [InterfaceController openParentApplication:requst reply:^(NSDictionary *replyInfo, NSError *error) {
        
        if (error) {
            NSLog(@"%@", error);
        } else {
            
            [self.label setText:[replyInfo objectForKey:@"response"]];
        }
        
    }];
    
}

- (IBAction)safemode {
    
    NSDictionary *requst = @{@"request":@"safemode"};
    
    [InterfaceController openParentApplication:requst reply:^(NSDictionary *replyInfo, NSError *error) {
        
        if (error) {
            NSLog(@"%@", error);
        } else {
            
            [self.label setText:[replyInfo objectForKey:@"response"]];
        }
        
    }];
    
}
- (IBAction)lockButton {
    
    NSDictionary *requst = @{@"request":@"lock"};
    
    [InterfaceController openParentApplication:requst reply:^(NSDictionary *replyInfo, NSError *error) {
        
        if (error) {
            NSLog(@"%@", error);
        } else {
            
            [self.label setText:[replyInfo objectForKey:@"response"]];
        }
        
    }];
    
}

- (IBAction)alarmButton {
    
    NSDictionary *requst = @{@"request":@"lock"};
    
    [InterfaceController openParentApplication:requst reply:^(NSDictionary *replyInfo, NSError *error) {
        
        if (error) {
            NSLog(@"%@", error);
        } else {
            
            [self.label setText:[replyInfo objectForKey:@"response"]];
        }
        
    }];
    
}

- (IBAction)doMenuItemAction {

    NSDictionary *requst = @{@"request":@"alarm"};
    
    [InterfaceController openParentApplication:requst reply:^(NSDictionary *replyInfo, NSError *error) {
        
        if (error) {
            NSLog(@"%@", error);
        } else {
            
            [self.label setText:[replyInfo objectForKey:@"response"]];
        }
        
    }];
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



