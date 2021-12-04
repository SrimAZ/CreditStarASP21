<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="UpdateCustomers.aspx.vb" Inherits="CreditStarASP21.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="CUSTOMERID" DataSourceID="updateCustomersDS" Height="84px" Width="315px">
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
    </asp:DetailsView>
    <asp:SqlDataSource ID="updateCustomersDS" runat="server" ConnectionString="<%$ ConnectionStrings:CreditStarCS %>" DeleteCommand="DELETE FROM &quot;CUSTOMERS&quot; WHERE &quot;CUSTOMERID&quot; = ?" InsertCommand="INSERT INTO &quot;CUSTOMERS&quot; (&quot;CUSTOMERID&quot;, &quot;CUSTOMER_TYPE&quot;, &quot;CFIRSTNAME&quot;, &quot;CLASTNAME&quot;, &quot;NATIONALITY&quot;, &quot;GENDER&quot;, &quot;EMAILID&quot;, &quot;PHONENUMBER&quot;, &quot;CREDIT_SCORE&quot;, &quot;DOB&quot;) VALUES (CUSTOMERID, CUSTOMER_TYPE, CFIRSTNAME, CLASTNAME, NATIONALITY, GENDER, EMAILID, PHONENUMBER, CREDIT_SCORE, DOB)" ProviderName="<%$ ConnectionStrings:CreditStarCS.ProviderName %>" SelectCommand="SELECT * FROM &quot;CUSTOMERS&quot;" UpdateCommand="UPDATE &quot;CUSTOMERS&quot; SET &quot;CUSTOMER_TYPE&quot; = :CUSTOMER_TYPE, &quot;CFIRSTNAME&quot; = :CFIRSTNAME, &quot;CLASTNAME&quot; = :CLASTNAME, &quot;NATIONALITY&quot; = :NATIONALITY, &quot;GENDER&quot; = :GENDER, &quot;EMAILID&quot; = :EMAILID, &quot;PHONENUMBER&quot; = :PHONENUMBER, &quot;CREDIT_SCORE&quot; = :CREDIT_SCORE, &quot;DOB&quot; = :DOB WHERE &quot;CUSTOMERID&quot; = :CUSTOMERID">
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
    <br />
    <br />
    <br />
</asp:Content>
