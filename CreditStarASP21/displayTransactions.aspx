<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="displayTransactions.aspx.vb" Inherits="CreditStarASP21.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TRANSACTIONS LIST</strong><br />
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="returnCustomerData0" runat="server" BackColor="#284775" ForeColor="White" PostBackUrl="~/updateTransactions.aspx" Text="Add Transaction" />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TRANSACTIONID" DataSourceID="transactionDS" Height="300px">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="TRANSACTIONID" HeaderText="TRANSACTIONID" ReadOnly="True" SortExpression="TRANSACTIONID" />
            <asp:BoundField DataField="LOANID" HeaderText="LOANID" SortExpression="LOANID" />
            <asp:BoundField DataField="TRANSACTION_DATE_TIME" HeaderText="TRANSACTION_DATE_TIME" SortExpression="TRANSACTION_DATE_TIME" />
            <asp:BoundField DataField="AMOUNT" HeaderText="AMOUNT" SortExpression="AMOUNT" />
            <asp:BoundField DataField="APPROVAL_EMPLOYEE_ID" HeaderText="APPROVAL_EMPLOYEE_ID" SortExpression="APPROVAL_EMPLOYEE_ID" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="transactionDS" runat="server" ConnectionString="<%$ ConnectionStrings:CreditStarCS %>" DeleteCommand="DELETE FROM &quot;TRANSACTION&quot; WHERE &quot;TRANSACTIONID&quot; = :TRANSACTIONID" InsertCommand="INSERT INTO &quot;TRANSACTION&quot; (&quot;TRANSACTIONID&quot;, &quot;LOANID&quot;, &quot;TRANSACTION_DATE_TIME&quot;, &quot;AMOUNT&quot;, &quot;APPROVAL_EMPLOYEE_ID&quot;) VALUES (:TRANSACTIONID, :LOANID, :TRANSACTION_DATE_TIME, :AMOUNT, :APPROVAL_EMPLOYEE_ID)" ProviderName="<%$ ConnectionStrings:CreditStarCS.ProviderName %>" SelectCommand="SELECT &quot;TRANSACTIONID&quot;, &quot;LOANID&quot;, &quot;TRANSACTION_DATE_TIME&quot;, &quot;AMOUNT&quot;, &quot;APPROVAL_EMPLOYEE_ID&quot; FROM &quot;TRANSACTION&quot;" UpdateCommand="UPDATE &quot;TRANSACTION&quot; SET &quot;LOANID&quot; = :LOANID, &quot;TRANSACTION_DATE_TIME&quot; = :TRANSACTION_DATE_TIME, &quot;AMOUNT&quot; = :AMOUNT, &quot;APPROVAL_EMPLOYEE_ID&quot; = :APPROVAL_EMPLOYEE_ID WHERE &quot;TRANSACTIONID&quot; = :TRANSACTIONID">
        <DeleteParameters>
            <asp:Parameter Name="TRANSACTIONID" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TRANSACTIONID" Type="Decimal" />
            <asp:Parameter Name="LOANID" Type="String" />
            <asp:Parameter Name="TRANSACTION_DATE_TIME" Type="DateTime" />
            <asp:Parameter Name="AMOUNT" Type="Decimal" />
            <asp:Parameter Name="APPROVAL_EMPLOYEE_ID" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="LOANID" Type="String" />
            <asp:Parameter Name="TRANSACTION_DATE_TIME" Type="DateTime" />
            <asp:Parameter Name="AMOUNT" Type="Decimal" />
            <asp:Parameter Name="APPROVAL_EMPLOYEE_ID" Type="String" />
            <asp:Parameter Name="TRANSACTIONID" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />&nbsp;&nbsp;&nbsp;
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
    <asp:Button ID="returnCustomerData" runat="server" BackColor="#284775" ForeColor="White" PostBackUrl="~/employeesMaster.aspx" Text="&lt;&lt;Back" />
</asp:Content>
