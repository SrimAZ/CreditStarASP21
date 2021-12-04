<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="loanApplicationsLastFive.aspx.vb" Inherits="CreditStarASP21.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="APPLICATIONID" DataSourceID="lastFiveDaysApps" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="APPLICATIONID" HeaderText="APPLICATIONID" ReadOnly="True" SortExpression="APPLICATIONID" />
                <asp:BoundField DataField="BRANCH" HeaderText="BRANCH" SortExpression="BRANCH" />
                <asp:BoundField DataField="LOAN_TYPE" HeaderText="LOAN_TYPE" SortExpression="LOAN_TYPE" />
                <asp:BoundField DataField="LOAN_TENURE_REQUESTED_MONTHS" HeaderText="LOAN_TENURE_REQUESTED_MONTHS" SortExpression="LOAN_TENURE_REQUESTED_MONTHS" />
                <asp:BoundField DataField="REQUEST_DATE_TIME" HeaderText="REQUEST_DATE_TIME" SortExpression="REQUEST_DATE_TIME" />
                <asp:BoundField DataField="UPDT_DATE_TIME" HeaderText="UPDT_DATE_TIME" SortExpression="UPDT_DATE_TIME" />
                <asp:BoundField DataField="APPLICATION_STATUS" HeaderText="APPLICATION_STATUS" SortExpression="APPLICATION_STATUS" />
                <asp:BoundField DataField="REQUESTED_AMOUNT" HeaderText="REQUESTED_AMOUNT" SortExpression="REQUESTED_AMOUNT" />
                <asp:BoundField DataField="COMMENTS" HeaderText="COMMENTS" SortExpression="COMMENTS" />
                <asp:BoundField DataField="CUSTOMERID" HeaderText="CUSTOMERID" SortExpression="CUSTOMERID" />
                <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="lastFiveDaysApps" runat="server" ConnectionString="<%$ ConnectionStrings:CreditStarCS %>" DeleteCommand="DELETE FROM &quot;APPLICATIONS&quot; WHERE &quot;APPLICATIONID&quot; = ?" InsertCommand="INSERT INTO &quot;APPLICATIONS&quot; (&quot;APPLICATIONID&quot;, &quot;BRANCH&quot;, &quot;LOAN_TYPE&quot;, &quot;LOAN_TENURE_REQUESTED_MONTHS&quot;, &quot;REQUEST_DATE_TIME&quot;, &quot;UPDT_DATE_TIME&quot;, &quot;APPLICATION_STATUS&quot;, &quot;REQUESTED_AMOUNT&quot;, &quot;COMMENTS&quot;, &quot;CUSTOMERID&quot;) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:CreditStarCS.ProviderName %>" SelectCommand="SELECT * FROM &quot;APPLICATIONS&quot;" UpdateCommand="UPDATE &quot;APPLICATIONS&quot; SET &quot;BRANCH&quot; = ?, &quot;LOAN_TYPE&quot; = ?, &quot;LOAN_TENURE_REQUESTED_MONTHS&quot; = ?, &quot;REQUEST_DATE_TIME&quot; = ?, &quot;UPDT_DATE_TIME&quot; = ?, &quot;APPLICATION_STATUS&quot; = ?, &quot;REQUESTED_AMOUNT&quot; = ?, &quot;COMMENTS&quot; = ?, &quot;CUSTOMERID&quot; = ? WHERE &quot;APPLICATIONID&quot; = ?">
            <DeleteParameters>
                <asp:Parameter Name="APPLICATIONID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="APPLICATIONID" Type="String" />
                <asp:Parameter Name="BRANCH" Type="String" />
                <asp:Parameter Name="LOAN_TYPE" Type="String" />
                <asp:Parameter Name="LOAN_TENURE_REQUESTED_MONTHS" Type="Decimal" />
                <asp:Parameter Name="REQUEST_DATE_TIME" Type="DateTime" />
                <asp:Parameter Name="UPDT_DATE_TIME" Type="DateTime" />
                <asp:Parameter Name="APPLICATION_STATUS" Type="Decimal" />
                <asp:Parameter Name="REQUESTED_AMOUNT" Type="Decimal" />
                <asp:Parameter Name="COMMENTS" Type="String" />
                <asp:Parameter Name="CUSTOMERID" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BRANCH" Type="String" />
                <asp:Parameter Name="LOAN_TYPE" Type="String" />
                <asp:Parameter Name="LOAN_TENURE_REQUESTED_MONTHS" Type="Decimal" />
                <asp:Parameter Name="REQUEST_DATE_TIME" Type="DateTime" />
                <asp:Parameter Name="UPDT_DATE_TIME" Type="DateTime" />
                <asp:Parameter Name="APPLICATION_STATUS" Type="Decimal" />
                <asp:Parameter Name="REQUESTED_AMOUNT" Type="Decimal" />
                <asp:Parameter Name="COMMENTS" Type="String" />
                <asp:Parameter Name="CUSTOMERID" Type="String" />
                <asp:Parameter Name="APPLICATIONID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p style="margin-left: 80px">
        &nbsp;</p>
    <p style="margin-left: 80px">
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
