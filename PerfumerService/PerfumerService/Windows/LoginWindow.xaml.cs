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
    /// Interaction logic for LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        private readonly PerfumerEntities _context;
        private readonly LoginService _loginService;
        private readonly UserService _userService;

        public LoginWindow()
        {
            _context = new PerfumerEntities();
            _userService = new UserService(_context);
            _loginService = new LoginService(_userService);

            WindowStartupLocation = WindowStartupLocation.CenterScreen;

            InitializeComponent();
        }

        private void TryLoginButton_OnClick(object sender, RoutedEventArgs e)
        {
            (string login, string password) = GetLoginFromInput();

            bool result = _loginService.Login(login, password);

            if (!result)
            {
                ControlExtensions.MessageBoxError("Ошибка", "Проверьте введенные данные");

                return;
            }


            this.OpenWindow<ProductWindow>();

            Visibility = Visibility.Hidden;
        }

        private void SignUpButton_OnClick(object sender, RoutedEventArgs e)
        {
            this.OpenWindow<SignUpWindow>(_loginService);
        }

        private (string login, string password) GetLoginFromInput()
        {
            return (LoginTextBox.Text, PasswordTextBox.Password);
        }

        private void LoginWithoutCredentialsButton_OnClick(object sender, RoutedEventArgs e)
        {
            bool result = ControlExtensions.MessageBoxChoose
            (
                "Вы уверены, что хотите продолжить просмотр товаров без регистрации? " +
                "Информация о ваших сделанных заказах будет недоступна при следующем входе!"
            );

            if (!result)
                return;

            this.OpenWindow<ProductWindow>();

            Visibility = Visibility.Hidden;
        }
    }
}