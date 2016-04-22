<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="employee_dashboard.aspx.cs" Inherits="employee_employee_dashboard" %>

<asp:Content ID="content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="content2" ContentPlaceHolderID="Body" runat="server">
    <h2>Orders</h2>
    <asp:ListView ID="OrdersList"  runat="server" DataSourceID="OrderListSource" DataKeyNames="OrderID" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("OrderID") %>' runat="server" ID="OrderIDLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("CustomerEmail") %>' runat="server" ID="CustomerEmailLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("TotalPrice") %>' runat="server" ID="TotalPriceLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("DateOrdered") %>' runat="server" ID="DateOrderedLabel" /></td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                    <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("OrderID") %>' runat="server" ID="OrderIDLabel1" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("CustomerEmail") %>' runat="server" ID="CustomerEmailTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("TotalPrice") %>' runat="server" ID="TotalPriceTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("DateOrdered") %>' runat="server" ID="DateOrderedTextBox" /></td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                    <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox Text='<%# Bind("CustomerEmail") %>' runat="server" ID="CustomerEmailTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("TotalPrice") %>' runat="server" ID="TotalPriceTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("DateOrdered") %>' runat="server" ID="DateOrderedTextBox" /></td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("OrderID") %>' runat="server" ID="OrderIDLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("CustomerEmail") %>' runat="server" ID="CustomerEmailLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("TotalPrice") %>' runat="server" ID="TotalPriceLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("DateOrdered") %>' runat="server" ID="DateOrderedLabel" /></td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server" class="table">
                <tr runat="server">
                    <td runat="server">
                        <table runat="server" id="itemPlaceholderContainer" class="table" style="" border="0">
                            <tr runat="server" style="">
                                <th runat="server"></th>
                                <th runat="server">OrderID</th>
                                <th runat="server">CustomerEmail</th>
                                <th runat="server">TotalPrice</th>
                                <th runat="server">DateOrdered</th>
                            </tr>
                            <tr runat="server" id="itemPlaceholder"></tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager runat="server" ID="DataPager1">
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
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("OrderID") %>' runat="server" ID="OrderIDLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("CustomerEmail") %>' runat="server" ID="CustomerEmailLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("TotalPrice") %>' runat="server" ID="TotalPriceLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("DateOrdered") %>' runat="server" ID="DateOrderedLabel" /></td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>


    <asp:SqlDataSource runat="server" ID="OrderListSource" ConnectionString='<%$ ConnectionStrings:HackaHandsConnStr %>' SelectCommand="SELECT * FROM [Orders]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Orders] WHERE [OrderID] = @original_OrderID AND [CustomerEmail] = @original_CustomerEmail AND (([TotalPrice] = @original_TotalPrice) OR ([TotalPrice] IS NULL AND @original_TotalPrice IS NULL)) AND [DateOrdered] = @original_DateOrdered" InsertCommand="INSERT INTO [Orders] ([CustomerEmail], [TotalPrice], [DateOrdered]) VALUES (@CustomerEmail, @TotalPrice, @DateOrdered)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Orders] SET [CustomerEmail] = @CustomerEmail, [TotalPrice] = @TotalPrice, [DateOrdered] = @DateOrdered WHERE [OrderID] = @original_OrderID AND [CustomerEmail] = @original_CustomerEmail AND (([TotalPrice] = @original_TotalPrice) OR ([TotalPrice] IS NULL AND @original_TotalPrice IS NULL)) AND [DateOrdered] = @original_DateOrdered">
        <DeleteParameters>
            <asp:Parameter Name="original_OrderID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_CustomerEmail" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_TotalPrice" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_DateOrdered" Type="DateTime"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerEmail" Type="String"></asp:Parameter>
            <asp:Parameter Name="TotalPrice" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="DateOrdered" Type="DateTime"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustomerEmail" Type="String"></asp:Parameter>
            <asp:Parameter Name="TotalPrice" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="DateOrdered" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="original_OrderID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_CustomerEmail" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_TotalPrice" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_DateOrdered" Type="DateTime"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>