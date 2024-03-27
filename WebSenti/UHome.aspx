<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="UHome.aspx.cs" Inherits="WebSenti.UHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
hr {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <table style="width: 100%;">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="a" OnCheckedChanged="RadioButton1_CheckedChanged" Text="    Upload .csv File" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;<asp:Button ID="Button1" runat="server" Height="29px" OnClick="Button1_Click" Text="Upload" Width="99px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Literal ID="Literal2" runat="server"></asp:Literal>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Button ID="Button3" runat="server" Height="28px" OnClick="Button3_Click" Text="Process" Width="110px" />
                        <br />
                    </ContentTemplate>
                </asp:UpdatePanel>
                
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
     <hr />
        
        
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                        <asp:Image ID="Image1" runat="server" Height="16px" ImageUrl="~/images/constuction_bar.gif" Width="90%" />
                    </ProgressTemplate>
                </asp:UpdateProgress>

            <hr />
    <table style="width: 100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" OnCheckedChanged="RadioButton2_CheckedChanged" Text="    Enter product url" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFFCC" Height="24px" Width="90%"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:Button ID="Button2" runat="server" Height="26px" OnClick="Button2_Click" Text="Submit" Width="118px" />
                    </ContentTemplate>
                </asp:UpdatePanel>
                
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Literal ID="Literal3" runat="server"></asp:Literal>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <hr />
</asp:Content>
