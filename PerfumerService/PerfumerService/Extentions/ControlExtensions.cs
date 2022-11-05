using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace PerfumerService.Extentions
{
    public static class ControlExtensions
    {
        public static void OpenWindow<TWindow>(this Window sender, params object[] args) where TWindow : Window
        {
            TWindow windowToOpen = (TWindow)Activator.CreateInstance(typeof(TWindow), args);

            windowToOpen.Show();
        }

        public static void MessageBoxError(string title, string errorMessage)
        {
            MessageBox.Show(errorMessage, title, MessageBoxButton.OK, MessageBoxImage.Error);
        }

        public static void MessageBoxInformation(string message)
        {
            MessageBox.Show(message, "Информация", MessageBoxButton.OK, MessageBoxImage.Information);
        }

        public static bool MessageBoxChoose(string message)
        {
            MessageBoxResult result = MessageBox.Show(message, "Подтвердите выбор", MessageBoxButton.YesNo, MessageBoxImage.Information);

            return result == MessageBoxResult.Yes;
        }
    }
}
