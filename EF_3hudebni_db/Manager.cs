using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace EF_3hudebni_db
{
	internal class Manager
	{
		private bool validAuthor;
		private bool validAlbum;
		private string inputText;
		private string inputYear;
		private int year;

		internal bool IsAuthorValid(object txtAuthName, object txtCountry, object txtStarted)
		{
			validAuthor = true;

			validAuthor = (IsStringValid(txtAuthName)) ? validAuthor : false;
			validAuthor = (IsStringValid(txtCountry)) ? validAuthor : false;
			validAuthor = (IsYearValid(txtStarted, 1900)) ? validAuthor : false;

			return validAuthor;
		}

		internal bool IsAlbumValid(object txtAlbumName, object txtReleased, int started)
		{
			validAlbum = true;

			validAlbum = (IsStringValid(txtAlbumName)) ? validAlbum : false;
			validAlbum = (IsYearValid(txtReleased, started)) ? validAlbum : false;

			return validAlbum;
		}

		private bool IsStringValid(object obj)
		{
			inputText = ((TextBox)obj).Text.Trim();

			if (inputText == "")
			{
				((TextBox)obj).Background = Brushes.Red;
				((TextBox)obj).Foreground = Brushes.White;
				return false;
			}
			else
			{
				((TextBox)obj).Background = Brushes.White;
				((TextBox)obj).Foreground = Brushes.Black;
				return true;
			}
		}

		private bool IsYearValid(object obj, int started)
		{
			inputYear = ((TextBox)obj).Text;
			if (int.TryParse(inputYear, out year))
			{
				if (year < 1900 || year < started || year > DateTime.Today.Year)
				{
					((TextBox)obj).Background = Brushes.Red;
					((TextBox)obj).Foreground = Brushes.White;
					return false;
				}
				else
				{
					((TextBox)obj).Background = Brushes.White;
					((TextBox)obj).Foreground = Brushes.Black;
					return true;
				}
			}
			else
			{
				((TextBox)obj).Background = Brushes.Red;
				((TextBox)obj).Foreground = Brushes.White;
				return false;
			}
		}
	}
}
