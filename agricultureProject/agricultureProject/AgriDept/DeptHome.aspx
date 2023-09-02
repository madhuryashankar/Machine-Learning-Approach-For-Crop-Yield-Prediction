<%@ Page Title="" Language="C#" MasterPageFile="~/AgriDept/StaffMasterpage.Master" AutoEventWireup="true" CodeBehind="DeptHome.aspx.cs" Inherits="agricultureProject.AgriDept.DeptHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <asp:Panel ID="Panel1" runat="server">

     <div class="article">
          <h2><span>Welcome</span> Department Incharger!!!</h2>
          <hr />
    
    		<br />

         <table style="width: 100%;">
             <tr>
                 <td>
                     &nbsp;
                     <asp:Label ID="lblDept" runat="server"></asp:Label>
                 </td>
                 <td>
                     &nbsp;
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
                 <td>
                     &nbsp;
                 </td>
             </tr>
             <tr>
                 <td>
                     <img src="../images/rainfall3.jpg"" width="750" height="350" alt="" />
                 </td>
                 <td>
                     &nbsp;
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
