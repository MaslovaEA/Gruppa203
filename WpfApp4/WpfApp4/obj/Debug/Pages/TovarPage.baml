   M S B A M L   `   `   `  ����B  >WpfApp4, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp4.PagesWpfApp4.Pages  5          WpfApp4.Pages.TovarPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:WpfApp4.Pages     5      -   5          N� Title$  	TovarPage��5	       N� 
Background
 �����.��5      �  � RowDefinitions 5   
   �� 5      $
��527* �6   �� 5      $	��73* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 
DGridTovar��5         AutoGenerateColumns .     
IsReadOnly . $��0��6U      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Артикул��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 70 66   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6A   �� *	ID_tovara+  5      $ Название��6%   $	 150 67   	 6C   �� *Nazvanie_tovara+  5      $ Категория��6%   $	 100 68   	 6D   �� *%#Kategorii_tovara.Nazvanie_kategorii+  5      $ Скидка��6%   $ 70 65   	 6@   �� *Skidka+  5      $ Количество��6%   $	 100 69   	 6E   �� *Kolichestvo__Na_Sklade+  5      $ Описание��6%   $ * 67   	 6A   �� *
Opisanie+  5      $ Изображение��6%   $	 100 6:   	 6F   �� *Izobrajenie+4  .System.Windows.Controls.DataGridTemplateColumn  5      $
 auto 6)   
   CellTemplate
 5      �� 5      .R�5      ��  ��Name$ btnEdit��6>   -   5        $ ��Редактировать��5   %   6O   5      5      5!      �� 5"   
   $
��Left=�6    �� Orientation$ 
Horizontal=�60   $��1��6I   .+�5#      �� -   5        $ btnAdd��5#   (   $��Добавить��6   $
��Left=�68   6S   �� 5$      -   5        $ 	btnDelete��5$   '   $��Удалить��6   6:   5%      �� 5&   
   -   5        $ btnBack��5&   .   $��
Назад��6   $��1��6!   $��Right=�6?   6[   5'      5(      