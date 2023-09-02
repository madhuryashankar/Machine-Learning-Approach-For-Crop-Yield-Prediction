<%@ Page Title="" Language="C#" MasterPageFile="~/AgriDept/StaffMasterpage.Master" AutoEventWireup="true" CodeBehind="Results_Paddy.aspx.cs" Inherits="agricultureProject.AgriDept.Results_Paddy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <asp:Panel ID="Panel1" runat="server">

     <div class="article">
          <h2><span>Paddy Yield</span> Result Analysis!!!</h2>
          <hr />
    
    		<br />

         <table style="width: 100%;">
             <tr>
                 <td>
                    
                     <asp:Table ID="Table1" runat="server">
                     </asp:Table>
                    
                 </td>
                 <td>
                     &nbsp;
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;
                 </td>
             </tr>
             <tr>
                 <td>
                     
                 </td>
                 <td>
                     &nbsp;
                 </td>
             </tr>
         </table>
            <br />


</div>


    </asp:Panel>
</asp:Content>
