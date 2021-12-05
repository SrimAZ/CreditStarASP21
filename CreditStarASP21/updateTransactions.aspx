<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="updateTransactions.aspx.vb" Inherits="CreditStarASP21.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="TRANSACTIONID" DataSourceID="UpdateTransactions1" Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="TRANSACTIONID" HeaderText="TRANSACTIONID" ReadOnly="True" SortExpression="TRANSACTIONID" />
            <asp:BoundField DataField="LOANID" HeaderText="LOANID" SortExpression="LOANID" />
            <asp:BoundField DataField="TRANSACTION_DATE_TIME" HeaderText="TRANSACTION_DATE_TIME" SortExpression="TRANSACTION_DATE_TIME" />
            <asp:BoundField DataField="AMOUNT" HeaderText="AMOUNT" SortExpression="AMOUNT" />
            <asp:BoundField DataField="APPROVAL_EMPLOYEE_ID" HeaderText="APPROVAL_EMPLOYEE_ID" SortExpression="APPROVAL_EMPLOYEE_ID" />
            <asp:CommandField ShowInsertButton="True" ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:Button ID="backDisplayEmployees" runat="server" BackColor="#284775" ForeColor="White" PostBackUrl="~/displayTransactions.aspx" Text="&lt;&lt;Back" ToolTip="Click here to go back to the dashboard" Height="26px" />
    <asp:SqlDataSource ID="UpdateTransactions1" runat="server" ConnectionString="<%$ ConnectionStrings:CreditStarCS %>" DeleteCommand="DELETE FROM &quot;TRANSACTION&quot; WHERE &quot;TRANSACTIONID&quot; = ?" InsertCommand="INSERT INTO &quot;TRANSACTION&quot; (&quot;TRANSACTIONID&quot;, &quot;LOANID&quot;, &quot;TRANSACTION_DATE_TIME&quot;, &quot;AMOUNT&quot;, &quot;APPROVAL_EMPLOYEE_ID&quot;) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:CreditStarCS.ProviderName %>" SelectCommand="SELECT &quot;TRANSACTIONID&quot;, &quot;LOANID&quot;, &quot;TRANSACTION_DATE_TIME&quot;, &quot;AMOUNT&quot;, &quot;APPROVAL_EMPLOYEE_ID&quot; FROM &quot;TRANSACTION&quot;" UpdateCommand="UPDATE &quot;TRANSACTION&quot; SET &quot;LOANID&quot; = ?, &quot;TRANSACTION_DATE_TIME&quot; = ?, &quot;AMOUNT&quot; = ?, &quot;APPROVAL_EMPLOYEE_ID&quot; = ? WHERE &quot;TRANSACTIONID&quot; = ?">
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
</asp:Content>
