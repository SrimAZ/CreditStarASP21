<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="customerData.aspx.vb" Inherits="CreditStarASP21.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CUSTOMERID" DataSourceID="SQLCustomerDS" ForeColor="#333333" GridLines="None" Width="1123px">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="CUSTOMERID" HeaderText="CUSTOMERID" ReadOnly="True" SortExpression="CUSTOMERID" />
        <asp:BoundField DataField="CUSTOMER_TYPE" HeaderText="CUSTOMER_TYPE" SortExpression="CUSTOMER_TYPE" />
        <asp:BoundField DataField="CFIRSTNAME" HeaderText="CFIRSTNAME" SortExpression="CFIRSTNAME" />
        <asp:BoundField DataField="CLASTNAME" HeaderText="CLASTNAME" SortExpression="CLASTNAME" />
        <asp:BoundField DataField="NATIONALITY" HeaderText="NATIONALITY" SortExpression="NATIONALITY" />
        <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
        <asp:BoundField DataField="EMAILID" HeaderText="EMAILID" SortExpression="EMAILID" />
        <asp:BoundField DataField="PHONENUMBER" HeaderText="PHONENUMBER" SortExpression="PHONENUMBER" />
        <asp:BoundField DataField="CREDIT_SCORE" HeaderText="CREDIT_SCORE" SortExpression="CREDIT_SCORE" />
        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
</asp:Content>
