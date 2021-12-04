<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="UpdateEmployees.aspx.vb" Inherits="CreditStarASP21.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
    </p>
    <p>
    </p>
    <p>
    &nbsp; <strong>Update Employees</strong>
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="EMPID" DataSourceID="editEmployees" Height="50px" Width="251px">
            <Fields>
                <asp:BoundField DataField="EMPID" HeaderText="EMPID" ReadOnly="True" SortExpression="EMPID" />
                <asp:BoundField DataField="EMP_TYPE" HeaderText="EMP_TYPE" SortExpression="EMP_TYPE" />
                <asp:BoundField DataField="EMP_FNAME" HeaderText="EMP_FNAME" SortExpression="EMP_FNAME" />
                <asp:BoundField DataField="EMP_LNAME" HeaderText="EMP_LNAME" SortExpression="EMP_LNAME" />
                <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
                <asp:BoundField DataField="BRANCH" HeaderText="BRANCH" SortExpression="BRANCH" />
                <asp:BoundField DataField="DESIGNATION" HeaderText="DESIGNATION" SortExpression="DESIGNATION" />
                <asp:BoundField DataField="JOIN_DATE" HeaderText="JOIN_DATE" SortExpression="JOIN_DATE" />
                <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="editEmployees" runat="server" ConnectionString="<%$ ConnectionStrings:CreditStarCS %>" DeleteCommand="DELETE FROM &quot;EMPLOYEES&quot; WHERE &quot;EMPID&quot; = EMPID" InsertCommand="INSERT INTO &quot;EMPLOYEES&quot; (&quot;EMPID&quot;, &quot;EMP_TYPE&quot;, &quot;EMP_FNAME&quot;, &quot;EMP_LNAME&quot;, &quot;PHONE&quot;, &quot;BRANCH&quot;, &quot;DESIGNATION&quot;, &quot;JOIN_DATE&quot;) VALUES (:EMPID, :EMP_TYPE, :EMP_FNAME, :EMP_LNAME, :PHONE, :BRANCH, :DESIGNATION, :JOIN_DATE)" ProviderName="<%$ ConnectionStrings:CreditStarCS.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEES&quot;" UpdateCommand="UPDATE &quot;EMPLOYEES&quot; SET &quot;EMP_TYPE&quot; = :EMP_TYPE, &quot;EMP_FNAME&quot; = :EMP_FNAME, &quot;EMP_LNAME&quot; = :EMP_LNAME, &quot;PHONE&quot; = :PHONE, &quot;BRANCH&quot; = :BRANCH, &quot;DESIGNATION&quot; = :DESIGNATION, &quot;JOIN_DATE&quot; = :JOIN_DATE WHERE &quot;EMPID&quot; = :EMPID">
            <DeleteParameters>
                <asp:Parameter Name="EMPID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EMPID" Type="String" />
                <asp:Parameter Name="EMP_TYPE" Type="String" />
                <asp:Parameter Name="EMP_FNAME" Type="String" />
                <asp:Parameter Name="EMP_LNAME" Type="String" />
                <asp:Parameter Name="PHONE" Type="Decimal" />
                <asp:Parameter Name="BRANCH" Type="String" />
                <asp:Parameter Name="DESIGNATION" Type="String" />
                <asp:Parameter Name="JOIN_DATE" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EMP_TYPE" Type="String" />
                <asp:Parameter Name="EMP_FNAME" Type="String" />
                <asp:Parameter Name="EMP_LNAME" Type="String" />
                <asp:Parameter Name="PHONE" Type="Decimal" />
                <asp:Parameter Name="BRANCH" Type="String" />
                <asp:Parameter Name="DESIGNATION" Type="String" />
                <asp:Parameter Name="JOIN_DATE" Type="DateTime" />
                <asp:Parameter Name="EMPID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="backUpdateEmployees" runat="server" BackColor="#000099" BorderColor="Black" BorderStyle="Solid" ForeColor="White" PostBackUrl="~/employeesMaster.aspx" Text="&lt;&lt; Back" />
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
