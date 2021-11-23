<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="updateEmployees.aspx.vb" Inherits="CreditStarASP21.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Employees</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="EMPID" DataSourceID="dsInsDelUpdtEmp" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="EMPID" HeaderText="EMPID" ReadOnly="True" SortExpression="EMPID" />
                <asp:BoundField DataField="EMPTYPE" HeaderText="EMPTYPE" SortExpression="EMPTYPE" />
                <asp:BoundField DataField="FNAME" HeaderText="FNAME" SortExpression="FNAME" />
                <asp:BoundField DataField="LNAME" HeaderText="LNAME" SortExpression="LNAME" />
                <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
                <asp:BoundField DataField="BRANCH" HeaderText="BRANCH" SortExpression="BRANCH" />
                <asp:BoundField DataField="DESIGNATION" HeaderText="DESIGNATION" SortExpression="DESIGNATION" />
                <asp:BoundField DataField="JOININGDATE" HeaderText="JOININGDATE" SortExpression="JOININGDATE" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="dsInsDelUpdtEmp" runat="server" ConnectionString="<%$ ConnectionStrings:CreditStarCS %>" DeleteCommand="DELETE FROM &quot;EMPLOYEES&quot; WHERE &quot;EMPID&quot; = :EMPID" InsertCommand="INSERT INTO &quot;EMPLOYEES&quot; (&quot;EMPID&quot;, &quot;EMPTYPE&quot;, &quot;FNAME&quot;, &quot;LNAME&quot;, &quot;PHONE&quot;, &quot;BRANCH&quot;, &quot;DESIGNATION&quot;, &quot;JOININGDATE&quot;) VALUES (:EMPID, :EMPTYPE, :FNAME, :LNAME, :PHONE, :BRANCH, :DESIGNATION, :JOININGDATE)" ProviderName="<%$ ConnectionStrings:CreditStarCS.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEES&quot;" UpdateCommand="UPDATE &quot;EMPLOYEES&quot; SET &quot;EMPTYPE&quot; = :EMPTYPE, &quot;FNAME&quot; = :FNAME, &quot;LNAME&quot; = :LNAME, &quot;PHONE&quot; = :PHONE, &quot;BRANCH&quot; = :BRANCH, &quot;DESIGNATION&quot; = :DESIGNATION, &quot;JOININGDATE&quot; = :JOININGDATE WHERE &quot;EMPID&quot; = :EMPID">
            <DeleteParameters>
                <asp:Parameter Name="EMPID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EMPID" Type="String" />
                <asp:Parameter Name="EMPTYPE" Type="String" />
                <asp:Parameter Name="FNAME" Type="String" />
                <asp:Parameter Name="LNAME" Type="String" />
                <asp:Parameter Name="PHONE" Type="Decimal" />
                <asp:Parameter Name="BRANCH" Type="String" />
                <asp:Parameter Name="DESIGNATION" Type="String" />
                <asp:Parameter Name="JOININGDATE" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EMPTYPE" Type="String" />
                <asp:Parameter Name="FNAME" Type="String" />
                <asp:Parameter Name="LNAME" Type="String" />
                <asp:Parameter Name="PHONE" Type="Decimal" />
                <asp:Parameter Name="BRANCH" Type="String" />
                <asp:Parameter Name="DESIGNATION" Type="String" />
                <asp:Parameter Name="JOININGDATE" Type="DateTime" />
                <asp:Parameter Name="EMPID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
