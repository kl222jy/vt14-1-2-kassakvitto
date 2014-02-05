using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Steg1_2
{
    public partial class _Default : Page
    {
        //Vid page load, sätt fokus på textbox
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBoxSum.Focus();
        }

        //Skapar kvitto och presenterar
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                var sum = double.Parse(TextBoxSum.Text);
                var receipt = new Model.Receipt(sum);

                LiteralSubTotal.Text = receipt.Subtotal.ToString("C");                  //C = Currency
                LiteralDiscountPercentage.Text = receipt.DiscountRate.ToString("P");    //P = Percent
                LiteralDiscount.Text = receipt.MoneyOff.ToString("C");
                LiteralTotal.Text = receipt.Total.ToString("C");

                PanelReceipt.Visible = true;
            }
        }
    }
}