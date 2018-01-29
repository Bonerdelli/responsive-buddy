# Responsive buddy

A lightweight and fully customizable LESS-based framework for developing modern web-applications

## Key features:
- 12-columns responsive grid with both mobile and non-mobile first breakpoints
- Responsive helper classes for mastering block layout: paddings, margins, hiding, etc.
- Responsive text classes: aligning, font sizing, font decoration, etc.
- Mixin for coloring classes generation, based on `@palette`

## Developing

1. Install LESS and Clean CSS plugin globally. A latest NodeJS must be installed.

```
npm install -g less less-plugin-clean-css less-plugin-autoprefix
```
2. Do some improvements and build a project. LESS will be compiled in `dist/buddy.css` file.

```
npm run build
```
3. When all improvements will be done, run a build all command.

```
npm run build-all
```
4. Do a pull request if you want to contribute in project
