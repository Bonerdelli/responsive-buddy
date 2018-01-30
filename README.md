# Responsive Buddy

A lightweight and fully customizable LESS-based framework for developing modern web-applications. This framework doesn't include visual themes, it's main advantage is fast layout making.

## Key features

- 12-columns responsive grid with both mobile and non-mobile first breakpoints
- Responsive helper classes for mastering block layout: paddings, margins, hiding, etc.
- Responsive text classes: aligning, font sizing, font decoration, etc.
- Mixin for generating coloring classes, based on `@palette`

## Usage

1. Install Responsive Buddy, you can use both NPM or Bower
```
npm install --save-dev responsive-buddy
```

2. Link a latest builded version `dist/buddy.min.css` in your HTML

As advanced option, you can include LESS sources in your project build system. Then you can override variables from `source/vars.less` and customize framework for your needs.

## Developing

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
