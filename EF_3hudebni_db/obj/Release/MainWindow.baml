   M S B A M L   `   `   `  ���� I  EEF_3hudebni_db, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:EF_3hudebni_dbEF_3hudebni_db  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R8clr-namespace:System.ComponentModel;assembly=WindowsBaseSystem.ComponentModel     EF_3hudebni_db.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     .localclr-namespace:EF_3hudebni_db     Hscm8clr-namespace:System.ComponentModel;assembly=WindowsBase     -     � Title$/  )Databáze hudebních alb - EF6 CODE FIRST�����#FAFAFA$	��550��$	��800��$	��550��$	��800�� � WindowStartupLocation$ CenterScreen=� � Icon$ tape-rec2.ico�� � 	Resources  �� IsLiveFilteringRequested   authorViewSource �� SortDescriptions+  %System.ComponentModel.SortDescription   PropertyName  authorViewSource1  authorAlbumsViewSource �� Source �� Source��%r   &	        &	 &     &	 +     7   ��  .    $ 
AuthorName���� ��  .  �� *Albums+8   .��� $��10q�	 � DataContext#	 [  
 � RowDefinitions
 �� $��26 ��� $	��43* ��� $	��41* ��� $
��130* ��� $��55 ��� $
��214* ��� $��5 � � ColumnDefinitions �� $��5* ��� $��* ��� $��2* �.+��� $��Autoři��$��Bottom=�$��Center=�
�������$��1,1,1,0q�$
��Left=�$��0q�$
��Bold"�
�������$��0,1,0,0q�$��20��&   System.Windows.Controls.DataGrid  -     Name$ authorDataGrid��$��1��$��3������    Columns 0  *System.Windows.Controls.DataGridTextColumn  -   authorIdColumn��,  &System.Windows.Controls.DataGridColumn   Header$ Id��   Width5  /System.Windows.Controls.DataGridLengthConverter$ 35 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *
AuthorId+  -   authorNameColumn��$ Autor��$
 1.7*  �� *
AuthorName+  -   countryColumn��$ Země původu��$ *  �� *	Country+  -   startedColumn��$ 	Začátek��$ 60  �� *	Started+�� $
��Alba��$��4��$��Bottom=�$��Center=�
�������$��1,1,1,0q�$
��Left=�$��0q�$
��Bold"�
�������$��0,1,0,0q�$��20��  -   $ albumsDataGrid��$��5������ # [    -   albumIdColumn��$ Id��$ 35  �� *	AlbumId+  -	   authorNameColumn1��$ Autor��$ *  �� *
AuthorName+   ElementStyle ��  �� 
TargetType" ��.���  �� Property � �� �� Value$
 Wrap=�  -
   albumNameColumn��$ Název alba��$ *  �� *	AlbumName+ �� " ��.���  � ��$
 Wrap=�  -   authorIdColumn1��   
Visibility$ Hidden=�$ 	Author Id��$ SizeToHeader  �� *
AuthorId+  -   releasedColumn��$ Vydáno��$ 60  �� *
Released+�� $��1��$��1��$	��110��$��Right=�$	��Top=�$��0,10,0,0q�$��3��.+��� $��	ID autora���� $��Autor���� $��Země���� $��	Začátek���� $��1��$��2��$��
10,10,10,0q�$	��110��$	��Top=�$��3��	 ��  �� ElementName$ authorDataGrid�� �� Path$ SelectedItem�.+��� -   $��txtAuthorId�� � ToolTip$  Modré pole nelze editovat�� �� 
IsReadOnly . ���#D0E6FD���� *
AuthorId+�� -   $��txtAuthName�� �� TextWrapping$
 Wrap=����� *
AuthorName+�� -   $��
txtCountry��$
 Wrap=����� *	Country+�� -   $��
txtStarted�� �� 	MaxLength$ 4������ *	Started+� $��3��$��1��$��2��$��Bottom=�$��Right=�$��0,0,10,0q�
 �� ��  �� �� .+��� -   $��btnSave1��$��Uložit změny��$��1��$��	10,0,0,12q��� -   $��btnAddAuthor��$��Nový autor��$��1���� -   $��btnDelAuthor��$��Smazat autora��$��1��$��1��$��25��$	��Top=��� -   $��lblSaved��$��4��$��2��$��Center=�$
��Bold"�$��20(�$	��162��$��35��$��
13,13,14,7q�$��0,2,0,0q��� $��5��$��1��$��
28,10,0,10q�$
��Left=�.+��� $��ID alba���� $��Autor���� $��Album���� $��Vydáno���� $	��110��$	��Top=�$��5��$��2��$��
10,10,10,0q�	 �� $ albumsDataGrid��$ SelectedItem�.+��� -   $��	txtIdAlba��$  Modré pole nelze editovat�� . ���#D0E6FD���� *	AlbumId+�� -   $��txtAuthorName��$
 Wrap=�$  Modré pole nelze editovat�� . ���#D0E6FD���� *
AuthorName+�� -   $��txtAlbumName��$
 Wrap=����� *	AlbumName+�� -   $��txtReleased��$ 4������ *
Released+� $��5��$��1��$��2��$��Bottom=�$��Right=�$��0,0,10,0q�
 �� ��  �� �� .+��� -   $��btnSave��$��Uložit změny��$��1��$��Right=�$��	10,0,0,12q��� -    ��Name$ btnDelAlbum��$��Smazat album��$��1��$��1���� -   $ btnAddAlbum��$��Nové album��$��1��