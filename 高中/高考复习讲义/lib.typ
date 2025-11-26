#import "@preview/outrageous:0.4.0"
#import "@preview/numbly:0.1.0": numbly
#import "@preview/hydra:0.6.1": hydra
#import "@preview/i-figured:0.2.4"
#import "@preview/modern-nju-thesis:0.4.0": 字号
#import "@preview/showybox:2.0.4": showybox
#import "@preview/tablem:0.3.0": tablem, three-line-table 



// a variant of  modern-nju-thesis fonts(prefer SimSun as main font)
#let 字体 = (
  // 宋体，属于「有衬线字体」，一般可以等同于英文中的 Serif Font
  // 这一行分别是「新罗马体（有衬线英文字体）」、「宋体（Windows）」、「思源宋体（简体）」、「思源宋体」、「宋体（MacOS）」
  宋体: (
    (name: "Times New Roman", covers: "latin-in-cjk"),
    // "LXGW Neo ZhiSong Plus", //  霞鹜新致宋
    "SimSun",
    // "Source Han Serif SC",
    // "Source Han Serif",
    // "Noto Serif CJK SC",
    // "Songti SC",
    // "STSongti",
    // "Source Han Serif SC"
  ),
  仿宋:(
    (name: "STFangsong", covers: "latin-in-cjk"),
    "STFangsong"
  ),
  霞鹜文楷:(
    (name: "LXGW WenKai Mono", covers: "latin-in-cjk"),
    "LXGW WenKai Mono"
  ),
  
  // 黑体，属于「无衬线字体」，一般可以等同于英文中的 Sans Serif Font
  // 这一行分别是「Arial（无衬线英文字体）」、「思源黑体（简体）」、「思源黑体」、「黑体（Windows）」、「黑体（MacOS）」
  // 优先选用字重配置更多的思源黑体
  黑体: (
    (name: "Arial", covers: "latin-in-cjk"),
    "Source Han Sans SC",
    // "Source Han Sans",
    // "Noto Sans CJK SC",
    // "SimHei",
    // "Heiti SC",
    // "STHeiti",

  ),
  // 楷体
  楷体: ((name: "Times New Roman", covers: "latin-in-cjk"),
  "KaiTi"
  ),


  // 楷体
  杨任东楷书: ((name: "zihun86hao-yangrendongkaishu", covers: "latin-in-cjk"),
  "zihun86hao-yangrendongkaishu"   
  ),
  

  // 等宽字体，用于代码块环境，一般可以等同于英文中的 Monospaced Font
  // 这一行分别是「Courier New（Windows 等宽英文字体）」、「思源等宽黑体（简体）」、「思源等宽黑体」、「黑体（Windows）」、「黑体（MacOS）」
  等宽: (
    (name: "Courier New", covers: "latin-in-cjk"),
    (name: "Menlo", covers: "latin-in-cjk"),
    (name: "IBM Plex Mono", covers: "latin-in-cjk"),
    "Source Han Sans HW SC",
    "Source Han Sans HW",
    "Noto Sans Mono CJK SC",
    "SimHei",
    "Heiti SC",
    "STHeiti",
  ),
)

// Paper-specific configurations
#let songting-a4 = (
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 2cm, right: 2cm),
  size: 10pt, //正文字号
  display-page-numbers: true,
  use-odd-pagebreak: false,
  cover-title-size: 36pt,
  cover-subtitle-size: 24pt,
  cover-author-size: 18pt,
  cover-publisher-size: 16pt,
  cover-date-size: 14pt,
  cover-edition-size: 14pt,
  dedication-size-offset: 2pt,
  toc-title-font: 字体.宋体,
  toc-title-size: 16pt,
  toc-title-weight: "bold",
  toc-title-align: center,
  toc-level1-font: 字体.黑体,
  toc-other-font: 字体.宋体,
  toc-entry-size: (14pt, 12pt, 10pt), //目录字体大小
  toc-vspace: (2em, 1em),
  heading: (
    //font: ("SimHei", "SimHei", "SimHei", "SimHei", "SimHei"),
    font: (字体.黑体, 字体.黑体, 字体.黑体, 字体.黑体, 字体.黑体, 字体.黑体),
    size: (20pt, 16pt, 14pt, 12pt, 14pt, 14pt),
    color:(black,black,blue.darken(30%),purple.darken(50%),black,black),
    weight: ("bold", "medium", "medium", "regular", "regular", "regular"),
    align: (center, center, left, left, left, left),
    above: (2em, 2em, 1em, 1em, 2em, 2em),
    below: (2em, 1.5em, 1em, 1em, 2em, 2em),
    pagebreak: (true, true, false, false, true),
    header-numbly: ("第{1:一}章 ", "{1:1}.{2} ", "{1:1}.{2}.{3}  ", "", "{5:1}  ", "（{6:1}）  "),
  ),
  caption: (  
    separator: "  ",
    font: 字体.楷体,
    numbering: "1 - 1",
    size: 1em,
  ),
  footnote: (
    font: 字体.楷体,
    size: 0.8em, 
    entry_gap: 0.5em, 
    numbering: "[1]"
  ),
  // Base configuration properties
  main-font: 字体.霞鹜文楷, //正文字体
  title-font: (字体.黑体),
  kai-font: (字体.楷体),
  lang: "zh",
  header-suffix: none,
  tracking: 0.02em,
  line-spacing: 1.5em,
  par-spacing: 2em,
  indent: 2em,
  justify: true,
  header-rule: false,
  
  display-header: true,
  header-spacing: 0.2em,
  header-font-size-factor: 0.875,
  header-font: 字体.楷体,
  outline_depth: 3,   //目录深度
  headingone-adjust-char: "  ",
  enum_num: numbly(    //有序列表
    "{1:(1)}",
    "{2:①}",
    "{3:1°}",
    "{4:I}",
    "{5:1}",
  ),
  force-zh-puct: true,
  list-spacing: 1em,
  quote-inset: 2em
)




// Helper function to compute final configuration
#let compute-config(cfg-override: (:)) = {
  // Available paper configurations
  let songting-paper-configs = (
    a4: songting-a4
  )

  // Default to a4 if no paper type specified
  let paper-type = cfg-override.at("paper", default: "a4")

  // Get base configuration for the specified paper type
  let base-cfg = songting-paper-configs.at(paper-type, default: songting-a4)

  // Merge with user overrides
  let final-cfg = base-cfg + cfg-override

  return (final-cfg, final-cfg.heading)
}


//定义 箱体
#let def(title: "",body) = {
  showybox(
    frame: (
    dash: "solid", //边框样式
    // body-color: blue.lighten(80%), //主体背景色
    title-color:white, //标题背景色
    border-color: blue.lighten(10%),  //分隔线颜色
    thickness: (1pt),
    inset: 1.2em,
    radius: 1em,
    ),

    title-style: (
    weight: "regular",
    color:black,
    indent:2pt,
    align: center
    ),
    
    //分隔符属性
    sep: (
      dash: "solid", //分隔符样式
      gutter:1em,
      thickness:1pt 
    ),

    body-style: (
      align:left
    ),

    shadow: (
    // color: yellow.lighten(70%),
    offset: 1pt,
    ),


    title: title,
    {
    set par(
    first-line-indent: (amount: 0em, all: true),
    leading: 1pt
    )
    block[
      #show math.equation.where(block: false): math.display
      #block(body)
    ]

    }
  )
}

//说明 箱体
#let explanation(color:orange, ..body)={
  showybox(
  frame: (
    dash: "dashed",  //边界样式
    border-color: orange.darken(10%),
    // body-color: orange.lighten(90%)
  ),
  body-style: (
    align: left
  ),
  sep: (
    dash: "solid" //分隔符样式
  ),
  ..body
)
}


//例题 箱体
#let question(color:orange, ..body)={
  showybox(
    

  frame: (
    dash: "solid",  //边界样式
    border-color: orange.darken(10%),
    // body-color: orange.lighten(90%)
    inset: 1pt, //内边距
    body-inset:1.5em,      // 正文内边距
    footer-inset:1em,    // 页脚内边距
  ),



  title-style: (
    weight: "regular",
    color:orange,
    align: center,
    boxed-style:(
        anchor:(  // 锚点，决定浮动标题框的水平和垂直位置 
          y:top ,          // 垂直锚点,默认为 horizon
          x:left  // 水平锚点,默认为 left
        ),
        offset:(  // 偏移值
          x:1pt,   // 水平偏移值，默认为 0pt
          y:1pt,   // 垂直偏移值，默认为 0pt
        )
    )
  ),

  body-style: (
    align: left
  ),

  //分隔符属性
  sep: (
    dash: "solid", //分隔符样式
    gutter:1em,
    thickness:1pt 
  ),
  ..body,
)
}

//单选题 箱体   
#let single-choice-no-answer(body,choices)={
  showybox(
  frame: (
    dash: "solid",//边界样式
    inset: 1em, //内边距
    border-color: blue.darken(10%),
    body-color: blue.lighten(80%),
    thickness: (left:1pt),
    radius: 0em,
  ),
  body-style: (
    align: left
  ),
  sep: (
    dash: "dashed" //分隔符样式
  ),
  // shadow: (
  //   // color: yellow.lighten(70%),
  //   offset: 2pt,
  // ),

    block[
    #block(body+ "（    ）")
    #v(0.5em)
    #grid(
      columns: (1fr,) * choices.len(),
      rows: (0.5em),
      ..choices.enumerate().map(((i, choice)) => {
        let letter = str.from-unicode(i + 65)
          return [#(letter + ".") #h(1em) #choice]
      })
    )
  ]
)
}

//单选题 箱体
#let single-choice-with-answer(body,a,b,c,d,answer)={

  showybox(
  frame: (
    dash: "dashed",  //边界样式
    border-color: orange.darken(10%),
    // body-color: orange.lighten(90%)
  ),
  body-style: (
    align: left
  ),
  sep: (
    dash: "dashed" //分隔符样式
  ),
  body+[
    #grid(
    align:center,
    columns: (1fr, 1fr, 1fr,1fr),
    rows: (1),
    row-gutter:0.5em,
    [A.]+a,
    [B.]+b,
    [C.]+c,
    [D.]+d)],
    // h(2em)+[解：]+answer,
)
}

// Main book template function
#let songting-book(
  title: "",
  subtitle: none,
  author: "",
  publisher: none,
  date: datetime.today(),
  edition: none,
  cover: auto,
  dedication: none,
  underline:(
    offset:5pt,
    evade:true
  ),
  toc: true,
  front-matter-headings: ("前言", "目录", "序言", "跋", "自序", "内容简介", "内容提要"),
  back-matter-headings: ("附录", "后记", "参考文献", "索引", "本书引用书目"),
  cfg: (:),
  body,
) = {
  // Compute final configuration
  let (cfg, default-heading) = compute-config(cfg-override: cfg)
  let heading-cfg = default-heading

  // Handle auto heading font
  if heading-cfg.font == auto {
    heading-cfg.font = (cfg.title-font, cfg.title-font, cfg.title-font, cfg.title-font, cfg.title-font)
  }

  // Helper function for safely accessing arrays
  let array-at(arr, pos) = {
    if arr == none { return none }
    arr.at(calc.min(pos - 1, arr.len() - 1))
  }

  // Document setup
  set document(title: title, author: author, date: date)

  // 有序列表设置
  set enum(   
    full: true,
    numbering: cfg.enum_num,
    number-align: start,
    indent: cfg.indent
  )

  // Page settings
  set page(
    paper: cfg.paper,
    margin: cfg.margin,
  )

  // // Text settings
  // set text(
  //   font: cfg.main-font,
  //   size: cfg.size,
  //   lang: cfg.lang,
  //   tracking: cfg.tracking,
  // )
    //正文字体
  set text(font: (
  (name: "Times New Roman", covers: "latin-in-cjk"), // 西文字体
  "SimSun" // 中文字体
  ), 
  size: cfg.size,
  lang: "zh",
  tracking: cfg.tracking)

  //公式字体
  //单独设置数学公式：数学用默认数学字体，公式里的中文回退到宋体
  show math.equation: set text(font: (
  "New Computer Modern Math",
  "Source Han Serif SC",
  ))
  
  

  show "——": {
    set text(font: "Source Han Serif SC")
    "——"
  }

  // 英文 → 中文标点转换函数（支持智能引号匹配）
  let trans_puct_cn(ch) = {
    // 基础标点映射
    let base-replacements = (
      "。": ". ",  // 句号
      "，": ",", // 逗号
      ";": "；", // 分号
      "：": ": ", // 冒号
      "?": "？", // 问号
      "!": "！", // 感叹号
      "(": "（", // 左圆括号
      ")": "）", // 右圆括号
      //"[": "【", // 左方括号
      //"]": "】", // 右方括号
    )

    base-replacements.at(ch.text, default: ch.text)
  }

  show "……": set text(tracking: 0em)

  show regex("[。；：？！（）\[\]]"): it => if cfg.force-zh-puct {
    trans_puct_cn(it)
  } else {
    it
  }

  // Paragraph settings
  set par(
    spacing: cfg.par-spacing,
    leading: cfg.line-spacing,
    first-line-indent: (amount: cfg.indent, all: true),
    justify: cfg.justify,
  )

  
  set list(
  marker: ([•]+" ", [--]+" ",), 
  indent: cfg.indent, 
  body-indent: 0em, 
  spacing: cfg.list-spacing
  ) 

  // Cover page
  if cover == auto {
    page(
      header: none,
      footer: none,
      numbering: none,
    )[
      #align(center + horizon)[
        #text(size: cfg.cover-title-size, font: cfg.title-font, weight: "bold")[#title]

        #if subtitle != none {
          v(1.5em)
          text(size: cfg.cover-subtitle-size, font: cfg.title-font)[#subtitle]
        }

        #v(3em)

        #text(size: cfg.cover-author-size, font: cfg.title-font)[#author]

        #if publisher != none {
          v(3em)
          text(size: cfg.cover-publisher-size, font: cfg.title-font)[#publisher]
        }
        #if date != none {
          v(1em)
          text(size: cfg.cover-date-size)[#date.display("[year]年[month]月[day]日")]
        }

        #if edition != none {
          v(1em)
          text(size: cfg.cover-edition-size)[第#edition版]
        }
      ]
    ]
  } else if type(cover) == content {
    cover
  }

  // Dedication page
  if dedication != none {
    page(
      header: none,
      footer: none,
      numbering: none,
    )[
      #align(center + horizon)[
        #text(size: cfg.size + cfg.dedication-size-offset)[#dedication]
      ]
    ]
  }



  // Start front matter with roman numerals (if page numbers are displayed)
  counter(page).update(1)
  set page(numbering: "i") if cfg.display-page-numbers

  // Define the heading structure and formatting
  show heading: it => {
    let level = it.level

    // Apply appropriate spacing
    set block(above: array-at(heading-cfg.above, level), below: array-at(heading-cfg.below, level))

    // Check if we need a pagebreak for this heading level
    if array-at(heading-cfg.pagebreak, level) {
      pagebreak(weak: true, to: if cfg.use-odd-pagebreak { "odd" })
    }

    // Apply text formatting for this heading level
    let heading-content = {
      set text(
        font: array-at(heading-cfg.font, level), 
        size: array-at(heading-cfg.size, level),
        weight: array-at(
          heading-cfg.weight,
          level,
        ),
        fill: array-at(heading-cfg.color, level)
      )
      // Special handling for front matter headings
      if (
        cfg.headingone-adjust-char != none
          and level == 1
          and (front-matter-headings.contains(it.body.text) or back-matter-headings.contains(it.body.text))
      ) {
        // Handle two-character headings with extra spacing
        let text = it.body.text
        if text.codepoints().len() == 2 {
          let chars = text.codepoints()
          text = chars.at(0) + cfg.headingone-adjust-char + chars.at(1)
        }
        text
      } else {
        it
      }
    }

    // Apply alignment for this heading level
    let align-value = array-at(heading-cfg.align, level)
    if align-value != none {
      align(align-value, heading-content)
    } else {
      heading-content
    }
  }

  // Style for quotes (use KaiTi font)
  show quote: it => {
    let content = it.body
    let is-poem = it.attribution == [poem]
    let attribution = if it.attribution != none { 
      align(end, [--- #it.attribution])
    }

    block(
	    inset: cfg.quote-inset,
	    if is-poem {
	      set par(justify: true)
	      align(center, text(font: cfg.kai-font)[#content])
	    } else {
	      set text(font: cfg.kai-font, size: cfg.size)
	      if it.quotes == true {
		quotes(it.content)
	      } else {
		content
	      }
	      attribution
	    }
    )
  }

  // Process body into content sections
  let content-parts = body.children
  let content-map = (
    "front": (),
    "main": (),
    "back": (),
  )

  let current-section = "front" // Start assuming front matter

  for child in content-parts {
    if child.func() == heading and child.depth == 1 and child.body.has("text") {
      if front-matter-headings.contains(child.body.text) {
        current-section = "front"
      } else if back-matter-headings.contains(child.body.text) {
        current-section = "back"
      } else {
        current-section = "main"
      }
    }

    content-map.at(current-section).push(child)
  }

  show footnote.entry: set text(font: cfg.footnote.font, size: cfg.footnote.size)
  set footnote.entry(gap: cfg.footnote.entry_gap)
  set footnote(numbering: cfg.footnote.numbering)
  // Output front matter
  for item in content-map.at("front") {
    item
  }

  // Table of contents
  if toc {
    pagebreak(weak: true)
    set par(leading: 0.5em)

    set text(size: cfg.toc-entry-size.last())
    set align(center)
    // Define outline styles with appropriate spacing for Chinese
    set outline(indent: level => (0pt, 18pt, 28pt).slice(0, calc.min(level + 1, 3)).sum())
    show outline.entry: outrageous.show-entry.with(
      ..outrageous.presets.typst,
      font: (字体.黑体, 字体.黑体,字体.黑体),
      vspace: cfg.toc-vspace,
      fill: (align(right, repeat(gap: 0.15em)[.]), align(right, repeat(gap: 0.15em)[.])),
      body-transform: (level, prefix, body) => {
        if level == 1 {
          text(size: cfg.toc-entry-size.at(0), body)
        } else if level == 2 {
          text(size: cfg.toc-entry-size.at(1), body)
        } else {
          text(size: cfg.toc-entry-size.at(2), body)
        }
      },
      prefix-transform: (level, prefix) => {
        if prefix == none {
          return none
        }
        if level == 1 {
          text(size: cfg.toc-entry-size.at(0), prefix)
        } else if level == 2 {
          text(size: cfg.toc-entry-size.at(1), prefix)
        } else {
          text(size: cfg.toc-entry-size.at(2), prefix.text.replace("§", ""))
        }
      },
    )

    outline(
      title: "目录",
      depth: cfg.outline_depth,
    )
  }

  // Start main content with Arabic numerals (if page numbers are displayed)
  pagebreak(weak: true, to: if cfg.use-odd-pagebreak { "odd" })

  counter(page).update(1)
  set page(numbering: "1") if cfg.display-page-numbers

  // Set up heading numbering for main content
  set heading(numbering: numbly(
    ..cfg.heading.header-numbly,
  ))



  //页眉
  // Header for main content pages
  set page(header: context {
    grid(
      rows: (1fr, auto),
      gutter: 10pt,
      // Space between rows
      align(center)[#text(font: cfg.kai-font, size: cfg.size * cfg.header-font-size-factor)[#hydra(1) #if (
            cfg.header-suffix != none
          ) { cfg.header-suffix } else { "" }]],
      line(length: 100%),
    )
  }) if cfg.display-header
  // caption
  set figure.caption(separator: cfg.caption.separator)
  show heading: i-figured.reset-counters
  show figure: it => {
    i-figured.show-figure(it, numbering: "1 - 1")
  }
  show figure.caption: set text(font: cfg.caption.font, size: cfg.caption.size)

  // Output main content
  for item in content-map.at("main") {
    item
  }

  set heading(numbering: none)

  // Output back matter
  for item in content-map.at("back") {
    item
  }
}
