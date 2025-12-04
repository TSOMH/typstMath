#import "../lib.typ": *
#import "@preview/tablem:0.3.0": tablem, three-line-table
#import "@preview/cuti:0.2.1": show-cn-fakebold
#import "@preview/showybox:2.0.4": showybox
#import "@preview/cetz:0.4.0"
#import "@preview/cetz-venn:0.1.4": venn2
#show math.equation.where(block: false): math.display
#show: show-cn-fakebold
#show math.equation.where(block: false): it => h(0.25em, weak: true) + it + h(0.25em, weak: true)

#show: songting-book.with(
  title: "高中数学讲义",
  subtitle: "选修二",
  author: "许老师",
    cfg: (
    paper: "a4",
    indent: 2em,        // 修改首行缩进
    line-spacing: 0.9em,  // 修改行距
    force-zh-puct: true, // 关闭标点自动转换
    par-spacing:1.1em, //段距
    tracking:0.01em //字符间距
  )
)

= 数列
== 数列的定义
=== 知识点1.数列的概念
#def()[一般的，我们把按照确定的顺序排列的一列数称为数列，数列中的每一个数叫做这个数列的项。数列的第$n$个位置上的数叫做这个数列的第$n$项，常用符号$a_n$表示。其中第1项称为也叫做首项。

数列的一般形式是$a_1,a_2,...,a_n,...$,简记为${a_n}$.]
+ ${a_n}$与$a_n$是两个不同的概念：${a_n}$表示的是数列$a_1,a_2,...,a_n,...$，而$a_n$只表示数列${a_n}$的第$n$项。
+ 数列的三大特性：有序性、可重复性和确定性。

#def()[数列$a_n$是从正整数集$NN^*$到实数集$RR$的函数.]
=== 知识点2.数列的分类
=== 知识点3.数列的通项公式
=== 知识点4.数列的递推公式
=== 知识点5.数列的前$n$项和$S_n$
=== 知识点6.数列的性质
=== 题型1.通项公式的求法
=== 题型2.数列的性质
== 等差数列
== 等比数列
== 数学归纳法

