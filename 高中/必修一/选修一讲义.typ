#import "lib.typ": *

#show: songting-book.with(
  title: "高中数学讲义",
  subtitle: "选修一",
  author: "许老师",
    cfg: (
    paper: "a4",
    indent: 2em,        // 修改首行缩进
    line-spacing: 1em,  // 修改行距
    force-zh-puct: true, // 关闭标点自动转换
    par-spacing:1.2em, //段距
    tracking:0.01em //字符间距
  )
)