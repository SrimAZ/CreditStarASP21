<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="employeesMaster.aspx.vb" Inherits="CreditStarASP21.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <strong>&nbsp;&nbsp;&nbsp; Choose to View or Update Employees</strong><br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="employeesList" runat="server" BackColor="#003399" BorderStyle="Solid" ForeColor="White" Height="60px" PostBackUrl="~/displayEmployees.aspx" Text="Employees List" ValidateRequestMode="Disabled" Width="190px" BorderColor="Black" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button runat="server" BackColor="#003399" BorderColor="Black" BorderStyle="Solid" ForeColor="White" Height="60px" PostBackUrl="~/UpdateEmployees.aspx" Text="Update Employees" ToolTip="Allows you to update employee details" Width="190px" ID="updateEmployees" />
    <br />
    <hr />
&nbsp;
    <br />
    <strong>&nbsp;&nbsp;&nbsp; Choose to View or Update Customers</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="listCustomers" runat="server" BackColor="#003399" BorderStyle="Solid" ForeColor="White" Height="60px" PostBackUrl="~/customerData.aspx" Text="Customer Data" ToolTip="Click here to view Customer Data" ViewStateMode="Disabled" Width="190px" BorderColor="Black" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="updateCustomers" runat="server" BackColor="#003399" BorderColor="Black" BorderStyle="Solid" ForeColor="White" Height="60px" PostBackUrl="~/UpdateCustomers.aspx" Text="Update Customers" Width="190px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <strong>
    <br />
    <hr />
    <br />
    &nbsp;&nbsp;&nbsp;
    Choose to View or Update Loan Applications<br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
    <asp:Button ID="viewLoanApps" runat="server" BackColor="#000099" BorderColor="Black" BorderStyle="Solid" ForeColor="White" Height="60px" PostBackUrl="~/loanApplications.aspx" Text="Loan Applications" Width="190px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="updateLoanApps" runat="server" BackColor="#003399" BorderColor="Black" BorderStyle="Solid" ForeColor="White" Height="60px" Text="Update Loan Applications" Width="190px" />
    <br />
    <br />
    <br />
&nbsp;
    <br />
    <img alt="" src="Rendering_Images/Transactions.jpg" style="width: 626px; height: 494px" /><asp:Button ID="transactionButton" runat="server" BackColor="#000099" BorderColor="Black" BorderStyle="Solid" ForeColor="White" Height="81px" PostBackUrl="~/displayTransactions.aspx" Text="Let's Make A Transaction" Width="378px" />
    <br />
    <hr />

</asp:Content>
