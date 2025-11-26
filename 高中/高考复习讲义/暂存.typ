// ==========================================
// 1. 全局设置与字体修复 (关键步骤)
// ==========================================
#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2.5cm),
  numbering: "1",
)

// 核心字体设置：数学字体优先，中文字体回退
#set text(
  font: ("New Computer Modern Math", "SimSun", "Songti SC"), 
  size: 10.5pt,
  lang: "zh"
)

// 设置数学公式字体 (显式指定，双重保险)
#show math.equation: set text(font: ("New Computer Modern Math", "SimSun"))

// ==========================================
// 2. 样式定义 (模仿讲义风格)
// ==========================================

// 一级标题样式 (带蓝色左边框)
#show heading.where(level: 1): it => {
  set text(size: 16pt, weight: "bold", fill: rgb("#003366"))
  block(
    stroke: (left: 5pt + rgb("#003366")),
    inset: (left: 10pt),
    outset: (y: 5pt),
    below: 15pt,
    it
  )
}

// 二级标题样式 (蓝色块状背景)
#show heading.where(level: 2): it => {
  set text(size: 12pt, weight: "bold", fill: white)
  block(
    fill: rgb("#2a5caa"),
    inset: 8pt,
    radius: 4pt,
    below: 12pt,
    width: 100%,
    it
  )
}

// 三级标题样式 (加粗小标题)
#show heading.where(level: 3): it => {
  set text(size: 11pt, weight: "bold", fill: black)
  block(below: 8pt, it)
}

// 强调点样式
#let important(body) = text(fill: red, weight: "bold", body)

// 题目容器
#let question(body) = block(
  width: 100%,
  inset: (y: 5pt),
  stroke: (bottom: 0.5pt + gray),
  body
)

// ==========================================
// 3. 正文内容
// ==========================================

#align(center)[
  #text(size: 18pt, weight: "bold")[第01讲 导数的概念及其意义、导数的运算]
]

[cite_start]= 01 考情解码 · 命题预警 [cite: 3]

#table(
  columns: (15%, 15%, 1fr),
  stroke: 0.5pt + gray,
  align: horizon,
  table.header(
    [*考点要求*], [*考察形式*], [*近年考情*]
  ),
  [1. 导数的定义], [单选题], [2025年 全国一卷 T12 (5分)],
  [2. 导数的运算], [多选题], [2024年 全国甲卷(理) T6 (5分)],
  [3. 导数的几何意义], [填空题/解答题], [2023年 全国乙卷(文) T20 (5分)],
[cite_start]) 
[cite: 35]

[cite_start]*考情分析：* 高考对本节内容的考查相对稳定，重点考查导数的计算、四则运算法则的应用和求切线方程为主，也涉及到公切线问题。 [cite: 35]

[cite_start]= 02 体系构建 · 思维可视 [cite: 4]

该部分主要包含导数的概念、几何意义及基本运算公式。

#figure(
  table(
    columns: (1fr, 1fr),
    fill: (x, y) => if y == 0 { rgb("#e0e0e0") },
    stroke: 0.5pt,
    [*基本初等函数*], [*导数*],
    $f(x) = c '(x) = 0$,
    $f(x) = x^n (n in RR)$, $f'(x) = n x^(n-1)$,
    $f(x) = sin x$, $f'(x) = cos x$,
    $f(x) = cos x$, $f'(x) = -sin x$,
    $f(x) = e^x$, $f'(x) = e^x$,
    $f(x) = a^x (a>0)$, $f'(x) = a^x ln a$,
    $f(x) = ln x$, $f'(x) = 1/x$,
    $f(x) = log_a x$, $f'(x) = 1/(x ln a)$
  ),
  caption: "基本初等函数导数公式 [cite: 10, 60]"
)

[cite_start]= 03 核心突破 · 靶向攻坚 [cite: 5]

[cite_start]== 知能解码 [cite: 6]

[cite_start]=== 知识点1 平均变化率 [cite: 7, 36]
1. *变化率*：事物的变化率是相关的两个量的“增量的比值”。
2. *平均变化率*：函数 $y=f(x)$ 在区间 $[x_1, x_2]$ 上的平均变化率为：
   [cite_start]$ (Delta y)/(Delta x) = (f(x_2) - f(x_1)) / (x_2 - x_1) $ [cite: 40]
3. [cite_start]*求法*：① 作差：$Delta y = f(x_2) - f(x_1)$；② 作商：$Delta y}{Delta x}$。 [cite: 43, 44]

#question[
  [cite_start]*自主检测*：函数 $f(x)=x^2$ 在区间 $[1,3]$ 上的平均变化率为（ ） [cite: 45] \
  A. 6 #h(2em) B. 3 #h(2em) C. 2 #h(2em) D. 4
]

[cite_start]=== 知识点2 导数的概念 [cite: 8, 47]
1. [cite_start]*定义*：函数 $y=f(x)$ 在 $x=x_0$ 处的瞬时变化率是 $\lim_{Delta x \to 0} frac{Delta y}{Delta x}$，称为函数在 $x_0$ 处的导数，记作 $f'(x_0)$ 或 $y'|_{x=x_0}$。 [cite: 48]
2. [cite_start]*步骤*：求增量 $\to$ 求平均变化率 $\to$ 求极限。 [cite: 49]

#question[
  [cite_start]*自主检测*：设函数 $f(x)$ 的导函数为 $f'(x)$，且 $f'(x_0)=2$，则 $\lim_{Delta x \to 0} frac{f(x_0+2Delta x)-f(x_0)}{Delta x} =$ （ ） [cite: 53] \
  A. 1 #h(2em) B. 4 #h(2em) C. 3 #h(2em) D. 2
]

[cite_start]=== 知识点3 导数的几何意义 [cite: 9, 55]
[cite_start]函数 $y=f(x)$ 在点 $x=x_0$ 处的导数的几何意义，就是曲线 $y=f(x)$ 在点 $P(x_0, y_0)$ 处的切线的斜率，即 $k = f'(x_0)$。 [cite: 56]

#question[
  [cite_start]*自主检测*：若曲线 $y=x^2 - ln x$ 在 $x=0.5$ 处的切线的斜率为（ ） [cite: 57] \
  A. 1 #h(2em) B. -1 #h(2em) C. 2.2 #h(2em) D. e
]

[cite_start]=== 知识点5 导数的运算法则 [cite: 11, 63]
若 $f'(x), g'(x)$ 存在，则有：
1. $[f(x) \pm g(x)]' = f'(x) \pm g'(x)$
2. $[f(x) \cdot g(x)]' = f'(x)g(x) + f(x)g'(x)$
3. [cite_start]$[f(x)/g(x)]' = (f'(x)g(x) - f(x)g'(x)) / (g^2(x)) (g(x) \neq 0)$ [cite: 65, 66, 67]

[cite_start]== 题型破译 [cite: 13]

[cite_start]=== 题型1 导数的概念 [cite: 14, 85]

#question[
  [cite_start]*例1-1* 已知函数 $f(x)=log_2 x$，则 $\lim_{x \to 2} frac{f(x)-f(2)}{x-2} =$ \_\_\_\_\_\_。 [cite: 86]
]
#question[
  [cite_start]*例1-2* 已知函数 $f(x)=x^2 + 1/x$，则 $\lim_{Delta x \to 0} frac{f(1+Delta x)-f(1)}{2Delta x} =$ （ ） [cite: 87] \
  A. 1 #h(2em) B. 1/2 #h(2em) C. 2 #h(2em) D. 4
]

[cite_start]=== 题型2 导数的运算 [cite: 15, 95]

#question[
  [cite_start]*例2-1* 求下列函数的导数： [cite: 96] \
  (1) $y = x^2 sin x$ \
  (2) $y = ln x + 1/x$ \
  (3) $y = (cos x) / e^x$ \
  (4) $y = ln(x^2 + 1)$
]

[cite_start]=== 题型3 在点P处的切线 ("在"型) [cite: 16, 116]

*方法技巧：*
1. 计算切点纵坐标 $y_0 = f(x_0)$，得切点 $(x_0, y_0)$。
2. 计算斜率 $k = f'(x_0)$。
3. [cite_start]点斜式写方程：$y - y_0 = f'(x_0)(x - x_0)$。 [cite: 72, 73, 74, 75]

#question[
  [cite_start]*例3-1* 曲线 $y = sin x cos x - 1$ 在点 $(0, -1)$ 处的切线方程为（ ） [cite: 117] \
  A. $x-2y+2=0$ #h(1em) B. $x+2y-2=0$ #h(1em) C. $x-y-1=0$ #h(1em) D. $x-y+1=0$
]

[cite_start]=== 题型4 过点P处的切线 ("过"型) [cite: 19, 133]

*方法技巧：* 此类问题点 $P$ 未必是切点。
1. 设切点为 $(x_0, y_0)$。
2. 计算斜率的两种表达：$k = f'(x_0)$ 和 $k = frac{y_0 - y_P}{x_0 - x_P}$。
3. [cite_start]联立解出 $x_0$，代入求切线方程。 [cite: 78, 79, 80]

#question[
  [cite_start]*例4-1* 过点 $(0, -4)$ 作函数 $f(x) = x^3 - 4x$ 图像的切线，则切线方程为（ ） [cite: 134] \
  A. $y=5x-4$ #h(1em) B. $y=4x-4$ #h(1em) C. $y=3x-4$ #h(1em) D. $y=2x-4$
]

[cite_start]=== 题型5 已知切线或切点求参数 [cite: 22, 149]

#question[
  [cite_start]*例5-1* 若曲线 $f(x) = x^2 - frac{3}{2}a ln x + 1$ 在点 $(1, f(1))$ 处的切线与直线 $y = x - 2$ 垂直，则实数 $a$ 的值为（ ） [cite: 150] \
  A. 3 #h(2em) B. 5 #h(2em) C. 2 #h(2em) D. 1
]

[cite_start]=== 题型6 公切线问题 [cite: 24, 158]

[cite_start]*关键点*：两个函数在切点处斜率相等（若是同一点）；若是不同点，则两点连线斜率等于各自在该点的导数。 [cite: 162]

#question[
  [cite_start]*例6-1* 若直线 $l$ 是曲线 $y=ln x - 1$ 与 $y=ln(x-1)$ 的公切线，则直线 $l$ 的方程为 \_\_\_\_\_\_。 [cite: 159]
]

[cite_start]=== 题型7 已知切线条数求参数 [cite: 27, 167]



[cite_start]=== 题型8 距离最值转化为相切问题 [cite: 29, 178]

[cite_start]*方法技巧*：平移切线法。当曲线的切线与已知直线平行时，切点到直线的距离通常取到最值。 [cite: 182]

#question[
  [cite_start]*例8-1* 点 $A$ 是曲线 $y = frac{3}{2}x^2 - ln x$ 上任意一点，则点 $A$ 到直线 $y=2x-2$ 的最小距离为（ ） [cite: 179] \
  A. $frac{5sqrt{10}}{10}$ #h(1em) B. $frac{sqrt{5}}{5}$ #h(1em) C. $frac{3sqrt{5}}{10}$ #h(1em) D. $sqrt{5}$
]

[cite_start]=== 题型9 奇偶函数切线问题 [cite: 32, 188]

#question[
  [cite_start]*例9-1* 已知偶函数 $f(x)$ 的定义域为 $R$，且当 $x<0$ 时，$f(x) = ln(-3x+1) + e^{-x}$，则曲线 $y=f(x)$ 在点 $(1, f(1))$ 处的切线斜率为（ ） [cite: 189] \
  A. $1/4 + e$ #h(1em) B. $1/2 + e$ #h(1em) C. $3/4 + e$ #h(1em) D. $3/2 + e$
]

[cite_start]= 04 真题溯源 · 考向感知 [cite: 33]

1. [cite_start]*(2024·全国甲卷)* 设函数 $f(x) = frac{e^x + 2sin x}{1+x^2}$，则曲线 $y=f(x)$ 在点 $(0,1)$ 处的切线与两坐标轴所围成的三角形的面积为（ ） [cite: 197]
2. [cite_start]*(2023·全国甲卷)* 曲线 $y = frac{e^x}{x+1}$ 在点 $(1, frac{e}{2})$ 处的切线方程为（ ） [cite: 199]
3. [cite_start]*(2024·新课标 I 卷)* 若曲线 $y=e^x+x$ 在点 $(0,1)$ 处的切线也是曲线 $y=ln(x+1)+a$ 的切线，则 $a =$ \_\_\_\_\_\_。 [cite: 201]

[cite_start]= 05 课本典例 · 高考素材 [cite: 34]

1. (人教A版选择性必修第二册 P81 习题 5.2 T5) [cite_start]求曲线 $y = frac{sin x}{x}$ 在点 $M(\pi, 0)$ 处的切线方程。 [cite: 204]
2. (人教A版选择性必修第二册 P81 习题 5.2 T2) [cite_start]求下列函数的导数：(1) ... (2) ... [cite: 207]