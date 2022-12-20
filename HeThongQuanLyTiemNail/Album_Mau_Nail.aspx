<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Album_Mau_Nail.aspx.cs" Inherits="Album_Mau_Nail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .item img {
            margin: 0;
            object-fit: cover;
            height: 20rem;
        }

        .owl-stage-outer {
            height: 20rem;
        }
    </style>
    <style>
        .dropdown-item {
            display: block;
            width: 100%;
            padding: 0.25rem 1.5rem;
            clear: both;
            font-weight: 400;
            color: #212529;
            text-align: inherit;
            white-space: nowrap;
            background: 0 0;
            border: 0;
        }

        .dropdown-menu {
            box-shadow: -2px 1px 14px 3px #8181821f;
            overflow: auto;
            background: white;
            font-size: 39px;
            height: 33rem;
            width: 42rem;
            position: absolute;
            transform: translate3d(-160px, 38px, 0px);
            text-align: end;
            top: 2px;
            left: -30rem;
            will-change: transform;
        }

            .dropdown-menu a {
                /* line-height: 1; */
                -webkit-line-clamp: 1;
                -webkit-box-orient: vertical;
                overflow: hidden;
                text-overflow: ellipsis;
                background: none;
                border: none;
            }

        .block-noti {
            padding: 2%;
            border: -1px 6px 17px -4px #80808045;
            border: 1px solid #80808014;
        }

        .block-time {
            padding: 0 22px;
            display: flex;
            justify-content: space-between;
        }

            .block-time span {
                font-size: 29px;
                color: #007bff;
            }

        .so {
            font-size: 41px;
            font-weight: 600;
            color: white;
            padding: 11%;
            border-radius: 62px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="aspNetHidden">
            <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
        </div>

        <div class="aspNetHidden">

            <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="D6E8FC89" />
        </div>
        <div>
            <div class="navabar">
                <div class="tieude"><span>MẪU NAILS</span></div>
                <div class="icon-infor">
                </div>
            </div>
            <div class="base">
                <div class="owl-carousel owl-theme">

                    <div id="overlay">
                        <div class="item">
                            <img src="/uploadimages/QuanLyNailBox/z3417178437278_9d4ed844a91e7edc7e24abe671c5f33d.jpg" />
                        </div>
                    </div>

                    <div id="overlay">
                        <div class="item">
                            <img src="/uploadimages/QuanLyNailBox/z3417179896548_fb8ce587b75385119ffa840de4947fe1.jpg" />
                        </div>
                    </div>

                    <div id="overlay">
                        <div class="item">
                            <img src="/uploadimages/anh_sanpham/z3417178395878_a3ae3f349c2effd369bf8cf42a138c6f.jpg" />
                        </div>
                    </div>

                    <div id="overlay">
                        <div class="item">
                            <img src="/uploadimages/QuanLyNailBox/z3417178433449_18d45a308de442f45fca7d8c274524e1.jpg" />
                        </div>
                    </div>

                    <div id="overlay">
                        <div class="item">
                            <img src="/uploadimages/QuanLyNailBox/z3417179852336_42672288d1001eae7c040dec113034fc.jpg" />
                        </div>
                    </div>

                    <div id="overlay">
                        <div class="item">
                            <img src="/uploadimages/QuanLyNailBox/z3417178437503_750b3cfb60dfcfdc6d24ea460ed731d2.jpg" />
                        </div>
                    </div>

                    <div id="overlay">
                        <div class="item">
                            <img src="/uploadimages/anh_sanpham/z3417179830006_2ad1ea8ecfc9cec3a875fd2e25301425.jpg" />
                        </div>
                    </div>

                    <div id="overlay">
                        <div class="item">
                            <img src="/uploadimages/anh_sanpham/z3417178389611_b718ee96e912ca5ed5939c9febeb3660.jpg" />
                        </div>
                    </div>

                    <div id="overlay">
                        <div class="item">
                            <img src="/uploadimages/anh_sanpham/z3417178473378_8b654a676bec89627a7768d48f4771a6.jpg" />
                        </div>
                    </div>

                    <div id="overlay">
                        <div class="item">
                            <img src="/uploadimages/anh_sanpham/z3417178410564_06a738d8af5367d36820bcf78c74f2fd.jpg" />
                        </div>
                    </div>

                </div>
                <div class="row">

                    <a href="mau-nail-dat-lich-36" class="block-nailbox col-sm-5">
                        <img src="/uploadimages/QuanLyNailBox/z3417178434000_f6c4fa3ffdbdb8d1b9863ec53de48d7d.jpg" />
                        <span class="name-album">Nails cô dâu</span>
                    </a>

                    <a href="mau-nail-dat-lich-37" class="block-nailbox col-sm-5">
                        <img src="/uploadimages/QuanLyNailBox/z3417178475270_681b3e5478724f1c38ece08250924826.jpg" />
                        <span class="name-album">Nails hoạt hình</span>
                    </a>

                    <a href="mau-nail-dat-lich-39" class="block-nailbox col-sm-5">
                        <img src="/uploadimages/QuanLyNailBox/z3417178506369_b22ed1dd05eb83e7e64584a0a1fb31b7.jpg" />
                        <span class="name-album">Nails ngắn</span>
                    </a>

                    <a href="mau-nail-dat-lich-40" class="block-nailbox col-sm-5">
                        <img src="/uploadimages/QuanLyNailBox/z3417178387167_42d382b5d314b379690aee262906a581.jpg" />
                        <span class="name-album">Nails chân</span>
                    </a>

                    <a href="mau-nail-dat-lich-46" class="block-nailbox col-sm-5">
                        <img src="/uploadimages/QuanLyNailBox/2f5a3c7fdef22ac7305625d6c38b24cf.jpg" />
                        <span class="name-album">Nails nhọn</span>
                    </a>

                    <a href="mau-nail-dat-lich-47" class="block-nailbox col-sm-5">
                        <img src="/uploadimages/QuanLyNailBox/2f5a3c7fdef22ac7305625d6c38b24cf.jpg" />
                        <span class="name-album">Nails than</span>
                    </a>


                </div>
                <input name="ctl00$ContentPlaceHolder1$txtIDLoaiNailBox" type="text" id="ContentPlaceHolder1_txtIDLoaiNailBox" hidden="hidden" />
            </div>
            <script>

                $(document).ready(function () {
                    $('.owl-carousel').owlCarousel({
                        loop: true,
                        margin: 10,
                        nav: true,
                        responsive: {
                            0: {
                                items: 1
                            },
                        }
                    })
                });

            </script>

        </div>
    </form>
</body>
</html>
