<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="UpdateCustomers.aspx.vb" Inherits="CreditStarASP21.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <strong>&nbsp;Update Customers</strong>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="CUSTOMERID" DataSourceID="updateCustomersDS" Height="84px" Width="315px" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="CUSTOMERID" HeaderText="CUSTOMERID" ReadOnly="True" SortExpression="CUSTOMERID" />
            <asp:BoundField DataField="CUSTOMER_TYPE" HeaderText="CUSTOMER_TYPE" SortExpression="CUSTOMER_TYPE" />
            <asp:BoundField DataField="CFIRSTNAME" HeaderText="CFIRSTNAME" SortExpression="CFIRSTNAME" />
            <asp:BoundField DataField="CLASTNAME" HeaderText="CLASTNAME" SortExpression="CLASTNAME" />
            <asp:BoundField DataField="NATIONALITY" HeaderText="NATIONALITY" SortExpression="NATIONALITY" />
            <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
            <asp:BoundField DataField="EMAILID" HeaderText="EMAILID" SortExpression="EMAILID" />
            <asp:BoundField DataField="PHONENUMBER" HeaderText="PHONENUMBER" SortExpression="PHONENUMBER" />
            <asp:BoundField DataField="CREDIT_SCORE" HeaderText="CREDIT_SCORE" SortExpression="CREDIT_SCORE" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="updateCustomersDS" runat="server" ConnectionString="<%$ ConnectionStrings:CreditStarCS %>" 
        DeleteCommand="DELETE FROM &quot;CUSTOMERS&quot; WHERE &quot;CUSTOMERID&quot; = ?" 
        InsertCommand="INSERT INTO &quot;CUSTOMERS&quot; (&quot;CUSTOMERID&quot;, &quot;CUSTOMER_TYPE&quot;, &quot;CFIRSTNAME&quot;, &quot;CLASTNAME&quot;, &quot;NATIONALITY&quot;, &quot;GENDER&quot;, &quot;EMAILID&quot;, &quot;PHONENUMBER&quot;, &quot;CREDIT_SCORE&quot;, &quot;DOB&quot;) VALUES (:CUSTOMERID, :CUSTOMER_TYPE, :CFIRSTNAME, :CLASTNAME, :NATIONALITY, :GENDER, :EMAILID, :PHONENUMBER, :CREDIT_SCORE, :DOB)" 
        ProviderName="<%$ ConnectionStrings:CreditStarCS.ProviderName %>" SelectCommand="SELECT * FROM &quot;CUSTOMERS&quot;" 
        UpdateCommand="UPDATE &quot;CUSTOMERS&quot; SET &quot;CUSTOMER_TYPE&quot; = :CUSTOMER_TYPE, &quot;CFIRSTNAME&quot; = :CFIRSTNAME, &quot;CLASTNAME&quot; = :CLASTNAME, &quot;NATIONALITY&quot; = :NATIONALITY, &quot;GENDER&quot; = :GENDER, &quot;EMAILID&quot; = :EMAILID, &quot;PHONENUMBER&quot; = :PHONENUMBER, &quot;CREDIT_SCORE&quot; = :CREDIT_SCORE, &quot;DOB&quot; = :DOB WHERE &quot;CUSTOMERID&quot; = :CUSTOMERID">
        <DeleteParameters>
            <asp:Parameter Name="CUSTOMERID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CUSTOMERID" Type="String" />
            <asp:Parameter Name="CUSTOMER_TYPE" Type="String" />
            <asp:Parameter Name="CFIRSTNAME" Type="String" />
            <asp:Parameter Name="CLASTNAME" Type="String" />
            <asp:Parameter Name="NATIONALITY" Type="String" />
            <asp:Parameter Name="GENDER" Type="String" />
            <asp:Parameter Name="EMAILID" Type="String" />
            <asp:Parameter Name="PHONENUMBER" Type="Decimal" />
            <asp:Parameter Name="CREDIT_SCORE" Type="Decimal" />
            <asp:Parameter Name="DOB" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CUSTOMER_TYPE" Type="String" />
            <asp:Parameter Name="CFIRSTNAME" Type="String" />
            <asp:Parameter Name="CLASTNAME" Type="String" />
            <asp:Parameter Name="NATIONALITY" Type="String" />
            <asp:Parameter Name="GENDER" Type="String" />
            <asp:Parameter Name="EMAILID" Type="String" />
            <asp:Parameter Name="PHONENUMBER" Type="Decimal" />
            <asp:Parameter Name="CREDIT_SCORE" Type="Decimal" />
            <asp:Parameter Name="DOB" Type="DateTime" />
            <asp:Parameter Name="CUSTOMERID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
&nbsp;<br />
&nbsp;<asp:Button ID="backUpdateEmployees" runat="server" BackColor="#000099" BorderColor="Black" BorderStyle="Solid" ForeColor="White" PostBackUrl="~/employeesMaster.aspx" Text="&lt;&lt; Back" />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
