//
//  ArrayDataSource.h
//  ChristianResources
//
//  Created by Mihaela Mihaljević Jakić on 22/11/14.
//  Copyright (c) 2014 Token d.o.o. All rights reserved.
//  based on objc.io lighter view controllers approach http://www.objc.io/issue-1/lighter-view-controllers.html
//

#import <Foundation/Foundation.h>

//needed for UITableViewDataSource to be available
#import <UIKit/UIKit.h>

@protocol ArrayDataSourceTableEditDataSource <NSObject>
@optional
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath;
//- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath;
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath;
@end

typedef void (^TableViewCellConfigureBlock)(id cell, id item);

@interface ArrayDataSource : NSObject<UITableViewDataSource>

- (id)initWithArray:(NSArray *)array cellIdentifier:(NSString *)cellIdentifier configureCellBlock:(TableViewCellConfigureBlock)configureCellBlock;
- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@property (nonatomic, strong) NSArray *array;

//delegate for editing a table
@property (nonatomic, weak) id <ArrayDataSourceTableEditDataSource> tableEditDataSource;


@end
