<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新的主题</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="../css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../css/styles.css" rel="stylesheet"/>
    <link href="../css/font-awesome.min.css" rel="stylesheet"/>
</head>
<body>

<%@ include file="/common/nav.jsp"%>

<div class="container content-main" style="padding: 0 20px;">
    <div class="row">
        <div class="col-9">
            <div class="box" style="padding: 20px;">
                <form action="/post.jhtml" method="post" id="editpost_form">
                    <h1>创建新主题</h1>
                    <div class="form-group">
                        <label>标题</label>
                        <input type="text" class="form-control" placeholder="请在这里输入你的标题" name="title" id="title">
                        <small class="form-text text-muted">您的标题必须能够展示文章的主题</small>
                    </div>
                    <div class="form-group">
                        <label>内容</label>
                        <textarea class="form-control" id="body" placeholder="请在这里输入文章的内容" rows="10" name="body"></textarea>
                    </div>
                    <div class="form-group">
                        <label style="line-height: 5px;">选择您要发表的板块</label>
                        <select class="custom-select custom-select-lg mb-3" name="section" id="section_panel">
                            <option selected>Open this select menu</option>
                            <c:forEach items="${allSections}" var="section">
                                <option value="${section.id}">${section.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-success"><i class="fa fa-paper-plane"></i>&nbsp;&nbsp;创建新的主题</button>
                </form>
            </div>
        </div>
        <div class="col-3">
            <%@ include file="/common/sidebar.jsp"%>
        </div>
    </div>
</div>
</body>


<script src="../js/jquery-3.2.1.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="../js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(function(){
        $("form").submit(function(e){
            var titleDOM = $('#title');
            var bodyDOM = $('#body');
            if(titleDOM.val()===""|| bodyDOM.val()=== "" || $( "#section_panel option:selected" ).text() === "Open this select menu")
            {
                alert("请填写完表单，并且选择对应版块后在提交");
                e.preventDefault();
            }
        });
    });

</script>

</html>
