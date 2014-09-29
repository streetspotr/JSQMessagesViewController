//
//  Created by Jesse Squires
//  http://www.hexedbits.com
//
//
//  Documentation
//  http://cocoadocs.org/docsets/JSQMessagesViewController
//
//
//  GitHub
//  https://github.com/jessesquires/JSQMessagesViewController
//
//
//  License
//  Copyright (c) 2014 Jesse Squires
//  Released under an MIT license: http://opensource.org/licenses/MIT
//

#import "JSQMessagesToolbarButtonFactory.h"

#import "UIColor+JSQMessages.h"
#import "UIImage+JSQMessages.h"
#import "UIColor+Streetspotr.h"
#import "UIFont+Streetspotr.h"

@implementation JSQMessagesToolbarButtonFactory

+ (UIButton *)defaultAccessoryButtonItem
{
    UIImage *cameraImage = [UIImage imageNamed:@"camera"];
    UIImage *cameraNormal = [cameraImage jsq_imageMaskedWithColor:[UIColor lightGrayColor]];
    UIImage *cameraHighlighted = [cameraImage jsq_imageMaskedWithColor:[UIColor darkGrayColor]];
    
    UIButton *cameraButton = [[UIButton alloc] initWithFrame:CGRectZero];
    [cameraButton setImage:cameraNormal forState:UIControlStateNormal];
    [cameraButton setImage:cameraHighlighted forState:UIControlStateHighlighted];
    
    cameraButton.contentMode = UIViewContentModeScaleAspectFit;
    cameraButton.backgroundColor = [UIColor clearColor];
    cameraButton.tintColor = [UIColor lightGrayColor];
    
    return cameraButton;
}

+ (UIButton *)defaultSendButtonItem
{
    NSString *sendTitle = NSLocalizedString(@"Send", @"Text for the send button on the messages view toolbar");
    
    UIButton *sendButton = [[UIButton alloc] initWithFrame:CGRectZero];
    [sendButton setTitle:sendTitle forState:UIControlStateNormal];
	UIColor *textColor = [UIColor streetspotrTurquois];
    [sendButton setTitleColor:textColor forState:UIControlStateNormal];
	[sendButton setTitleColor:[textColor colorWithAlphaComponent:[UIColor streetspotrAlphaHighlightedButtonText]] forState:UIControlStateHighlighted];
    [sendButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateDisabled];

    sendButton.titleLabel.font = [UIFont boldSystemFontOfSize:17.0f];
    sendButton.contentMode = UIViewContentModeCenter;
    sendButton.backgroundColor = [UIColor clearColor];
    sendButton.tintColor = [UIColor streetspotrTurquois];

	[sendButton sizeToFit];
	CGRect frame = sendButton.frame;
	frame.size.width = CGF(ceil(CGRectGetWidth(frame)));
	sendButton.frame = frame;
    
    return sendButton;
}

@end
