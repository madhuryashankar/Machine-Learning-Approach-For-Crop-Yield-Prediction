<%@ Page Title="" Language="C#" MasterPageFile="~/LoginMasterpage.Master" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="agricultureProject.Contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Panel ID="panelContactus" runat="server">

   <div class="article">
          <h2><span>Contact</span> Us!!!</h2>
          <hr />
    
    		<br />
        
					  <p>Contact Person: Agridept</p>  
			 	
					  <p>Contact No: 9986565652</p>  
                          

                            <p>Email Id: argidept.mysore@gmail.com</p>  

					   <p>Website Address: www.Paddy.com</p>
				  
  				<div class="clear"> </div>	
                
       <asp:Image ID="Image1" runat="server" Height="350px" 
              ImageUrl="~/images/contact.jpg" Width="650px" />
                	
                  </div>
			 

    </asp:Panel>
</asp:Content>
