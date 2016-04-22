<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view_messages.aspx.cs" Inherits="employee_view_messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id">
        
       
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <ItemTemplate>
            <span style="">
                Name:
                <asp:Label Text='<%# Eval("FirstName") + " "+ Eval("LastName")%>' runat="server" ID="FirstNameLabel" /><br />
                Email:
                <asp:Label Text='<%# Eval("Email") %>' runat="server" ID="EmailLabel" /><br />
                Message:
                <asp:Label Text='<%# Eval("Message") %>' runat="server" ID="MessageLabel" /><br />
                Date Submitted:
                <asp:Label Text='<%# Eval("DateEntered","{0:M/d/yy h:mm tt}") %>' runat="server" ID="DateLabel" /><br />
                <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                <br />
                <br />
            </span>
        </ItemTemplate>
        <LayoutTemplate>
            <div runat="server" id="itemPlaceholderContainer" style=""><span runat="server" id="itemPlaceholder" /></div>
            <div style="">
                <asp:DataPager runat="server" ID="DataPager1">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"></asp:NextPreviousPagerField>
                    </Fields>
                </asp:DataPager>

            </div>
        </LayoutTemplate>
    </asp:ListView>


    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:HackaHandsConnStr %>' DeleteCommand="DELETE FROM [Contact] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Contact] ([Id], [FirstName], [LastName], [Email], [Message]) VALUES (@Id, @FirstName, @LastName, @Email, @Message)" SelectCommand="SELECT * FROM [Contact]" UpdateCommand="UPDATE [Contact] SET [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [Message] = @Message WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Message" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Message" Type="String"></asp:Parameter>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

