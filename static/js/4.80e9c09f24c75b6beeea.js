webpackJsonp([4],{Cdx3:function(t,a,e){var s=e("sB3e"),i=e("lktj");e("uqUo")("keys",function(){return function(t){return i(s(t))}})},dPZ7:function(t,a,e){"use strict";Object.defineProperty(a,"__esModule",{value:!0});var s=e("fZjL"),i=e.n(s),o=e("Dd8w"),n=e.n(o),l={data:function(){return{dialogVisible:!1,activeName:"0",topicCount:[],score:[],examData:{},topic:{}}},mounted:function(){this.init()},methods:{init:function(){var t=this,a=this.$route.query.examCode;this.$axios("/api/exam/"+a).then(function(a){a.data.data.examDate=a.data.data.examDate.substr(0,10),t.examData=n()({},a.data.data);var e=t.examData.paperId;t.$axios("/api/paper/"+e).then(function(a){t.topic=n()({},a.data),i()(t.topic).forEach(function(a){var e=t.topic[a];t.topicCount.push(e.length);for(var s=0,i=0;i<e.length;i++)s+=e[i].score;t.score.push(s)})})})},toAnswer:function(t){this.$cookies.set("examCode",t),this.$router.push({name:"answer"})}}},c={render:function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",{attrs:{id:"msg"}},[e("div",{staticClass:"title"},[e("span",[t._v("试卷列表")]),t._v(" "),e("span",[t._v("/ "+t._s(t.examData.source))])]),t._v(" "),e("div",{staticClass:"wrapper"},[e("ul",{staticClass:"top"},[e("li",{staticClass:"example"},[t._v(t._s(t.examData.source))]),t._v(" "),e("li",{staticClass:"right"},[e("div",[e("span",{staticClass:"count"},[t._v("总分")]),t._v(" "),e("span",{staticClass:"score"},[t._v(t._s(t.score[0]+t.score[1]+t.score[2]))])])])]),t._v(" "),e("ul",{staticClass:"bottom"},[e("li",[t._v("更新于"+t._s(t.examData.examDate))]),t._v(" "),e("li",[t._v("来自 "+t._s(t.examData.institute))]),t._v(" "),e("li",{staticClass:"btn"},[t._v(t._s(t.examData.type))]),t._v(" "),e("li",{staticClass:"right"},[e("el-button",{on:{click:function(a){t.toAnswer(t.examData.examCode)}}},[t._v("开始答题")])],1)]),t._v(" "),e("ul",{staticClass:"info"},[e("li",{on:{click:function(a){t.dialogVisible=!0}}},[t._m(0)])])]),t._v(" "),e("div",{staticClass:"content"},[e("el-collapse",{model:{value:t.activeName,callback:function(a){t.activeName=a},expression:"activeName"}},[e("el-collapse-item",{staticClass:"header",attrs:{name:"0"}},[e("template",{staticClass:"stitle",slot:"title"},[e("div",{staticClass:"title"},[e("span",[t._v(t._s(t.examData.source))]),e("i",{staticClass:"header-icon el-icon-info"}),t._v(" "),e("span",{staticClass:"time"},[t._v(t._s(t.score[0]+t.score[1]+t.score[2])+"分 /\n              "+t._s(t.examData.totalTime)+"分钟")]),t._v(" "),e("el-button",{attrs:{type:"primary",size:"small"}},[t._v("点击查看试题详情")])],1)]),t._v(" "),e("el-collapse",{staticClass:"inner"},[e("el-collapse-item",[e("template",{attrs:{name:"1"},slot:"title"},[e("div",{staticClass:"titlei"},[t._v("\n                选择题 (共"+t._s(t.topicCount[0])+"题 共计"+t._s(t.score[0])+"分)\n              ")])])],2),t._v(" "),e("el-collapse-item",[e("template",{attrs:{name:"2"},slot:"title"},[e("div",{staticClass:"titlei"},[t._v("\n                填空题 (共"+t._s(t.topicCount[1])+"题 共计"+t._s(t.score[1])+"分)\n              ")])])],2),t._v(" "),e("el-collapse-item",[e("template",{attrs:{name:"3"},slot:"title"},[e("div",{staticClass:"titlei"},[t._v("\n                判断题 (共"+t._s(t.topicCount[2])+"题 共计"+t._s(t.score[2])+"分)\n              ")])])],2)],1)],2)],1)],1),t._v(" "),e("el-dialog",{attrs:{title:"考生须知",visible:t.dialogVisible,width:"30%"},on:{"update:visible":function(a){t.dialogVisible=a}}},[e("span",[t._v(t._s(t.examData.tips))]),t._v(" "),e("span",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[e("el-button",{on:{click:function(a){t.dialogVisible=!1}}},[t._v("知道了")])],1)])],1)},staticRenderFns:[function(){var t=this.$createElement,a=this._self._c||t;return a("a",{attrs:{href:"javascript:;"}},[a("i",{staticClass:"iconfont icon-info"}),this._v("考生须知")])}]};var r=e("VU/8")(l,c,!1,function(t){e("g+I4")},"data-v-0aeddf1a",null);a.default=r.exports},fZjL:function(t,a,e){t.exports={default:e("jFbC"),__esModule:!0}},"g+I4":function(t,a){},jFbC:function(t,a,e){e("Cdx3"),t.exports=e("FeBl").Object.keys},uqUo:function(t,a,e){var s=e("kM2E"),i=e("FeBl"),o=e("S82l");t.exports=function(t,a){var e=(i.Object||{})[t]||Object[t],n={};n[t]=a(e),s(s.S+s.F*o(function(){e(1)}),"Object",n)}}});
//# sourceMappingURL=4.80e9c09f24c75b6beeea.js.map