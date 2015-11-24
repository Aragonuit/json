//
//  Media.m
//  json
//
//  Created by Aragon on 11/24/15.
//  Copyright © 2015 Aragon. All rights reserved.
//

#import "Media.h"

@implementation Media
-(instancetype)initwithtenMedia:(NSString*) tenMedia
                withSingerMedia:(NSString*) singerMedia
                 withAlbumMedia:(NSString*) albumMedia
                withServerMedia:(NSString*) serverMedia
                  withLinkMedia:(NSString*) linkMedia
{
    if ([super init]) {
        self.tenMedia = tenMedia;
        self.singerMedia = singerMedia;
        self.albumMedia = albumMedia;
        self.serverMedia = serverMedia;
        NSString* filePath = linkMedia;
        NSURL *url = [NSURL URLWithString:filePath];
        NSData *audioData = [NSData dataWithContentsOfURL:url];
        NSString *docDirPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
        NSString *filePath2 = [NSString stringWithFormat:@"%@/%@.mp3", docDirPath , @"hung"];
        [audioData writeToFile:filePath2 atomically:YES];
        self.linkMedia = [NSURL fileURLWithPath:filePath2];

    }
    return self;
}
-(NSString*) GetTenMeida
{
    return self.tenMedia;
}
-(NSString*) GetSingerMeida
{
    return self.singerMedia;
}
-(NSString*) GetAlbumMeida
{
    return self.serverMedia;
}
-(NSString*) GetServerMeida
{
    return self.serverMedia;
}
-(NSURL*) GetLinkMedia
{
    return self.linkMedia;
}
@end
