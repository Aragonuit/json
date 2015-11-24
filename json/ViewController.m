//
//  ViewController.m
//  json
//
//  Created by Aragon on 11/24/15.
//  Copyright © 2015 Aragon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
   
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //  NSError *error;
   // NSString *path = @"http://aragonuit.96.lt/database.php";
   // NSURL *url=[[NSURL alloc]initFileURLWithPath:path];
    //read link to string
    NSURLSession *aSession = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[aSession dataTaskWithURL:[NSURL URLWithString:@"http://aragonuit.96.lt/database.php"] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (((NSHTTPURLResponse *)response).statusCode == 200) {
            if (data) {
                NSString *contentOfURL = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
                //NSLog(@"%@", contentOfURL);
                id b = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
                NSLog(@"%d",(int)[b count]);
                
                for (int i = 0; i <(int)[b count];i++) {
                    NSLog(@"%@",b[i][@"tenmedia"]);
                    Media* obj=[[Media alloc]initwithtenMedia:b[i][@"tenmedia"]
                                              withSingerMedia:b[i][@"singermedia"]
                                               withAlbumMedia:b[i][@"albummedia"]
                                              withServerMedia:b[i][@"servermedia"]
                                                withLinkMedia:b[i][@"linkmedia"]];
                    
                    [mediaArr addObject:obj];
                }
                
            }
        }
    }] resume];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return mediaArr.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.textLabel = [mediaArr[indexPath]:@selector(GetTenMeida)];
    return cell;
}
@end
