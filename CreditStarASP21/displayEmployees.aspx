<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="displayEmployees.aspx.vb" Inherits="CreditStarASP21.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <strong>
<br />
<br />
&nbsp; List of Employees</strong><br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EMPID" DataSourceID="displayEmployeesDS" ForeColor="#333333" GridLines="None" style="margin-left: 11px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="EMPID" HeaderText="EMPID" ReadOnly="True" SortExpression="EMPID" />
            <asp:BoundField DataField="EMP_TYPE" HeaderText="EMP_TYPE" SortExpression="EMP_TYPE" />
            <asp:BoundField DataField="EMP_FNAME" HeaderText="EMP_FNAME" SortExpression="EMP_FNAME" />
            <asp:BoundField DataField="EMP_LNAME" HeaderText="EMP_LNAME" SortExpression="EMP_LNAME" />
            <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
            <asp:BoundField DataField="BRANCH" HeaderText="BRANCH" SortExpression="BRANCH" />
            <asp:BoundField DataField="DESIGNATION" HeaderText="DESIGNATION" SortExpression="DESIGNATION" />
            <asp:BoundField DataField="JOIN_DATE" HeaderText="JOIN_DATE" SortExpression="JOIN_DATE" />
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
    <asp:SqlDataSource ID="displayEmployeesDS" runat="server" ConnectionString="<%$ ConnectionStrings:CreditStarCS %>" ProviderName="<%$ ConnectionStrings:CreditStarCS.ProviderName %>" SelectCommand="SELECT &quot;EMPID&quot;, &quot;EMP_TYPE&quot;, &quot;EMP_FNAME&quot;, &quot;EMP_LNAME&quot;, &quot;PHONE&quot;, &quot;BRANCH&quot;, &quot;DESIGNATION&quot;, &quot;JOIN_DATE&quot; FROM &quot;EMPLOYEES&quot;

"></asp:SqlDataSource>
    <br />
    <br />
&nbsp;
    <asp:Button ID="backDisplayEmployees" runat="server" BackColor="#284775" ForeColor="White" PostBackUrl="~/employeesMaster.aspx" Text="&lt;&lt; Back" ToolTip="Click here to go back to the dashboard" />
    <br />
</asp:Content>
