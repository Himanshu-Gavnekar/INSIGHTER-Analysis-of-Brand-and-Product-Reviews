<%@ Page Title="" Language="C#" MasterPageFile="~/LoginMaster.Master" AutoEventWireup="true" CodeBehind="reg.aspx.cs" Inherits="WebSenti.reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span class="login100-form-title p-b-49">
						Registration
					</span>
                     <div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
						<span class="label-input100">User Name</span>
						<input class="input100" type="text" id="username" runat="server"  name="username" placeholder="Type your User Name" required/>
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
						<span class="label-input100">Email Id</span>
						<input class="input100" type="text" id="emailid" runat="server"  name="username" placeholder="Type your email id" pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$" title="Must contain valid email id" required="required"/>
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>
                    <div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
						<span class="label-input100">Mobile No.</span>
						<input class="input100" type="text" id="mobileno" runat="server"  name="username" placeholder="Type your mobile no." pattern="\d{10}" title="Must contain valid mobile number" required/>
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" id="password" runat="server" name="pass" placeholder="Type your password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required/>
						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div>
                    <br />
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<span class="label-input100">Confirm Password</span>
						<input class="input100" type="password" id="password1" runat="server" name="pass" placeholder="Type your confirm password" required/>
						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div>
					<br />
					<br />
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
                                <asp:Button ID="Button1" class="login100-form-btn" runat="server" Text="Submit" BackColor="Transparent" OnClick="Button1_Click" />
							</button>
						</div>
					</div>
    <br />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
					<div class="flex-col-c p-t-155">
						<a href="default.aspx" class="txt2">
							Sign In
						</a>
					</div>
</asp:Content>
