﻿#pragma checksum "..\..\InsertAuthorWindow.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "B555DC8F6D9C8A414C95C9493779A86639B9EBE0234E1EFAB4219DFE6550381E"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using EF_3hudebni_db;
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


namespace EF_3hudebni_db {
    
    
    /// <summary>
    /// InsertAuthorWindow
    /// </summary>
    public partial class InsertAuthorWindow : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 24 "..\..\InsertAuthorWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtAuthorName;
        
        #line default
        #line hidden
        
        
        #line 25 "..\..\InsertAuthorWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtCountry;
        
        #line default
        #line hidden
        
        
        #line 26 "..\..\InsertAuthorWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtStarted;
        
        #line default
        #line hidden
        
        
        #line 28 "..\..\InsertAuthorWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnAddAuthor;
        
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
            System.Uri resourceLocater = new System.Uri("/EF_3hudebni_db;component/insertauthorwindow.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\InsertAuthorWindow.xaml"
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
            this.txtAuthorName = ((System.Windows.Controls.TextBox)(target));
            
            #line 24 "..\..\InsertAuthorWindow.xaml"
            this.txtAuthorName.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.txtAuthorName_TextChanged);
            
            #line default
            #line hidden
            return;
            case 2:
            this.txtCountry = ((System.Windows.Controls.TextBox)(target));
            
            #line 25 "..\..\InsertAuthorWindow.xaml"
            this.txtCountry.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.txtCountry_TextChanged);
            
            #line default
            #line hidden
            return;
            case 3:
            this.txtStarted = ((System.Windows.Controls.TextBox)(target));
            
            #line 26 "..\..\InsertAuthorWindow.xaml"
            this.txtStarted.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.txtStarted_TextChanged);
            
            #line default
            #line hidden
            
            #line 26 "..\..\InsertAuthorWindow.xaml"
            this.txtStarted.PreviewTextInput += new System.Windows.Input.TextCompositionEventHandler(this.NumericOnly);
            
            #line default
            #line hidden
            return;
            case 4:
            this.btnAddAuthor = ((System.Windows.Controls.Button)(target));
            
            #line 30 "..\..\InsertAuthorWindow.xaml"
            this.btnAddAuthor.Click += new System.Windows.RoutedEventHandler(this.btnAddAuthor_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

