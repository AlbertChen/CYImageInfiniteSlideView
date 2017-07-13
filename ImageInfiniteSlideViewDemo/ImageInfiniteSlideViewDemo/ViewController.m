//
//  ViewController.m
//  ImageInfiniteSlideViewDemo
//
//  Created by Chen Yiliang on 4/26/17.
//  Copyright © 2017 CYYUN. All rights reserved.
//

#import "ViewController.h"

#import "CYImageInfiniteSlideView.h"

@interface ViewController () <CYImageInfiniteSlideViewDataSource, CYImageInfiniteSlideViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CYImageInfiniteSlideView *slideView = [[CYImageInfiniteSlideView alloc] initWithFrame:CGRectMake(0.0, 0.0, self.view.frame.size.width, 150.0) dataSource:self delegate:self];
    slideView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:slideView];
    
    slideView.shouldAutoSlide = YES;
}

#pragma mark - CYImageInfiniteSlideViewDataSource

- (NSUInteger)numberOfImagesInSlideView:(CYImageInfiniteSlideView *)slideView {
    return 3;
}

//- (UIImage *)imageInfiniteSlideView:(CYImageInfiniteSlideView *)slideView imageAtPage:(NSUInteger)page {
//    NSString *imageName = [NSString stringWithFormat:@"image%@.jpeg", @(page + 1)];
//    return [UIImage imageNamed:imageName];
//}

// https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1493291283415&di=56b57038d1513e6458229b97c554fb47&imgtype=0&src=http%3A%2F%2Ftupian.enterdesk.com%2F2015%2Flcx%2F1%2F21%2F1%2F8.jpg
// https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1493291291848&di=60627dbe90acc7d3bfeb4b65eea3c4e1&imgtype=0&src=http%3A%2F%2Ftupian.enterdesk.com%2F2013%2Fmxy%2F10%2F12%2F1%2F15.jpg
// https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1493291330585&di=3e7cdad66f2c39179956fc9cb85c4248&imgtype=0&src=http%3A%2F%2Fpic.90sjimg.com%2Fback_pic%2F00%2F00%2F52%2F00%2F140b25269c394d63a6210004bec55776.jpg
- (NSURL *)imageInfiniteSlideView:(CYImageInfiniteSlideView *)slideView imageURLAtPage:(NSUInteger)page {
    NSString *urlString = nil;
    switch (page) {
        case 0:
            urlString = @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1493291283415&di=56b57038d1513e6458229b97c554fb47&imgtype=0&src=http%3A%2F%2Ftupian.enterdesk.com%2F2015%2Flcx%2F1%2F21%2F1%2F8.jpg";
            break;
        case 1:
            urlString = @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1493291291848&di=60627dbe90acc7d3bfeb4b65eea3c4e1&imgtype=0&src=http%3A%2F%2Ftupian.enterdesk.com%2F2013%2Fmxy%2F10%2F12%2F1%2F15.jpg";
            break;
            
        default:
            urlString = @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1493291330585&di=3e7cdad66f2c39179956fc9cb85c4248&imgtype=0&src=http%3A%2F%2Fpic.90sjimg.com%2Fback_pic%2F00%2F00%2F52%2F00%2F140b25269c394d63a6210004bec55776.jpg";
            break;
    }
    
    return [NSURL URLWithString:urlString];
}

#pragma mark - CYImageInfiniteSlideViewDelegate

- (UIImage *)placeholderImageInImageSlideView:(CYImageInfiniteSlideView *)sliderView {
    return nil;
}

- (NSString *)imageInfiniteSlideView:(CYImageInfiniteSlideView *)slideView captionAtPage:(NSUInteger)page {
    if (page == 2) {
        return @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1493291330585&di=3e7cdad66f2c39179956fc9cb85c4248";
    }
    return [NSString stringWithFormat:@"Caption %@", @(page + 1)];
}

- (void)imageInfiniteSlideView:(CYImageInfiniteSlideView *)slideView didSelectImageAtPage:(NSUInteger)page {
    NSLog(@"%s", __FUNCTION__);
}

@end
