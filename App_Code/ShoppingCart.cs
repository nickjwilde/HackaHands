using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


/// <summary>
/// Summary description for ShoppingCart
/// </summary>
public class ShoppingCart
{
    private List<Product> products;
    //var to store session?

    public ShoppingCart()
    {
        //
        // TODO: Add constructor logic here
        // need to store sessions for user to shop.
       
    }

    public string ShowItemsInCart()
    {
        string html = "";
        // add code to display the cart's items
        // will need to determine structure.
        return html;
    }

    public float TotalPrice()
    {
        float total_price = 0.0F;
        foreach (Product p in products){
            total_price += p.Price;
        }
        return total_price;
    }

    public void addProduct(Product p)
    {
        this.products.Add(p);
    }

}