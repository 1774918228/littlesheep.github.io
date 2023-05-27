webpackJsonp([21],{OnNw:function(e,t){},mog1:function(e,t,a){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var l=a("Dd8w"),r=a.n(l),o={data:function(){return{pagination:{current:1,total:null,size:6},dialogVisible:!1,form:{},rules:{studentName:[{required:!0,message:"姓名不能为空",trigger:"blur"}],pwd:[{required:!0,message:"密码不能为空",trigger:"blur"},{min:6,message:"密码不能少于6位字符",trigger:"blur"}],grade:[{required:!0,message:"请选择您的年级",trigger:"change"}],major:[{required:!0,message:"请选择您的专业",trigger:"change"}],clazz:[{required:!0,message:"请选择您的班级",trigger:"change"}],tel:[{required:!0,message:"联系方式不能为空",trigger:"blur"}],cardId:[{required:!0,message:"身份证号不能为空",trigger:"blur"},{max:18,message:"请输入正确的身份证号",trigger:"blur"}],sex:[{required:!0,message:"请选择您的性别",trigger:"change"}]}}},created:function(){this.getStudentInfo()},methods:{getStudentInfo:function(){var e=this;this.$axios("/api/students/"+this.pagination.current+"/"+this.pagination.size).then(function(t){e.pagination=t.data.data}).catch(function(e){})},handleSizeChange:function(e){this.pagination.size=e,this.getStudentInfo()},handleCurrentChange:function(e){this.pagination.current=e,this.getStudentInfo()},checkGrade:function(e){var t=this;this.dialogVisible=!0,this.$axios("/api/student/"+e).then(function(e){t.form=e.data.data})},deleteById:function(e){var t=this;this.$confirm("确定删除当前学生吗？删除后无法恢复","Warning",{confirmButtonText:"确定删除",cancelButtonText:"算了,留着吧",type:"danger"}).then(function(){t.$axios({url:"/api/student/"+e,method:"delete"}).then(function(e){t.getStudentInfo(),t.$message({message:"删除成功",type:"success"})})}).catch(function(){})},submit:function(e){var t=this;this.$refs[e].validate(function(e){if(!e)return!1;t.dialogVisible=!1,t.$axios({url:"/api/student",method:"put",data:r()({},t.form)}).then(function(e){200==e.data.code&&t.$message({message:"更新成功",type:"success"}),t.getStudentInfo()})})}}},n={render:function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"all"},[a("el-table",{attrs:{data:e.pagination.records,border:""}},[a("el-table-column",{attrs:{fixed:"left",prop:"studentName",label:"姓名",width:"125"}}),e._v(" "),a("el-table-column",{attrs:{prop:"major",label:"专业",width:"180"}}),e._v(" "),a("el-table-column",{attrs:{prop:"grade",label:"年级",width:"120"}}),e._v(" "),a("el-table-column",{attrs:{prop:"clazz",label:"班级",width:"120"}}),e._v(" "),a("el-table-column",{attrs:{prop:"sex",label:"性别",width:"120"}}),e._v(" "),a("el-table-column",{attrs:{prop:"cardId",label:"身份证号",width:"180"}}),e._v(" "),a("el-table-column",{attrs:{prop:"tel",label:"联系方式",width:"150"}}),e._v(" "),a("el-table-column",{attrs:{fixed:"right",label:"操作",width:"150"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("el-button",{attrs:{type:"primary",size:"small"},on:{click:function(a){e.checkGrade(t.row.studentId)}}},[e._v("编辑")]),e._v(" "),a("el-button",{attrs:{type:"danger",size:"small"},on:{click:function(a){e.deleteById(t.row.studentId)}}},[e._v("删除")])]}}])})],1),e._v(" "),a("el-pagination",{staticClass:"page",attrs:{"current-page":e.pagination.current,"page-sizes":[6,10],"page-size":e.pagination.size,layout:"total, sizes, prev, pager, next, jumper",total:e.pagination.total},on:{"size-change":e.handleSizeChange,"current-change":e.handleCurrentChange}}),e._v(" "),a("el-dialog",{attrs:{title:"编辑学生信息",visible:e.dialogVisible,width:"30%"},on:{"update:visible":function(t){e.dialogVisible=t}}},[a("section",{staticClass:"update"},[a("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"80px"}},[a("el-form-item",{attrs:{label:"姓名",prop:"studentName"}},[a("el-input",{model:{value:e.form.studentName,callback:function(t){e.$set(e.form,"studentName",t)},expression:"form.studentName"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"专业",prop:"major"}},[a("el-select",{attrs:{placeholder:"请选择专业"},model:{value:e.form.major,callback:function(t){e.$set(e.form,"major",t)},expression:"form.major"}},[a("el-option",{attrs:{label:"计算机科学与技术",value:"计算机科学与技术"}}),e._v(" "),a("el-option",{attrs:{label:"信息工程",value:"信息工程"}}),e._v(" "),a("el-option",{attrs:{label:"网络工程",value:"网络工程"}}),e._v(" "),a("el-option",{attrs:{label:"软件工程",value:"软件工程"}})],1)],1),e._v(" "),a("el-form-item",{attrs:{label:"年级",prop:"grade"}},[a("el-select",{attrs:{placeholder:"请选择年级"},model:{value:e.form.grade,callback:function(t){e.$set(e.form,"grade",t)},expression:"form.grade"}},[a("el-option",{attrs:{label:"2019",value:"2019"}}),e._v(" "),a("el-option",{attrs:{label:"2020",value:"2020"}}),e._v(" "),a("el-option",{attrs:{label:"2021",value:"2021"}}),e._v(" "),a("el-option",{attrs:{label:"2022",value:"2022"}})],1)],1),e._v(" "),a("el-form-item",{attrs:{label:"班级",prop:"clazz"}},[a("el-select",{attrs:{placeholder:"请选择班级"},model:{value:e.form.clazz,callback:function(t){e.$set(e.form,"clazz",t)},expression:"form.clazz"}},[a("el-option",{attrs:{label:"1班",value:"1"}}),e._v(" "),a("el-option",{attrs:{label:"2班",value:"2"}}),e._v(" "),a("el-option",{attrs:{label:"3班",value:"3"}}),e._v(" "),a("el-option",{attrs:{label:"4班",value:"4"}}),e._v(" "),a("el-option",{attrs:{label:"5班",value:"5"}}),e._v(" "),a("el-option",{attrs:{label:"6班",value:"6"}}),e._v(" "),a("el-option",{attrs:{label:"7班",value:"7"}}),e._v(" "),a("el-option",{attrs:{label:"8班",value:"8"}}),e._v(" "),a("el-option",{attrs:{label:"9班",value:"9"}}),e._v(" "),a("el-option",{attrs:{label:"10班",value:"10"}})],1)],1),e._v(" "),a("el-form-item",{attrs:{label:"性别",prop:"sex"}},[a("el-select",{attrs:{placeholder:"请选择性别"},model:{value:e.form.sex,callback:function(t){e.$set(e.form,"sex",t)},expression:"form.sex"}},[a("el-option",{attrs:{label:"男",value:"男"}}),e._v(" "),a("el-option",{attrs:{label:"女",value:"女"}})],1)],1),e._v(" "),a("el-form-item",{attrs:{label:"身份证号",prop:"cardId"}},[a("el-input",{model:{value:e.form.cardId,callback:function(t){e.$set(e.form,"cardId",t)},expression:"form.cardId"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"联系方式",prop:"tel"}},[a("el-input",{model:{value:e.form.tel,callback:function(t){e.$set(e.form,"tel",t)},expression:"form.tel"}})],1)],1)],1),e._v(" "),a("span",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[a("el-button",{on:{click:function(t){e.dialogVisible=!1}}},[e._v("取 消")]),e._v(" "),a("el-button",{attrs:{type:"primary"},on:{click:function(t){e.submit("form")}}},[e._v("确 定")])],1)])],1)},staticRenderFns:[]};var i=a("VU/8")(o,n,!1,function(e){a("OnNw")},"data-v-641e9258",null);t.default=i.exports}});
//# sourceMappingURL=21.c9c1ed31e6d227af2d6d.js.map