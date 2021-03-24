const express = require('express')
const router = express.Router();
const User = require('./models/user')

//进入主页
router.get("/", (req, res) => {
    let user = req.session.user;
    User.selectAllBooks(userInfo => {
        // res.render("index.html",{books,user})
        res.json({ userInfo, user })
    })
})

// 注册
router.post("/book/register", (req, res) => {
    User.addBook(req.body)
})

//登录
router.post("/book/login", (req, res) => {
    User.getUserInfo(req.body,(info)=>{
        res.json(info)
    })
})

//获取历史记录
router.get("/book/history", (req, res) => {
    User.getHistory(req.query,(info)=>{
        res.json(info)
    })
})

// 添加历史记录
router.post("/book/addhistory", (req, res) => {
    console.log(req.body)
    User.addHistory(req.body,(info)=>{
        res.json(info)
    })
})

// 清空历史记录
router.get("/book/delhistory", (req, res) => {
    console.log(req.query)
    User.deleteHistory(req.query,()=>{})
})


module.exports = router