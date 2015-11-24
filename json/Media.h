//
//  Media.h
//  json
//
//  Created by Aragon on 11/24/15.
//  Copyright © 2015 Aragon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Media : NSObject
@property(nonatomic,strong) NSString *tenMedia;
@property(nonatomic,strong) NSString *singerMedia;
@property(nonatomic,strong) NSString *albumMedia;
@property(nonatomic,strong) NSString *serverMedia;
@property(nonatomic,strong) NSURL *linkMedia;
-(instancetype)initwithtenMedia:(NSString*) tenMedia
                withSingerMedia:(NSString*) singerMedia
                 withAlbumMedia:(NSString*) albumMedia
                withServerMedia:(NSString*) serverMedia
                  withLinkMedia:(NSURL*) linkMedia;
-(NSString*) GetTenMeida;
-(NSString*) GetSingerMeida;
-(NSString*) GetAlbumMeida;
-(NSString*) GetServerMeida;
-(NSURL*) GetLinkMedia;
@end
