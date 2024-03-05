---
title: 'Tailwind is not that bad, CSS is not that good'
description: 'Hi and stuff'
pubDate: 'Feb 29 2024'
heroImage: './header.svg'
draft: true
---

- Tailwind makes sense for components

  - External CSS looks cleaner, but basically just by hiding styling
  - CSS class nameing would be unacceptable in code

- Things like display hidden, user-select are change the semantics of elements

- Utility classes are older than tailwind

  - bootstrap
  - clearfix

- Tailwind looks ugly
  - Seems like it wants to have it's own syntax, but needs to hack around it with classes
    - This hack makes it so it needs external help, with it's own compiler
      - Not that big of a deal, since the codebases that work with tailwind probably already have a build-chain
