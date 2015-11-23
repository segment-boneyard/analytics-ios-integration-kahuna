#import "SEGKahunaIntegrationFactory.h"
#import "SEGKahunaIntegration.h"


@implementation SEGKahunaIntegrationFactory

+ (id)instance
{
    static dispatch_once_t once;
    static SEGKahunaIntegration *sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (id)init
{
    self = [super init];
    return self;
}

- (id<SEGIntegration>)createWithSettings:(NSDictionary *)settings forAnalytics:(SEGAnalytics *)analytics
{
    return [[SEGKahunaIntegration alloc] initWithSettings:settings];
}

- (NSString *)key
{
    return @"Kahuna";
}

@end
