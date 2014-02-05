using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Steg1_2.Model
{
    public class Receipt
    {
        private double _subtotal;

        public double DiscountRate { get; private set; }
        public double MoneyOff { get; private set; }
        public double Subtotal
        {
            get
            {
                return _subtotal;
            }

            set
            {
                if (value > 0)
                {
                    _subtotal = value;
                }
                else
                {
                    throw new ArgumentOutOfRangeException("_subtotal får inte vara 0 eller mindre");
                }
            }
        }
        public double Total { get; private set; }

        //Utför samtliga beräkningar
        public void Calculate(double subtotal)
        {
            //Avgör rabattsatsen
            if (_subtotal < 500)
            {
                DiscountRate = 0.00;
            }
            if (_subtotal > 500 && _subtotal < 1000)
            {
                DiscountRate = 0.05;
            }
            if (_subtotal > 1000 && _subtotal < 5000)
            {
                DiscountRate = 0.10;
            }
            if (_subtotal > 5000)
            {
                DiscountRate = 0.15;
            }
            //Beräkna avdrag för rabatt
            MoneyOff = _subtotal * DiscountRate;

            //Ta bort avdraget från summan
            Total = Subtotal - MoneyOff;
        }

        public Receipt(double subtotal)
        {
            Subtotal = subtotal;
            Calculate(subtotal);
        }
    }
}