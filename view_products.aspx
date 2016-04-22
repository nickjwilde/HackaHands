<%@ Page Title="" Language="C#" MasterPageFile="DefaultPage.master" AutoEventWireup="true" CodeFile="view_products.aspx.cs" Inherits="Project_5050_view_products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <asp:ListView ID="ProductsView" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="InventoryNumber">
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
       <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label Text='<%# Eval("title") %>' runat="server" ID="titleLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("price","{0:c}") %>' runat="server" ID="priceLabel" /></td>
                <td>
                    <a href="product_details.aspx?ID=<%# Eval("InventoryNumber") %>">View Details</a>
                </td>

            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server" class="table table-bordered">
                <tr runat="server">
                    <td runat="server">
                        <table runat="server" id="itemPlaceholderContainer" class="table" style="" border="0">
                            <tr runat="server" style="">

                                <th runat="server">Title</th>
                                <th runat="server">Price</th>
                                <th runat="server"></th>
                            </tr>
                            <tr runat="server" id="itemPlaceholder"></tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager runat="server" ID="DataPager2">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                                <asp:NumericPagerField></asp:NumericPagerField>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Label Text='<%# Eval("InventoryNumber") %>' runat="server" ID="InventoryNumberLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("title") %>' runat="server" ID="titleLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("model") %>' runat="server" ID="modelLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("price") %>' runat="server" ID="priceLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("notes") %>' runat="server" ID="notesLabel" /></td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    <asp:Label ID="testlabel" runat="server" Text="Label"></asp:Label>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:HackaHandsConnStr %>' DeleteCommand="DELETE FROM [Products] WHERE [InventoryNumber] = @original_InventoryNumber AND [title] = @original_title AND (([model] = @original_model) OR ([model] IS NULL AND @original_model IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([notes] = @original_notes) OR ([notes] IS NULL AND @original_notes IS NULL))" InsertCommand="INSERT INTO [Products] ([InventoryNumber], [title], [model], [price], [notes]) VALUES (@InventoryNumber, @title, @model, @price, @notes)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [title] = @title, [model] = @model, [price] = @price, [notes] = @notes WHERE [InventoryNumber] = @original_InventoryNumber AND [title] = @original_title AND (([model] = @original_model) OR ([model] IS NULL AND @original_model IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([notes] = @original_notes) OR ([notes] IS NULL AND @original_notes IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_InventoryNumber" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_title" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_model" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_price" Type="Decimal"></asp:Parameter>
                <asp:Parameter Name="original_notes" Type="String"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="InventoryNumber" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="title" Type="String"></asp:Parameter>
                <asp:Parameter Name="model" Type="String"></asp:Parameter>
                <asp:Parameter Name="price" Type="Decimal"></asp:Parameter>
                <asp:Parameter Name="notes" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String"></asp:Parameter>
                <asp:Parameter Name="model" Type="String"></asp:Parameter>
                <asp:Parameter Name="price" Type="Decimal"></asp:Parameter>
                <asp:Parameter Name="notes" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_InventoryNumber" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_title" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_model" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_price" Type="Decimal"></asp:Parameter>
                <asp:Parameter Name="original_notes" Type="String"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource> 
</asp:Content>

