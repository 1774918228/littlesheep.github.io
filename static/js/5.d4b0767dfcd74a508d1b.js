webpackJsonp([5],{LttN:function(t,e,s){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var i={render:function(){this.$createElement;this._self._c;return this._m(0)},staticRenderFns:[function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("footer",{attrs:{id:"footer"}},[s("ul",[s("li",[s("a",{attrs:{href:"javascript:;"}},[t._v("关于我们")])]),t._v(" "),s("li",[s("a",{attrs:{href:"javascript:;"}},[t._v("免责声明")])]),t._v(" "),s("li",[s("a",{attrs:{href:"javascript:;"}},[t._v("使用协议")])]),t._v(" "),s("li",[t._v("鲁ICP备23001371号")]),t._v(" "),s("li",[t._v("@Copyright 2022-2023. ALL Rights Reserved")])])])}]};var a=s("VU/8")({name:"myFooter"},i,!1,function(t){s("XcSs")},"data-v-2a5bb65f",null).exports,n=s("YtJ0"),r=s("NYxO"),o={store:n.a,components:{"v-footer":a},data:function(){return{flag:!1,user:{}}},created:function(){this.userInfo()},methods:{exit:function(){this.$router.push({path:"/"}),this.$cookies.remove("cname"),this.$cookies.remove("cid")},toHome:function(){this.$router.push("/student")},manage:function(){this.$router.push({path:"/manager"})},userInfo:function(){var t=this.$cookies.get("cname"),e=this.$cookies.get("cid");this.user.userName=t,this.user.studentId=e},practice:function(){this.$store.commit("practice",!0),this.$router.push({path:"/startExam"})},exam:function(){this.$store.commit("practice",!1),this.$router.push({path:"/student"})}},computed:Object(r.c)(["isPractice"])},c={render:function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{attrs:{id:"student"}},[s("el-row",{staticClass:"padding-50"},[s("el-col",{attrs:{span:24}},[s("ul",{staticClass:"list"},[s("li",{staticClass:"logo",on:{click:function(e){t.toHome()}}},[s("i",{staticClass:"iconfont icon-kaoshi"}),s("span",[t._v("Exam-Online")])]),t._v(" "),s("li",[s("a",{attrs:{href:"javascript:;"},on:{click:function(e){t.exam()}}},[t._v("我的试卷")])]),t._v(" "),s("li",[s("router-link",{attrs:{to:"/scoreTable"}},[t._v("我的成绩")])],1),t._v(" "),s("li",[s("router-link",{attrs:{to:"/message"}},[t._v("匿名讨论")])],1),t._v(" "),s("li",{staticClass:"right",on:{mouseenter:function(e){t.flag=!t.flag},mouseleave:function(e){t.flag=!t.flag}}},[s("a",{attrs:{href:"javascript:;"}},[s("i",{staticClass:"iconfont icon-Userselect icon"}),t._v(t._s(t.user.userName))]),t._v(" "),t.flag?s("div",{staticClass:"msg"},[s("p",{on:{click:function(e){t.manage()}}},[t._v("修改密码")]),t._v(" "),s("p",{staticClass:"exit",on:{click:function(e){t.exit()}}},[t._v("退出")])]):t._e()])])])],1),t._v(" "),s("div",{staticClass:"main"},[s("router-view")],1),t._v(" "),s("v-footer")],1)},staticRenderFns:[]};var u=s("VU/8")(o,c,!1,function(t){s("Tw/m")},"data-v-3fe0fe0e",null);e.default=u.exports},"Tw/m":function(t,e){},XcSs:function(t,e){}});
//# sourceMappingURL=5.d4b0767dfcd74a508d1b.js.map