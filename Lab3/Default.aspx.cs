using Lab3.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                int startTemp = int.Parse(StartTempTextBox.Text);
                int endTemp = int.Parse(EndTempTextBox.Text);
                int stepsTemp = int.Parse(StepsTextBox.Text);
                
                
                if(CelciusToFarenButton.Checked)
                {
                    TableHeader1.Text = "°C";
                    TableHeader2.Text = "°F";
                }
                else
                {
                    TableHeader1.Text = "°F";
                    TableHeader2.Text = "°C";
                }

                for (int i = startTemp; i <= endTemp; i += stepsTemp)
                {
                    TableRow tRow = new TableRow();
                    TableCell tCell1 = new TableCell();
                    TableCell tCell2 = new TableCell();

                    Table1.Rows.Add(tRow);
                    tRow.Cells.Add(tCell1);
                    tRow.Cells.Add(tCell2);

                    if(CelciusToFarenButton.Checked)
                    {
                        int celciusToFarenheit = TemperatureConverter.CelciusToFarenheit(i);
                        tCell1.Text = i.ToString();
                        tCell2.Text = celciusToFarenheit.ToString();
                    }
                    else
                    {
                        int farenheitToCelcius = TemperatureConverter.FarenheitToCelcius(i);
                        tCell1.Text = i.ToString();
                        tCell2.Text = farenheitToCelcius.ToString();
                    }

                   

                   


                }
                Table1.Visible = true;
            }
        }
    }
}