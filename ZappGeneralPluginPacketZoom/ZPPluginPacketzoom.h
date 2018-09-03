//
//  ZPPluginPacketzoom.h
//  ZappGeneralPlugins
//
//  Created by Avi Levin on 27/09/2017.
//  Copyright © 2017 Applicaster Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@import ZappPlugins;


@interface ZPPluginPacketzoom : NSObject <ZPAppLoadingHookProtocol>

@property (nonatomic, strong) NSDictionary* configurationJSON;

@end
