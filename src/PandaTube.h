//
//  PandaTubeView.h
//
//  Created by Matthew Crouch on 25/11/2011.
//  Copyright (c) 2011 CrazyPanda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PandaTube : UIView <UIWebViewDelegate>

@property (strong, nonatomic) UIWebView *youtubeWebView;

- (void)playVideo:(NSString *)url;

@end
