<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterpage.Master" AutoEventWireup="true" CodeBehind="CreateStaffs.aspx.cs" Inherits="agricultureProject.Admin.CreateStaffs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <asp:Panel ID="panelStaffs" runat="server">

    
 <div class="article">
          <h2><span>Add</span> Agriculture Departments!!!</h2>
          <hr />
    
    		<br />



     <table style="width: 50%;">
         <tr>
             <td>
                <b>Enter Dept Id</b>
             </td>
             <td>
             <span>
                 <asp:TextBox ID="txtLoginId" runat="server" Height="25px" Width="200px"></asp:TextBox>
                 </span>
             </td>
             <td>
                 &nbsp;
             <span>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                     ControlToValidate="txtLoginId" CssClass="validation" 
                     ErrorMessage="Enter LoginId" ToolTip="Enter LoginId" ValidationGroup="mp"></asp:RequiredFieldValidator>
                 </span>
             </td>
         </tr>
         <tr>
             <td>
                <b>Enter Password</b>
             </td>
             <td>
             <span>
                 <asp:TextBox ID="txtPassword" runat="server" Height="25px" Width="200px"></asp:TextBox>
                 </span>
             </td>
             <td>
                 &nbsp;
             <span>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                     ControlToValidate="txtPassword" CssClass="validation" 
                     ErrorMessage="Enter Password" ToolTip="Enter Password" ValidationGroup="mp"></asp:RequiredFieldValidator>
                 </span>
             </td>
         </tr>
         <tr>
             <td>
              <b>Enter Location</b></td>
             <td>
             <span>
                 <asp:TextBox ID="txtLoc" runat="server" Height="25px" Width="200px"></asp:TextBox>
                 </span>
             </td>
             <td>
                 &nbsp;
             <span>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                     ControlToValidate="txtLoc" CssClass="validation" 
                     ErrorMessage="Enter Location" ToolTip="Enter Location" 
                     ValidationGroup="mp"></asp:RequiredFieldValidator>
                 </span>
             </td>
         </tr>
         <tr>
             <td>
                 &nbsp;</td>
             <td>
                 <span>
                 <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                     Text="Submit" ValidationGroup="mp" />
                 </span>
             </td>
             <td>
                 &nbsp;</td>
         </tr>
     </table>
     <br />
            <br />

                           <asp:Image ID="Image1" runat="server" Height="350px" 
              ImageUrl="~/images/login1.png" Width="650px" />
						                

</div>
			
    </asp:Panel>


</asp:Content>
