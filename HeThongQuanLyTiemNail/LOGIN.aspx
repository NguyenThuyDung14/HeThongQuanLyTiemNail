<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LOGIN.aspx.cs" Inherits="LOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/css_Longin.css" rel="stylesheet" />
    <script src="../../admin_js/sweetalert.min.js"></script>
</head>
<body>
    <div class="container_form">
        <div class="container_login">
            <div class="form_logo">
                <img src="image/Login/longin_logo.png" />
            </div>
            <form class="LOGIN" runat="server">
                <label>Email</label>
                <input type="text" name="txt_taikhoan" value="" />
                <label>Số điện thoại</label>
                <input type="text" name="txt_SoDienThoai" value="" />
                <div class="text_login">
                    <p>Quên mật khẩu?</p>
                    <p>Đăng ký</p>
                </div>
                <p>Đăng nhập</p>
            </form>
        </div>
    </div>
</body>
</html>
