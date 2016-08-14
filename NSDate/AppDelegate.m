//
//  AppDelegate.m
//  NSDate
//
//  Created by Mac on 06.08.16.
//  Copyright © 2016 Mac. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSDate *date = [NSDate date];
/*
    NSLog(@"%@", date);
    NSLog(@"%@", [date dateByAddingTimeInterval:500]);
    NSLog(@"%@", [date dateByAddingTimeInterval:-500]);
    
    [date compare:[date dateByAddingTimeInterval:5000]];
    NSLog(@"earlierDate - %@", [date earlierDate:[date dateByAddingTimeInterval:5000]]);
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterLongStyle];
 
    NSDateFormatterNoStyle = kCFDateFormatterNoStyle,
    NSDateFormatterShortStyle = kCFDateFormatterShortStyle,
    NSDateFormatterMediumStyle = kCFDateFormatterMediumStyle,
    NSDateFormatterLongStyle = kCFDateFormatterLongStyle,
    NSDateFormatterFullStyle = kCFDateFormatterFullStyle
 
 
    NSLog(@"%@", [formatter stringFromDate:date]);
   */
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //[formatter setDateFormat:@"yyyy  yy - M MM MMM MMMM MMMMM"];
   // [formatter setDateFormat:@"dd - EEE EEEE EEEEE"];
/*
    // W - week of month
    //w - week of year
    [formatter setDateFormat:@"HH - mm - ss a W "];
    NSLog(@"%@", [formatter stringFromDate:date]);
 */
    
    [formatter setDateFormat:@"yyyy/MMMM/dd HH:mm a"];
    NSLog(@"%@", [formatter stringFromDate:date]);
    
    
     //date
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponents = [calendar components:NSCalendarUnitEra | NSCalendarUnitYear |  NSCalendarUnitMonth | NSCalendarUnitDay fromDate:date];
    NSLog(@"%@", dateComponents);
    
    NSLog(@"%@", [calendar dateByAddingUnit:NSCalendarUnitMonth value:2 toDate:date options:nil]);
    
   //property NSCalendar
    NSLog(@"%@", calendar.calendarIdentifier);
    NSLog(@"%@", calendar.locale);
    NSLog(@"%@", calendar.timeZone);
    NSLog(@"%li", calendar.firstWeekday);
    NSLog(@"%li", calendar.minimumDaysInFirstWeek);
    NSLog(@"%@", calendar.eraSymbols);
    NSLog(@"%@", calendar.monthSymbols);
    NSLog(@"%@", calendar.AMSymbol);
    NSLog(@"%@", calendar.quarterSymbols);
    NSLog(@"%@", calendar.shortQuarterSymbols);
    NSLog(@"%@", calendar.standaloneQuarterSymbols);
    NSLog(@"%@", calendar.PMSymbol);
    NSLog(@"%@", calendar.shortStandaloneQuarterSymbols);


    NSDate *date1 = [NSDate date];
    NSDate *date2 = [NSDate dateWithTimeIntervalSinceNow:-6000000];
    
    NSDateComponents *components = [calendar components:NSCalendarUnitDay | NSCalendarUnitHour fromDate:date1 toDate:date2 options:nil];
    NSLog(@"%@", components);
    
    
    
    
    
    NSDate *date3 = [NSDate date];
    NSDateFormatter *formatter3 = [[NSDateFormatter alloc] init];
    [formatter3 setDateFormat:@"dd MM yyyy"];
    NSString *dateString = @"17 10 1984";
    NSDate *date4 = [formatter3 dateFromString:dateString];
    NSCalendar *calendar3 = [NSCalendar currentCalendar];
    NSDateComponents *components3 = [calendar3 components:NSCalendarUnitDay fromDate:date3 toDate:date4 options:NSCalendarWrapComponents];
    NSLog(@"%@", components3);
    
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
