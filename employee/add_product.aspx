<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add_product.aspx.cs" Inherits="employee_add_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DefaultMode="Insert" AutoGenerateRows="False" DataKeyNames="InventoryNumber" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="InventoryNumber" HeaderText="InventoryNumber" ReadOnly="True" SortExpression="InventoryNumber"></asp:BoundField>
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title"></asp:BoundField>
            <asp:BoundField DataField="model" HeaderText="model" SortExpression="model"></asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price"></asp:BoundField>
            <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes"></asp:BoundField>
            <asp:BoundField DataField="category" HeaderText="category" SortExpression="category"></asp:BoundField>
            <asp:CommandField ShowInsertButton="True"></asp:CommandField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:HackaHandsConnStr %>' SelectCommand="SELECT * FROM [Products]" DeleteCommand="DELETE FROM [Products] WHERE [InventoryNumber] = @InventoryNumber" InsertCommand="INSERT INTO [Products] ([InventoryNumber], [title], [model], [price], [notes], [category]) VALUES (@InventoryNumber, @title, @model, @price, @notes, @category)" UpdateCommand="UPDATE [Products] SET [title] = @title, [model] = @model, [price] = @price, [notes] = @notes, [category] = @category WHERE [InventoryNumber] = @InventoryNumber">
        <DeleteParameters>
            <asp:Parameter Name="InventoryNumber" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="InventoryNumber" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="title" Type="String"></asp:Parameter>
            <asp:Parameter Name="model" Type="String"></asp:Parameter>
            <asp:Parameter Name="price" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="notes" Type="String"></asp:Parameter>
            <asp:Parameter Name="category" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String"></asp:Parameter>
            <asp:Parameter Name="model" Type="String"></asp:Parameter>
            <asp:Parameter Name="price" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="notes" Type="String"></asp:Parameter>
            <asp:Parameter Name="category" Type="String"></asp:Parameter>
            <asp:Parameter Name="InventoryNumber" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

