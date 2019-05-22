using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace I_See_You.MVVM
{
   abstract class WindowAbstractClass : INotifyPropertyChanged
    {

        public void CloseApp()
        {
            Application.Current.Shutdown();
        }

        public Action CloseAction { get; set; }

        public event PropertyChangedEventHandler PropertyChanged;
        public void NotifyPropertyChanged(string propName)
        {
            if (this.PropertyChanged != null)
                this.PropertyChanged(this, new PropertyChangedEventArgs(propName));
        }
    }
}
