<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TienLuong.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" method="post">
        <div>
            <table border="1" cellpadding="5">
                <tr>
                    <td>Mã NV:</td>
                    <td><asp:TextBox ID="tbMaNV" Text="NV04" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Bậc lương:</td>
                    <td><asp:TextBox ID="tbBacLuong" Text="4" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Ngày công:</td>
                    <td><asp:TextBox ID="tbNgayCong" Text="27" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Chức vụ:</td>
                    <td><asp:DropDownList ID="ddlChucVu" AutoPostBack="true" runat="server">
                        <asp:ListItem Text="Trưởng phòng" Value="TruongPhong" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Phó trưởng phòng" Value="PhoTruongPhong" />
                        <asp:ListItem Text="Nhân viên" Value="NhanVien"></asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Giới tính:</td>
                    <td>
                        <asp:RadioButtonList ID="rbGioiTinh" AutoPostBack="true" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem Selected="True" Value="nam">Nam</asp:ListItem>
                            <asp:ListItem Value="nu">Nữ</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>Ngoại ngữ:</td>
                    <td>
                        <asp:CheckBoxList ID="cblNgoaiNgu" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem Selected="True" Value="anh">Anh</asp:ListItem>
                            <asp:ListItem Value="phap">Pháp</asp:ListItem>
                            <asp:ListItem Value="nga">Nga</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td>Tiền lĩnh:</td>
                    <td><asp:Label ID="tienLinh" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnTinh" Text="Tính" runat="server"  OnClick="btnTinh_Click" />
                        <asp:Button ID="btnXoa" Text="Xóa" runat="server"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
