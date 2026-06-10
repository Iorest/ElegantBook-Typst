// =============================================================================
// ElegantBook (Typst) — English Demo
// elegantbook-en.typ
// =============================================================================

#import "elegantbook.typ": *

// Select theme (blue / green / cyan / gray / black)
#let theme = theme-cyan

#show: elegantbook.with(
  title:     [An Elegant Typst Template for Books],
  subtitle:  [Classic ElegantBook Template],
  author:    "ElegantBook Contributors",
  institute: "ElegantBook Project",
  date:      "June, 2026",
  version:   "5.0",
  bioinfo:   ("Bio", "Information"),
  extrainfo: [#text(fill: rgb(31,186,190), weight: "bold")[This template's typographic style is inspired by the original ElegantBook (LaTeX version).]],
  cover:     "figure/cover.jpg",
  logo:      "figure/logo-blue.png",
  color:     "cyan",
  lang:      "en",
)

// ---- Front matter ----
#outline(
  title: "Contents",
  indent: 1.5em,
  depth: 2,
)

// ---- Main matter ----

= ElegantBook Templates

This is a beautiful, elegant, and user-friendly Typst book template. The typographic style is inspired by the original #link("https://github.com/ElegantLaTeX/ElegantBook")[ElegantBook] (LaTeX version). It is designed for typesetting books, notes, and academic documents with a modern and clean look.

Contact & Resources:
- GitHub: #link("https://github.com/Iorest/ElegantBook-Typst")[https://github.com/Iorest/ElegantBook-Typst]
- Download: #link("https://github.com/Iorest/ElegantBook-Typst/releases")[release]

== Online Usage

You can use this template online via #link("https://typst.app/")[Typst Web App] without any local installation. Simply upload `elegantbook.typ` and your document file to start writing anywhere, anytime.

== Local Usage

For local usage, download the latest release from GitHub and place `elegantbook.typ` in your working directory. Then import it at the top of your document:

```typst
#import "elegantbook.typ": *
```

== Update Templates

You can update the template by downloading the latest version from GitHub and replacing the `elegantbook.typ` file in your project.

== Typst CLI

If you use the Typst CLI, you can compile your document with:

```bash
typst compile elegantbook-en.typ
typst watch elegantbook-en.typ   # live preview
```

= ElegantBook Settings

This template is built natively for Typst. The default encoding is UTF-8.

== Languages

We defined one option named `lang` which has two basic values, `lang: "en"` (default) and `lang: "cn"`. Different values will alter the captions of figure/table, chapter/section names, and the labels of theorem environments.

```typst
#show: elegantbook.with(lang: "cn")
```

All theorem environments also accept a `lang` parameter:

```typst
#definition(name: "Left Coset", theme: theme, lang: "cn")[
  Content of definition.
]
```

#remark(lang: "en")[
  Chinese characters are only recommended when `lang: "cn"` is set.
]

== Device Mode

You can change the paper size to get an iPad-like layout:

```typst
// A4 paper (default)
#show: elegantbook.with(...)

// For a more compact layout, use a5 paper via page settings
```

== Color Themes

This template contains 5 color themes: `green`, `cyan`, `blue` (default), `gray`, `black`. You can choose `green` with:

```typst
#show: elegantbook.with(color: "green")
```

#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: center,
    table.header(
      [], [green], [cyan], [blue], [gray], [black], [Main Environments]
    ),
    [structure],
    rect(fill: rgb(0,120,2), width: 1cm, height: 1cm),
    rect(fill: rgb(31,186,190), width: 1cm, height: 1cm),
    rect(fill: rgb(60,113,183), width: 1cm, height: 1cm),
    rect(fill: rgb(150,150,150), width: 1cm, height: 1cm),
    rect(fill: rgb(0,0,0), width: 1cm, height: 1cm),
    [chapter / section],
    [main],
    rect(fill: rgb(0,120,2), width: 1cm, height: 1cm),
    rect(fill: rgb(59,180,5), width: 1cm, height: 1cm),
    rect(fill: rgb(0,166,82), width: 1cm, height: 1cm),
    rect(fill: rgb(150,150,150), width: 1cm, height: 1cm),
    rect(fill: rgb(0,0,0), width: 1cm, height: 1cm),
    [definition / exercise],
    [second],
    rect(fill: rgb(230,90,7), width: 1cm, height: 1cm),
    rect(fill: rgb(175,153,8), width: 1cm, height: 1cm),
    rect(fill: rgb(255,134,24), width: 1cm, height: 1cm),
    rect(fill: rgb(150,150,150), width: 1cm, height: 1cm),
    rect(fill: rgb(0,0,0), width: 1cm, height: 1cm),
    [theorem / lemma],
    [third],
    rect(fill: rgb(0,160,152), width: 1cm, height: 1cm),
    rect(fill: rgb(244,105,102), width: 1cm, height: 1cm),
    rect(fill: rgb(0,174,247), width: 1cm, height: 1cm),
    rect(fill: rgb(150,150,150), width: 1cm, height: 1cm),
    rect(fill: rgb(0,0,0), width: 1cm, height: 1cm),
    [proposition],
  ),
  caption: [ElegantBook Themes],
)

If you want to customize the colors, define your own theme dictionary:

```typst
#let my-theme = (
  structure: rgb(60, 113, 183),
  main:      rgb(0, 166, 82),
  second:    rgb(255, 134, 24),
  third:     rgb(0, 174, 247),
)
```

== Cover

=== Customized Cover

The cover supports the following optional elements:

- `title`
- `subtitle`
- `author`
- `institute`
- `date`
- `version`
- `extrainfo`
- `cover` (cover image path)
- `logo` (logo image path)

Besides, an extra parameter `bioinfo` is provided with two options---caption and content. For instance, if you want to display `Username: 111520`, just type in:

```typst
bioinfo: ("Username", "115520"),
```

=== Cover Image

The cover image used in this template is from #link("https://pixabay.com/en/tea-time-poetry-coffee-reading-3240766/")[pixabay.com]. The image is completely free and can be used under any circumstance. The cover image size is $1280 times 1024$.

== Chapter Title Display Styles

This template uses a single-line chapter title style by default. The chapter number and title are displayed in the theme's structure color.

== Introduction of Math Environments

We defined theorem class environments with colored boxes (fancy style). In this template, we defined four different theorem class environments:

- *Theorem Environments*, including title and content, numbering corresponding to chapter. Three types depending on the format:
  - #text(fill: theme.main)[*definition*] environment, the color is #text(fill: theme.main)[main];
  - #text(fill: theme.second)[*theorem, lemma, corollary, axiom, postulate*] environment, the color is #text(fill: theme.second)[second];
  - #text(fill: theme.third)[*proposition*] environment, the color is #text(fill: theme.third)[third].
- *Example Environment*, including *example, exercise, problem* environment, auto numbering according to chapter.
- *Proof Environment*, including *proof, note* environment containing introductory symbol (*note* environment) or ending symbol (*proof* environment).
- *Conclusion Environment*, including *conclusion, assumption, property, remark and solution* environments, all of which begin with boldfaced words.

=== Theorem Class Environments

The usage is as follows:

```typst
// With name
#definition(name: "Left Coset", theme: theme, lang: "en")[
  Content of definition.
]

// Without name
#theorem(theme: theme, lang: "en")[
  Content of theorem.
]
```

=== Other Customized Environments

The other math environments can be called directly:

```typst
#example(theme: theme, lang: "en")[
  This is the content of example environment.
]
```

The effect is as follows:

#example(theme: theme, lang: "en")[
  This is the content of example environment.
]

These are all similar environments with slight differences:

- Example, exercise, problem environments number within chapter;
- Note begins with introductory symbol and proof ends with ending symbol;
- Conclusion and other environments are normal paragraph environments with boldfaced introductory words.

== List Environments

Typst has built-in list environments. The effect is as follows:

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [
    - first item of nesti;
    - second item of nesti;
      - first item of nestii;
      - second item of nestii;
        - first item of nestiii;
        - second item of nestiii.
  ],
  [
    + first item of nesti;
    + second item of nesti;
      + first item of nestii;
      + second item of nestii;
        + first item of nestiii;
        + second item of nestiii.
  ]
)

== Bibliography

This template uses Typst's built-in bibliography support. You can cite references using `@key` syntax. For example, `@en1` produces @en1, and `@en2` produces @en2.

To include a bibliography, add at the end of your document:

```typst
#bibliography("reference.bib", style: "ieee")
```

== Preface

If you want to add a preface before the first chapter with the chapter number unchanged, add the preface in the following way:

```typst
= Introduction <chapter-intro>
#counter(heading).update(0)

The content of introduction.
```

== Content Option and Depth

Use Typst's built-in `#outline()` function:

```typst
#outline(
  title: "Contents",
  indent: 1.5em,
  depth: 2,
)
```

== Introduction Environment

We create an introduction environment to display the structure of a chapter. The basic usage is as follows:

```typst
#introduction(theme: theme, lang: "en", (
  [Definition of Theorem],
  [Ask for help],
  [Optimization Problem],
  [Property of Cauchy Series],
  [Angle of Corner],
))
```

And you will get:

#introduction(theme: theme, lang: "en", (
  [Definition of Theorem],
  [Ask for help],
  [Optimization Problem],
  [Property of Cauchy Series],
  [Angle of Corner],
))

The environment `problemset` is used at the end of each chapter to display corresponding exercises:

```typst
#problemset(theme: theme, lang: "en", (
  [exercise 1],
  [exercise 2],
  [exercise 3],
))
```

And you will get:

#problemset(theme: theme, lang: "en", (
  [exercise 1],
  [exercise 2],
  [exercise 3],
  [math equation test: $a^2 + b^2 = c^2$],
))

#remark(lang: "en")[
  If you want to customize the title of `problemset`, please change the optional argument. In this version the `problemset` environment automatically appears in the table of contents.
]

#solution(lang: "en")[
  If you want to customize the title of `problemset`, please change the optional argument like in introduction environment.
]

= ElegantBook Writing Sample

#introduction(theme: theme, lang: "en", (
  [Theorem Class Environments],
  [Cross Reference],
  [Math Environments],
  [List Environments],
  [Logo and Base],
  [$a^2 + b^2 = c^2$],
))

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

== Writing Sample

We will define the integral of a measurable function in three steps. First, we define the integral of a nonnegative simple function. Let $E$ be the measurable set in $cal(R)^N$.

#definition(name: "Left Coset", theme: theme, lang: "en")[
  Let $H$ be a subgroup of a group $G$. A _left coset_ of $H$ in $G$ is a subset of $G$ that is of the form $x H$, where $x in G$ and $x H = { x h : h in H }$. Similarly a _right coset_ of $H$ in $G$ is a subset of $G$ that is of the form $H x$, where $H x = { h x : h in H }$.
]

#note(lang: "en")[
  Note that a subgroup $H$ of a group $G$ is itself a left coset of $H$ in $G$.
]

Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

#theorem(name: "Lagrange's Theorem", theme: theme, lang: "en")[
  Let $G$ be a finite group, and let $H$ be a subgroup of $G$. Then the order of $H$ divides the order of $G$.
]

Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.

#theorem(name: "Named Theorem", theme: theme, lang: "en")[
  The content of theorem with a name.
]

#proposition(name: "Size of Left Coset", theme: theme, lang: "en")[
  Let $H$ be a finite subgroup of a group $G$. Then each left coset of $H$ in $G$ has the same number of elements as $H$.
]

#proof(lang: "en")[
  Let $z$ be some element of $x H inter y H$. Then $z = x a$ for some $a in H$, and $z = y b$ for some $b in H$. If $h$ is any element of $H$ then $a h in H$ and $a^(-1) h in H$, since $H$ is a subgroup of $G$. But $z h = x(a h)$ and $x h = z(a^(-1) h)$ for all $h in H$. Therefore $z H subset x H$ and $x H subset z H$, and thus $x H = z H$. Similarly $y H = z H$, and thus $x H = y H$, as required.
]

#figure(
  image("image/scatter.jpg", width: 60%),
  caption: [Scatter Plot Example],
)

Regression analysis is a powerful statistical method that allows you to examine the relationship between two or more variables of interest @en1. While there are many types of regression analysis, at their core they all examine the influence of one or more independent variables on a dependent variable @en2.

Let's continue using our application training example. In this case, we'd want to measure the historical levels of satisfaction with the events from the past three years or so, as well as any information possible in regards to the independent variables @en3.

== Second Section

#figure(
  table(
    columns: (auto, auto, auto),
    align: (left, center, center),
    table.header([], [(1)], [(2)]),
    [mpg],    [-238.90\*\*\*], [-49.51],
    [],       [(53.08)],       [(86.16)],
    [weight], [],              [1.75\*\*\*],
    [],       [],              [(0.641)],
    [constant], [11,253\*\*\*], [1,946],
    [],         [(1,171)],      [(3,597)],
    [obs],    [74],            [74],
    [$R^2$],  [0.220],         [0.293],
    table.cell(colspan: 3, align: left)[#text(size: 8pt)[Standard errors in parentheses]],
    table.cell(colspan: 3, align: left)[#text(size: 8pt)[\*\*\* $p < 0.01$, \*\* $p < 0.05$, \* $p < 0.1$]],
  ),
  caption: [Auto MPG and Price],
)

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.

Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.

- Routing and resource discovery;
  - Language Models
  - Vector Space Models
- Resilient and scalable computer networks;
- Distributed storage and search.

#problemset(theme: theme, lang: "en", (
  [Solve the equation $5(-3x - 2) - (x - 3) = -4(4x + 5) + 13$.],
  [Find the distance between the points $(-4, -5)$ and $(-1, -1)$.],
  [Find the slope of the line $5x - 5y = 7$.],
))

= FAQ

We list some FAQs for users to refer to:

+ #question[Why does the counter reset unexpectedly?]
  Make sure theorem environments are placed after a chapter heading. Counters are tied to `heading.where(level: 1)`.

+ #question[I want to customize font and background color.]
  Please use `set page(fill: ...)` to change background color, and `set text(fill: ...)` to customize font color.

+ #question[Which version should I choose?]
  Please use #link("https://github.com/Iorest/ElegantBook-Typst/releases")[Latest Release] via GitHub.

+ #question[Which editor should I choose?]
  You can use VS Code with the #link("https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist")[Tinymist] extension, or the official #link("https://typst.app/")[Typst Web App].

+ #question[Hello, we want to use ElegantBook to write a book about machine learning and would like your authorization.]
  Feel free to use our templates by pointing out our copyright. For other issues, please refer to the MIT License.

+ #question[What is cross reference?]
  This template is aimed at users who are not complete beginners in Typst. Please learn more about Typst before using this template.

+ #question[Is the language for code highlighting optional?]
  Yes, Typst's built-in raw blocks support language highlighting. Use triple backticks followed by a language name (e.g. `python`) for syntax highlighting.

+ #question[When will a presentation template (ElegantSlide) be available?]
  Since there is an excellent Typst presentation package #link("https://typst.app/universe/package/touying")[Touying], no separate plan for a slide theme at this time.

= Version History

This section shows the version history of ElegantBook (Typst).

#datechange("2026/06/10", "release of v5.0 — " + text(fill: rgb(31,186,190), weight: "bold")[Typst Rewrite], (
  [Complete rewrite in Typst, inspired by the original ElegantBook (LaTeX) style.],
  [Support 5 color themes: blue, green, cyan, gray, black.],
  [Full bilingual support (English & Chinese).],
  [Rich theorem-like environments with colored boxes.],
  [Custom cover page with image, logo, and metadata.],
))

// ---- Appendix ----
#counter(heading).update(0)
#set heading(numbering: "A.1")

= Mathematical Tools

This appendix covers some of the basic mathematics used in econometrics. We briefly discuss the properties of summation operators, study the properties of linear and some nonlinear equations, and review the ratios and percentages.

== Summation Operator and Description Statistics

*Summation Operator* is an abbreviation used to express the summation of numbers, it plays an important role in statistics and econometrics analysis. If ${x_i : i = 1, 2, dots, n}$ is a sequence of $n$ numbers, the summation of the $n$ numbers is:

$
  sum_(i=1)^n x_i equiv x_1 + x_2 + dots.c + x_n
$

// ---- Bibliography ----
#set heading(numbering: none)
#bibliography("reference.bib", style: "ieee", title: "Bibliography")
