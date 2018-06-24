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
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="js/jBox/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script src="js/jBox/jquery.jBox-2.3.min.js" type="text/javascript"></script>
    <script src="js/jBox/i18n/jquery.jBox-zh-CN.js" type="text/javascript"></script>
    <script src="js/Common.js" type="text/javascript"></script>
    <script src="js/Data.js" type="text/javascript"></script>
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script type="text/javascript">
        var defaultQuestionNumber=10;
        var begin=false;
        var keyDownNumber=0;
        var questionList=[];
        var questionListMark=[];
        var inputStr=[];
        var inputTime=[];
        var resultStr=[];
        var result=[];
        var beginTime=0;
        var endTime=0;
        var during;
        var question;
        var answer;
        var resultInfo={};
        $(function(){
            setStudMsgHeadTabCheck();
            $("#answer").keydown(function(event){
                if(begin){
                    if(event.keyCode==13){//回车
                        markResult();
                        $("#answer").val("");
                        showQuestion();

                    }else{
                        keyDownNumber++;
                    }
                }else{
                    console.info("not begin ")
                }
            });
            $("#begin_bt").click(function () {
                if(begin){
                    return;
                }
                console.info("begin_bt");
                init()
                begin=true;
                $("#answer").val("");
                $("#answer").focus();
                beginTime=getTime();
                showQuestion();
            });
            $("#end_bt").click(function () {
                if(!begin){
                   return;
                }
                console.info("end_bt");
                endQuestion();
            });
        });
        function endQuestion() {
            begin=false;
            endTime=getTime();
            during=parseInt(endTime)-parseInt(beginTime);
            printInfo();
            $("#question").val("");
            $.post({url:"postResult",data:JSON.stringify(resultInfo),contentType:"application/json",success:function (data) {
                console.info(data);
            }})
        }

        function showQuestion() {
            if(questionList.length==0){
                endQuestion();
                return;
            }
            var qq = questionList.pop();
            question=qq;
            $("#question").val(qq);
        }
        function init() {
            begin=false;
            keyDownNumber=0;
            questionList=[];
            inputStr=[];
            inputTime=[];
            resultStr=[];
            result=[];
            beginTime=0;
            endTime=0;
            during;
            question;
            answer;
            resultInfo={};
            for (var i=0;i<defaultQuestionNumber;i++){
                var q = randomQuestion();
                questionList.push(q);
                questionListMark.push(q);
            }
        }
        function markResult() {
            inputTime.push(getTime());
            inputStr.push(getAnswer());
            answer=$("#answer").val();
            resultStr.push(answer);
            result.push(answer==question);

        }
        function getTime() {
            return new Date().getTime();
        }
        function getAnswer() {
            return $("#answer").val();
        }
        function randomQuestion() {
            var number =String(Math.random()*1000000);
            number=number.substring(0,number.indexOf(".") + 3);
            return number;
        }


        function printInfo() {
            resultInfo['keyDownNumber']=keyDownNumber;
            resultInfo['beginTime']=beginTime;
            resultInfo['endTime']=endTime;
            resultInfo['during']=during;
            resultInfo['inputTime']=inputTime;
            resultInfo['resultStr']=resultStr;
            resultInfo['result']=result;
            resultInfo['questionList']=questionListMark;
            console.info(resultInfo);
        }
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

        <div class="dhbg">
            <form>
                <div class="form-group">
                    <label for="exampleInputEmail1">题目</label>
                    <input type="text" readonly class="form-control" id="question" placeholder="题目">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">输入</label>
                    <input type="text" class="form-control" id="answer" placeholder="输入">
                </div>

                <button type="button" id="begin_bt" class="btn btn-default">开始</button>
                <button type="button" id="end_bt" class="btn btn-default">结束</button>
            </form>
        </div>
        </div>
    </div>
</div>
</body>
</html>
