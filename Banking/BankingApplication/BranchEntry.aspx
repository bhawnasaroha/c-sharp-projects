<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="BranchEntry.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Enter the Branch Details" Font-Names="Candara"
        Font-Size="XX-Large"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Branch ID" Font-Names="Candara" Font-Size="Large"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="brid" runat="server" Height="32px" OnTextChanged="brid_TextChanged"
        Width="193px" Font-Names="Candara" Font-Size="Large"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Bank ID" Font-Names="Candara" Font-Size="Large"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="bid" runat="server" DataSourceID="SqlDataSource1" DataTextField="BankID"
        DataValueField="BankID" Font-Names="Candara" Font-Size="Large" 
        Height="28px" Width="192px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:BankDBConnectionString %>" 
        SelectCommand="SELECT [BankID] FROM [Bank]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Branch Name" Font-Names="Candara" Font-Size="Large"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="brname" runat="server" Font-Names="Candara" Font-Size="Large" 
        Height="27px" Width="192px"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="reset" runat="server" Text="RESET" Font-Names="Candara" Font-Size="Large"
        OnClick="reset_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="SUBMIT" Font-Names="Candara"
        Font-Size="Large" />
    <br />
</asp:Content>
