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
  AGHAST is a framework for orchestrating custom security checks against your codebase.
  It supports three modes of operation, allowing you to choose the right approach for each check:
questions: true
questions_title: Example Questions AGHAST Can Answer
questions_intro: >
  Unlike generic scanners that look for known vulnerability patterns, AGHAST helps you answer
  organization-specific questions such as:
questions_list:
  - Has our custom business verification been implemented correctly?
  - Has the company's custom authorization mechanism been used correctly and consistently?
  - Are API endpoints returning too wide a data set?
  - Are there places where our internal security patterns have been bypassed?
getting_started: >
  AGHAST requires **Node.js 20+**. For AI and hybrid checks you will need an agent provider:
  either an **Anthropic API key** (for the default Claude Code provider) or
  **[OpenCode](https://opencode.ai)** installed and authenticated, which delegates to any of
  the 75+ LLM providers OpenCode supports, including some **free options**.
  **Semgrep Community Edition** is needed for hybrid and static checks, and **OpenAnt** is
  supported as an alternative discovery method.


  AGHAST is heavily used in our [Repeatable, Scalable and Valuable Code Security Scanning](/training/aisast/) training course, where you will get hands-on experience writing custom checks and applying AGHAST to real-world code security challenges.
action_buttons:
  - text: View on GitHub
    link: https://github.com/BounceSecurity/aghast
    icon: fab fa-github
    style: is-primary
    external: true
  - text: Read the Blog Post
    link: /blog/2026/04/14/Introducing-AGHAST.html
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
