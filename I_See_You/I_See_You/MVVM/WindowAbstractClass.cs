using DirectShowLib;
using Emgu.CV;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Forms;
using System.Windows.Interop;
using System.Windows.Media;
using System.Drawing;
using Emgu.CV.Structure;
using System.Windows.Media.Imaging;
using I_See_You.ImageProces;

namespace I_See_You.MVVM
{
   abstract class WindowAbstractClass : INotifyPropertyChanged
    {
        public Stack<BitmapImage> bitmapImageLiFo;


        private string factor;
        public string Factor
        {
            get { return factor; }
            set
            {
                factor = value;
                this.NotifyPropertyChanged("Factor");
            }
        }
        private string threshold;
        public string Threshold
        {
            get { return threshold; }
            set
            {
                threshold = value;
                this.NotifyPropertyChanged("Threshold");
            }
        }
        public void StartCamera()
        {
            StopCamera();
            if (videoCapture == null)
            {
                videoCapture = new VideoCapture(CurrentDevice.Key - 1);
            }
            else
            {
                System.Windows.MessageBox.Show("Current device can't be null");
            }
            ComponentDispatcher.ThreadIdle += new EventHandler(Capture_Image);
        }
        public void CloseApp()
        {
            System.Windows.Application.Current.Shutdown();
        }
      
        public virtual void Capture_Image(object sender, EventArgs e)
        {
            if ((Control.ModifierKeys & Keys.Shift) == Keys.Shift)
            {
                StopCamera();

            }
            else
            {
                var img = videoCapture.QueryFrame().ToImage<Bgr, byte>();
                bmp = img.ToBitmap();
            }


        }
        protected virtual void StopCamera()
        {
            if (videoCapture != null && videoCapture.IsOpened)
            {
                videoCapture.Stop();
                videoCapture = null;
                ComponentDispatcher.ThreadIdle -= new EventHandler(Capture_Image);
            }
            Image = null;

        }

        protected VideoCapture videoCapture;
        protected DsDevice[] SystemCamereas;
        public Bitmap bmp;

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

        private ImageSource image;
        public ImageSource Image
        {
            get { return this.image; }
            set
            {
                this.image = value;
                this.NotifyPropertyChanged("Image");

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

        public KeyValuePair<int, string> GetVideoDevices()
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
            return CurrentDevice;
        }


        public void TakeImage()
        {

            Microsoft.Win32.OpenFileDialog openPicture = new Microsoft.Win32.OpenFileDialog();
            openPicture.Filter = "Image files|*.bmp;*.jpg;*.gif;*.png;*.tif|All files|*.*";
            openPicture.FilterIndex = 1;
            if (openPicture.ShowDialog() == true)
            {
                bitmapImageLiFo = new Stack<BitmapImage>();
                bitmapImageLiFo.Push(new Bitmap(openPicture.FileName).ToBitmapImage());

                Image = bitmapImageLiFo.Peek();

            }
        }

        public void ContrastImage()
        {
            bitmapImageLiFo.Push(bitmapImageLiFo.Peek().Contrast(int.Parse(Factor)));
            Image = bitmapImageLiFo.Peek();
        }

        public void InvertImage()
        {
            bitmapImageLiFo.Push(bitmapImageLiFo.Peek().Invert());
            Image = bitmapImageLiFo.Peek();
        }

        public void GrayImage()
        {
            bitmapImageLiFo.Push(bitmapImageLiFo.Peek().GrayScale());
            Image = bitmapImageLiFo.Peek();
        }

        public void BinaryImage()
        {

            bitmapImageLiFo.Push(bitmapImageLiFo.Peek().Binary(int.Parse(Threshold)));
            Image = bitmapImageLiFo.Peek();
        }

        public abstract Action HidenWindow { get; set; }





        public event PropertyChangedEventHandler PropertyChanged;
        public void NotifyPropertyChanged(string propName)
        {
            if (this.PropertyChanged != null)
                this.PropertyChanged(this, new PropertyChangedEventArgs(propName));
        }
    }
}
