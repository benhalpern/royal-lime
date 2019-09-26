---
title: Home
sections:
  - section_id: hero
    component: hero_block.html
    type: heroblock
    content: >-
      Welcome to my fabulous blog.
  - section_id: about
    component: content_block.html
    type: contentblock
    title: About
    content: >-
      This is a proof of concept Stackbit-generated site. DEV-generated content built with Hugo.
    actions:
      - label: Contact Me
        url: /contact
  - section_id: recent-posts
    component: posts_block.html
    type: postsblock
    title: Recent Posts
    num_posts_displayed: 4
    actions:
      - label: View Blog
        url: blog/index.html
layout: home
menu:
  main:
    weight: 1
    name: Home
---
