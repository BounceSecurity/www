---
title: "AGHAST"
subtitle: "AI-Guided Hybrid Application Static Testing"
layout: product
show_sidebar: false
hero_height: is-small
hero_link: https://github.com/BounceSecurity/aghast
hero_link_text: Get Started on GitHub
hero_link_colour: is-dark
hero_link_size: is-medium
callouts: aghast_callout
product_image: /assets/img/2026-04-aghast-intro/aghastbouncesmaller.png
product_tagline: Find the issues that generic scanners miss
modes_data: aghast_modes
features_data: aghast_features
video: B76A33l1LyI
how_it_works_title: How It Works
how_it_works: >
  AGHAST uses a **hybrid approach**: static rules narrow down the areas of interest in your codebase,
  then AI examines those specific areas in depth. Think of it as a metal detector on a beach —
  the static rule tells you where to dig, and the AI carefully examines what you find.


  AGHAST supports three modes of operation:
how_it_works_image: /assets/img/2026-04-aghast-intro/funnel.png
how_it_works_image_alt: "AGHAST hybrid approach: static rules filter code, AI analyzes findings"
questions: true
questions_title: The Questions AGHAST Can Answer
questions_intro: >
  Unlike generic scanners that look for known vulnerability patterns, AGHAST helps you answer
  organization-specific questions:
questions_list:
  - Has our custom business verification been implemented correctly?
  - Has the company's custom authorization mechanism been used correctly and consistently?
  - Are API endpoints returning too wide a data set?
  - Are there places where our internal security patterns have been bypassed?
getting_started: >
  AGHAST requires **Node.js 20+** and an **Anthropic API key** for AI-powered checks.
  Optional components include Semgrep Community Edition and OpenAnt for additional discovery methods.
action_buttons:
  - text: View on GitHub
    link: https://github.com/BounceSecurity/aghast
    icon: fab fa-github
    style: is-primary
    external: true
  - text: Read the Blog Post
    link: /blog/2026/04/12/Introducing-AGHAST.html
    icon: fas fa-newspaper
    style: is-info
  - text: Get in Touch
    link: "mailto:info@bouncesecurity.com?subject=AGHAST"
    icon: fas fa-envelope
    style: is-dark
licensing: >
  AGHAST is licensed under **AGPL** to keep it open and ensure improvements flow back to the community.
  If you are interested in commercial licensing, professional support, or help implementing AGHAST
  in your organization, [get in touch](mailto:info@bouncesecurity.com?subject=AGHAST%20Commercial%20Licensing).
---

**AGHAST** is an open source framework that combines static code discovery with AI-powered analysis to find **codebase-specific** and **company-specific** security issues.

Generic scanners catch generic bugs. But what about your custom authorization logic? Your business-specific validation rules? The security patterns unique to your organization? AGHAST is built to answer those questions.

These are questions that require **context** about how things *should* work, not just what is technically vulnerable.
