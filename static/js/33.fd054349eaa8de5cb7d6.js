webpackJsonp([33],{"2Qb7":function(e,t){},tlhq:function(e,t,a){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var r=a("Dd8w"),l=a.n(r),o={data:function(){return{form:{source:null,description:null,institute:"计算机学院",major:null,grade:null,examDate:null,totalTime:null,totalScore:100,type:null,tips:null,paperId:null},rules2:{source:[{required:!0,message:"考试科目不能为空",trigger:"blur"}],major:[{required:!0,message:"请选择所属专业",trigger:"change"}],grade:[{required:!0,message:"请选择年级",trigger:"change"}],examDate:[{required:!0,message:"请选择考试日期",trigger:"change"}],totalTime:[{required:!0,message:"考试时长不能为空",trigger:"blur"}],type:[{required:!0,message:"考试描述不能为空",trigger:"blur"}]}}},methods:{formatTime:function(e){return e.getFullYear()+"-"+(e.getMonth()+1<10?"0"+(e.getMonth()+1):e.getMonth()+1)+"-"+(e.getDate()<10?"0"+e.getDate():e.getDate())+" "+(e.getHours()<10?"0"+e.getHours():e.getHours())+":"+(e.getMinutes()<10?"0"+e.getMinutes():e.getMinutes())+":"+(e.getSeconds()<10?"0"+e.getSeconds():e.getSeconds())},onSubmit:function(e){var t=this;this.$refs[e].validate(function(e){if(!e)return!1;var a=t.formatTime(t.form.examDate);t.form.examDate=a.substr(0,10),t.$axios("/api/examManagePaperId").then(function(e){t.form.paperId=e.data.data.paperId+1,t.$axios({url:"/api/exam",method:"post",data:l()({},t.form)}).then(function(e){200==e.data.code&&(t.$message({message:"考试添加成功",type:"success"}),t.$router.push({path:"/selectExam"}))})})})},cancel:function(){this.form={}}}},s={render:function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("section",{staticClass:"add"},[a("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules2,"label-width":"80px"}},[a("el-form-item",{attrs:{label:"考试科目",prop:"source"}},[a("el-input",{attrs:{placeholder:"请输入考试科目"},model:{value:e.form.source,callback:function(t){e.$set(e.form,"source",t)},expression:"form.source"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"所属专业",prop:"major"}},[a("el-select",{attrs:{placeholder:"请选择本次考试所属专业"},model:{value:e.form.major,callback:function(t){e.$set(e.form,"major",t)},expression:"form.major"}},[a("el-option",{attrs:{label:"计算机科学与技术",value:"计算机科学与技术"}}),e._v(" "),a("el-option",{attrs:{label:"网络工程",value:"网络工程"}}),e._v(" "),a("el-option",{attrs:{label:"软件工程",value:"软件工程"}}),e._v(" "),a("el-option",{attrs:{label:"信息工程",value:"信息工程"}})],1)],1),e._v(" "),a("el-form-item",{attrs:{label:"年级",prop:"grade"}},[a("el-select",{attrs:{placeholder:"请选择本次考试所属年级"},model:{value:e.form.grade,callback:function(t){e.$set(e.form,"grade",t)},expression:"form.grade"}},[a("el-option",{attrs:{label:"2017",value:"2017"}}),e._v(" "),a("el-option",{attrs:{label:"2018",value:"2018"}})],1)],1),e._v(" "),a("el-form-item",{attrs:{label:"考试日期",prop:"examDate"}},[a("el-col",{attrs:{span:11}},[a("el-date-picker",{staticStyle:{width:"100%"},attrs:{placeholder:"选择日期"},model:{value:e.form.examDate,callback:function(t){e.$set(e.form,"examDate",t)},expression:"form.examDate"}})],1)],1),e._v(" "),a("el-form-item",{attrs:{label:"考试时长",prop:"totalTime"}},[a("el-input",{attrs:{placeholder:"请输入考试时长"},model:{value:e.form.totalTime,callback:function(t){e.$set(e.form,"totalTime",t)},expression:"form.totalTime"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"考试描述",prop:"type"}},[a("el-input",{attrs:{placeholder:"请输入考试描述 (如：2021年上学期期末考试)"},model:{value:e.form.type,callback:function(t){e.$set(e.form,"type",t)},expression:"form.type"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"考生须知"}},[a("el-input",{attrs:{type:"textarea",placeholder:"请输入考生须知"},model:{value:e.form.tips,callback:function(t){e.$set(e.form,"tips",t)},expression:"form.tips"}})],1),e._v(" "),a("el-form-item",[a("el-button",{attrs:{type:"primary"},on:{click:function(t){e.onSubmit("form")}}},[e._v("立即创建")]),e._v(" "),a("el-button",{attrs:{type:"text"},on:{click:function(t){e.cancel()}}},[e._v("取消")])],1)],1)],1)},staticRenderFns:[]};var n=a("VU/8")(o,s,!1,function(e){a("2Qb7")},"data-v-005ab702",null);t.default=n.exports}});
//# sourceMappingURL=33.fd054349eaa8de5cb7d6.js.map