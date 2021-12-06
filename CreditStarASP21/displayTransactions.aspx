<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="displayTransactions.aspx.vb" Inherits="CreditStarASP21.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    &nbsp; <strong>TRANSACTIONS LIST</strong><br />
    <br />&nbsp;&nbsp;<asp:Button ID="returnCustomerData0" runat="server" BackColor="#284775" ForeColor="White" PostBackUrl="~/updateTransactions.aspx" Text="Add Transaction" />
    &nbsp;&nbsp;<asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TRANSACTIONID" DataSourceID="transactionDS" Height="300px" CellPadding="4" ForeColor="#333333" GridLines="None" CellSpacing="4">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="TRANSACTIONID" HeaderText="TRANSACTIONID" ReadOnly="True" SortExpression="TRANSACTIONID" />
            <asp:BoundField DataField="LOANID" HeaderText="LOANID" SortExpression="LOANID" />
            <asp:BoundField DataField="TRANSACTION_DATE_TIME" HeaderText="TRANSACTION_DATE_TIME" SortExpression="TRANSACTION_DATE_TIME" />
            <asp:BoundField DataField="AMOUNT" HeaderText="AMOUNT" SortExpression="AMOUNT" />
            <asp:BoundField DataField="APPROVAL_EMPLOYEE_ID" HeaderText="APPROVAL_EMPLOYEE_ID" SortExpression="APPROVAL_EMPLOYEE_ID" />
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
    <asp:SqlDataSource ID="transactionDS" runat="server" ConnectionString="<%$ ConnectionStrings:CreditStarCS %>" ProviderName="<%$ ConnectionStrings:CreditStarCS.ProviderName %>" SelectCommand="SELECT * FROM &quot;TRANSACTION&quot;">
    </asp:SqlDataSource>
    <br />&nbsp;&nbsp;&nbsp;
    <br />&nbsp;<asp:Button ID="returnCustomerData" runat="server" BackColor="#284775" ForeColor="White" PostBackUrl="~/employeesMaster.aspx" Text="&lt;&lt;Back" />
</asp:Content>
