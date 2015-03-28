//
//  DJWInsetFillButton.h
//  DJWInsetFillButton
//
//  Created by Dan Williams on 19/03/2015.
//  Copyright (c) 2015 Dan Williams. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface DJWInsetFillButton : UIControl

/**
 *  The title of the button.
 */
@property (nonatomic, copy) IBInspectable NSString *title;

/**
 *  The color of the border. Also the fill color for the highlighted state.
 */
@property (nonatomic, strong) IBInspectable UIColor *borderColor;

/**
 *  The color of the text when the button is in its highlighted state.
 */
@property (nonatomic, strong) IBInspectable UIColor *highlightedTextColor;

/**
 *  The font of the label.
 */
@property (nonatomic, strong) IBInspectable UIFont *font;

/**
 *  The corner radius of the border. Defaults to half of the frame's height.
 */
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;

@end
