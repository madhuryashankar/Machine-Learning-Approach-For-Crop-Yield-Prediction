<%@ Page Title="" Language="C#" MasterPageFile="~/AgriDept/StaffMasterpage.Master" AutoEventWireup="true" CodeBehind="RagiYield.aspx.cs" Inherits="agricultureProject.AgriDept.RagiYield" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Panel ID="Panel1" runat="server">

     <div class="article">
          <h2><span>Ragi Yield</span> Prediction Module!!!</h2>
          <hr />
    
    		<br />
             <div style="height:500px; width:auto; overflow:auto">
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
      
            <br />

             <h2><span>RAGI YIELD </span>PREDICTION USING NAIVE BAYES ALGORITHM!!!!!!</h2>
          <hr />

          <br />
          <asp:Button ID="btnPrediction" runat="server" 
                      Text="Click Here to Predict Yield" 
              onclick="btnPrediction_Click" CssClass="btn" /> &nbsp;&nbsp;&nbsp;
          <asp:Button ID="btnResults" runat="server" CssClass="btn" 
              onclick="btnResults_Click" Text="Results Analysis" />
          <br /><br /><div>
      <asp:Table ID="tablePrediction" runat="server">
      </asp:Table>

            <br />


</div>

</div>
    </asp:Panel>
</asp:Content>
