   M S B A M L   `   `   `  ����B  >WpfApp4, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp4.PagesWpfApp4.Pages  5      !    WpfApp4.Pages.KategoriiPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:WpfApp4.Pages     5        N� Title$  KategoriiPage��5	       N� 
Background
 �����.��5      �  � RowDefinitions 5   
   �� 5      $
��527* �6   �� 5      $	��73* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ DGridKategorii��5         AutoGenerateColumns .     
IsReadOnly . $��0��6Y   $��Center=�6f      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 	№ п/п��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 70 64   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6?   �� *ID_Kategorii+  5      $) #Название категории��6%   $	 150 6A   	 6M   �� *Nazvanie_kategorii+4  .System.Windows.Controls.DataGridTemplateColumn  5      $
 auto 6)   
   CellTemplate
 5      �� 5      .R�5      ��  ��Name$ btnEdit��6>   -   5        $ ��Редактировать��5   %   6O   5      5      5      �� 5   
   -   5        $ btnBack��5   .   $��
Назад��6   $��1��6!   $��Right=�6?   6[   5      5      