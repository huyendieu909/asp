<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XL_TienLuong.aspx.cs" Inherits="WebApplication2.XL_TienLuong" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1" cellpadding="5" style="border-collapse:collapse">
                <tr>
                    <td>Mã NV: </td>
                    <td style="background='yellow'">
                        <asp:Label ID="lbMaNV" runat="server" BackColor="#889960"/>
                    </td>
                </tr>
                <tr>
                    <td>Có ngày công: </td>
                    <td>
                        <asp:Label ID="lbNgayCong" runat="server"/>
                    </td>
                </tr>
                <tr>
                    <td>Tiền được lĩnh là: </td>
                    <td>
                        <asp:Label ID="lbTienDuocLinh" runat="server"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
