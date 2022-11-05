﻿#pragma checksum "..\..\..\Windows\LoginWindow.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "FC7F453DFC287F02CB9571A4CC5484E328F93B6925749BDF43EDFA5D72E712D6"
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


namespace PerfumerService.Windows {
    
    
    /// <summary>
    /// LoginWindow
    /// </summary>
    public partial class LoginWindow : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 48 "..\..\..\Windows\LoginWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock StoreTitle;
        
        #line default
        #line hidden
        
        
        #line 58 "..\..\..\Windows\LoginWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock StoreLoginTitle;
        
        #line default
        #line hidden
        
        
        #line 65 "..\..\..\Windows\LoginWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel StackPanel;
        
        #line default
        #line hidden
        
        
        #line 74 "..\..\..\Windows\LoginWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox LoginTextBox;
        
        #line default
        #line hidden
        
        
        #line 86 "..\..\..\Windows\LoginWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.PasswordBox PasswordTextBox;
        
        #line default
        #line hidden
        
        
        #line 93 "..\..\..\Windows\LoginWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button TryLoginButton;
        
        #line default
        #line hidden
        
        
        #line 102 "..\..\..\Windows\LoginWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button SignUpButton;
        
        #line default
        #line hidden
        
        
        #line 111 "..\..\..\Windows\LoginWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button LoginWithoutCredentialsButton;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/PerfumerService;component/windows/loginwindow.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Windows\LoginWindow.xaml"
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
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.StoreTitle = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 2:
            this.StoreLoginTitle = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 3:
            this.StackPanel = ((System.Windows.Controls.StackPanel)(target));
            return;
            case 4:
            this.LoginTextBox = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            this.PasswordTextBox = ((System.Windows.Controls.PasswordBox)(target));
            return;
            case 6:
            this.TryLoginButton = ((System.Windows.Controls.Button)(target));
            
            #line 99 "..\..\..\Windows\LoginWindow.xaml"
            this.TryLoginButton.Click += new System.Windows.RoutedEventHandler(this.TryLoginButton_OnClick);
            
            #line default
            #line hidden
            return;
            case 7:
            this.SignUpButton = ((System.Windows.Controls.Button)(target));
            
            #line 108 "..\..\..\Windows\LoginWindow.xaml"
            this.SignUpButton.Click += new System.Windows.RoutedEventHandler(this.SignUpButton_OnClick);
            
            #line default
            #line hidden
            return;
            case 8:
            this.LoginWithoutCredentialsButton = ((System.Windows.Controls.Button)(target));
            
            #line 117 "..\..\..\Windows\LoginWindow.xaml"
            this.LoginWithoutCredentialsButton.Click += new System.Windows.RoutedEventHandler(this.LoginWithoutCredentialsButton_OnClick);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}
