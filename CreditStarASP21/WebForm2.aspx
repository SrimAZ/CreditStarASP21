<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm2.aspx.vb" Inherits="CreditStarASP21.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PRODID,VCODE" DataSourceID="EmpDataSource1">
            <Columns>
                <asp:BoundField DataField="PRODID" HeaderText="PRODID" ReadOnly="True" SortExpression="PRODID" />
                <asp:BoundField DataField="VCODE" HeaderText="VCODE" ReadOnly="True" SortExpression="VCODE" />
                <asp:BoundField DataField="SUPPLYPRICE" HeaderText="SUPPLYPRICE" SortExpression="SUPPLYPRICE" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="EmpDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CreditStarCS %>" ProviderName="<%$ ConnectionStrings:CreditStarCS.ProviderName %>" SelectCommand="SELECT * FROM &quot;CANSUPPLY&quot;"></asp:SqlDataSource>
    </form>
</body>
</html>
