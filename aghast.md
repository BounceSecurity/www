---
title: "OWASP AGHAST"
subtitle: "AI-Guided Hybrid Application Static Testing"
layout: product
show_sidebar: false
hero_height: is-small
hero_link: https://aghast.owasp.org
hero_link_text: Visit the OWASP Project Site
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
  OWASP AGHAST is a framework for orchestrating custom security checks against your codebase.
  It supports three modes of operation, allowing you to choose the right approach for each check:
questions: true
questions_title: Example Questions OWASP AGHAST Can Answer
questions_intro: >
  Unlike generic scanners that look for known vulnerability patterns, OWASP AGHAST helps you answer
  organization-specific questions such as:
questions_list:
  - Has our custom business verification been implemented correctly?
  - Has the company's custom authorization mechanism been used correctly and consistently?
  - Are API endpoints returning too wide a data set?
  - Are there places where our internal security patterns have been bypassed?
getting_started: >
  OWASP AGHAST requires **Node.js 20+**. For AI and hybrid checks you will need an agent provider:
  either an **Anthropic API key** (for the default Claude Code provider) or
  **[OpenCode](https://opencode.ai)** installed and authenticated, which delegates to any of
  the 75+ LLM providers OpenCode supports, including some **free options**.


  **Semgrep Community Edition** is needed for hybrid and static checks, and **OpenAnt** is
  supported as an alternative discovery method.


  Install with `npm install -g @owasp-aghast/aghast`. Full installation and configuration
  guidance lives on the [project site](https://aghast.owasp.org).


  OWASP AGHAST is heavily used in our [Repeatable, Scalable and Valuable Code Security Scanning](/training/aisast/) training course, where you will get hands-on experience writing custom checks and applying it to real-world code security challenges.
action_buttons:
  - text: OWASP Project Site
    link: https://aghast.owasp.org
    icon: fas fa-external-link-alt
    style: is-primary
    external: true
  - text: View on GitHub
    link: https://github.com/owasp-aghast/aghast
    icon: fab fa-github
    style: is-info
    external: true
  - text: Get in Touch
    link: "mailto:info@bouncesecurity.com?subject=AGHAST"
    icon: fas fa-envelope
    style: is-dark
licensing: >
  OWASP AGHAST is licensed under **AGPL** to keep it open and ensure improvements flow back to the community.
  If you are interested in commercial licensing, professional support, or help implementing OWASP AGHAST
  in your organization, [get in touch](mailto:info@bouncesecurity.com?subject=AGHAST%20Commercial%20Licensing).
---

**OWASP AGHAST** is an open source framework that combines static code discovery with AI-powered analysis to find **codebase-specific** and **company-specific** security issues.

> **AGHAST is now an OWASP project.** We created AGHAST at Bounce Security and have donated it to OWASP, where it lives as **OWASP AGHAST** — an OWASP Incubator project. The canonical home is now [aghast.owasp.org](https://aghast.owasp.org) and the code is at [github.com/owasp-aghast/aghast](https://github.com/owasp-aghast/aghast). Bounce Security continues as a maintaining supporter. Read the [announcement](/blog/2026/06/16/aghast-joins-owasp.html).

Generic scanners catch generic bugs. But what about your custom authorization logic? Your business-specific validation rules? The security patterns unique to your organization? OWASP AGHAST is built to answer those questions.

These are questions that require **context** about how things *should* work, not just what is technically vulnerable.
