<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="loans.aspx.vb" Inherits="CreditStarASP21.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
    <strong>&nbsp; Loans</strong>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="LOANID" DataSourceID="loansDS" ForeColor="#333333" GridLines="None" Height="337px" CellSpacing="4">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="LOANID" HeaderText="LOANID" ReadOnly="True" SortExpression="LOANID" />
            <asp:BoundField DataField="APPLICATIONID" HeaderText="APPLICATIONID" SortExpression="APPLICATIONID" />
            <asp:BoundField DataField="AMOUNT_SANCTIONED" HeaderText="AMOUNT_SANCTIONED" SortExpression="AMOUNT_SANCTIONED" />
            <asp:BoundField DataField="LOAN_TENURE_MONTHS" HeaderText="LOAN_TENURE_MONTHS" SortExpression="LOAN_TENURE_MONTHS" />
            <asp:BoundField DataField="REPAYMENT_START_DATE" HeaderText="REPAYMENT_START_DATE" SortExpression="REPAYMENT_START_DATE" />
            <asp:BoundField DataField="INTEREST" HeaderText="INTEREST" SortExpression="INTEREST" />
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
    <asp:SqlDataSource ID="loansDS" runat="server" ConnectionString="<%$ ConnectionStrings:CreditStarCS %>" DeleteCommand="DELETE FROM &quot;LOANS&quot; WHERE &quot;LOANID&quot; = ?" InsertCommand="INSERT INTO &quot;LOANS&quot; (&quot;LOANID&quot;, &quot;APPLICATIONID&quot;, &quot;AMOUNT_SANCTIONED&quot;, &quot;LOAN_TENURE_MONTHS&quot;, &quot;REPAYMENT_START_DATE&quot;, &quot;INTEREST&quot;) VALUES (?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:CreditStarCS.ProviderName %>" SelectCommand="SELECT * FROM &quot;LOANS&quot; ORDER BY &quot;APPLICATIONID&quot; DESC" UpdateCommand="UPDATE &quot;LOANS&quot; SET &quot;APPLICATIONID&quot; = :APPLICATIONID , &quot;AMOUNT_SANCTIONED&quot; = :AMOUNT_SANCTIONED, &quot;LOAN_TENURE_MONTHS&quot; = :LOAN_TENURE_MONTHS, &quot;REPAYMENT_START_DATE&quot; = :REPAYMENT_START_DATE, &quot;INTEREST&quot; = :INTEREST WHERE &quot;LOANID&quot; = :LOANID">
        <DeleteParameters>
            <asp:Parameter Name="LOANID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="LOANID" Type="String" />
            <asp:Parameter Name="APPLICATIONID" Type="String" />
            <asp:Parameter Name="AMOUNT_SANCTIONED" Type="Decimal" />
            <asp:Parameter Name="LOAN_TENURE_MONTHS" Type="Decimal" />
            <asp:Parameter Name="REPAYMENT_START_DATE" Type="DateTime" />
            <asp:Parameter Name="INTEREST" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="APPLICATIONID" Type="String" />
            <asp:Parameter Name="AMOUNT_SANCTIONED" Type="Decimal" />
            <asp:Parameter Name="LOAN_TENURE_MONTHS" Type="Decimal" />
            <asp:Parameter Name="REPAYMENT_START_DATE" Type="DateTime" />
            <asp:Parameter Name="INTEREST" Type="Decimal" />
            <asp:Parameter Name="LOANID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;
        <asp:Button ID="backUpdateEmployees" runat="server" BackColor="#003366" BorderColor="Black" BorderStyle="Solid" ForeColor="White" PostBackUrl="~/employeesMaster.aspx" Text="&lt;&lt; Back" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="backUpdateEmployees0" runat="server" BackColor="#003366" BorderColor="Black" BorderStyle="Solid" ForeColor="White" PostBackUrl="~/displayEducation.aspx" Text="Education Loans" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="backUpdateEmployees1" runat="server" BackColor="#003366" BorderColor="Black" BorderStyle="Solid" ForeColor="White" PostBackUrl="~/displayHome.aspx" Text="Home Loans" />
        </p>
</asp:Content>
