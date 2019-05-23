using Prism.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace I_See_You.MVVM
{
    class ImageWebCamera : WindowAbstractClass
    {


        public override Action HidenWindow { get; set; }

        public ICommand CloseButtonCommand { get; private set; }
        public ICommand StartCameraButton { get; private set; }
        public ICommand BinaryButton { get; private set; }
        public ICommand GrayScaleButton { get; private set; }
        public ICommand InvertImageButton { get; private set; }
        public ICommand ContrastButton { get; private set; }
      //  public ICommand LastImageButton { get; private set; }
        public ICommand StopCameraButton { get; private set; }
        public ImageWebCamera()
        {
            CloseButtonCommand = new DelegateCommand(CloseApp);
            StartCameraButton = new DelegateCommand(StartCamera);
            BinaryButton = new DelegateCommand(BinaryImage);
            GrayScaleButton = new DelegateCommand(GrayImage);
            InvertImageButton = new DelegateCommand(InvertImage);
            ContrastButton = new DelegateCommand(ContrastImage);
        //    LastImageButton = new DelegateCommand(LastImage);
            StopCameraButton = new DelegateCommand(StopCamera);

        }

      
    }
}
