webpackJsonp([23],{Vm7B:function(t,e){},"qvo+":function(t,e,a){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var n={data:function(){return{examCode:0,pagination:{current:1,total:null,size:6}}},created:function(){this.examCode=this.$route.query.examCode,this.showScore()},methods:{handleSizeChange:function(t){this.pagination.size=t,this.showScore()},handleCurrentChange:function(t){this.pagination.current=t,this.showScore()},exportSubGrade:function(){this.examCode=this.$route.query.examCode;var t=this.examCode;window.location.href="http://localhost:8080/export/SubExcel/"+t},showScore:function(){var t=this;this.$axios("/api/sc/"+this.pagination.current+"/"+this.pagination.size+"/"+this.examCode).then(function(e){200==e.data.code&&(t.pagination=e.data.data,console.log(e.data.data))})}}},o={render:function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"all"},[a("el-button",{attrs:{type:"primary"},on:{click:t.exportSubGrade}},[t._v("导出成绩")]),t._v(" "),a("el-table",{attrs:{data:t.pagination.records,border:""}},[a("el-table-column",{attrs:{fixed:"left",prop:"studentName",label:"姓名",width:"120"}}),t._v(" "),a("el-table-column",{attrs:{prop:"studentId",label:"学号",width:"180"}}),t._v(" "),a("el-table-column",{attrs:{prop:"sex",label:"性别",width:"120"}}),t._v(" "),a("el-table-column",{attrs:{prop:"grade",label:"年级",width:"120"}}),t._v(" "),a("el-table-column",{attrs:{prop:"major",label:"专业",width:"180"}}),t._v(" "),a("el-table-column",{attrs:{prop:"clazz",label:"班级",width:"120"}}),t._v(" "),a("el-table-column",{attrs:{prop:"etScore",label:"成绩",width:"120"}}),t._v(" "),a("el-table-column",{attrs:{prop:"answerDate",label:"答题日期",width:"180"}})],1),t._v(" "),a("el-pagination",{staticClass:"page",attrs:{"current-page":t.pagination.current,"page-sizes":[6,10],"page-size":t.pagination.size,layout:"total, sizes, prev, pager, next, jumper",total:t.pagination.total},on:{"size-change":t.handleSizeChange,"current-change":t.handleCurrentChange}})],1)},staticRenderFns:[]};var i=a("VU/8")(n,o,!1,function(t){a("Vm7B")},"data-v-5a59fa5c",null);e.default=i.exports}});
//# sourceMappingURL=23.18cf90a3c65f0906a662.js.map