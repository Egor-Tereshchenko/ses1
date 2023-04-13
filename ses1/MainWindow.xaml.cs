using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace ses1
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

          
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e) // проверка длинны водимых символов 
        {
            if (textBox.Text.Length < 3 || textBox.Text.Length > 25) // в этой строке указывается диапазон длинны по заданию в билете
            {
                textBox.Background = Brushes.Red;
                string text = "Малооо букав";
                textBlock.Text = text;
               
            }
            else
            {
                textBox.Background = Brushes.Green;
                string text1 = "красава";
                textBlock.Text = text1;
            }
        }

        private void textBox4_TextChanged(object sender, TextChangedEventArgs e) // Максимум 4 числа 
        {
            if (textBox4.Text.Length > 4) //в этой строке и ниже изменить длину по заданию 
            {
                textBox4.Text = textBox4.Text.Substring(0, 4);
                textBox4.CaretIndex = 4;
            }
        }

        
        private void textBox4minus_PreviewTextInput(object sender, TextCompositionEventArgs e) // Максимум 4 числа и низя числа со знаком-    ниже в строке можно изменить длину 
        {
            if (!char.IsDigit(e.Text, e.Text.Length - 1) || textBox4minus.Text.Length >= 4 || (textBox4minus.Text == "0" && e.Text == "0") || (textBox4minus.Text == "" && e.Text == "-"))
            {
                e.Handled = true;
            }
        }

        private void textBoxminus_PreviewTextInput(object sender, TextCompositionEventArgs e) //низя числа со знаком- без ограниченний на длину 
        {
            if (!char.IsDigit(e.Text, e.Text.Length - 1) || (textBoxminus.Text == "" && e.Text == "-"))
            {
                e.Handled = true;
            }
        }
    }
}
