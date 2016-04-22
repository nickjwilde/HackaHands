<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="DefaultPage.master" CodeFile="default.aspx.cs" Inherits="Project_5050_Default" %>

     <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DefaultMode="Insert" DataSourceID="SqlDataSource1">
            <InsertItemTemplate>
                FirstName:
                <asp:TextBox Text='<%# Bind("FirstName") %>' runat="server" ID="FirstNameTextBox" /><br />
                LastName:
                <asp:TextBox Text='<%# Bind("LastName") %>' runat="server" ID="LastNameTextBox" /><br />
                Email:
                <asp:TextBox Text='<%# Bind("Email") %>' runat="server" ID="EmailTextBox" /><br />
                Message:
                <asp:TextBox Text='<%# Bind("Message") %>' runat="server" ID="MessageTextBox" /><br />
                <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;
                <asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
            </InsertItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:HackaHandsConnStr %>' DeleteCommand="DELETE FROM [Contact] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Contact] ([FirstName], [LastName], [Email], [Message]) VALUES (@FirstName, @LastName, @Email, @Message)" SelectCommand="SELECT * FROM [Contact]" UpdateCommand="UPDATE [Contact] SET [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [Message] = @Message WHERE [Id] = @Id">
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
                <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
                <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                <asp:Parameter Name="Message" Type="String"></asp:Parameter>
            </InsertParameters>
        </asp:SqlDataSource>
    </asp:Content>
 