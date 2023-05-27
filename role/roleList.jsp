<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
<base href="${pageContext.request.contextPath}/" />
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>首页 - 光年(Light Year Admin)后台管理系统模板</title>
<link rel="icon" href="../favicon.ico" type="image/ico">
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
    <jsp:include page="/common/left.jsp" />
    <jsp:include page="/common/head.jsp" />
    <!--页面主要内容-->
    <main class="lyear-layout-content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-header">
                <div class="toolbar-btn-action pull-left">
                  <a class="btn btn-primary m-r-5 btn-sm"  onclick="popRoleAddModal()"><i class="mdi mdi-plus"></i> 新增</a>
                  <%--  新增角色模态框--%>
                  <div class="modal fade" id="myModalAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                          <h4 class="modal-title" id="myModalLabel">新增角色</h4>
                        </div>
                        <div class="modal-body">
                         <form action="" method="post" onsubmit="return false;">
                            <div class="form-group">
                              <label for="rolenameadd">角色名称</label>
                              <input class="form-control" type="text" id="rolenameadd" name="rolenameadd" >
                            </div>
                            <div class="form-group"  id="modalroleadd" >
                            </div>

                          </form>

                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                          <button type="button" class="btn btn-primary" onclick="addRole()">新增</button>
                        </div>
                      </div>
                    </div>
                  </div>

                <%--  修改角色模态框--%>
                  <div class="modal fade" id="myModalUp" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                     <input type="hidden"  id="idUp" />
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                          <h4 class="modal-title" id="myModalLabelUp">修改角色</h4>
                        </div>
                        <div class="modal-body">
                          <form action="" method="post" onsubmit="return false;">
                            <div class="form-group">
                              <label for="rolenameup">角色名称</label>
                              <input class="form-control" type="text" id="rolenameup" name="rolenameup" >
                            </div>
                            <div class="form-group"  id="modalroleup" >
                            </div>

                          </form>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                          <button type="button" class="btn btn-primary" onclick="updateRole()">修改</button>
                        </div>
                      </div>
                    </div>
                  </div>

                </div>

              </div>
              <div class="card-body">
                <div id="roleContent" class="table-responsive table-striped table-hover">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
    <!--End 页面主要内容-->
  </div>
</div>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="js/main.min.js"></script>
<%--  1 发一个异步请求，请求用户信息及角色信息--%>
<%--  2 页面渲染--%>
<script type="text/javascript" src="js/template-web.js"></script>
<!--对话框-->
<script type="text/javascript" src="js/jconfirm/jquery-confirm.min.js"></script>
 <script id="tbll" type="text/html">
  <table class="table table-bordered">
    <thead>
    <tr>
      <th>
        <label class="lyear-checkbox checkbox-primary">
          <input type="checkbox" id="check-all"><span></span>
        </label>
      </th>
      <th style="width: 100px">编号</th>
      <th style="width: 200px">角色名称</th>
      <th style="width: 800px"> 所属权限</th>
      <th style="width: 100px">操作</th>
    </tr>
    </thead>
    <tbody>
    {{each data}}
    <tr>
      <td>
        <label class="lyear-checkbox checkbox-primary">
          <input type="checkbox" name="ids[]" value="{{$value.id}}"><span></span>
        </label>
      </td>
      <th scope="row">{{$value.id}}</th>
      <td>{{$value.name}}</td>
      <td>
          {{if $value.permissions.length>0}}
            {{each $value.permissions}}
             <span class="label label-warning">{{$value.title}}</span>
            {{/each}}
           {{else}}
             <span class="label label-warning">未分配角色</span>
        {{/if}}
       </td>
      <td>
        <div class="btn-group">
          <a class="btn btn-xs btn-default" onclick="queryRole('{{$value.id}}','{{$value.name}}')" title="编辑" data-toggle="tooltip"><i class="mdi mdi-pencil"></i></a>
          <a class="btn btn-xs btn-default" onclick="delRole('{{$value.id}}')" title="删除" data-toggle="tooltip">
            <i class="mdi mdi-window-close"></i>
          </a>
        </div>
      </td>

    </tr>
    {{/each}}
    </tbody>
  </table>
</script>

<script id="tbroleup" type="text/html">
  <div class="example-box">
    <label >选择权限：</label>
    <div>
    {{each data}}
    <label class="lyear-checkbox checkbox-inline checkbox-primary">
      <input type="checkbox"   name="updateRoleAndPermission" id="permissionup{{$value.id}}" value="{{$value.id}}" ><span>{{$value.title}}</span>
    </label>
    {{/each}}
    </div>
  </div>
</script>

<script id="tbroleadd" type="text/html">
  <div class="example-box">
    <label >选择权限：</label>
    <div>
      {{each data}}
      <label class="lyear-checkbox checkbox-inline checkbox-primary">
        <input type="checkbox"  name="addRoleAndPermission" value="{{$value.id}}" ><span>{{$value.title}}</span>
      </label>
      {{/each}}
    </div>
  </div>
</script>

<script>
  /**
   * 弹出修改角色的模态框
   */
  function  queryRole(id,name){
    $("#myModalUp").modal("show")
    $("#idUp").val(id)
    $("#rolenameup").val(name)
    //查询所有权限和关联权限
    $.ajax({
      url:'permission/queryPermissions',
      data:{roleid:id},
      type:'post',
      success:function(resp){
        console.log("------------------------------");
        console.log(resp);   //
        //展示所有权限
        var a= template('tbroleup',{data:resp.data.p1});   //art-templdate
        $("#modalroleup").html(a);
        //把角色关联的权限让其选中
        var b= resp.data.p2; //对象数组
        for(var i=0;i<b.length;i++){
          $("#permissionup"+b[i].id).prop("checked",true)
        }
      }
    })
  }

  /**
   * 弹出新增角色的模态框
   */
  function popRoleAddModal(){
    $("#myModalAdd").modal("show")
    //查询所有权限
    $.ajax({
      url:'permission/queryAllPermissions',
      type:'post',
      success:function(resp){
        console.log(resp);   //
        var a= template('tbroleadd',{data:resp.data});   //art-templdate
        $("#modalroleadd").html(a);
      }
    })
  }

  /**
   * 新增角色
   */
  function  addRole(){
      var pids=new Array();
      //获取选择的权限id
      $("input[name='addRoleAndPermission']:checked").each(function (){
        pids.push($(this).val())
      })
    $.ajax({
      url:'role/addRole',
      type:'post',
      data:{name:$("#rolenameadd").val(),pids:pids},
      success:function(resp){
        console.log(resp);   //
        if(resp.code=="1000"){
          $("#myModalAdd").modal("hide")
          $.alert("新增角色成功")
          findAllRoles()
          $("#rolenameadd").val("")
        }else {
          $.alert("新增角色失败")
        }

      }
    })
}
/**
 * 修改角色
 */
function  updateRole(){
  var pids=new Array();
  //获取选择的权限id
  $("input[name='updateRoleAndPermission']:checked").each(function (){
    pids.push($(this).val())
  })
  $.ajax({
    url:'role/updateRole',
    type:'post',
    data:{id: $("#idUp").val(),name:$("#rolenameup").val(),pids:pids},
    success:function(resp){
      console.log(resp);   //
      if(resp.code=="1000"){
        $("#myModalUp").modal("hide")
        $.alert("修改角色成功")
        findAllRoles()
        $("#rolenameup").val("")
      }else {
        $.alert("修改角色失败")
      }
    }
  })
}
  /**
   * 删除角色
   * @param id
   */
  function  delRole(id){
    $.alert({
      title: '删除角色',
      content: '确定要删除角色吗?',
      buttons: {
        confirm: {
          text: '确认',
          btnClass: 'btn-primary',
          action: function(){
            //去删除
            $.ajax({
              url:"role/deleteRole/"+id,
              type: "get",
              dataType: "json",
              success:function (resp) {
                if(resp.code=='1000'){
                  $.alert('删除角色成功!')
                  findAllRoles()
                } else {
                  $.alert('删除角色失败!')
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
   *
   * 另一种方式
   */
  // function  addRole(){
  //   var pids=new Array();
  //   //获取选择的权限id
  //   $("input[name='addRoleAndPermission']:checked").each(function (){
  //     pids.push($(this).val())
  //   })
  //   var param={
  //     name:$("#rolenameadd").val(),
  //     ids:pids
  //   }
  //   $.ajax({
  //     url:'role/addRole1',
  //     type:'post',
  //     data:JSON.stringify(param),
  //     contentType:"application/json;charset=utf-8",
  //     success:function(resp){
  //       console.log(resp);   //
  //       if(resp.code=="1000"){
  //         $("#myModalAdd").modal("hide")
  //         $.alert("新增角色成功")
  //         findAllRoles()
  //         $("#rolenameadd").val("")
  //       }else {
  //         $.alert("新增角色失败")
  //       }
  //     }
  //   })
  // }

  /**
   * 查询所有角色
   */
  function  findAllRoles(){
    $.ajax({
      url:'role/listAllRoles',
      type:'post',
      success:function(resp){
        console.log(resp);   //
        var a= template('tbll',{data:resp.data});   //art-templdate
        $("#roleContent").html(a);
      }
    })
  }
  $(function (){
    findAllRoles()
  })
</script>
</body>
</html>
<%--$("input[name='ids']:checked").each(--%>
<%--  function(){--%>
<%--  idsArray.push($(this).val())  --%>
<%--}--%>
<%--)--%>
<%--$("#modelId").model("show")--%>
