<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
<base href="${pageContext.request.contextPath}/" />
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>首页</title>
<link rel="icon" href="favicon.ico" type="image/ico">
<meta name="keywords" content="LightYear,光年,后台模板,后台管理系统,光年HTML模板">
<meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
<meta name="author" content="yinqi">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/materialdesignicons.min.css">
<link rel="stylesheet" href="css/style.min.css">
<!-- jquery-treegrid -->
<link rel="stylesheet" href="js/plugins/bootstrap-table-treegrid/jquery.treegrid.min.css">
<!-- bootstrap table -->
<link rel="stylesheet" href="js/bootstrap-table/bootstrap-table.min.css">
<!-- icon picker -->
<link rel="stylesheet" href="js/plugins/icon/bootstrap-iconpicker.css">
<link rel="stylesheet" href="js/jconfirm/jquery-confirm.min.css">
</head>

<body data-theme="dark">

<!-- 新增一级权限表单start-->
<div class="modal fade" id="addTopMenuModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">新增一级菜单</h4>
      </div>
      <form id="addTopMenuForm" method="post" enctype="multipart/form-data">
        <div class="modal-body">
          <!-- 菜单名称-->
          <div class="form-group">
            <label for="p_name" class="control-label">菜单名称：</label>
            <input type="text" class="form-control" name="name" id="p_name">
          </div>
          <!-- 菜单描述-->
          <div class="form-group">
            <label  class="control-label" >菜单图标：</label>
            <input type="text" class="form-control" name="icon"  id="p_icon">
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
          <button type="button" onclick='saveTopMenu()' class="btn btn-primary">保存</button>
        </div>
      </form>
    </div>
  </div>
</div>
<!-- 新增一级权限结束-->

<!-- 新增子级权限form start-->
<div class="modal fade" id="addSubPerMissionModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" >新增页面按钮权限</h4>
      </div>
      <form id="addSubPermissionForm" method="post" enctype="multipart/form-data">
        <div class="modal-body">
          <!-- 父权限-->
          <div class="form-group">
            <!-- 父权限id-->
            <input type="hidden" class="form-control" name="pid" id="pid">
            <!-- 父权限名称-->
            <label for="pnameadd" class="control-label">页面权限名称：</label>
            <input type="text" class="form-control" name="pnameadd" id="pnameadd" disabled>
          </div>
          <!-- 子权限-->
          <div class="form-group">
            <label for="permisisontitleadd" class="control-label">页面按钮权限名称：</label>
            <input type="text" class="form-control" name="permisisontitleadd" id="permisisontitleadd" placeholder="如：用户新增">
          </div>
          <div class="form-group">
            <label  class="control-label">页面按钮权限值：</label>
            <input type="text" class="form-control" name="permisisonnameadd" id="permisisonnameadd">
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
          <button type="button" class="btn btn-primary" onclick="addSubPerm()">保存</button>
        </div>
      </form>
    </div>
  </div>
</div>
<!-- 新增子级权限form end-->

<!-- 修改父级菜单form start-->
<div class="modal fade" id="updateMenuModalP" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" >修改父菜单</h4>
      </div>
      <form id="editMenuFormP" method="post" enctype="multipart/form-data">
        <div class="modal-body">
          <!-- 菜单-->
          <div class="form-group">
            <!-- 菜单id-->
            <input type="hidden" class="form-control" name="id" id="idUpdateP">
            <!-- 菜单名称-->
            <label  class="control-label">菜单名称：</label>
            <input type="text" class="form-control" name="name" id="nameUpdateP">
          </div>
          <!-- 菜单图标-->
          <div class="form-group">
            <label  class="control-label">菜单图标：</label>
            <input type="text" class="form-control" name="icon" id="iconUpdateP">
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
          <button type="button" class="btn btn-primary" onclick="updateP()">保存</button>
        </div>
      </form>
    </div>
  </div>
</div>
<!-- 修改父级菜单form end-->

<!-- 修改子级权限form start-->
<div class="modal fade" id="updatePermModalS" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" >修改页面按钮权限</h4>
      </div>
      <form id="editMenuFormS" method="post" enctype="multipart/form-data">
        <div class="modal-body">
          <!-- 菜单-->
          <div class="form-group">
            <!-- 菜单id-->
            <input type="hidden" class="form-control" name="id" id="idUpdateS">
            <!-- 菜单名称-->
            <label  class="control-label">页面按钮权限名称：</label>
            <input type="text" class="form-control" name="title" id="titleUpdateS">
          </div>
          <!-- 菜单路径-->
          <div class="form-group">
            <label  class="control-label">页面按钮权限值：</label>
            <input type="text" class="form-control" name="name" id="nameUpdateS">
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
          <button type="button" class="btn btn-primary" onclick="updateS()">保存</button>
        </div>
      </form>
    </div>
  </div>
</div>
<!-- 修改子级权限form end-->

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
              <div class="card-toolbar clearfix">
              </div>
              <div class="card-body">
                <div id="user_content" class="table-responsive">
                    <table id="permission_table"></table>
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
<!-- jquery-treegrid -->
<script type="text/javascript" src="js/plugins/bootstrap-table-treegrid/jquery.treegrid.min.js"></script>
<!-- bootstrap table -->
<script type="text/javascript" src="js/bootstrap-table/bootstrap-table.min.js"></script>
<script type="text/javascript" src="js/bootstrap-table/bootstrap-table-zh-CN.js"></script>
<!-- bootstrap table treegrid -->
<script type="text/javascript" src="js/plugins/bootstrap-table-treegrid/bootstrap-table-treegrid.js"></script>
<!-- icon picker -->
<script type="text/javascript" src="js/plugins/icon/bootstrap-iconpicker.js"></script>
<script type="text/javascript" src="js/jconfirm/jquery-confirm.min.js"></script>
<script type="text/javascript">

  //图标的格式化处理
  function iconFormatter(value,row,index){
    if(row.icon){
      return "<i class='"+row.icon+"'></i>"
    }
  }

  // 格式化按钮
  function operateFormatter(value, row, index) {
    if(row.pid) {
      return [
        '<button type="button" class="permEditS btn btn-xs btn-pink" style="margin-right:15px;"><i class="mdi mdi-pencil" ></i>&nbsp;修改</button>',
        '<button type="button" class="permDelete btn btn-xs btn-danger" style="margin-right:15px;"><i class="mdi mdi-close" ></i>&nbsp;删除</button>'
      ].join('');
    } else {
      return [
        '<button type="button" class="subPermAdd btn btn-xs btn-primary"  style="margin-right:15px;"><i class="mdi mdi-plus" ></i>&nbsp;新增</button>'
      ].join('');
    }
  }

  // 格式化类型
  function typeFormatter(value, row, index) {
    if (value === 'menu') {  return '菜单';  }
    if (value === 'button') {  return '按钮'; }
    if (value === 'api') {  return '接口'; }
    return '-';
  }
  //pidFormatter
  function pidFormatter(value, row, index) {
    return value?value:0;
  }
  // 格式化权限值
  function permissionFormatter(value, row, index) {
    var menu = value;
    if (menu) {
      return  menu.name;
    }
  }
  // 格式化所属上级
  function pidFormatter(value, row, index) {
    var pid = value;
    if (pid=='0') {
      return  "没有上级";
    }else{
      return pid;
    }
  }

  /**
   * 选中父项时，同时选中子项
   * @param datas 所有的数据
   * @param row 当前数据
   * @param id id 字段名
   * @param pid 父id字段名
   */
  function selectChilds(datas,row,id,pid,checked) {
    for(var i in datas){
      if(datas[i][pid] == row[id]){
        datas[i].check=checked;
        selectChilds(datas,datas[i],id,pid,checked);
      };
    }
  }

  function selectParentChecked(datas,row,id,pid){
    for(var i in datas){
      if(datas[i][id] == row[pid]){
        datas[i].check=true;
        selectParentChecked(datas,datas[i],id,pid);
      };
    }
  }

  //初始化操作按钮的方法--绑定按钮事件
  window.opearteEvents = {
    'click .subPermAdd':function(e,value,row,index){
      showSubTopPermModal(row);
    },
    'click .menuEditP':function(e,value,row,index){
      showUpdateP(row);
    },
    'click .permEditS':function(e,value,row,index){
      showUpdateS(row);
    },
    'click .permDelete':function(e,value,row,index){
      del(row);
    },
  }

  //添加
  function add(row) {

  }

  //修改
  function update(row) {

  }
  /**
   * 删除子权限
   */
  function  del(row){
    $.alert({
      title: '删除权限',
      content: '确定要删除权限吗?',
      buttons: {
        confirm: {
          text: '确认',
          btnClass: 'btn-primary',
          action: function(){
            //  $.alert('你点击了确认!');
            //去删除
            $.ajax({
              url:"permission/deletePermission/"+row.id,
              type: "get",
              success:function (resp) {
                if(resp.code=='1000'){
                  $.alert('删除成功!')
                  //将原来的数据清空
                  $('#permission_table').bootstrapTable("destroy")
                  init()
                } else {
                  $.alert('删除失败!')
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
   * 弹出修改子权限的模态框
   */
  function showUpdateS(row){
    $("#updatePermModalS").modal("show")
    $("#idUpdateS").val(row.id)
    $("#titleUpdateS").val(row.title)
    $("#nameUpdateS").val(row.name)
  }
  /**
   * 修改子权限
   */
  function updateS (){
    $.ajax({
      url:"permission/updatePermission",
      data:{id: $("#idUpdateS").val(),title:$("#titleUpdateS").val(),name:$("#nameUpdateS").val()},
      type:"post",
      success:function(resp){
        if(resp.code=="1000"){
          $.alert("修改权限成功")
          $("#updatePermModalS").modal("hide")
          $('#permission_table').bootstrapTable("destroy")
          init()
        }else{
          $.alert("修改权限失败")
        }
      }
    })
  }
/**
 *
 * 弹出新增子权限的模态框
 */
  function  showSubTopPermModal(row){
      $("#addSubPerMissionModal").modal("show")
      $("#pid").val(row.id)
      $("#pnameadd").val(row.title)
  }
 /**
  * 新增子权限
  */
 function addSubPerm (){
     $.ajax({
       url:"permission/addPermission",
       data:{pid: $("#pid").val(),title:$("#permisisontitleadd").val(),name:$("#permisisonnameadd").val()},
       type:"post",
       success:function(resp){
         if(resp.code=="1000"){
             $.alert("新增权限成功")
           $("#addSubPerMissionModal").modal("hide")
           $('#permission_table').bootstrapTable("destroy")
           init()
         }else{
           $.alert("新增权限失败")
         }
       }
     })
  }
  /**
   * 加载权限列表数据
   */
  function  init(){
    $.ajax({
      url: "permission/queryAllPermissionAndMenu",
      type: "POST",
      success: function (resp) {
        var $table = $('#permission_table');
        //加载树形表格
        $table.bootstrapTable({
          data: resp.data,
          idField: 'id',
          dataType:'json',
          columns: [
            { field: 'check',  checkbox: true, formatter: function (value, row, index) {
                if (row.check == true) {
                  // console.log(row.serverName);
                  //设置选中
                  return {  checked: true };
                }
              }
            },
            { field: 'title',  title: '权限名称' },
            { field: 'name',  title: '权限值' },
            // { field: 'icon',  title: '图标', formatter:iconFormatter},
            // {field: 'id', title: '编号', sortable: true, align: 'center'},
            { field: 'pid', title: '所属上级编号', sortable: true,  align: 'center', formatter: 'pidFormatter' },
            { field: 'menu',  title: '所属菜单', sortable: true,  align: 'center', formatter: 'permissionFormatter'  },
            { field: 'operate', title: '操作', align: 'center', events: opearteEvents,  formatter: 'operateFormatter' },
          ],
          // bootstrap-table-treegrid.js 插件配置 -- start
          //在哪一列展开树形
          treeShowField: 'name',
          //指定父id列
          parentIdField: 'pid',
          onResetView: function(data) {
            //console.log('load');
            $table.treegrid({
              initialState: 'collapsed',// 所有节点都折叠
              // initialState: 'expanded',// 所有节点都展开，默认展开
              treeColumn: 1,
              expanderExpandedClass: 'mdi mdi-minus',  //图标样式
              expanderCollapsedClass: 'mdi mdi-plus',
              onChange: function() {
                $table.bootstrapTable('resetWidth');
              }
            });
            //只展开树形的第一级节点
            // $table.treegrid('getRootNodes').treegrid('expand');

          },
          onCheck:function(row){
            var datas = $table.bootstrapTable('getData');
            // 勾选子类
            selectChilds(datas,row,"id","pid",true);
            // 勾选父类
            selectParentChecked(datas,row,"id","pid")
            // 刷新数据
            $table.bootstrapTable('load', datas);
          },
          onUncheck:function(row){
            var datas = $table.bootstrapTable('getData');
            selectChilds(datas,row,"id","pid",false);
            $table.bootstrapTable('load', datas);
          },
          // bootstrap-table-treetreegrid.js 插件配置 -- end
        });
      }
    });
  }
  $(function () {
    init();
  });
</script>
</body>
</html>
