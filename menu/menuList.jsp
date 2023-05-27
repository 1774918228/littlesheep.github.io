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

<!-- 新增一级菜单表单start-->
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
<!-- 新增一级菜单结束-->

<!-- 新增子级菜单form start-->
<div class="modal fade" id="addSubMenuModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" >新增子菜单</h4>
      </div>
      <form id="addSubMenuForm" method="post" enctype="multipart/form-data">
        <div class="modal-body">
          <!-- 父菜单-->
          <div class="form-group">
            <!-- 父菜单id-->
            <input type="hidden" class="form-control" name="pid" id="pid">
            <!-- 父菜单名称-->
            <label for="pname" class="control-label">父菜单名称：</label>
            <input type="text" class="form-control" name="pname" id="pname" disabled>
          </div>
          <!-- 子菜单-->
          <div class="form-group">
            <label for="p_name" class="control-label">子菜单名称：</label>
            <input type="text" class="form-control" name="name" id="subName">
          </div>
          <!-- 子菜单路径-->
          <div class="form-group">
            <label  class="control-label">子菜单路径：</label>
            <input type="text" class="form-control" name="url" id="suburl">
          </div>
          <div class="form-group">
            <label  class="control-label">权限值：</label>
            <input type="text" class="form-control" name="permisisonName" id="permisisonName">
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
          <button type="button" class="btn btn-primary" onclick="addSubMenu()">保存</button>
        </div>
      </form>
    </div>
  </div>
</div>
<!-- 新增子级菜单form end-->

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

<!-- 修改子级菜单form start-->
<div class="modal fade" id="updateMenuModalS" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" >修改子菜单</h4>
      </div>
      <form id="editMenuFormS" method="post" enctype="multipart/form-data">
        <div class="modal-body">
          <!-- 菜单-->
          <div class="form-group">
            <!-- 菜单id-->
            <input type="hidden" class="form-control" name="id" id="idUpdateS">
            <!-- 菜单名称-->
            <label  class="control-label">菜单名称：</label>
            <input type="text" class="form-control" name="name" id="nameUpdateS">
          </div>
          <!-- 菜单路径-->
          <div class="form-group">
            <label  class="control-label">菜单路径：</label>
            <input type="text" class="form-control" name="url" id="urlUpdateS">
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
<!-- 修改子级菜单form end-->

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
                <form class="form-inline" action="#" method="post" onsubmit="return false;">
                  <div class="form-group">
                    <label for="username">名称</label>
                    &nbsp;&nbsp;
                    <input class="form-control input-sm" type="text" id="username" name="username" placeholder="请输入姓名">
                  </div>
                  &nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                    <button id="btn_search" class="btn btn-primary btn-sm" type="button"><i class="mdi mdi-account-search"></i>搜索</button>
                    &nbsp;&nbsp;
                    <button id="btn_add" class="btn btn-primary btn-sm" type="button" data-toggle="modal" onclick="showAddTopMenuModal()"><i class="mdi mdi-plus"></i>新增一级菜单</button>
                  </div>
                </form>
              </div>
              <div class="card-body">
                <div id="user_content" class="table-responsive">
                    <table id="menu_table"></table>
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
  /**
   *  弹出修改父级菜单的模态框
   */
  function   showUpdateP(row){
      $("#updateMenuModalP").modal("show")
      //赋值
      $("#idUpdateP").val(row.id)
       $("#nameUpdateP").val(row.name)
       $("#iconUpdateP").val(row.icon)
       $("#iconUpdateP").iconpicker()
  }

  /**
   *  弹出修改子级菜单的模态框
   */
  function   showUpdateS(row){
    $("#updateMenuModalS").modal("show")
    $("#idUpdateS").val(row.id)
    $("#nameUpdateS").val(row.name)
    $("#urlUpdateS").val(row.url)
  }
  /**
   * 修改父级菜单
   */
  function  updateP(){
     var param={id:$("#idUpdateP").val(),name:$("#nameUpdateP").val(), icon: $("#iconUpdateP").val()}
     $.ajax({
       url:"menu/updateMenu",
       data:JSON.stringify(param),
       type:"post",
       contentType: "application/json;charset=utf-8",  //  contentType:"application/json;charset=utf-8",
       success:function (resp){
          if(resp.code=='1000'){
            $("#updateMenuModalP").modal("hide")
            $.alert("修改父级菜单成功");
            $('#menu_table').bootstrapTable("destroy")
            findAll()
          }else {
            $.alert("修改父级菜单失败");
          }
       }
     })
  }

  /**
   * 修改子级菜单
   */
  function  updateS(){
    var param={id:$("#idUpdateS").val(),name:$("#nameUpdateS").val(), url: $("#urlUpdateS").val()}
    $.ajax({
      url:"menu/updateMenu",
      data:JSON.stringify(param),
      type:"post",
      contentType: "application/json;charset=utf-8",
      success:function (resp){
        if(resp.code=='1000'){
          $("#updateMenuModalS").modal("hide")
          $.alert("修改子级菜单成功");
          $('#menu_table').bootstrapTable("destroy")
          findAll()
        }else {
          $.alert("修改子级菜单失败");
        }
      }
    })
  }
  /**
   *
   * 新增二级菜单
   */
  function  addSubMenu(){
    var param={
               name:$("#subName").val(),
               url:$("#suburl").val(),
               pid:$("#pid").val(),
               permission:{
                   name:$("#permisisonName").val()
               }
            }
    $.ajax({
      url:"menu/addSubMenu",
      type: "post",
      data:JSON.stringify(param),
      contentType:"application/json;charset=utf-8",
      success:function (resp){
        $("#addSubMenuModal").modal('hide')
        $.alert("新增二级菜单成功")
        //将原来的数据清空
        $('#menu_table').bootstrapTable("destroy")
        findAll()
      }
    })
  }
  /**
   * 弹出新增二级菜单模态框
   */
  function  showSubTopMenuModal(row){
   // console.log(row)
      //新增二级菜单模态框弹出
    $("#addSubMenuModal").modal('show')
      //给一级菜单赋名字 pid
     $("#pname").val(row.name)
    $("#pid").val(row.id)
  }

  //弹出新增一级菜单的模态框
  function  showAddTopMenuModal(){
    $("#addTopMenuModal").modal('show')
    $("#p_icon").iconpicker();
  }
  //新增一级菜单
  function saveTopMenu (){
    $.ajax({
      url:"menu/addMenu",
      type: "post",
      data:{name:$("#p_name").val(),icon:$("#p_icon").val()},
      success:function (resp){
        $("#addTopMenuModal").modal('hide')
        $.alert("新增一级菜单成功")
        //将原来的数据清空
        $('#menu_table').bootstrapTable("destroy")
        findAll()
      }
    })
  }



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
        '<button type="button" class="menuEditS btn btn-xs btn-pink" style="margin-right:15px;"><i class="mdi mdi-pencil" ></i>&nbsp;修改</button>',
        '<button type="button" class="menuDelete btn btn-xs btn-danger" style="margin-right:15px;"><i class="mdi mdi-close" ></i>&nbsp;删除</button>'
      ].join('');
    } else {
      return [
        '<button type="button" class="subMenuAdd btn btn-xs btn-primary" style="margin-right:15px;"><i class="mdi mdi-plus" ></i>&nbsp;新增</button>',
        '<button type="button" class="menuEditP btn btn-xs btn-pink" style="margin-right:15px;"><i class="mdi mdi-pencil" ></i>&nbsp;修改</button>',
        '<button type="button" class="menuDelete btn btn-xs btn-danger" style="margin-right:15px;"><i class="mdi mdi-close" ></i>&nbsp;删除</button>'
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
    var permission = value;
    if (permission) {
      return  permission.name;
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
    'click .subMenuAdd':function(e,value,row,index){
      showSubTopMenuModal(row);
    },
    'click .menuEditP':function(e,value,row,index){
      showUpdateP(row);
    },
    'click .menuEditS':function(e,value,row,index){
      showUpdateS(row);
    },
    'click .menuDelete':function(e,value,row,index){
      del(row);
    },
  }

  //添加
  function add(row) {

  }

  //修改
  function update(row) {

  }

  //删除 菜单
  function del(row) {
    $.alert({
      title: '删除菜单',
      content: '确定要删除菜单吗?',
      buttons: {
        confirm: {
          text: '确认',
          btnClass: 'btn-primary',
          action: function(){
            //  $.alert('你点击了确认!');
            //去删除
            $.ajax({
              url:"menu/deleteMenu/"+row.id,
              type: "get",
              success:function (resp) {
                if(resp.code=='1000'){
                  $.alert('删除成功!')
                  //将原来的数据清空
                  $('#menu_table').bootstrapTable("destroy")
                  findAll()
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
  function findAll(){

    $.ajax({
      url: "menu/findAll",
      type: "POST",
      success: function (resp) {
        console.log(resp)
        var $table = $('#menu_table');
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
            { field: 'name',  title: '名称' },
            { field: 'url',  title: '路径' },
            { field: 'icon',  title: '图标', formatter:iconFormatter},
            // {field: 'id', title: '编号', sortable: true, align: 'center'},
            { field: 'pid', title: '所属上级编号'},
            { field: 'permission',  title: '权限值', sortable: true,  align: 'center', formatter: 'permissionFormatter'  },
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

  $(function () {findAll()});
</script>
</body>
</html>
