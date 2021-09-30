//
//  ZBPokemon.h
//  OCPoke
//
//  Created by Zachary Buffington on 9/30/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZBPokemon : NSObject

@property NSString *name;

- (instancetype) initWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
