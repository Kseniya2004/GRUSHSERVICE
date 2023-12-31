﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using GRUSHSERVICE.Classes;
using GRUSHSERVICE.Pages;

namespace GRUSHSERVICE
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            ClassFrame.frame = frmMain;
            frmMain.Navigate(new PageListClients());
        }

        private void frmMain_ContentRendered(object sender, EventArgs e)
        {
            if (frmMain.CanGoBack)
                BtnBack.Visibility = Visibility.Visible;
            else
                BtnBack.Visibility = Visibility.Hidden;
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            frmMain.GoBack();
        }

        private void btnAutor_Click(object sender, RoutedEventArgs e)
        {
            WindowAuthorization windowAuthorization = new WindowAuthorization();
            windowAuthorization.Show();
            Hide();
        }
    }
}
