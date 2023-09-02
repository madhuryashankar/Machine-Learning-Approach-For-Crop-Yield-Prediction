<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterpage.Master" AutoEventWireup="true" CodeBehind="ViewStaffs.aspx.cs" Inherits="agricultureProject.Admin.ViewStaffs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Panel ID="panelAdminHome" runat="server">
  <div class="article">
			<h2>Existing Staffs!!!</h2>
           
    <br />
           
   
           
                       
                            <table style="width:100%;">

                                <tr>
                                    <td>
                                        <asp:Table ID="tableStaffs" runat="server">
                                        </asp:Table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                                 <br />
         
   
   </div>
 

        <br />
         
          <img src="../images/rainfall1.jpg"" width="300" height="180" alt="" /> &nbsp
          <img src="../images/rainfall2.jpg" width="300" height="180" alt="" /> &nbsp
         <img src="../images/rainfall3.jpg" width="300" height="180" alt="" /> &nbsp
          </marquee>
 
   </asp:Panel>
</asp:Content>
