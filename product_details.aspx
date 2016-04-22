<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPage.master" AutoEventWireup="true" CodeFile="product_details.aspx.cs" Inherits="product_details" Debug="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="InventoryNumber" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            InventoryNumber:
            <asp:Label Text='<%# Eval("InventoryNumber") %>' runat="server" ID="InventoryNumberLabel" /><br />
            title:
            <asp:Label Text='<%# Bind("title") %>' runat="server" ID="titleLabel" /><br />
            model:
            <asp:Label Text='<%# Bind("model") %>' runat="server" ID="modelLabel" /><br />
            price:
            <asp:Label Text='<%# Bind("price") %>' runat="server" ID="priceLabel" /><br />
            notes:
            <asp:Label Text='<%# Bind("notes") %>' runat="server" ID="notesLabel" /><br />
            category:
            <asp:Label Text='<%# Bind("category") %>' runat="server" ID="categoryLabel" /><br /> 
            <asp:Button ID="add_to_cart" runat="server" OnCommand="add_to_cart_Command" Text="Add to Cart" CommandName="add_to_cart" />

        </ItemTemplate>
    </asp:FormView>


    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:HackaHandsConnStr %>' SelectCommand="SELECT * FROM [Products] WHERE ([InventoryNumber] = @InventoryNumber)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="ID" Name="InventoryNumber" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

