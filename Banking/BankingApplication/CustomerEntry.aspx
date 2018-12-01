<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomerEntry.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Names="Candara" Font-Size="XX-Large" 
        Text="Enter Customer Details"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Names="Candara" Font-Size="Large" 
        Text="Account No."></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="accno" runat="server" Font-Names="Candara" Font-Size="Large" 
        Width="200px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Names="Candara" Font-Size="Large" 
        Text="Bank ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="bid" runat="server" DataSourceID="SqlDataSource1" 
        DataTextField="BankID" DataValueField="BankID" Font-Names="Candara" 
        Font-Size="Large" Height="29px" Width="200px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:BankDBConnectionString %>" 
        SelectCommand="SELECT [BankID] FROM [Bank]"></asp:SqlDataSource>
    <br />
&nbsp;&nbsp;
    <br />
    <asp:Label ID="Label4" runat="server" Font-Names="Candara" Font-Size="Large" 
        Text="Branch ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="brid" runat="server" DataSourceID="SqlDataSource2" 
        DataTextField="BranchID" DataValueField="BranchID" Font-Names="Candara" 
        Font-Size="Large" Height="31px" Width="200px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:BankDBConnectionString %>" 
        SelectCommand="SELECT [BranchID] FROM [Branch]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Font-Names="Candara" Font-Size="Large" 
        Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="name" runat="server" Font-Names="Candara" Font-Size="Large" 
        Width="200px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Font-Names="Candara" Font-Size="Large" 
        Text="Address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="add" runat="server" Font-Names="Candara" Font-Size="Large" 
        Width="200px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" Font-Names="Candara" Font-Size="Large" 
        Text="Contact No."></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="cno" runat="server" Font-Names="Candara" Font-Size="Large" 
        Width="200px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label8" runat="server" Font-Names="Candara" Font-Size="Large" 
        Text="Balance"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="balance" runat="server" Font-Names="Candara" Font-Size="Large" 
        Width="200px"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:Button ID="reset" runat="server" Font-Names="Candara" Font-Size="Large" 
        onclick="reset_Click" Text="RESET" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="submit" runat="server" Font-Names="Candara" Font-Size="Large" 
        onclick="submit_Click" Text="SUBMIT" />
    <br />
    <br />
</asp:Content>

