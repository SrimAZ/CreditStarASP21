<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="displayEducation.aspx.vb" Inherits="CreditStarASP21.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EDU_LOANID" DataSourceID="EducationDS" ForeColor="#333333" GridLines="None" CellSpacing="4">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="EDU_LOANID" HeaderText="EDU_LOANID" ReadOnly="True" SortExpression="EDU_LOANID" />
            <asp:BoundField DataField="COSIGNERID" HeaderText="COSIGNERID" SortExpression="COSIGNERID" />
            <asp:BoundField DataField="UNIVERSITY_NAME" HeaderText="UNIVERSITY_NAME" SortExpression="UNIVERSITY_NAME" />
            <asp:BoundField DataField="COURSE_DURATION" HeaderText="COURSE_DURATION" SortExpression="COURSE_DURATION" />
            <asp:BoundField DataField="FIXED_PREMIUM" HeaderText="FIXED_PREMIUM" SortExpression="FIXED_PREMIUM" />
            <asp:BoundField DataField="EXPECTED_EARNINGS" HeaderText="EXPECTED_EARNINGS" SortExpression="EXPECTED_EARNINGS" />
            <asp:BoundField DataField="GPA" HeaderText="GPA" SortExpression="GPA" />
            <asp:BoundField DataField="RETURN_ON_INVESTMENT" HeaderText="RETURN_ON_INVESTMENT" SortExpression="RETURN_ON_INVESTMENT" />
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
    <asp:SqlDataSource ID="EducationDS" runat="server" ConnectionString="<%$ ConnectionStrings:CreditStarCS %>" 
        DeleteCommand="DELETE FROM &quot;EDUCATION_LOAN_DETAILS&quot; WHERE &quot;EDU_LOANID&quot; = ?" 
        InsertCommand="INSERT INTO &quot;EDUCATION_LOAN_DETAILS&quot; (&quot;EDU_LOANID&quot;, &quot;COSIGNERID&quot;, &quot;UNIVERSITY_NAME&quot;, &quot;COURSE_DURATION&quot;, &quot;FIXED_PREMIUM&quot;, &quot;EXPECTED_EARNINGS&quot;, &quot;GPA&quot;, &quot;RETURN_ON_INVESTMENT&quot;) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" 
        ProviderName="<%$ ConnectionStrings:CreditStarCS.ProviderName %>" 
        SelectCommand="SELECT &quot;EDU_LOANID&quot;, &quot;COSIGNERID&quot;, &quot;UNIVERSITY_NAME&quot;, &quot;COURSE_DURATION&quot;, &quot;FIXED_PREMIUM&quot;, &quot;EXPECTED_EARNINGS&quot;, &quot;GPA&quot;, &quot;RETURN_ON_INVESTMENT&quot; FROM &quot;EDUCATION_LOAN_DETAILS&quot;" 
        UpdateCommand="UPDATE &quot;EDUCATION_LOAN_DETAILS&quot; SET &quot;COSIGNERID&quot; = :COSIGNERID, &quot;UNIVERSITY_NAME&quot; = :UNIVERSITY_NAME, &quot;COURSE_DURATION&quot; = :COURSE_DURATION, &quot;FIXED_PREMIUM&quot; = :FIXED_PREMIUM, &quot;EXPECTED_EARNINGS&quot; = :EXPECTED_EARNINGS, &quot;GPA&quot; = :GPA, &quot;RETURN_ON_INVESTMENT&quot; = :RETURN_ON_INVESTMENT WHERE &quot;EDU_LOANID&quot; = :EDU_LOANID">
        <DeleteParameters>
            <asp:Parameter Name="EDU_LOANID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EDU_LOANID" Type="String" />
            <asp:Parameter Name="COSIGNERID" Type="String" />
            <asp:Parameter Name="UNIVERSITY_NAME" Type="String" />
            <asp:Parameter Name="COURSE_DURATION" Type="Decimal" />
            <asp:Parameter Name="FIXED_PREMIUM" Type="Decimal" />
            <asp:Parameter Name="EXPECTED_EARNINGS" Type="Decimal" />
            <asp:Parameter Name="GPA" Type="Decimal" />
            <asp:Parameter Name="RETURN_ON_INVESTMENT" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="COSIGNERID" Type="String" />
            <asp:Parameter Name="UNIVERSITY_NAME" Type="String" />
            <asp:Parameter Name="COURSE_DURATION" Type="Decimal" />
            <asp:Parameter Name="FIXED_PREMIUM" Type="Decimal" />
            <asp:Parameter Name="EXPECTED_EARNINGS" Type="Decimal" />
            <asp:Parameter Name="GPA" Type="Decimal" />
            <asp:Parameter Name="RETURN_ON_INVESTMENT" Type="Decimal" />
            <asp:Parameter Name="EDU_LOANID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
        <asp:Button ID="backUpdateEmployees" runat="server" BackColor="#000099" BorderColor="Black" BorderStyle="Solid" ForeColor="White" PostBackUrl="~/employeesMaster.aspx" Text="&lt;&lt; Back" />
        </asp:Content>
