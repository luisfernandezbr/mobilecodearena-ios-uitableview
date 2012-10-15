//
//  ViewController.m
//  mobilecodearena-ios-uitableview
//
//  Created by Rodrigo Campos on 10/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize itens;

- (void)dealloc
{
    [itens release];
    
    [super dealloc];
}

- (void)loadView
{
    UIView *viewDummy = [[[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds] autorelease];
    [viewDummy setBackgroundColor:[UIColor lightGrayColor]];

    [self setItens:[NSArray arrayWithObjects:
    @"FC Barcelona",
    @"CD Universidad de Chile Santiago",
    @"CA Boca Juniors Buenos Aires",
    @"Real Madrid CF",
    @"Club Atlético de Madrid",
    @"Chelsea FC London",
    @"FC Bayern München",
    @"SC Corinthians Paulista São Paulo",
    @"Athletic Club de Bilbao",
    @"CA Vélez Sarsfield",
    @"Club Libertad Asunción",
    @"FC Twente Enschede",
    @"Santos FC",
    @"FC Basel",
    @"Fluminense FC Rio de Janeiro",
    @"SSC Napoli",
    @"CR Vasco da Gama Rio de Janeiro",
    @"PSV Eindhoven",
    @"Manchester City FC",
    @"Glasgow Celtic FC",nil]];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, viewDummy.frame.size.height - 20)];
    [tableView setDelegate:self];
    [tableView setDataSource:self];
    
    [viewDummy addSubview:tableView];
    
    [tableView release];
    
    self.view = viewDummy;
}

// Método chamado para configurar o número de sections da table view.
// Caso a table seja de itens não categorizados, esse método deve retornar 1.
- (int)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

// Método chamado para configurar o número de rows de uma section.
// Caso a table seja de itens não categorizados, esse método deve retornar o número total de rows da table view.
- (int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [itens count];
}

// Método chamado para configurar a célula exibida na table view.
// IndexPath é um objeto composto de section e row para identificar a célula que deve ser exibida.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    int storyIndex = indexPath.row;
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if(!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    [[cell textLabel] setText:[NSString stringWithFormat:@"%d - %@",storyIndex + 1,[itens objectAtIndex:storyIndex]]];
    
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
