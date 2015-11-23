#import <Foundation/Foundation.h>
#import <Analytics/SEGIntegration.h>


@interface SEGKahunaIntegration : NSObject <SEGIntegration>

@property (nonatomic, strong) NSDictionary *settings;
@property (nonatomic, strong) NSSet *kahunaCredentialsKeys;

- (id)initWithSettings:(NSDictionary *)settings;

@end
