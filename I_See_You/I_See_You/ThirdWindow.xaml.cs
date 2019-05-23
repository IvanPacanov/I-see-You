using I_See_You.MVVM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace I_See_You
{
    /// <summary>
    /// Interaction logic for ThirdWindow.xaml
    /// </summary>
    public partial class ThirdWindow : Window
    {
        public ThirdWindow()
        {
            InitializeComponent();
            ImageWebCamera imageWebCamera = new ImageWebCamera();
            this.DataContext = imageWebCamera;
            if(imageWebCamera.HidenWindow== null)
                imageWebCamera.HidenWindow = new Action(this.Close);

        }
    }
}
