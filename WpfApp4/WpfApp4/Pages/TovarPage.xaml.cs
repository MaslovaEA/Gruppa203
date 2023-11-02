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
    /// Логика взаимодействия для TovarPage.xaml
    /// </summary>
    public partial class TovarPage : Page
    {
        public TovarPage()
        {
            InitializeComponent();
            DGridTovar.ItemsSource = ProbaEntities.GetContext().Tovar.ToList();
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            AppFrame.MainFrame.Navigate(new AddTovarPage((sender as Button).DataContext as Tovar));
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            AppFrame.MainFrame.Navigate(new AddTovarPage(null));
        }

        private void btnBack_Click(object sender, RoutedEventArgs e)
        {
            AppFrame.MainFrame.Navigate(new MainMenu());
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                ProbaEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                DGridTovar.ItemsSource = ProbaEntities.GetContext().Tovar.ToList();
            }
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            var TovarForRemoving = DGridTovar.SelectedItems.Cast<Tovar>().ToList();
            if (MessageBox.Show($"Вы точно хотите удалить следующие {TovarForRemoving.Count()} элементов?", "Внимание",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    ProbaEntities.GetContext().Tovar.RemoveRange(TovarForRemoving);
                    ProbaEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены");
                    DGridTovar.ItemsSource = ProbaEntities.GetContext().Tovar.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }
    }
}
