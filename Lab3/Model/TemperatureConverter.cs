using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab3.Model
{
    public static class TemperatureConverter
    {
        public static int CelciusToFarenheit(int degreesC)
        {
            return Convert.ToInt32(degreesC * 1.8 + 32);

        }

        public static int FarenheitToCelcius(int degreesF)
        {
            return Convert.ToInt32((degreesF - 32) * 5/9);
        }
    }
}