// Updated by XamlIntelliSenseFileGenerator 05-Nov-22 11:51:56
#pragma checksum "..\..\..\Windows\SignUpWindow.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "1DB0888FF99F54FD3EF07E4C22DED1A0CF41E3B2124325D2F43793E36868B286"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using PerfumerService.Windows;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace PerfumerService.Windows
{


    /// <summary>
    /// SignUpWindow
    /// </summary>
    public partial class SignUpWindow : System.Windows.Window, System.Windows.Markup.IComponentConnector
    {

        private bool _contentLoaded;

        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent()
        {
            if (_contentLoaded)
            {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/PerfumerService;component/windows/signupwindow.xaml", System.UriKind.Relative);

#line 1 "..\..\..\Windows\SignUpWindow.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);

#line default
#line hidden
        }

        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target)
        {
            this._contentLoaded = true;
        }

        internal System.Windows.Controls.TextBlock StoreTitle;
        internal System.Windows.Controls.TextBlock StoreLoginTitle;
        internal System.Windows.Controls.StackPanel StackPanel;
        internal System.Windows.Controls.TextBox LastNameTextBox;
        internal System.Windows.Controls.TextBox FirstNameTextBox;
        internal System.Windows.Controls.TextBox MiddleNameTextBox;
        internal System.Windows.Controls.TextBox LoginTextBox;
        internal System.Windows.Controls.PasswordBox PasswordTextBox;
        internal System.Windows.Controls.Button SignUpButton;
    }
}
