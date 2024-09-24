<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CanBo.aspx.cs" Inherits="bai1._1.CanBo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }

        .cont {
            width: 100%;
            display: flex;
            flex-direction: column;
            margin: 5px;
        }

        .banner {
            width: 100%;
            display: flex;
            flex-direction: column;
            height: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="cont">

                <%--banner--%>
                <div class="banner">
                    <div style="width: 100%; text-align: center; margin-top: 10px">
                        <a style="font-size: xx-large; color: purple; text-decoration: blink; font-weight: bold; text-transform: uppercase">Nhập hồ sơ cán bộ</a>
                    </div>
                    <div style="width: 100%; text-align: center; margin-top: 30px">
                        <a style="text-transform: uppercase">Đào tạo, bồi dưỡng chuyên môn, nghiệp vụ</a>
                    </div>
                </div>

                <div style="border: solid purple 2px;">
                    <%--thong tin ca nhan--%>
                    <div style="width: auto;">

                        <div style="width: 100%; padding: 5px; background-color: purple; text-align: center">
                            <a style="text-transform: uppercase; font-size: larger">Thông tin cá nhân</a>
                        </div>

                        <div style="display: inline-flex; width: 100%; margin-top: 5px; justify-content: center">
                            <div style="width: 30%; text-align: end">
                                <a style="color: lightgray; font-style: italic">*Họ và tên  </a>
                            </div>
                            <div style="width: 70%">
                                <asp:TextBox ID="tbHoVaTen" Width="99%" runat="server" />
                            </div>
                        </div>

                        <div style="display: inline-flex; width: 100%; margin-top: 5px; justify-content: center">

                            <div style="width: 30%; text-align: end">
                                <a style="color: lightgray; font-style: italic">*Ngày sinh (ngày/tháng/năm)</a>
                            </div>

                            <div style="width: 40%">
                                <asp:DropDownList runat="server" ID="ngay" Width="70" />
                                <a>/</a>
                                <asp:DropDownList runat="server" ID="thang" Width="70" />
                                <a>/</a>
                                <asp:DropDownList runat="server" ID="nam" Width="70" />
                            </div>

                            <div style="width: 30%; display: inline-flex">
                                <a>Giới tính: </a>
                                <asp:RadioButtonList ID="radGioiTinh" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="nam" Text="Nam" />
                                    <asp:ListItem Value="nu" Text="Nữ" />
                                </asp:RadioButtonList>
                            </div>

                        </div>

                        <div style="display: inline-flex; width: 100%; margin-top: 5px; justify-content: center">
                            <div style="width: 30%; text-align: end">
                                <a style="color: lightgray; font-style: italic">*Quê quán</a>
                            </div>
                            <div style="width: 70%">
                                <asp:TextBox ID="tbQueQuan" Width="99%" runat="server" />
                            </div>
                        </div>

                    </div>

                    <%--trinh do hoc van--%>
                    <div style="width: auto; margin-top: 5px">

                        <div style="width: 100%; padding: 5px; background-color: purple; text-align: center">
                            <a style="text-transform: uppercase; font-size: larger">Trình độ học vấn</a>
                        </div>

                        <div style="width: 100%; display: inline-flex; margin-top: 5px">
                            <div style="width: 30%; text-align: end">
                                <a style="color: lightgray; font-style: italic">*Trình độ Văn hóa:</a>
                            </div>
                            <div style="width: 70%">
                                <asp:TextBox ID="tbTrinhDoVanHoa" runat="server" Width="70" />
                                <a>Học vị: </a>
                                <asp:DropDownList ID="hocvi" runat="server" />
                                <a>Học hàm: </a>
                                <asp:DropDownList ID="hocham" runat="server" />
                            </div>
                        </div>

                        <div style="width: 100%; display: inline-flex; margin-top: 5px">
                            <div style="width: 30%; text-align: end">
                                <a style="color: lightgray; font-style: italic">Lý luận chính trị</a>
                            </div>

                            <asp:DropDownList runat="server" ID="lyluanchinhtri" Width="70" />
                        </div>

                        <div style="width: 100%; display: inline-flex; margin-top: 5px">
                            <div style="width: 30%; text-align: end">
                                <a style="color: lightgray; font-style: italic">Ngoại ngữ</a>
                            </div>

                            <div style="width: 70%; margin-left: 10px">
                                <asp:CheckBoxList ID="cblNgoaiNgu" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="anh" Text="Anh" />
                                    <asp:ListItem Value="phap" Selected="True" Text="Pháp" />
                                    <asp:ListItem Value="nga" Selected="True" Text="Nga" />
                                </asp:CheckBoxList>
                            </div>
                        </div>

                        <div style="width: 100%; display: inline-flex; margin-top: 5px">
                            <div style="width: 30%; text-align: end; margin-top: auto; margin-bottom: auto">
                                <a style="color: lightgray; font-style: italic">Ghi rõ Tên trường, ngành học, thời gian, loại hình, văn bằng</a>
                            </div>

                            <div style="width: 70%">
                                <asp:TextBox ID="tbGhiRo" Width="99%" runat="server" Height="70" />
                            </div>

                        </div>

                        <div style="width: 100%; text-align: center; margin: 5px">
                            <a style="color: blue">Loại hình: Chính quy, tại chức, chuyên tu, bồi dưỡng; văn bằng: Tiến sĩ, thạc sĩ, cử nhân, kỹ sư</a>
                        </div>

                    </div>

                    <%--tom tat qua trinh cong tac--%>
                    <div style="width: auto">
                        <div style="width: 100%; padding: 5px; background-color: purple; text-align: center">
                            <a style="text-transform: uppercase; font-size: larger">Tóm tắt quá trình công tác</a>
                        </div>
                    </div>
                    <div style="width: 100%; display: inline-flex; margin-top: 5px">
                        <div style="width: 30%; text-align: end; margin-top: auto; margin-bottom: auto">
                            <a style="color: lightgray; font-style: italic">Ghi rõ thời gian bắt đầu và kết thúc; chức danh, chức vụ, đơn vị công tác tương ứng</a>
                        </div>

                        <div style="width: 70%">
                            <asp:TextBox ID="tbGhiRoQuaTrinhCongTac" Width="99%" runat="server" Height="70" />
                        </div>
                    </div>

                </div>

                <div style="width: 100%; display: inline-flex; justify-content: center">
                    <div style="margin-top: 20px; margin-right: 10px">
                        <asp:Button ID="btnCapNhat" runat="server" Text="Cập nhật" Width="100" />
                    </div>

                    <div style="margin-top: 20px; margin-right: 10px">
                        <asp:Button ID="btnNhapMoi" runat="server" Text="Nhập mới" Width="80" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
