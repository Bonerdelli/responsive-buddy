# Responsive Buddy

A lightweight and fully customizable LESS-based framework for developing modern web-applications. This framework doesn't include visual themes, it's main advantage is fast layout making.

## Key features

- 12-columns responsive grid with both mobile and non-mobile first breakpoints
- Responsive helper classes for mastering block layout: paddings, margins, hiding, etc.
- Responsive text classes: aligning, font sizing, font decoration, etc.
- Mixin for generating a base coloring classes

## Usage

1. Install Responsive Buddy, you can use both NPM or Bower
```
npm install --save-dev responsive-buddy
```

2. Link a latest builded version `dist/buddy.min.css` in your HTML

As advanced option, you can include LESS sources in your project build system. Then you can override variables from `source/vars.less` and customize framework for your needs.

## Responsive

Responsive Buddy is a trully responsive framework. By default the following screen widths breakpoints are used:

```
xs: 400 pixels
sm: 560 pixels
md: 780 pixels
lg: 1040 pixels
xl: 1440 pixels
```

You can override them for your project needs. Or add a new one, a minimal modification of `vars.less` will be needed.

### Breakpoints scheme

Unlike of most popular frameworks, Responsive Buddy use breakpoint that limiting maximal screen sizes. I.e. `@screen-sm` breakpoint limiting upper bound of width range for `sm` screen sizes. In this case lower bound for `sm` range calculated as `xs` breakpoint size plus 1 pixel. Lower bound for `xs` range is 0, upper bound for `xl` is unlimited.

```
 0 pixels      400         560         780          1040         1440
 └── screen-xs ─┴ screen-sm ┴ screen-md ┴ screen-lg ─┴ screen-xl ─┴ screen-xxl ─
```

### Responsive prefixes

Most of helper classes can be augmented with responsive prefix. There is a three type of prefixes.

1. Limiting minimal width (mobile-first style): `{breakpoint}-{class}`
In this case `class` will be applied for screen sizes from 0px (CSS-pixels) to given `breakpoint`.

1. Limiting maximal width (non mobile-first style): `{breakpoint}-max-{class}`
In this case `class` will be applied for screen sizes greater that given `breakpoint` size.

1. Limiting width range by top breakpoint: `{breakpoint}-only-{class}`
`Class` will be limited by screens with sizes less that given `breakpoint` size and greater that previous breakpoint or 0px if `breakpoint` was a first one. For example `sm-only-text-right` will change text aligning from start of `sm` breakpoint to end, that calculated as `md` size minus 1 pixel.

## Development

1. NodeJS must be installed. Install LESS and Clean CSS plugin globally.

```
npm install -g less less-plugin-clean-css less-plugin-autoprefix
```
2. Do a some improvements and compile LESS in `dist/buddy.css` with a command:

```
npm run build-dist
```
As alternate you can compile stylesheets as modules. In this case source maps will be written in stylesheets, so it's a preferred way for debugging. Do it with a command:
```
npm run build-css
```
3. When all improvements will be done, don't forget increment version and run a main build command:

```
npm run build
```
4. Do a pull request if you want to contribute in project
