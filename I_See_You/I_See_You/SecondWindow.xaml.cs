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
using I_See_You.MVVM;

namespace I_See_You
{
    /// <summary>
    /// Interaction logic for SecondWindow.xaml
    /// </summary>
    public partial class SecondWindow : Window
    {
        public SecondWindow()
        {
            InitializeComponent();
            PictureProcessingWindow pictureProcessingWindow = new PictureProcessingWindow();
            this.DataContext = pictureProcessingWindow;
            if(pictureProcessingWindow.HidenWindow == null)
                pictureProcessingWindow.HidenWindow = new Action(this.Close);
        }

  
    }
}
