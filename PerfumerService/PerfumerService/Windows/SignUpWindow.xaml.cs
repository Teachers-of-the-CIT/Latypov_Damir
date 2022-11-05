using PerfumerService.Extentions;
using PerfumerService.Services;
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

namespace PerfumerService.Windows
{
    /// <summary>
    /// Interaction logic for SignUpWindow.xaml
    /// </summary>
    public partial class SignUpWindow : Window
    {
        private readonly LoginService _loginService;

        public SignUpWindow(LoginService loginService)
        {
            _loginService = loginService;
            WindowStartupLocation = WindowStartupLocation.CenterScreen;

            InitializeComponent();
        }

        private User InitializeUserFromInputs()
        {
            string login = LoginTextBox.Text;
            string password = PasswordTextBox.Password;

            string lastName = LastNameTextBox.Text;
            string firstName = FirstNameTextBox.Text;
            string middleName = MiddleNameTextBox.Text;

            return new User();
        }

        private void SignUpButton_OnClick(object sender, RoutedEventArgs e)
        {
            User user = InitializeUserFromInputs();

            bool result = _loginService.Register(user);

            if (!result)
                ControlExtensions.MessageBoxError("Ошибка", "Проверьте корректность ввода");

            Close();
        }
    }
}