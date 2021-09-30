//
//  ZBManager.h
//  OCPoke
//
//  Created by Zachary Buffington on 9/30/21.
//

#import <Foundation/Foundation.h>
#import "ZBPokemon.h"
NS_ASSUME_NONNULL_BEGIN

@interface ZBManager : NSObject

+ (void) fetchPokemonWithCompletion:(void (^)(NSArray *pokemon))completion;

@end

NS_ASSUME_NONNULL_END


