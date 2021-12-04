<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="loanApplications.aspx.vb" Inherits="CreditStarASP21.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="loanAppDS" AutoGenerateColumns="False" DataKeyNames="APPLICATIONID">
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
</asp:GridView>
<asp:SqlDataSource ID="loanAppDS" runat="server" ConnectionString="<%$ ConnectionStrings:CreditStarCS %>" DeleteCommand="DELETE FROM &quot;APPLICATIONS&quot; WHERE &quot;APPLICATIONID&quot; = ?" InsertCommand="INSERT INTO &quot;APPLICATIONS&quot; (&quot;APPLICATIONID&quot;, &quot;BRANCH&quot;, &quot;LOAN_TENURE_REQUESTED_MONTHS&quot;, &quot;LOAN_TYPE&quot;, &quot;REQUEST_DATE_TIME&quot;, &quot;UPDT_DATE_TIME&quot;, &quot;APPLICATION_STATUS&quot;, &quot;REQUESTED_AMOUNT&quot;, &quot;COMMENTS&quot;) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:CreditStarCS.ProviderName %>" SelectCommand="SELECT &quot;APPLICATIONID&quot;, &quot;BRANCH&quot;, &quot;LOAN_TENURE_REQUESTED_MONTHS&quot;, &quot;LOAN_TYPE&quot;, &quot;REQUEST_DATE_TIME&quot;, &quot;UPDT_DATE_TIME&quot;, &quot;APPLICATION_STATUS&quot;, &quot;REQUESTED_AMOUNT&quot;, &quot;COMMENTS&quot; FROM &quot;APPLICATIONS&quot;" UpdateCommand="UPDATE &quot;APPLICATIONS&quot; SET &quot;BRANCH&quot; = ?, &quot;LOAN_TENURE_REQUESTED_MONTHS&quot; = ?, &quot;LOAN_TYPE&quot; = ?, &quot;REQUEST_DATE_TIME&quot; = ?, &quot;UPDT_DATE_TIME&quot; = ?, &quot;APPLICATION_STATUS&quot; = ?, &quot;REQUESTED_AMOUNT&quot; = ?, &quot;COMMENTS&quot; = ? WHERE &quot;APPLICATIONID&quot; = ?">
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
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="lFiveDaysApp" runat="server" Text="Last 5 days" BackColor="#000099" ForeColor="White" />
&nbsp;&nbsp;&nbsp; 
    <br />
    <br />
    <br />
</asp:Content>
