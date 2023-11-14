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
using System.Runtime.Remoting.Metadata.W3cXsd2001;

namespace GRUSHSERVICE.Pages
{
    /// <summary>
    /// Логика взаимодействия для PageListClients.xaml
    /// </summary>
    public partial class PageListClients : Page
    {
        public PageListClients()
        {
            InitializeComponent();
            LViewServ.ItemsSource = GRUSHSERVICE_db_Entities.GetContext().Sevices.ToList();
        }

        private void BtnEditServ_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frame.Navigate(new PageEditClients((sender as Button).DataContext as Sevices));
        }

        private void BtnDeleteServ_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Удалить?", "Внимание",
                   MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {               
                    Sevices serForDelete = LViewServ.SelectedItem as Sevices;
                    GRUSHSERVICE_db_Entities.GetContext().Sevices.Remove(serForDelete);
                    GRUSHSERVICE_db_Entities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены");
                    LViewServ.ItemsSource = GRUSHSERVICE_db_Entities.GetContext().Sevices.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Услуга не удалена");
                }
            }
            LViewServ.ItemsSource = GRUSHSERVICE_db_Entities.GetContext().Sevices.ToList();
        }

        private void BtnAddServ_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frame.Navigate(new PageEditClients(null));
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if(Visibility == Visibility.Visible)
            {
                GRUSHSERVICE_db_Entities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                LViewServ.ItemsSource = GRUSHSERVICE_db_Entities.GetContext().Sevices.ToList();
            }
        }

        private void TxtSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            string search = TxbSearch.Text.ToLower();
            if (TxbSearch.Text != null)
                LViewServ.ItemsSource = GRUSHSERVICE_db_Entities.GetContext().Sevices.
                    Where(x => x.title.Contains(search)).ToList();
        }

        private void btnClear_Click(object sender, RoutedEventArgs e)
        {
            LViewServ.ItemsSource = GRUSHSERVICE_db_Entities.GetContext().Sevices.ToList();
        }
        /// <summary>
        /// сортировка по возрастанию стоимости
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void RbUp_Checked(object sender, RoutedEventArgs e)
        {
            LViewServ.ItemsSource = GRUSHSERVICE_db_Entities.GetContext().Sevices.
               OrderBy(x => x.price).ToList();
        }
        /// <summary>
        /// сортировка по убыванию стоимости
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void RbDown_Checked(object sender, RoutedEventArgs e)
        {
            LViewServ.ItemsSource = GRUSHSERVICE_db_Entities.GetContext().Sevices.
                OrderByDescending(x => x.price).ToList();
        }

        private void CmbFiltr_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if(CmbFiltr.SelectedIndex == 0)
            {
                LViewServ.ItemsSource = GRUSHSERVICE_db_Entities.GetContext().Sevices.
                    Where(x => x.discount >= 0 && x.discount < 5).ToList();
            }
            else if(CmbFiltr.SelectedIndex == 1)
            {
                LViewServ.ItemsSource = GRUSHSERVICE_db_Entities.GetContext().Sevices.
                    Where(x => x.discount >= 5 && x.discount < 15).ToList();
            }
            else if (CmbFiltr.SelectedIndex == 2)
            {
                LViewServ.ItemsSource = GRUSHSERVICE_db_Entities.GetContext().Sevices.
                    Where(x => x.discount >= 15 && x.discount < 30).ToList();
            }
            else if (CmbFiltr.SelectedIndex == 3)
            {
                LViewServ.ItemsSource = GRUSHSERVICE_db_Entities.GetContext().Sevices.
                    Where(x => x.discount >= 30 && x.discount < 70).ToList();
            }
            else 
            {
                LViewServ.ItemsSource = GRUSHSERVICE_db_Entities.GetContext().Sevices.
                    Where(x => x.discount >= 70 && x.discount < 100).ToList();
            }
        }

        private void BtnListOrder_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frame.Navigate(new PageListOrder());
        }
    }
}
