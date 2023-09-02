﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterpage.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="agricultureProject.Admin.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Panel ID="panelUpdatePassword" runat="server">

  <div class="article">
          <h2><span>Update</span> Admin Password!!!</h2>
          <hr />
    
    		<br />
      <table style="width: 65%;">
          <tr>
              <td>
                 <b>Enter Old Password</b>
              </td>
              <td>
                  &nbsp;
              <span>
                  <asp:TextBox ID="txtOldPassword" runat="server" Height="25px" 
                      TextMode="Password" Width="200px"></asp:TextBox>
                  </span>
              </td>
              <td>
                  &nbsp;
              <span>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                      ControlToValidate="txtOldPassword" CssClass="validation" 
                      ErrorMessage="Enter OldPassword" ToolTip="Enter OldPassword" 
                      ValidationGroup="pwd"></asp:RequiredFieldValidator>
                  </span>
              </td>
          </tr>
          <tr>
              <td>
                  <b>Enter New Password</b></td>
              <td>
                  &nbsp;
              <span>
                  <asp:TextBox ID="txtNewPassword" runat="server" Height="25px" 
                      TextMode="Password" Width="200px"></asp:TextBox>
                  </span>
              </td>
              <td>
                  &nbsp;
              <span>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                      ControlToValidate="txtNewPassword" CssClass="validation" 
                      ErrorMessage="Enter New Password" ToolTip="Enter New Password" 
                      ValidationGroup="pwd"></asp:RequiredFieldValidator>
                  </span>
              </td>
          </tr>
          <tr>
              <td>
                  <b>Confirm Password</b></td>
              <td>
                  &nbsp;
              <span>
                  <asp:TextBox ID="txtConfirm" runat="server" Height="25px" TextMode="Password" 
                      Width="200px"></asp:TextBox>
                  </span>
              </td>
              <td>
                  &nbsp;
              <span>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                      ControlToValidate="txtConfirm" CssClass="validation" 
                      ErrorMessage="Enter Confirm Password" ToolTip="Enter Confirm Password" 
                      ValidationGroup="pwd"></asp:RequiredFieldValidator>
                  <asp:CompareValidator ID="CompareValidator1" runat="server" 
                      ControlToCompare="txtNewPassword" ControlToValidate="txtConfirm" 
                      CssClass="validation" ErrorMessage="mismatch" ToolTip="mismatch" 
                      ValidationGroup="pwd"></asp:CompareValidator>
                  </span>
              </td>
          </tr>
          <tr>
              <td>
                  &nbsp;</td>
              <td>
                  &nbsp;</td>
              <td>
                  &nbsp;</td>
          </tr>
          <tr>
              <td>
                  &nbsp;</td>
              <td>
                  <span>
                  <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                      Text="Update" ValidationGroup="pwd" />
                  </span>
              </td>
              <td>
                  &nbsp;</td>
          </tr>
      </table>


        <br />

                           <asp:Image ID="Image1" runat="server" Height="350px" 
              ImageUrl="~/images/change-your-password-EJ9KGJ.jpg" Width="650px" />
						                

                          

					 
			  </div>
    </asp:Panel>



</asp:Content>
