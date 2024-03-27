<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test1.aspx.cs" Inherits="WebSenti.Test1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server" Height="46px" Width="500px">https://www.amazon.in/itel-Dimensity-5000mAh-Battery-Warranty/dp/B0CHJN2HNZ/ref=sr_1_1_sspa?adgrpid=61774515307&amp;ext_vrnc=hi&amp;hvadid=590593811487&amp;hvdev=c&amp;hvlocphy=9181907&amp;hvnetw=g&amp;hvqmt=e&amp;hvrand=12699876881496983365&amp;hvtargid=kwd-364938530095&amp;hydadcr=24510_2265449&amp;keywords=all%2Bmobile%2Bprice%2B10000%2Bto%2B15000&amp;qid=1699163248&amp;sr=8-1-spons&amp;sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&amp;th=1</asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="39px" OnClick="Button1_Click" Text="Submit" Width="137px" />
        <br />
        <br />
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    
        <br />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Height="110px" OnClick="Button2_Click" Text="Button" Width="299px" />
    
    </div>
    </form>
</body>
</html>
