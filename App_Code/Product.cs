using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Products
/// </summary>
public class Product
{

    private float price;
    private string title;
    private int inventory_number;
    private string model;
    private string notes;

    public float Price {
        get { return this.price; }

        set {
            if (value < 0){
                this.price = 0.0F;
            }
            else {
                this.price = value;
            }
        }
   }

    public int Inventory_Number
    {
        get { return this.inventory_number; }
        set { this.inventory_number = value; }
    }

    public string Title
    {
        get { return this.title; }
        set { this.title = value; }
    }

    public string Model
    {
        get { return this.model; }
        set { this.model = value; }
    } 

    public string Notes
    {
        get { return this.notes; }
        set { this.notes = value; }
    }

    public Product(int inventory_num, float price, string title, string model="", string notes=" ")
    {
        this.Title = title;
        this.Inventory_Number = inventory_num;
        this.Price = price;
        this.Model = model;
        this.Notes = notes;
        //
        // TODO: Add constructor logic here
        // 
    }
}