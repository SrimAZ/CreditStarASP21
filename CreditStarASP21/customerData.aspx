<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="customerData.aspx.vb" Inherits="CreditStarASP21.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CUSTOMERS LIST</strong><br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CUSTOMERID" DataSourceID="customerListDS" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="CUSTOMERID" HeaderText="CUSTOMERID" ReadOnly="True" SortExpression="CUSTOMERID" />
            <asp:BoundField DataField="CUSTOMER_TYPE" HeaderText="CUSTOMER_TYPE" SortExpression="CUSTOMER_TYPE" />
            <asp:BoundField DataField="CFIRSTNAME" HeaderText="CFIRSTNAME" SortExpression="CFIRSTNAME" />
            <asp:BoundField DataField="CLASTNAME" HeaderText="CLASTNAME" SortExpression="CLASTNAME" />
            <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
            <asp:BoundField DataField="NATIONALITY" HeaderText="NATIONALITY" SortExpression="NATIONALITY" />
            <asp:BoundField DataField="EMAILID" HeaderText="EMAILID" SortExpression="EMAILID" />
            <asp:BoundField DataField="PHONENUMBER" HeaderText="PHONENUMBER" SortExpression="PHONENUMBER" />
            <asp:BoundField DataField="CREDIT_SCORE" HeaderText="CREDIT_SCORE" SortExpression="CREDIT_SCORE" />
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
<br />
    &nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="customerListDS" runat="server" ConnectionString="<%$ ConnectionStrings:CreditStarCS %>" DeleteCommand="DELETE FROM &quot;CUSTOMERS&quot; WHERE &quot;CUSTOMERID&quot; = ?" InsertCommand="INSERT INTO &quot;CUSTOMERS&quot; (&quot;CUSTOMERID&quot;, &quot;CUSTOMER_TYPE&quot;, &quot;CFIRSTNAME&quot;, &quot;CLASTNAME&quot;, &quot;GENDER&quot;, &quot;NATIONALITY&quot;, &quot;EMAILID&quot;, &quot;PHONENUMBER&quot;, &quot;CREDIT_SCORE&quot;) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:CreditStarCS.ProviderName %>" SelectCommand="SELECT &quot;CUSTOMERID&quot;, &quot;CUSTOMER_TYPE&quot;, &quot;CFIRSTNAME&quot;, &quot;CLASTNAME&quot;, &quot;GENDER&quot;, &quot;NATIONALITY&quot;, &quot;EMAILID&quot;, &quot;PHONENUMBER&quot;, &quot;CREDIT_SCORE&quot; FROM &quot;CUSTOMERS&quot;" UpdateCommand="UPDATE &quot;CUSTOMERS&quot; SET &quot;CUSTOMER_TYPE&quot; = ?, &quot;CFIRSTNAME&quot; = ?, &quot;CLASTNAME&quot; = ?, &quot;GENDER&quot; = ?, &quot;NATIONALITY&quot; = ?, &quot;EMAILID&quot; = ?, &quot;PHONENUMBER&quot; = ?, &quot;CREDIT_SCORE&quot; = ? WHERE &quot;CUSTOMERID&quot; = ?">
        <DeleteParameters>
            <asp:Parameter Name="CUSTOMERID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CUSTOMERID" Type="String" />
            <asp:Parameter Name="CUSTOMER_TYPE" Type="String" />
            <asp:Parameter Name="CFIRSTNAME" Type="String" />
            <asp:Parameter Name="CLASTNAME" Type="String" />
            <asp:Parameter Name="GENDER" Type="String" />
            <asp:Parameter Name="NATIONALITY" Type="String" />
            <asp:Parameter Name="EMAILID" Type="String" />
            <asp:Parameter Name="PHONENUMBER" Type="Decimal" />
            <asp:Parameter Name="CREDIT_SCORE" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CUSTOMER_TYPE" Type="String" />
            <asp:Parameter Name="CFIRSTNAME" Type="String" />
            <asp:Parameter Name="CLASTNAME" Type="String" />
            <asp:Parameter Name="GENDER" Type="String" />
            <asp:Parameter Name="NATIONALITY" Type="String" />
            <asp:Parameter Name="EMAILID" Type="String" />
            <asp:Parameter Name="PHONENUMBER" Type="Decimal" />
            <asp:Parameter Name="CREDIT_SCORE" Type="Decimal" />
            <asp:Parameter Name="CUSTOMERID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
    <asp:Button ID="returnCustomerData" runat="server" BackColor="#284775" ForeColor="White" PostBackUrl="~/employeesMaster.aspx" Text="&lt;&lt;Back" />
</asp:Content>
