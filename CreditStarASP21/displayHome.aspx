<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="displayHome.aspx.vb" Inherits="CreditStarASP21.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="HOME_LOAN_ID" DataSourceID="HomeDS" ForeColor="#333333" GridLines="None" CellSpacing="4">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="HOME_LOAN_ID" HeaderText="HOME_LOAN_ID" ReadOnly="True" SortExpression="HOME_LOAN_ID" />
            <asp:BoundField DataField="AMOUNT_SANCTIONED" HeaderText="AMOUNT_SANCTIONED" SortExpression="AMOUNT_SANCTIONED" />
            <asp:BoundField DataField="PURCHASE_PRICE" HeaderText="PURCHASE_PRICE" SortExpression="PURCHASE_PRICE" />
            <asp:BoundField DataField="RELATOR_NAME" HeaderText="RELATOR_NAME" SortExpression="RELATOR_NAME" />
            <asp:BoundField DataField="DOWN_PAYMENT" HeaderText="DOWN_PAYMENT" SortExpression="DOWN_PAYMENT" />
            <asp:BoundField DataField="FIXED_PREMIUM" HeaderText="FIXED_PREMIUM" SortExpression="FIXED_PREMIUM" />
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
    <asp:SqlDataSource ID="HomeDS" runat="server" ConnectionString="<%$ ConnectionStrings:CreditStarCS %>" 
        DeleteCommand="DELETE FROM &quot;HOME_LOAN_DETAILS&quot; WHERE &quot;HOME_LOAN_ID&quot; = ?" 
        InsertCommand="INSERT INTO &quot;HOME_LOAN_DETAILS&quot; (&quot;HOME_LOAN_ID&quot;, &quot;AMOUNT_SANCTIONED&quot;, &quot;PURCHASE_PRICE&quot;, &quot;RELATOR_NAME&quot;, &quot;DOWN_PAYMENT&quot;, &quot;FIXED_PREMIUM&quot;) VALUES (?, ?, ?, ?, ?, ?)" 
        ProviderName="<%$ ConnectionStrings:CreditStarCS.ProviderName %>" 
        SelectCommand="SELECT &quot;HOME_LOAN_ID&quot;, &quot;AMOUNT_SANCTIONED&quot;, &quot;PURCHASE_PRICE&quot;, &quot;RELATOR_NAME&quot;, &quot;DOWN_PAYMENT&quot;, &quot;FIXED_PREMIUM&quot; FROM &quot;HOME_LOAN_DETAILS&quot;" 
        UpdateCommand="UPDATE &quot;HOME_LOAN_DETAILS&quot; SET &quot;AMOUNT_SANCTIONED&quot; = :AMOUNT_SANCTIONED, &quot;PURCHASE_PRICE&quot; = :PURCHASE_PRICE, &quot;RELATOR_NAME&quot; = :RELATOR_NAME, &quot;DOWN_PAYMENT&quot; = :DOWN_PAYMENT, &quot;FIXED_PREMIUM&quot; = :FIXED_PREMIUM WHERE &quot;HOME_LOAN_ID&quot; = :HOME_LOAN_ID">
        
        <DeleteParameters>
            <asp:Parameter Name="HOME_LOAN_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="HOME_LOAN_ID" Type="String" />
            <asp:Parameter Name="AMOUNT_SANCTIONED" Type="Decimal" />
            <asp:Parameter Name="PURCHASE_PRICE" Type="Decimal" />
            <asp:Parameter Name="RELATOR_NAME" Type="String" />
            <asp:Parameter Name="DOWN_PAYMENT" Type="Decimal" />
            <asp:Parameter Name="FIXED_PREMIUM" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AMOUNT_SANCTIONED" Type="Decimal" />
            <asp:Parameter Name="PURCHASE_PRICE" Type="Decimal" />
            <asp:Parameter Name="RELATOR_NAME" Type="String" />
            <asp:Parameter Name="DOWN_PAYMENT" Type="Decimal" />
            <asp:Parameter Name="FIXED_PREMIUM" Type="Decimal" />
            <asp:Parameter Name="HOME_LOAN_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
        <asp:Button ID="backUpdateEmployees" runat="server" BackColor="#000099" BorderColor="Black" BorderStyle="Solid" ForeColor="White" PostBackUrl="~/employeesMaster.aspx" Text="&lt;&lt; Back" />
        </asp:Content>
