//
//  ArrayDataSource.m
//  ChristianResources
//
//  Created by Mihaela Mihaljević Jakić on 22/11/14.
//  Copyright (c) 2014 Token d.o.o. All rights reserved.
//

#import "ArrayDataSource.h"

@interface ArrayDataSource()

@property (nonatomic, copy) NSString *cellIdentifier;
@property (nonatomic, copy) TableViewCellConfigureBlock configureCellBlock;

@end

@implementation ArrayDataSource

#pragma mark -
#pragma mark Init

- (id)init
{
    return nil;
}

- (id)initWithArray:(NSArray *)array cellIdentifier:(NSString *)cellIdentifier configureCellBlock:(TableViewCellConfigureBlock)configureCellBlock
{
    self = [super init];
    if (self) {
        _array = array;
        _cellIdentifier = cellIdentifier;
        _configureCellBlock = [configureCellBlock copy];
    }
    return self;
}

#pragma mark -
#pragma mark Public Methods

- (id)itemAtIndexPath:(NSIndexPath *)indexPath
{
    if ([self.array count] > indexPath.row) {
        return self.array[(NSUInteger) indexPath.row];
    }
    return nil;
}


#pragma mark -
#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier forIndexPath:indexPath];
    id item = [self itemAtIndexPath:indexPath];
    self.configureCellBlock(cell, item);
    return cell;
}

#pragma mark Table Editing

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([self.tableEditDataSource respondsToSelector:@selector(tableView:canEditRowAtIndexPath:)]) {
        return [self.tableEditDataSource tableView:tableView canEditRowAtIndexPath:indexPath];
    }
    return NO;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([self.tableEditDataSource respondsToSelector:@selector(tableView:commitEditingStyle:forRowAtIndexPath:)]) {
        [self.tableEditDataSource tableView:tableView commitEditingStyle:editingStyle forRowAtIndexPath:indexPath];
    }
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
{
    if ([self.tableEditDataSource respondsToSelector:@selector(tableView:moveRowAtIndexPath:toIndexPath:)]) {
        [self.tableEditDataSource tableView:tableView moveRowAtIndexPath:sourceIndexPath toIndexPath:destinationIndexPath];
    }
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([self.tableEditDataSource respondsToSelector:@selector(tableView:canMoveRowAtIndexPath:)]) {
        return [self.tableEditDataSource tableView:tableView canMoveRowAtIndexPath:indexPath];
    }
    return NO;
}

//- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if ([self.tableEditDataSource respondsToSelector:@selector(tableView:editingStyleForRowAtIndexPath:)]) {
//        return [self.tableEditDataSource tableView:tableView editingStyleForRowAtIndexPath:indexPath];
//    }
//    return UITableViewCellEditingStyleNone;
//}

@end
