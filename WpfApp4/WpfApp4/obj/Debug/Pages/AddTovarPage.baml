   M S B A M L   `   `   `  ����B  >WpfApp4, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp4.PagesWpfApp4.Pages  5           WpfApp4.Pages.AddTovarPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:WpfApp4.Pages     5        N� Title$  AddTovarPage��5	       N� 
Background
 �����.��5
      �  � RowDefinitions 5   
   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6    � ColumnDefinitions 5   
   �� 5      $	��200 �6   �� 5      $��* �6   .+�5   
   ��    AddTextBlock#��[  6   $��Center=�6:   $��0��6W   $��0��6d   $��Артикул��6t   $��Center=�6�   �� 5   
   #��[  6   $��Center=�6:   $��1��6W   $��0��6d   $��Название��6t   $��Center=�6�   �� 5   
   #��[  6   $��Center=�6:   $��2��6W   $��0��6d   $��Категория��6t   $��Center=�6�   �� 5   
   #��[  6   $��Center=�6:   $��3��6W   $��0��6d   $��Скидка��6t   $��Center=�6�   �� 5   
   #��[  6   $��Center=�6:   $��4��6W   $��0��6d   $��Количество��6t   $��Center=�6�   �� 5   
   #��[  6   $��Center=�6:   $��5��6W   $��0��6d   $��Описание��6t   $��Center=�6�   �� 5   
   #��[  6   $��Center=�6:   $��6��6W   $��0��6d   $��Изображение��6t   $��Center=�6�   �� 5    
   $��0��6   $��1��6   $	��200��6/   $
��Left=�6;   $��Center=�6W    �� 	MaxLength$ 50��6r   ��6�   �� *	ID_tovara+�� 5!   
   $
��Left=�6   $��1��6-   $��1��6:   $	��200��6J   $��Center=�6V   $ 50��6q   ��6�   �� *Nazvanie_tovara+�� 5"   
   -   5         ��Name$ CmbKategorii��5"   �   $
��Left=�6=   $��2��6X   $��1��6e   $	��200��6u   $��Center=�6�    �� DisplayMemberPath$ Nazvanie_kategorii��6�    �� SelectedItem 6   �� *Kategorii_tovara+6�   �� 5#   
   $
��Left=�6   $��3��6-   $��1��6:   $	��200��6J   $��Center=�6V   ��6q   �� *Skidka+�� 5$   
   $
��Left=�6   $��4��6-   $��1��6:   $	��200��6J   $��Center=�6V   ��6q   �� *Kolichestvo__Na_Sklade+�� 5%   
   $
��Left=�6   $��5��6-   $��1��6:   $	��200��6J   $��Center=�6V   $	 150��6q   ��6�   �� *
Opisanie+�� 5&   
   $
��Left=�6   $��6��6-   $��1��6:   $	��200��6J   $��Center=�6V   $ 20��6q   ��6�   �� *Izobrajenie+�� 5'   
   -   5         ��Name$ btnSave��5'      $��Center=�6"   $��7��6?   $��1��6L   $��Сохранить��6\   $��Center=�6p   6�   5(      5)      