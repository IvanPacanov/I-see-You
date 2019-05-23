using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Prism.Commands;
using System.Windows.Input;
using System.Windows.Media.Imaging;

namespace I_See_You.MVVM
{
    class PictureProcessingWindow : WindowAbstractClass
    {

        public ICommand CloseButtonCommand { get; private set; }
        public ICommand TakeImageButton { get; private set; }
        public ICommand BinaryButton { get; private set; }
        public ICommand GrayScaleButton { get; private set; }
        public ICommand InvertImageButton { get; private set; }
        public ICommand ContrastButton { get; private set; }
        public ICommand LastImageButton { get; private set; }
        public ICommand CamWebButton { get; private set; }
        public override Action HidenWindow { get; set; }


        ThirdWindow thirdWindow = new ThirdWindow();




        //private string threshold;
        //public string Threshold
        //{
        //    get { return threshold; }
        //    set
        //    {
        //        threshold = value;
        //        this.NotifyPropertyChanged("Threshold");
        //    }
        //}

        //private string factor;
        //public string Factor
        //{
        //    get { return factor; }
        //    set
        //    {
        //        factor = value;
        //        this.NotifyPropertyChanged("Factor");
        //    }
        //}

        public PictureProcessingWindow()
        {
            CloseButtonCommand = new DelegateCommand(CloseApp);
            TakeImageButton = new DelegateCommand(TakeImage);
            BinaryButton = new DelegateCommand(BinaryImage);
            GrayScaleButton = new DelegateCommand(GrayImage);
            InvertImageButton = new DelegateCommand(InvertImage);
            ContrastButton = new DelegateCommand(ContrastImage);
            LastImageButton = new DelegateCommand(LastImage);
            CamWebButton = new DelegateCommand(WindowSecond);
        }

        private void LastImage()
        {
            try
            {
                bitmapImageLiFo.Pop();
                Image = bitmapImageLiFo.Peek();
            }
            catch
            {
                System.Windows.MessageBox.Show("Załaduj zdjęcie!");
            }
        }
        public void WindowSecond()
        {
            //  StopCamera();
          
                       thirdWindow.Show();
            HidenWindow();
        }
      
    }
    }
