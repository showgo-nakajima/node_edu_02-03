const path = require("path");
const express = require("express");
const bodyParser = require("body-parser");
const ejs = require("ejs");
const app = express();
const port = 3000;
const mysql = require("mysql2");
app.use(bodyParser.urlencoded({ extended: true }));
app.set("view engine", "ejs");
const con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "rootroot", // パスワードについては、mysqlを立ち上げた時に設定したpassにしましょう。特にこだわりない人はrootrootとしましょう。
  database: "expressdb",
});

app.use(express.static("assets"));

//SELECT personas
app.get("/", (req, res) => {
  const sql = "select * from personas";
  con.query(sql, function (err, result, fields) {
    if (err) throw err;
    res.render("index", { personas: result }); // res.send(result);から変更
  });
});

//personas get res;
app.get("/", (req, res) => {
  const sql = "select * from personas";
  con.query(sql, function (err, result, fields) {
    if (err) throw err;
    res.render("index", { personas: result }); // res.send(result);から変更
  });
});

app.get('/create', (req, res) => {
  res.sendFile(path.join(__dirname, 'html/form.html'))
});
app.get("/delete/:id", (req, res) => {
  const sql = "DELETE FROM personas WHERE id = ?";
  con.query(sql, [req.params.id], function (err, result, fields) {
    if (err) throw err;
    console.log(result);
    res.redirect("/");
  });
});
app.post("/update/:id", (req, res) => {
  const sql = "UPDATE personas SET ? WHERE id = " + req.params.id;
  con.query(sql, req.body, function (err, result, fields) {
    if (err) throw err;
    console.log(result);
    res.redirect("/");
  });
});
app.get("/edit/:id", (req, res) => {
  const sql = "SELECT * FROM personas WHERE id = ?";
  con.query(sql, [req.params.id], function (err, result, fields) {
    if (err) throw err;
    res.render("edit", { user: result });
  });
});
//新規追加機能
app.post("/", (req, res) => {
  const { name, email } = req.body;//formから送信されたデータを取得
  const userData = { name, email };//DBに追加するユーザー情報をオブジェクトとして作成
  const sql = "INSERT INTO personas SET ?";
  con.query(sql, req.body, function (err, result, fields) {
    if (err) throw err;
    console.log(result);
    res.redirect("/");
  });
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}!`);
});
