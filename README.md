# RGChainedModeView
关于各种控件属性设置的链式简洁编程



1.利用链式编程可以快捷的给一个对象设置相关的属性,亦增加代码的简洁性和可读性

 给一个button设置文字,颜色,圆角



  #import "ViewController.h"
#import "RGView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  


    //注意调用父类方法必须放到最后,因为返回值为必须指定一个真实类型才能继续使用点语法;
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(250, 100, 100, 100)];
    
    btn.rg_NormalTitle(@"Edit").rg_SelectedTitle(@"Finish").rg_titleFontSize(15).rg_NormalTitleColor([UIColor redColor]).rg_SelectedTitleColor([UIColor greenColor]).rg_CornerRadius(50).rg_supView(self.view);
    
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    

}



-(void)click:(UIButton *)sender
{
    
    sender.selected = !sender.selected;
}



@end
