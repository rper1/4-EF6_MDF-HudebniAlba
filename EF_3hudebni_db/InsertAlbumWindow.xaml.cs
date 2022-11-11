using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace EF_3hudebni_db
{
	/// <summary>
	/// Interaction logic for InsertAlbumWindow.xaml
	/// </summary>
	public partial class InsertAlbumWindow : Window
	{
		private AlbumContext db = new AlbumContext();
		private Manager manager;
		private Author author;
		private int authorId;
		private int started;
		private string authorName;
		private bool btnAddPressed = false;

		public InsertAlbumWindow()
		{
			InitializeComponent();
		}

		public InsertAlbumWindow(object selectedAuthor)
		{
			InitializeComponent();
			manager = new Manager();
			author = ((Author)selectedAuthor);
			authorId = author.AuthorId;
			authorName = author.AuthorName;
			started = author.Started;
			txtAuthorName.Text = authorName;
			txtAlbumName.Focus();
		}

		private void btnAddAlbum_Click(object sender, RoutedEventArgs e)
		{
			btnAddPressed = true;

			if (manager.IsAlbumValid(txtAlbumName, txtReleased, started))
			{
				Album alb = new Album();
				alb.AlbumName = txtAlbumName.Text.Trim();
				alb.Released = int.Parse(txtReleased.Text);
				alb.AuthorId = authorId;
				alb.AuthorName = authorName;
				try
				{
					db.Albums.Add(alb);
					db.SaveChanges();
				}
				catch (Exception ex)
				{
					MessageBox.Show(ex.Message);
				}
				DialogResult = true;
			}
		}

		private void txtAlbumName_TextChanged(object sender, TextChangedEventArgs e)
		{
			if (btnAddPressed)
			{
				manager.IsAlbumValid(txtAlbumName, txtReleased, started);
			}
		}

		private void txtReleased_TextChanged(object sender, TextChangedEventArgs e)
		{
			if (btnAddPressed)
			{
				manager.IsAlbumValid(txtAlbumName, txtReleased, started);
			}
		}

		private void NumericOnly(object sender, TextCompositionEventArgs e)
		{
			Regex regex = new Regex("[^0-9]+");
			e.Handled = regex.IsMatch(e.Text);
		}
	}
}
