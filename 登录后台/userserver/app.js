let express = require('express')
let app = express();
let router = require("./router")
let bodyParser = require("body-parser")
let expressSession = require('express-session');

//把node_modules目录配置为静态资源目录，通过/node_modules路径可以访问到路径下的静态资源
app.use('/node_modules', express.static('./node_modules/'))
app.use('/public', express.static('./public/'))

//挂载bodyparser中间件
app.use(bodyParser.urlencoded({ extended: false }));

//挂载session中间件
app.use(expressSession({
    name : "mazg",
    secret : 'secret', // 对session id 相关的cookie 进行签名
    resave : false,
    rolling: true,
    saveUninitialized: false, // 是否保存未初始化的会话
    cookie : {
        maxAge : 1000 * 60 * 30 // 设置 session 的有效时间，单位毫秒
    }
}));

//挂载路由
app.use(router);

app.listen(3000,()=>{
    console.log("3000端口已经启动")
}) 