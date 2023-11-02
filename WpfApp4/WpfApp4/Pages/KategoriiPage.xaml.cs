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
    /// Логика взаимодействия для KategoriiPage.xaml
    /// </summary>
    public partial class KategoriiPage : Page
    {
        public KategoriiPage()
        {
            InitializeComponent();
            DGridKategorii.ItemsSource = ProbaEntities.GetContext().Kategorii_tovara.ToList();
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnBack_Click(object sender, RoutedEventArgs e)
        {
            AppFrame.MainFrame.Navigate(new MainMenu());
        }
    }
}
