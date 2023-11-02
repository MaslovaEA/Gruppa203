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
using WpfApp4.ApplicationData;

namespace WpfApp4.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddTovarPage.xaml
    /// </summary>
    public partial class AddTovarPage : Page
    {
        public Tovar _currentTovar = new Tovar();
        
        public AddTovarPage(Tovar selectedTovar)
        {
            InitializeComponent();
            if (selectedTovar != null)
                _currentTovar = selectedTovar;
            DataContext = _currentTovar;
            CmbKategorii.ItemsSource = ProbaEntities.GetContext().Kategorii_tovara.ToList();
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (string.IsNullOrWhiteSpace(_currentTovar.ID_tovara))
            {
                errors.AppendLine("Укажите артикул товара");
            }
            if (string.IsNullOrWhiteSpace(_currentTovar.Nazvanie_tovara))
            {
                errors.AppendLine("Укажите название товара");
            }
            if (string.IsNullOrWhiteSpace(_currentTovar.Nazvanie_tovara))
            {
                errors.AppendLine("Укажите скидку");
            }
            if (string.IsNullOrWhiteSpace(_currentTovar.Nazvanie_tovara))
            {
                errors.AppendLine("Укажите количество");
            }
            if (_currentTovar.Kategorii_tovara == null)
            {
                errors.AppendLine("Выберите категорию товара");
            }
             if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            ProbaEntities.GetContext().Tovar.Add(_currentTovar);
            try
            {
                ProbaEntities.GetContext().SaveChanges();
                MessageBox.Show("Товар добавлен!");
                AppFrame.MainFrame.Navigate(new TovarPage());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message,ToString());
            }
        }
        
    }
}
