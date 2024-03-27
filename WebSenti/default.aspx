<%@ Page Title="" Language="C#" MasterPageFile="~/LoginMaster.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebSenti._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span class="login100-form-title p-b-49">
						Login
					</span>

					<div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
						<span class="label-input100">Email Id</span>
						<input class="input100" type="text" id="emailid" runat="server"  name="username" placeholder="Type your email id" required/>
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" id="password" runat="server" name="pass" placeholder="Type your password" required/>
						<span class="focus-input100" data-symbol=" &#xf190;"></span>
					</div>
					
					<br />
					<br />
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								<asp:Button ID="Button1" class="login100-form-btn" runat="server" Text="Login" BackColor="Transparent" OnClick="Button1_Click" />
							</button>
						</div>
					</div>
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
					
					<div class="flex-col-c p-t-155">
						<a href="reg.aspx" class="txt2">
							Sign Up
						</a>
					</div>
</asp:Content>
