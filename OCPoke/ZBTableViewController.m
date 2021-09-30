//
//  ZBTableViewController.m
//  OCPoke
//
//  Created by Zachary Buffington on 9/30/21.
//

#import "ZBTableViewController.h"

@interface ZBTableViewController ()

@end

@implementation ZBTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [ZBManager fetchPokemonWithCompletion:^(NSArray * _Nonnull pokemon) {
            self.pokemon = pokemon;
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
    }];
    
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.pokemon.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pokemonCell" forIndexPath:indexPath];
    
    ZBPokemon *pokemon = self.pokemon[indexPath.row];
    cell.textLabel.text = pokemon.name.capitalizedString;
    
    
    
    return cell;
}




@end
