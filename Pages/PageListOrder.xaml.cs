using GRUSHSERVICE.Classes;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GRUSHSERVICE.Pages
{
    /// <summary>
    /// Логика взаимодействия для PageListOrder.xaml
    /// </summary>
    public partial class PageListOrder : Page
    {
        public PageListOrder()
        {
            InitializeComponent();

            LViewOrder.ItemsSource = GRUSHSERVICE_db_Entities.GetContext().Reports.
                OrderBy(x => x.dateStart).ToList();
        }

        private void BtnServ_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frame.Navigate(new PageListClients());
        }
    }
}
