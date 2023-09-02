<%@ Page Title="" Language="C#" MasterPageFile="~/AgriDept/StaffMasterpage.Master" AutoEventWireup="true" CodeBehind="RagiDataset.aspx.cs" Inherits="agricultureProject.AgriDept.RagiDataset" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <asp:Panel ID="Panel1" runat="server">

     <div class="article">
          <h2><span>Ragi</span> Dataset!!!</h2>
          <hr />
    
    		<br />

            <div style="height:640px; width:auto; overflow:auto">
<asp:GridView ID="GridView1" runat="server" BackColor="White" 
         BorderColor="#336666" BorderWidth="3px" CellPadding="4" BorderStyle="Double" 
                    GridLines="Horizontal">

    <FooterStyle BackColor="White" ForeColor="#333333" />
    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="White" 
        HorizontalAlign="Center" BackColor="#336666" />
    <RowStyle ForeColor="#333333" BackColor="White" />
    <SelectedRowStyle BackColor="#339966" ForeColor="White" Font-Bold="True" />
    <SortedAscendingCellStyle BackColor="#F7F7F7" />
    <SortedAscendingHeaderStyle BackColor="#487575" />
    <SortedDescendingCellStyle BackColor="#E5E5E5" />
    <SortedDescendingHeaderStyle BackColor="#275353" />

</asp:GridView>
</div>
             
		  </div>
      
            <br />





    </asp:Panel>
</asp:Content>
