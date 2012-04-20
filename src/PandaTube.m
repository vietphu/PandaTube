//
//  PandaTubeView.m
//
//  Created by Matthew Crouch on 25/11/2011.
//  Copyright (c) 2011 CrazyPanda. All rights reserved.
//

#import "PandaTube.h"

@interface PandaTube (PrivateMethods)
  - (UIButton *)findButtonInWebView:(UIView *)view;
  - (void)initWebView;
@end

@implementation PandaTube

@synthesize youtubeWebView;

- (id)init
{
  self = [super initWithFrame:CGRectMake(0, 0, 0, 0)];
  if (self) {
    [self setAlpha:0.0f];
    [self initWebView];
  }
  return self;
}

- (void)initWebView {
  youtubeWebView = [[UIWebView alloc] init];
  [youtubeWebView setDelegate:self];
}

- (void)playVideo:(NSString *)url {
  NSString *embedHTML = [NSString stringWithFormat:@"<html><head></head><body><embed id=\"yt\" src=\"%@\" type=\"application/x-shockwave-flash\" width=\"1\" height=\"1\"></embed></body></html>", url];
  [youtubeWebView loadHTMLString:embedHTML baseURL:nil];
}

- (UIButton *)findButtonInWebView:(UIView *)view {
  UIButton *button = nil;
  
  if ([view isMemberOfClass:[UIButton class]]) {
    return (UIButton *)view;
  }
  
  if (view.subviews && [view.subviews count] > 0) {
    for (UIView *subview in view.subviews) {
      button = [self findButtonInWebView:subview];
      if (button) return button;
    }
  }
  return button;
}

- (void)webViewDidFinishLoad:(UIWebView *)_webView {
  UIButton *b = [self findButtonInWebView:_webView];
  [b sendActionsForControlEvents:UIControlEventTouchUpInside];
}

@end
