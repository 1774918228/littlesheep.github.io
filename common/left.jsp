<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023/5/12
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<base href="${pageContext.request.contextPath}/">
<!--左侧导航-->
<aside class="lyear-layout-sidebar">
    <!-- logo -->
    <div id="logo" class="sidebar-header">
        <a href="index.html"><img src="images/logo-sidebar.png" title="LightYear" alt="LightYear" /></a>
    </div>
    <div class="lyear-layout-sidebar-scroll">
        <nav class="sidebar-main">
            <ul class="nav nav-drawer" id="menuList">

            </ul>
        </nav>
    </div>

</aside>
<!--End 左侧导航-->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/template-web.js"></script>
<script type="text/html" id="tblhead">

    <li class="nav-item active"> <a href="index.html"><i class="mdi mdi-home"></i> 后台首页</a> </li>
     {{each obj.data}}
        <li class="nav-item nav-item-has-subnav">
            <a href="javascript:void(0)"><i class="{{$value.icon}}"></i>{{$value.name}}</a>
            <ul class="nav nav-subnav">
                {{each $value.child }}
                  <li> <a href="{{$value.url}}">{{$value.name}}</a> </li>
                {{/each}}
            </ul>
        </li>
    {{/each}}
</script>
<script>
    $(function (){
        $.ajax({
            url:"menu/queryMenuByUid",
            type:"get",
            dataType:"json",
            success:function (resp){
                console.log(resp)
                var a=template("tblhead",{obj:resp});
                $("#menuList").html(a)
            }
        })
    })
</script>
