<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="loanApplications.aspx.vb" Inherits="CreditStarASP21.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="loanApplicationsDS" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="APPLICATIONID">
        <Columns>
            <asp:BoundField DataField="APPLICATIONID" HeaderText="APPLICATIONID" ReadOnly="True" SortExpression="APPLICATIONID" />
            <asp:BoundField DataField="BRANCH" HeaderText="BRANCH" SortExpression="BRANCH" />
            <asp:BoundField DataField="LOAN_TYPE" HeaderText="LOAN_TYPE" SortExpression="LOAN_TYPE" />
            <asp:BoundField DataField="LOAN_TENURE_REQUESTED_MONTHS" HeaderText="LOAN_TENURE_REQUESTED_MONTHS" SortExpression="LOAN_TENURE_REQUESTED_MONTHS" />
            <asp:BoundField DataField="REQUEST_DATE_TIME" HeaderText="REQUEST_DATE_TIME" SortExpression="REQUEST_DATE_TIME" />
            <asp:BoundField DataField="UPDT_DATE_TIME" HeaderText="UPDT_DATE_TIME" SortExpression="UPDT_DATE_TIME" />
            <asp:BoundField DataField="APPLICATION_STATUS" HeaderText="APPLICATION_STATUS" SortExpression="APPLICATION_STATUS" />
            <asp:BoundField DataField="REQUESTED_AMOUNT" HeaderText="REQUESTED_AMOUNT" SortExpression="REQUESTED_AMOUNT" />
            <asp:BoundField DataField="COMMENTS" HeaderText="COMMENTS" SortExpression="COMMENTS" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="loanApplicationsDS" runat="server" ConnectionString="<%$ ConnectionStrings:CreditStarCS %>" ProviderName="<%$ ConnectionStrings:CreditStarCS.ProviderName %>" SelectCommand="SELECT * FROM &quot;APPLICATIONS&quot;">
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Last 5 days" />
&nbsp;&nbsp;&nbsp; 
</asp:Content>
