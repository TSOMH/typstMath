#import "lib.typ": *
#show math.equation.where(block: false): it => h(0.25em, weak: true) + it + h(0.25em, weak: true)

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

//行内数学公式修改间距


= 空间向量与立体几何
== 空间向量及其运算
=== 空间向量的有关概念
#table(
  columns: 2,
  rows:(auto,3em),
  // gutter:o,3, //表格间距
  stroke: blue.darken(30%),
  align: (x, y) =>
    if x == 0 { horizon } else { horizon } +
    if y == 0 { center } else { left },

  table.header[*名称*][*定义*],

  [空间向量], 
  [在空间中，我们把具有大小和方向的量叫做空间向量，空间向量的大小叫做空间向量的长度或模],

  [零向量],
  [长度为零的向量叫做零向量，记为$arrow(0)$(印刷体为：*0*)],

  [单位向量],
  [模长为1的向量叫做单位向量],

  [相等向量],
  [方向相同且模相等的向量，叫做相等向量],

  [相反向量],
  [与向量$arrow(a)$长度相等而方向相反的向量叫做$a$的相反向量，即为$-arrow(a)$]
)

=== 空间向量的表示方法

+ 几何表示法：用有向线段表示。
+ 字母表示法：用字母$arrow(a),arrow(b)$等表示，或用有向线段的起点字母与终点字母表示。如图，向量的起点是A,终点是B,则向量可记作$arrow(A B)$.













== 空间向量基本定理
== 空间向量及其运算的坐标表示
== 空间向量的应用

= 直线和圆的方程
== 直线的倾斜角与斜率
== 直线的方程
== 直线的交点坐标与距离公式
== 圆的方程
== 直线与圆、圆与圆的位置关系

= 圆锥曲线的方程
== 椭圆
== 双曲线
== 抛物线 