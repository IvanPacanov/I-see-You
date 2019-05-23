using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using DirectShowLib;
using Prism.Commands;

namespace I_See_You.MVVM
{
    class StartWindow : WindowAbstractClass
    {
        public ICommand CloseButtonCommand { get; private set; }
        public ICommand OpenSecondWindowButtonCommand { get; private set; }

        SecondWindow secondWindow = new SecondWindow();

        public override Action HidenWindow { get; set; }

        public StartWindow()
        {

            SystemCamereas = DsDevice.GetDevicesOfCat(FilterCategory.VideoInputDevice);
            VideoDevices = new ObservableCollection<KeyValuePair<int, string>>();
            GetVideoDevices();
            CloseButtonCommand = new DelegateCommand(CloseApp);
            OpenSecondWindowButtonCommand = new DelegateCommand(NextWindow);


        }
        public  void NextWindow()
        {
            secondWindow.Show();
            HidenWindow();

        }
      

      

    }
}
