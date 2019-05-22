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
        protected DsDevice[] SystemCamereas;

        private KeyValuePair<int, string> _currentDevice;
        public KeyValuePair<int, string> CurrentDevice
        {
            get { return _currentDevice; }
            set
            {
                _currentDevice = value;
                this.NotifyPropertyChanged("CurrentDevice");
            }
        }

        private ObservableCollection<KeyValuePair<int, string>> videoDevices;
        public ObservableCollection<KeyValuePair<int, string>> VideoDevices
        {
            get { return videoDevices; }
            set
            {
                videoDevices = value;
                this.NotifyPropertyChanged("VideoDevices");
            }
        }

        public StartWindow()
        {
            SystemCamereas = DsDevice.GetDevicesOfCat(FilterCategory.VideoInputDevice);
            VideoDevices = new ObservableCollection<KeyValuePair<int, string>>();
            GetVideoDevices();
            CloseButtonCommand = new DelegateCommand(CloseApp);
            
        }
        private void GetVideoDevices()
        {
            int _DeviceIndex = 0;
            foreach (DirectShowLib.DsDevice _Camera in SystemCamereas)
            {
                //  ListCamerasData.Add(new KeyValuePair<int, string>(_DeviceIndex, _Camera.Name));
                _DeviceIndex++;
                videoDevices.Add(new KeyValuePair<int, string>(_DeviceIndex, _Camera.Name));
            }

            if (videoDevices.Any())
            {
                CurrentDevice = videoDevices[0];
            }
            else
            {
                System.Windows.MessageBox.Show("No webcam found");
            }
        }

    }
}
