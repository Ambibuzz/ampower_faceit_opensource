#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "GoogleMlKitPlugin.h"

FOUNDATION_EXPORT double google_ml_kitVersionNumber;
FOUNDATION_EXPORT const unsigned char google_ml_kitVersionString[];

