<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>
        在线考试系统
    </title>
    <link href="css/StudentStyle.css" rel="stylesheet" type="text/css"/>
    <link href="js/jBox/Skins/Blue/jbox.css" rel="stylesheet" type="text/css"/>
    <link href="css/ks.css" rel="stylesheet" type="text/css"/>
    <script src="js/jBox/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script src="js/jBox/jquery.jBox-2.3.min.js" type="text/javascript"></script>
    <script src="js/jBox/i18n/jquery.jBox-zh-CN.js" type="text/javascript"></script>
    <script src="js/Common.js" type="text/javascript"></script>
    <script src="js/Data.js" type="text/javascript"></script>
    <script type="text/javascript">
        $().ready(function () {
            setStudMsgHeadTabCheck();
        });

        //我的信息头部选项卡
        function setStudMsgHeadTabCheck() {
            var currentUrl = window.location.href;
            currentUrl = currentUrl.toLowerCase();
            var asmhm = "";
            $("#ulStudMsgHeadTab li").each(function () {
                asmhm = $(this).find('a').attr("href").toLowerCase();
                if (currentUrl.indexOf(asmhm) > 0) {
                    $(this).find('a').attr("class", "tab1");
                    return;
                }
            });
        }
    </script>
    <script src="js/changeOption.js" type="text/javascript"></script>
    <script src="js/rl.js" type="text/javascript"></script>
</head>
<body>
<div class="banner">
    <div>
        <div class="page">
            <div id="logo">
            </div>
        </div>
    </div>
</div>
<div class="page">
    <div class="box mtop">
        <div class="leftbox">
            <div class="l_nav2">
                <div class="ta1">
                    <strong>在线考试系统</strong>
                    <div class="leftbgbt">
                    </div>
                </div>
                <div class="cdlist">
                    <div>
                        <a href="time">计时类型</a></div>
                    <div>
                        <a href="MyInfo/ClassInfo.aspx.html">万里长征</a>
                    </div>
                    <div>
                        <a href="User/StudentInfor/Letter.aspx.html">110米栏</a></div>
                    <div>
                        <a href="User/StudentInfor/systemMsge.aspx.html">赛后统计</a></div>
                </div>
            </div>
        </div>
        <div class="rightbox">

            <h2 class="mbx">
                在线考试系统&nbsp;&nbsp;&nbsp;&nbsp;</h2>

            <#--<div class="dhbg">-->
                <#--<div class="dh1" style="margin: 0 27px 15px 0;">-->
                    <#--<div class="dhwz">-->
                    <#--</div>-->
                <#--</div>-->
                <#--<div class="dh2">-->
                    <#--<div class="dhwz">-->
                    <#--</div>-->
                <#--</div>-->
                <#--<div class="dh3" style="margin: 0 27px 15px 0;">-->
                    <#--<div class="dhwz">-->
                    <#--</div>-->
                <#--</div>-->
                <#--<div class="dh4">-->
                    <#--<div class="dhwz">-->
                        <#--<p>-->
                            <#--你应交<span class="blue">7800.00</span> 元，实缴 <span class="green">3700.00</span>元</p>-->
                        <#--<p>-->
                            <#--欠费 <span class="red">4100.00</span> 元</p>-->
                        <#--<p>-->
                            <#--你总共有<span class="red">3</span> 条财务记录需要确定</p>-->

                        <#--<div class="btright">-->
                            <#--<a href="MyAccount/wdcw.aspx.html">-->
                                <#--<img src="images/Student/default/bt_cw.jpg" alt="进入财务中心" width="121" height="25"/></a>-->
                        <#--</div>-->
                    <#--</div>-->
                <#--</div>-->
            <#--</div>-->
        </div>
    </div>
</div>
</body>
</html>
