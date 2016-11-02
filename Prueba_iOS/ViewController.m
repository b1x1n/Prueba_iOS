//
//  ViewController.m
//  Prueba_iOS
//
//  Created by Alumno on 02/11/16.
//  Copyright © 2016 Alumno. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//podemos utilizar principalmente esta interface para declarar nuestras propiedades

//@property IBOultet UITextField* text;

@property (weak, nonatomic) IBOutlet UITextField* textoEuros1;
@property (weak, nonatomic) IBOutlet UITextField* textoEuros2;
@property (weak, nonatomic) IBOutlet UITextField* textoEuros3;

@property (weak, nonatomic) IBOutlet UITextField* textoDolares;
@property (weak, nonatomic) IBOutlet UITextField* textoLibras;
@property (weak, nonatomic) IBOutlet UITextField* textoYenes;

@end

@implementation ViewController
//id es un tipo, el sender es el objeto que desencadena la accion
-(IBAction)click:(id)sender{
    Etiqueta1.text = text.text;
}

-(IBAction)eurosADolares:(id)sender{
    double euros = _textoEuros1.text.doubleValue;
    double dolares = euros * 1.108;
    _textoDolares.text = [NSString stringWithFormat:@"%.2f $ ",dolares];
}
-(IBAction)eurosALibras:(id)sender{
    double euros = _textoEuros2.text.doubleValue;
    double libra = euros * 0.90;
    _textoLibras.text = [NSString stringWithFormat:@"%.2f ",libra];
}
-(IBAction)eurosAYenes:(id)sender{
    double euros = _textoEuros3.text.doubleValue;
    double yenes = euros * 114.68;
    _textoYenes.text = [NSString stringWithFormat:@"%.2f ",yenes];
}
//Este metodo se va a ejecutar cuando termine de cargarse la parte de la vista en nuestra aplicacion. Es decir, cuando se hayan convertido a objetos los componenetes gráficos que hemos definido en nuestro Main.storyboard
//El equivalente a Android sería onCreate
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
//Este metodo será lanzado si existe algun problema de memoria en nuestra aplicacion
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
