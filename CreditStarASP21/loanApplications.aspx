<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="loanApplications.aspx.vb" Inherits="CreditStarASP21.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <strong>Loan Applications</strong>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="loanAppDS" AutoGenerateColumns="False" DataKeyNames="APPLICATIONID" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1059px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="APPLICATIONID" HeaderText="APPLICATIONID" ReadOnly="True" SortExpression="APPLICATIONID" />
            <asp:BoundField DataField="BRANCH" HeaderText="BRANCH" SortExpression="BRANCH" />
            <asp:BoundField DataField="LOAN_TENURE_REQUESTED_MONTHS" HeaderText="LOAN_TENURE_REQUESTED_MONTHS" SortExpression="LOAN_TENURE_REQUESTED_MONTHS" />
            <asp:BoundField DataField="LOAN_TYPE" HeaderText="LOAN_TYPE" SortExpression="LOAN_TYPE" />
            <asp:BoundField DataField="REQUEST_DATE_TIME" HeaderText="REQUEST_DATE_TIME" SortExpression="REQUEST_DATE_TIME" />
            <asp:BoundField DataField="UPDT_DATE_TIME" HeaderText="UPDT_DATE_TIME" SortExpression="UPDT_DATE_TIME" />
            <asp:BoundField DataField="APPLICATION_STATUS" HeaderText="APPLICATION_STATUS" SortExpression="APPLICATION_STATUS" />
            <asp:BoundField DataField="REQUESTED_AMOUNT" HeaderText="REQUESTED_AMOUNT" SortExpression="REQUESTED_AMOUNT" />
            <asp:BoundField DataField="COMMENTS" HeaderText="COMMENTS" SortExpression="COMMENTS" />
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
<asp:SqlDataSource ID="loanAppDS" runat="server" ConnectionString="<%$ ConnectionStrings:CreditStarCS %>" DeleteCommand="DELETE FROM &quot;APPLICATIONS&quot; WHERE &quot;APPLICATIONID&quot; = ?" InsertCommand="INSERT INTO &quot;APPLICATIONS&quot; (&quot;APPLICATIONID&quot;, &quot;BRANCH&quot;, &quot;LOAN_TENURE_REQUESTED_MONTHS&quot;, &quot;LOAN_TYPE&quot;, &quot;REQUEST_DATE_TIME&quot;, &quot;UPDT_DATE_TIME&quot;, &quot;APPLICATION_STATUS&quot;, &quot;REQUESTED_AMOUNT&quot;, &quot;COMMENTS&quot;) VALUES (:APPLICATIONID, :BRANCH, :LOAN_TENURE_REQUESTED_MONTHS, :LOAN_TYPE, :REQUEST_DATE_TIME, :UPDT_DATE_TIME, :APPLICATION_STATUS, :REQUESTED_AMOUNT, :COMMENTS)" ProviderName="<%$ ConnectionStrings:CreditStarCS.ProviderName %>" SelectCommand="SELECT &quot;APPLICATIONID&quot;, &quot;BRANCH&quot;, &quot;LOAN_TENURE_REQUESTED_MONTHS&quot;, &quot;LOAN_TYPE&quot;, &quot;REQUEST_DATE_TIME&quot;, &quot;UPDT_DATE_TIME&quot;, &quot;APPLICATION_STATUS&quot;, &quot;REQUESTED_AMOUNT&quot;, &quot;COMMENTS&quot; FROM &quot;APPLICATIONS&quot;" UpdateCommand="UPDATE &quot;APPLICATIONS&quot; SET &quot;BRANCH&quot; = :BRANCH, &quot;LOAN_TENURE_REQUESTED_MONTHS&quot; = :LOAN_TENURE_REQUESTED_MONTHS, &quot;LOAN_TYPE&quot; = :LOAN_TYPE, &quot;REQUEST_DATE_TIME&quot; = :REQUEST_DATE_TIME, &quot;UPDT_DATE_TIME&quot; = :UPDT_DATE_TIME, &quot;APPLICATION_STATUS&quot; = :APPLICATION_STATUS, &quot;REQUESTED_AMOUNT&quot; = :REQUESTED_AMOUNT, &quot;COMMENTS&quot; = :COMMENTS WHERE &quot;APPLICATIONID&quot; = :APPLICATIONID">
    <DeleteParameters>
        <asp:Parameter Name="APPLICATIONID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="APPLICATIONID" Type="String" />
        <asp:Parameter Name="BRANCH" Type="String" />
        <asp:Parameter Name="LOAN_TENURE_REQUESTED_MONTHS" Type="Decimal" />
        <asp:Parameter Name="LOAN_TYPE" Type="String" />
        <asp:Parameter Name="REQUEST_DATE_TIME" Type="DateTime" />
        <asp:Parameter Name="UPDT_DATE_TIME" Type="DateTime" />
        <asp:Parameter Name="APPLICATION_STATUS" Type="Decimal" />
        <asp:Parameter Name="REQUESTED_AMOUNT" Type="Decimal" />
        <asp:Parameter Name="COMMENTS" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="BRANCH" Type="String" />
        <asp:Parameter Name="LOAN_TENURE_REQUESTED_MONTHS" Type="Decimal" />
        <asp:Parameter Name="LOAN_TYPE" Type="String" />
        <asp:Parameter Name="REQUEST_DATE_TIME" Type="DateTime" />
        <asp:Parameter Name="UPDT_DATE_TIME" Type="DateTime" />
        <asp:Parameter Name="APPLICATION_STATUS" Type="Decimal" />
        <asp:Parameter Name="REQUESTED_AMOUNT" Type="Decimal" />
        <asp:Parameter Name="COMMENTS" Type="String" />
        <asp:Parameter Name="APPLICATIONID" Type="String" />
    </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="#003366" BorderColor="Black" BorderStyle="Solid" ForeColor="White" PostBackUrl="~/employeesMaster.aspx" Text="&lt;&lt; Back" />
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
    <br />
    <br />
    <br />
</asp:Content>
