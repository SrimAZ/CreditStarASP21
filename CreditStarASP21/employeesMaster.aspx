<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="employeesMaster.aspx.vb" Inherits="CreditStarASP21.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" BackColor="#003399" BorderStyle="Solid" ForeColor="White" Height="60px" PostBackUrl="~/Employees.aspx" Text="Employees List" ValidateRequestMode="Disabled" Width="140px" />
    <br />
    <hr />
&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<asp:Button ID="Button2" runat="server" BackColor="#003399" BorderStyle="Solid" ForeColor="White" Height="60px" PostBackUrl="~/customerData.aspx" Text="Customer Data" ToolTip="Click here to view Customer Data" ViewStateMode="Disabled" Width="140px" />
    <br />
    <hr />

</asp:Content>
