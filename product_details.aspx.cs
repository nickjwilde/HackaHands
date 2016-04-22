using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class product_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void add_to_cart_Command(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "add_to_cart")
        {
            ShoppingCart cart = new ShoppingCart();
            DataRowView row = (DataRowView)FormView1.DataItem;
        }
    }
}