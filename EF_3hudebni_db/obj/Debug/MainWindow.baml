   M S B A M L   `   `   `  ����I  EEF_3hudebni_db, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:EF_3hudebni_dbEF_3hudebni_db  5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R8clr-namespace:System.ComponentModel;assembly=WindowsBaseSystem.ComponentModel 5          EF_3hudebni_db.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:EF_3hudebni_db     5   	   Hscm8clr-namespace:System.ComponentModel;assembly=WindowsBase     5      -   5          � Title$/  )Databáze hudebních alb - EF6 CODE FIRST��5	   	   ���#FAFAFA$	��550��5
      $	��800��6   $	��550��6   $	��800��6,    � WindowStartupLocation$ CenterScreen=�5       � Icon$ tape-rec2.ico��6(    � 	Resources 5       �� IsLiveFilteringRequested   authorViewSource �� SortDescriptions+  %System.ComponentModel.SortDescription   PropertyName  authorViewSource1  authorAlbumsViewSource �� Source �� Source��%�   &	        &	 O     &	 b     7   �� 5       .  5        5      $ 
AuthorName��6   5      �� 5      6   �� 5       .  5   
   �� *Albums+8   5      5      .��5      � $��10q�6   	 � DataContext#	 [  6   
 � RowDefinitions
 5      �� 5      $��26 �6   �� 5      $	��43* �6   �� 5      $	��41* �6   �� 5      $
��130* �6   �� 5      $��55 �6   �� 5       $
��214* �6   �� 5!      $��5 �6    � ColumnDefinitions 5#      �� 5$      $��5* �6   �� 5%      $��* �6   �� 5&      $��2* �6   .+�5(      �� $��Autoři��6
   $��Bottom=�6   $��Center=�66   
�������$��1,1,1,0q�5)      $
��Left=�64   $��0q�6O   $
��Bold"�5*      
�������$��0,1,0,0q�6+   $��20��6=   &   System.Windows.Controls.DataGrid  5+      -   5          Name$ authorDataGrid��5+      $��1��6%   $��3��5,   B   ��5+   2   ��    Columns 5-      0  *System.Windows.Controls.DataGridTextColumn  5.      -   5        authorIdColumn��,  &System.Windows.Controls.DataGridColumn   Header$ Id��5.   N      Width5  /System.Windows.Controls.DataGridLengthConverter$ 35 6Z   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *
AuthorId+6Z     5/      -   5        authorNameColumn��$ Autor��5/   R   $
 1.7* 6a    63   �� *
AuthorName+6a     50      -   5        countryColumn��$ Země původu��50   L   $ * 6a    60   �� *	Country+6a     51      -   5        startedColumn��$ 	Začátek��51   L   $ 60 6]    60   �� *	Started+6]   53      �� 54      $
��Alba��6
   $��4��6   $��Bottom=�6'   $��Center=�6B   
�������$��1,1,1,0q�55      $
��Left=�64   $��0q�6O   $
��Bold"�56      
�������$��0,1,0,0q�6+   $��20��6=     57      -   5        $ albumsDataGrid��57      $��5��6%   ��58      �� # [  59        5:      -   5        albumIdColumn��$ Id��5:   L   $ 35 6X    60   �� *	AlbumId+6X     5;      -	   5        authorNameColumn1��$ Autor��5;   S   $ * 6b    64   �� *
AuthorName+   ElementStyle 5<      �� 5=       �� 
TargetType" ��6   .�5>   	   ��  �� Property � �� �� Value$
 Wrap=�6(   5?   	   5A        5B      -
   5        albumNameColumn��$ Název alba��5B   P   $ * 6d    62   �� *	AlbumName+ 5C      �� 5D      " ��6   .�5E   	   ��  � ��$
 Wrap=�6(   5F   	   5H        5I      -   5        authorIdColumn1��   
Visibility$ Hidden=�5I   2   $ 	Author Id��6c   $ SizeToHeader 6v    6F   �� *
AuthorId+6v     5J      -   5        releasedColumn��$ Vydáno��5J   N   $ 60 6^    61   �� *
Released+6^   5L      �� 5M      $��1��6   $��1��6   $	��110��6,   $��Right=�69   $	��Top=�6U   $��0,10,0,0q�5N      $��3��6   .+�5O      �� $��	ID autora��6   �� 5P      $��Autor��6   �� 5Q      $��Země��6   �� 5R      $��	Začátek��6   5S      �� 5T      $��1��6   $��2��6   $��
10,10,10,0q�6,   $	��110��6@   $	��Top=�6M   $��3��6�   	 6e   ��  �� ElementName$ authorDataGrid�� �� Path$ SelectedItem�.+�5U      �� -   5        $��txtAuthorId��5U       � ToolTip$  Modré pole nelze editovat��6     �� 
IsReadOnly . ���#D0E6FD��6D   �� *
AuthorId+6p   �� 5V      -   5        $��txtAuthName��5V       �� TextWrapping$
 Wrap=�6    ��64   �� *
AuthorName+6P   �� 5W      -   5        $��
txtCountry��5W      $
 Wrap=�6   ��63   �� *	Country+6L   �� 5X      -   5        $��
txtStarted��5X       �� 	MaxLength$ 4��6W   ��6>   �� *	Started+6e   5Y      � 5Z      $��3��6	   $��1��6   $��2��6&   $��Bottom=�6:   $��Right=�5[      $��0,0,10,0q�6"   
 5\      �� 5]      �� 5^       5`      �� 5a      �� 5b      .+�5d      �� -   5        $��btnSave1��5d      $��Uložit změny��6   $��1��63   $��	10,0,0,12q�5e      6   �� 5f      -   5        $��btnAddAuthor��5f      $��Nový autor��6    $��1��65   5g      �� 5h      -   5        $��btnDelAuthor��5h      $��Smazat autora��6    $��1��68   $��1��6H   $��25��6p   $	��Top=�6|   5i      �� 5j      -   5        $��lblSaved��5j   
   $��4��6   $��2��6'   $��Center=�67   $
��Bold"�5k      $��20(�6   $	��162��6'   $��35��63   $��
13,13,14,7q�6?   $��0,2,0,0q�6S   �� 5m      $��5��6   $��1��6   $��
28,10,0,10q�6,   $
��Left=�6@   .+�5n      �� $��ID alba��6   �� 5o      $��Autor��6   �� 5p      $��Album��6   �� 5q      $��Vydáno��6   5r      �� 5s      $	��110��6   $	��Top=�6   $��5��64   $��2��6A   $��
10,10,10,0q�6Q   	 6e   �� $ albumsDataGrid��$ SelectedItem�.+�5t      �� -   5        $��	txtIdAlba��5t      $  Modré pole nelze editovat��6    . ���#D0E6FD��6B   �� *	AlbumId+6m   �� 5u      -   5        $��txtAuthorName��5u      $
 Wrap=�6"   $  Modré pole nelze editovat��66    . ���#D0E6FD��6Z   �� *
AuthorName+6�   �� 5v      -   5        $��txtAlbumName��5v      $
 Wrap=�6!   ��65   �� *	AlbumName+6P   �� 5w      -   5        $��txtReleased��5w      $ 4��5x      ��5w   @   �� *
Released+5x   ;   5y      � 5z      $��5��6	   $��1��6   $��2��6&   $��Bottom=�6:   $��Right=�5{      $��0,0,10,0q�6"   
 5|      �� 5}      �� 5~       5�      �� 5�      �� 5�      .+�5�      �� -   5        $��btnSave��5�      $��Uložit změny��6   $��1��62   $��Right=�5�      $��	10,0,0,12q�5�      6   �� 5�      -   5         ��Name$ btnDelAlbum��5�      $��Smazat album��6!   $��1��68   $��1��6E   6U   �� 5�      -   5        $ btnAddAlbum��5�      $��Nové album��6!   $��1��66   6C   5�      5�      5�      