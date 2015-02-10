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

/**
 Generic DataSource used in ViewController to take responsability for populating and maniputaling the Table View.
 Best used as lazy loaded property:
 
 - (ArrayDataSource *)dataSource
 {
 if (!_dataSource) {
 
 //make customize cell bloack
 void (^configureCell)(id, SomeObject*) = ^(id cell, SomeObject* item) {
 [cell customize:item];
 };
 
 //create array data source
 _dataSource = [[ArrayDataSource alloc] initWithArray:self.items cellIdentifier:[self.cellClass reuseIdentifier] configureCellBlock:configureCell];
 }
 
 return _dataSource;
 }
 
 Usage: self.mainView.tableView.dataSource = self.dataSource;

 */

@interface ArrayDataSource : NSObject<UITableViewDataSource>

- (id)initWithArray:(NSArray *)array cellIdentifier:(NSString *)cellIdentifier configureCellBlock:(TableViewCellConfigureBlock)configureCellBlock;
- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@property (nonatomic, strong) NSArray *array;

/**
 *  Deleagte for editing a table view
 */
@property (nonatomic, weak) id <ArrayDataSourceTableEditDataSource> tableEditDataSource;


@end
