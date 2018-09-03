//
//  ZPPluginPacketzoom.m
//  ZappGeneralPlugins
//
//  Created by Avi Levin on 27/09/2017.
//  Copyright © 2017 Applicaster Ltd. All rights reserved.
//

#import "ZPPluginPacketzoom.h"
#import <PZSpeed/PZSpeed.h>

@import ZappPlugins;


static NSString * const kPacketzoomAppID = @"packetzoom_appid";
static NSString * const kPacketzoomAPIKey = @"packetzoom_apikey";

@implementation ZPPluginPacketzoom

- (instancetype)initWithConfigurationJSON:(NSDictionary *)configurationJSON
{
    self = [self init];
    if (self) {
        _configurationJSON = configurationJSON;
    }
    return self;
}


#pragma mark - ZPAppLoadingHookProtocol

- (void)executeOnLaunchWithCompletion:(void (^ _Nullable)(void))completion {
    NSString *appID = [self.configurationJSON objectForKey:kPacketzoomAppID];
    NSString *apiKey = [self.configurationJSON objectForKey:kPacketzoomAPIKey];
    
    if([appID isNotEmptyOrWhiteSpaces] && [apiKey isNotEmptyOrWhiteSpaces]) {
        [PZSpeedController controllerWithAppID: appID
                                        apiKey: apiKey];
    }
    
    completion();
}

@end
