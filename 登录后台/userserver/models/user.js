//获取mysql中间件
const mysql = require('mysql');
//创建数据库链接
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'user_info'
})
//连接数据库
connection.connect();

//查询数据库所有用户信息
function selectAllBooks(callback){
    connection.query('select * from userInfo',function(error,res){
        // if (error) throw error;
        callback(res)
    })
}

//添加用户信息
function addBook(user){
    let sql = `insert into userInfo(user,password) values('${user.name}','${user.password}')`
    connection.query(sql,function(error,res){
        // if (error) throw error;
    })
}

// 登录获取相应用户信息
function getUserInfo(user,callback){
    let sql = `select * from userInfo where user='${user.name}' and password='${user.password}'`;
    connection.query(sql,function(error,res){
        if (!error){
            callback(res)
        };
    })
}

//添加历史记录
function addHistory(user,callback){
    let sql = `insert into userInfo(user,password,history) values('${user.name}','${user.password}','${user.history}')`
    connection.query(sql,function(error,res){
        if (!error) {
            return callback(res)
        };
    })
}

// 获取历史记录
function getHistory(user,callback){
    let sql = `select history from userInfo where user='${user.name}' and password='${user.password}'`;
    connection.query(sql,function(error,res){
        callback(res)
    })
}

// 根据user和password清除历史记录
function deleteHistory(user,callback){
    let sql = `delete from userInfo where user='${user.name}' and password='${user.password}'`;
    connection.query(sql,function(error,res){
        console.log(sql)
        callback(res)
    })
}


module.exports = {
    selectAllBooks,
    addBook,
    getUserInfo,
    getHistory,
    addHistory,
    deleteHistory
  
}