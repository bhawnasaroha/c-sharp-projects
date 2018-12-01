<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
body
{
    text-align:center;
}
</style>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h1>
        Banking With Us
    </h1>
    <ul class="list">
        <li><h3>Go to "BANK ENTRY" and fill the form to insert the bank into the Database</h3></li>
        <li><h3>Go to "BRANCH ENTRY" and fill the form to insert the branch into the Database</h3></li>
        <li><h3>Go to "CUSTOMER ENTRY" and fill the form to insert the customer into the Database</h3></li>
    </ul>
</asp:Content>
