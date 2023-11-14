using GRUSHSERVICE.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Metadata.W3cXsd2001;
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
using System.Xaml;


namespace GRUSHSERVICE.Pages
{
    /// <summary>
    /// Логика взаимодействия для PageEditClients.xaml
    /// </summary>
    public partial class PageEditClients : Page
    {
        private Sevices _currentServ = new Sevices();

        public PageEditClients(Sevices selectedService)
        {
            InitializeComponent();
            if (selectedService != null)
                _currentServ = selectedService;
            DataContext = _currentServ;
            Cbimg.ItemsSource = GRUSHSERVICE_db_Entities.GetContext().Sevices.ToList();
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder error = new StringBuilder(); //объект для сообщения об ошибке

            //проверка полей объекта
            if (string.IsNullOrWhiteSpace(_currentServ.title))
                error.AppendLine("Укажите название");
            if (string.IsNullOrWhiteSpace(_currentServ.time))
                error.AppendLine("Укажите время");
            //if (string.IsNullOrWhiteSpace(_currentServ.price))
            //    error.AppendLine("Укажите цену");
            if (_currentServ.discount < 0)
                error.AppendLine("Скидка не может быть отрицательной");

            if (error.Length > 0)
            {
                MessageBox.Show(error.ToString());
                return;
            }
            //если продукт новый
            if (GRUSHSERVICE_db_Entities.GetContext().Sevices.Find(_currentServ.id) == null)
                GRUSHSERVICE_db_Entities.GetContext().Sevices.Add(_currentServ); //добавить в контекст
            try
            {
                GRUSHSERVICE_db_Entities.GetContext().SaveChanges(); // сохранить изменения

                MessageBox.Show("Данные сохранены");
                ClassFrame.frame.Navigate(new PageListClients());

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
    }
}
