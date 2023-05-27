<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023/5/10
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="zh">
<base href="${pageContext.request.contextPath}/" />
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>首页 - 光年(Light Year Admin)后台管理系统模板</title>
    <link rel="icon" href="favicon.ico" type="image/ico">
    <meta name="keywords" content="LightYear,光年,后台模板,后台管理系统,光年HTML模板">
    <meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
    <meta name="author" content="yinqi">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/materialdesignicons.min.css" rel="stylesheet">
    <link href="css/style.min.css" rel="stylesheet">
    <link href="js/jconfirm/jquery-confirm.min.css" rel="stylesheet">
</head>

<body data-theme="dark">
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
<%--        左侧菜单--%>
        <jsp:include page="/common/left.jsp" />

<%--        头部--%>
        <jsp:include page="/common/head.jsp" />
        <!--页面主要内容-->
        <main class="lyear-layout-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card" >
                            <div class="card-header">
                                <form class="form-inline pull-left" action="lyear_forms_elements.html" method="post" onsubmit="return false;">
                                    <div class="form-group">
                                        <label  for="username">姓名</label>
                                        <input class="form-control" type="text" id="username" name="username" placeholder="请输入姓名..">
                                    </div>
                                    <div class="form-group">
                                        <label  for="email">邮箱</label>
                                        <input class="form-control" type="email" id="email" name="email" placeholder="请输入邮箱..">
                                    </div>
                                    <div class="form-group">
                                        <button class="btn btn-primary btn-sm" type="button" onclick="findUser(1)"><i class="mdi mdi-account-search"></i>搜索</button>
                                    </div>
                                </form>
                                <div class="toolbar-btn-action pull-right">
<%--                                    <security:authorize access="hasAuthority('user:add') ">--%>
                                    <a class="btn btn-primary m-r-5"  data-toggle="modal" data-target="#myModal" ><i class="mdi mdi-plus"></i> 新增</a>
<%--                                    </security:authorize>--%>
                                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                    <h4 class="modal-title" id="myModalLabel">新增用户</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <form class="form-horizontal" action="lyear_forms_elements.html" method="post" onsubmit="return false;">
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label" for="usernameadd">用户名</label>
                                                            <div class="col-md-7">
                                                                <input class="form-control" type="text" id="usernameadd" name="usernameadd" placeholder="请输入用户名..">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label" for="emailadd">邮箱</label>
                                                            <div class="col-md-7">
                                                                <input class="form-control" type="email" id="emailadd" name="emailadd" placeholder="请输入邮箱..">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label" for="teladd">电话</label>
                                                            <div class="col-md-7">
                                                                <input class="form-control" type="text" id="teladd" name="teladd" placeholder="请输入电话..">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label" >性别</label>
                                                            <div class="col-md-7">
                                                                <label class="radio-inline" for="maleAdd">
                                                                    <input type="radio" id="maleAdd" name="sexAdd" value="1">
                                                                    男
                                                                </label>
                                                                <label class="radio-inline" for="femaleAdd">
                                                                    <input type="radio" id="femaleAdd" name="sexAdd" value="0">
                                                                    女
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label" for="photoadd">头像</label>
                                                            <div class="col-md-7">
                                                                <input  type="file" id="photoadd" name="photoadd" >
                                                            </div>
                                                        </div>

                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                                    <button type="button" class="btn btn-primary" onclick="addUser()">点击保存</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal fade" id="myModalup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                    <h4 class="modal-title" id="myModalLabelup">修改用户</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <form class="form-horizontal" action="lyear_forms_elements.html" method="post" onsubmit="return false;">
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label" for="usernameup">用户名</label>
                                                            <div class="col-md-7">
                                                                <input class="form-control" type="text" id="usernameup" name="usernameup" onblur="queryUser()" >
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label" for="emailup">邮箱</label>
                                                            <div class="col-md-7">
                                                                <input class="form-control" type="email" id="emailup" name="emailup" >
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label" for="telup">电话</label>
                                                            <div class="col-md-7">
                                                                <input class="form-control" type="text" id="telup" name="telup" >
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label" >性别</label>
                                                            <div class="col-md-7">
                                                                <label class="radio-inline" for="maleup">
                                                                    <input type="radio" id="maleup" name="sexup" value="1">
                                                                    男
                                                                </label>
                                                                <label class="radio-inline" for="femaleup">
                                                                    <input type="radio" id="femaleup" name="sexup" value="0">
                                                                    女
                                                                </label>
                                                            </div>
                                                        </div>
                                                       <input type="hidden" id="userupid">
                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                                    <button type="button" class="btn btn-primary" onclick="updateUser()">点击保存</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <a class="btn btn-success m-r-5"  onclick="delUserBatch()"><i class="mdi mdi-window-close"></i> 批量删除</a>
                                    <a class="btn btn-warning m-r-5" href="#!"><i class="mdi mdi-plus"></i> 设置角色</a>
                                </div>
                            </div>
                            <div class="card-body" id="userList">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!--End 页面主要内容-->
    </div>
</div>

<script type="text/javascript" src="js/jquery.min.js" ></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="js/main.min.js"></script>
<script type="text/javascript" src="js/template-web.js"></script>
<script type="text/javascript" src="js/jconfirm/jquery-confirm.min.js" ></script>
<script  id="tbluserList" type="text/html">
    <div class="table-responsive">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th> <label class="lyear-checkbox checkbox-primary">
                    <input type="checkbox" id="check-all"><span></span>
                </label>
                </th>
                <th>用户编号</th>
                <th>用户名</th>
                <th>邮件</th>
                <th>性别</th>
                <th>电话</th>
                <th>创建时间</th>
                <th>头像</th>
                <th>所属角色</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            {{each obj.list}}
            <tr>
                <td>
                    <label class="lyear-checkbox checkbox-primary">
                        <input type="checkbox" name="ids" value="{{$value.id}}"><span></span>
                    </label>
                </td>
                <td>{{$value.id}}</td>
                <td>{{$value.username}}</td>
                <td>{{$value.email}}</td>
                <td>{{$value.sex==1? '男':'女'}}</td>
                <td>{{$value.tel}}</td>
                <td>{{$value.createTime}}</td>
                <td><img src="upload/{{$value.headImg}}"  class="img-circle" style="width: 20px;height: 20px"></td>

                <td>
                    {{if $value.roles.length>0}}
                     {{each $value.roles}}
                        <span class="label label-warning">{{$value.name}}</span>
                     {{/each}}
                    {{else}}
                    <span class="label label-warning">未分配角色</span>
                    {{/if}}
                </td>
                <td> <div class="btn-group">
                    <a class="btn btn-xs btn-default" onclick="showModalup({{$value}})" title="编辑" data-toggle="tooltip"><i class="mdi mdi-pencil"></i></a>
                    <a class="btn btn-xs btn-default" onclick="delUser({{$value.id}})" title="删除" data-toggle="tooltip"><i class="mdi mdi-window-close"></i></a>
                </div></td>
            </tr>

            {{/each}}
            </tbody>
        </table>
        <nav>
            <ul class="pagination">
                {{if obj.pageNum==1 }}
                <li class="disabled">
                    <a href="#!">
                        <span><i class="mdi mdi-chevron-left"></i></span>
                    </a>
                </li>
                {{else}}
                <li >
                    <a onclick="findUser({{obj.pageNum-1}})">
                        <span><i class="mdi mdi-chevron-left"></i></span>
                    </a>
                </li>
                {{/if}}
                {{each obj.navigatepageNums}}
                {{if obj.pageNum== $value}}
                <li class="active"><a onclick="findUser({{$value}})">{{$value}}</a></li>
                {{else}}
                <li ><a onclick="findUser({{$value}})">{{$value}}</a></li>
                {{/if}}
                {{/each}}

                {{if obj.pageNum==obj.pages }}
                <li class="disabled">
                    <a href="#!">
                        <span><i class="mdi mdi-chevron-right"></i></span>
                    </a>
                </li>
                {{else}}
                <li >
                    <a onclick="findUser({{obj.pageNum+1}})">
                        <span><i class="mdi mdi-chevron-right"></i></span>
                    </a>
                </li>
                {{/if}}
            </ul>
        </nav>
    </div>
</script>
 <script>
     var oldnameup;
     var flagup=true;
     /**
      *  查询用户名是否可用，用户名不允许重复
      */
     function  queryUser(){
         if(oldnameup!= $("#usernameup").val() && $("#usernameup").val()!='' ){
             $.ajax({
                 url: "user/queryUser?username=" + $("#usernameup").val(),
                 type: "get",
                 dataType: "json",
                 success: function (resp) {
                     if (resp.code == '1001') {
                         $.alert("用户名不可用");
                         flagup=false;
                     }else{
                         flagup=true;
                     }
                 }
             })
         }
     }
     /**
      * 修改用户信息，信息回显
      */
     function  showModalup(user){
         $("#myModalup").modal("show")
         $("#usernameup").val(user.username)
         $("#emailup").val(user.email)
         $("#telup").val(user.tel)
         if(user.sex=='1'){  //男
             $("#maleup").prop("checked",true)
         }else{
             $("#femaleup").prop("checked",true)
         }
         $("#userupid").val(user.id)
         oldnameup=user.username
     }
     /**
      *
      * 修改用户
      */
     function  updateUser(){
         //1查看标志位是否可用,可用去修改
         if(flagup==false  || $("#usernameup").val()==''){
             $.alert("用户名不可用，不能进行修改")
             return;
         }
         var param={username: $("#usernameup").val(),
                    email: $("#emailup").val(),
                    sex:$("input:radio[name='sexup']:checked").val(),
                   tel: $("#telup").val(),
                   id: $("#userupid").val()
                   }
         $.ajax({
             url:"user/updateUser",
             type:"post",
             data:JSON.stringify(param),
             contentType: "application/json;charset=utf-8",
             dataType:"json",
             success:function (resp){
                 //2修改完，模态框隐藏，刷新表格数据，提示修改成功
                 if(resp.code=="1000"){
                     $("#myModalup").modal("hide")
                     $.alert("修改用户信息成功")
                     findUser(1)
                 }else{
                     $.alert("修改用户信息失败")
                 }
             }
         })
     }


     /**
      * 新增用户
      */
     function addUser() {
         var formData = new FormData();
         var fileData = $("#photoadd").prop('files')[0];    //attr()
         formData.append('photo', fileData);
         formData.append('username', $("#usernameadd").val());
         formData.append('email', $("#emailadd").val());
         formData.append('tel', $("#teladd").val());
         formData.append('sex', $("input:radio[name='sexAdd']:checked").val());
         $.ajax({
             url: "user/addUser",
             type: "post",
             data: formData,
             contentType: false,
             processData: false,
             dataType:"json",
             success: function (resp) {
                 console.log(resp)
                 if(resp.code=='1000'){
                     $.alert('新增用户成功!')
                     findUser(1)
                     $("#myModal").modal("hide")

                 }
             }
         })
     }

      function findUser(pageNum){

          $.ajax({
              url:"user/findAllUsers",
              data:{pageNum:pageNum,username:$("#username").val(),email:$("#email").val()},
              type:"get",
              dataType:"json",   //预期后端给前端返回的是json串  {key:value}  "error"
              success:function (resp) {
                  if(resp.code=='1001'){
                      location.href="error.jsp"
                      return
                  }
                  console.log(resp)
                  var temphtml=template("tbluserList",{obj:resp.data});
                  $("#userList").html(temphtml)
              }
          })
      }

      /**
       * 批量删除
       */
      function  delUserBatch(){
          //1 主要的点在于如何获取选择的用户的id?
          var ids = new Array()
         $("input[name='ids']:checked").each(function (){
             ids.push($(this).val())
         })
         if(ids.length<1){
             $.alert('请至少选择一个用户!')
             return
         }
          $.alert({
              title: '删除用户',
              content: '确定要删除用户吗?',
              buttons: {
                  confirm: {
                      text: '确认',
                      btnClass: 'btn-primary',
                      action: function(){
                          //  $.alert('你点击了确认!');
                          //去删除
                          $.ajax({
                              url:"user/delUserBatch/",
                              data:{ids:ids},
                              type: "post",
                              dataType: "json",
                              success:function (resp) {
                                  if(resp.code=='1000'){
                                      $.alert('删除用户成功!')
                                      findUser(1)
                                  } else {
                                      $.alert('删除用户失败!')
                                  }
                              }
                          })
                      }
                  },
                  cancel: {
                      text: '取消',
                      action: function () {
                      }
                  }
              }
          });

      }

      /**
       * 删除用户
       * @param id
       */
      function  delUser(id){
          $.alert({
              title: '删除用户',
              content: '确定要删除用户吗?',
              buttons: {
                  confirm: {
                      text: '确认',
                      btnClass: 'btn-primary',
                      action: function(){
                        //  $.alert('你点击了确认!');
                          //去删除
                          $.ajax({
                              url:"user/delUser/"+id,
                              type: "get",
                              dataType: "json",
                              success:function (resp) {
                                  if(resp.code=='1000'){
                                      $.alert('删除用户成功!')
                                      findUser(1)
                                  } else {
                                      $.alert('删除用户失败!')
                                  }
                              }
                          })
                      }
                  },
                  cancel: {
                      text: '取消',
                      action: function () {
                      }
                  }
              }
          });
      }
      $(function (){
          findUser(1)
      })
 </script>

</body>
</html>
