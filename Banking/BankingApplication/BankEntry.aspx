<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="BankEntry.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Names="Candara" Font-Size="XX-Large"
        Text="Enter the Bank Details"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Names="Candara" Font-Size="Large" 
        Text="Bank ID"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="bid" runat="server" Font-Names="Candara" Font-Size="Large" 
        OnTextChanged="bid_TextChanged"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Names="Candara" Font-Size="Large" 
        Text="Bank Name"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="bname" runat="server" Font-Names="Candara" Font-Size="Large"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="reset" runat="server" Font-Names="Candara" Font-Size="Large" OnClick="reset_Click"
        Text="RESET" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="submit" runat="server" Font-Names="Candara" Font-Size="Large" OnClick="submit_Click"
        Text="SUBMIT" />
    <br />
    &nbsp;
</asp:Content>
