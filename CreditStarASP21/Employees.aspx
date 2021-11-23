<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Employees.aspx.vb" Inherits="CreditStarASP21.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Display Employee data for 531</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="EMPID" DataSourceID="SQLEmpDataSource" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="EMPID" HeaderText="EMPID" ReadOnly="True" SortExpression="EMPID" />
                <asp:BoundField DataField="EMPTYPE" HeaderText="EMPTYPE" SortExpression="EMPTYPE" />
                <asp:BoundField DataField="FNAME" HeaderText="FNAME" SortExpression="FNAME" />
                <asp:BoundField DataField="LNAME" HeaderText="LNAME" SortExpression="LNAME" />
                <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
                <asp:BoundField DataField="BRANCH" HeaderText="BRANCH" SortExpression="BRANCH" />
                <asp:BoundField DataField="DESIGNATION" HeaderText="DESIGNATION" SortExpression="DESIGNATION" />
                <asp:BoundField DataField="JOININGDATE" HeaderText="JOININGDATE" SortExpression="JOININGDATE" />
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
        <asp:SqlDataSource ID="SQLEmpDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CreditStarCS %>" ProviderName="<%$ ConnectionStrings:CreditStarCS.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEES&quot;"></asp:SqlDataSource>
    </form>
</body>
</html>
