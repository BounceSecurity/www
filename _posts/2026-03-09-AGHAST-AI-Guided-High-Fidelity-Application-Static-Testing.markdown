---
layout: post
title: "Introducing AGHAST: AI-Guided High-Fidelity Application Static Testing"
subtitle: "An open source custom code scanner blending static rules and AI"
date:   2026-03-09 15:30:00 +0300
categories: blog
hero_height: is-small
author: josh
image: /assets/img/2026-03-aghast-intro/aghastbouncecaption.png
summary: Introducing AGHAST, an open source tool that combines static scanning rules with AI prompts to find code-specific and company-specific security issues.
---

#### tl;dr

Today, we are releasing AGHAST, an open source tool that combines static scanning rules with AI prompts to find code-specific and company-specific security issues.

![AGHAST logo](/assets/img/2026-03-aghast-intro/aghastbouncecaption.png){: .blog-image}

If you want to try it out, you can find information here in the [Github repository](https://github.com/BounceSecurity/aghast).

If you want to understand more about the background, read on!

#### Introduction

Every security team has asked some version of this question: "Can our scanner check for *that*?" Usually, the answer is no - or at best, "it's complicated." That frustration is exactly where this story begins.

![16:9. Digital art illustration of a security professional standing in front of a wall of code screens, looking frustrated at generic vulnerability alerts while unique, company-specific security issues float past undetected, shown as glowing red symbols slipping through a digital net. Cool blue and red color scheme, cybersecurity concept art style, modern and clean.](/assets/img/2026-03-aghast-intro/confused.png){: .blog-image}

#### The Gap in Generic Scanning

A couple of years ago, I started thinking about a particular problem in application security. There were loads of generic code scanning tools that would tell you about basic technical vulnerabilities, things like SQLi, XSS, the usual suspects. But what if I wanted to find something that was code-specific or company-specific?

Some of the scanning tools provide a custom rules mechanism, which is often very complicated. It was not until [Semgrep](https://semgrep.dev/docs/cli-reference) came about that a powerful but simple way of writing custom code scanning rules was available.

#### The Questions Nobody Else Could Answer

The sorts of questions I wanted to answer were:

- Has this custom business verification been implemented correctly?
- Has the company's custom authorization mechanism been used in the right way?
- Has authorization been applied consistently, given that this company had lots of different ways of doing it?

These are questions that are specific to a codebase or organization, and basically impossible for generic static security scanners to answer. They require *context* to understand how things *should* work, not just what is technically vulnerable.

![16:9. Illustration of three interconnected puzzle pieces, each containing a different security question mark symbol, floating above a stylized codebase represented as a city grid. The puzzle pieces glow with warm orange light against a dark blue background. Digital art style, clean lines, concept art for software security.](/assets/img/2026-03-aghast-intro/puzzle-pieces.png){: .blog-image}

#### From Research to Real-World Use

Working with [Michal Kamensky](https://www.linkedin.com/in/michal-kamensky-a65804247/), we prepared a [talk](https://www.youtube.com/watch?v=KuNZzDjvMlg) and eventually [a training course](https://www.bouncesecurity.com/training/bughunting) focused around this area of custom tests. The research initially focused on static testing, and for the training course also included dynamic testing.

The aim was simple: provide a straightforward way to get an answer to a codebase-specific or company-specific question.

I also started using this mechanism with clients to secure their codebases. However, the simplicity was sometimes a drawback. Diagnosing certain problems could be very complex or even impossible for a static rule alone to establish.

Something was missing. Static rules could get us part of the way but were not good enough for every circumstance.

#### Enter LLMs

Thankfully at this point, LLMs came to the rescue. Suddenly we had LLMs and coding agents that were very good at understanding and interpreting code.

I started by moving from static rules to LLM prompts and quickly discovered that once you reached a certain codebase size, the results became unreliable. Feeding an entire codebase to an LLM and asking "find the problems" is a bit like asking someone to proofread the internet: technically possible, practically useless.

That led to a key realization: why not combine these two techniques?

- Use **static rules** to narrow down to particular areas of the codebase.
- Use an **AI prompt** to investigate that specific area in depth.

Think of it as a metal detector on a beach: the static rule tells you where to dig, and the AI carefully examines what you find.

![16:9. Digital art illustration of a two-stage process shown as a funnel diagram. The top wide section shows scattered code files with a magnifying glass labeled 'Static Rules' filtering them down. The narrow bottom section shows a glowing AI brain analyzing a small focused set of code. Gradient from cool blue at top to vibrant purple at bottom. Clean, modern infographic style, technical illustration.](/assets/img/2026-03-aghast-intro/funnel.png){: .blog-image}

#### The Orchestration Problem

That approach works conceptually, but it introduces another challenge:

How do you orchestrate this at scale, in a repeatable way, and in a way that integrates with existing processes?

Running a one-off combination of a Semgrep rule plus an LLM prompt is one thing. Doing it consistently across multiple codebases, in CI pipelines, with structured output requires slightly more plumbing.

#### The Answer: AGHAST

The answer is **AGHAST**.

This is a tool that has been germinating for about six months.

**AGHAST** stands for **AI-Guided High-Fidelity Application Static Testing**, and it is the tool that allows us to orchestrate tests based on this custom test philosophy.

Today, we at Bounce Security are open sourcing this tool for you to use and build on as well.

#### What AGHAST Does

AGHAST helps you generate three types of checks:

- **Pure AI scanning rules** - let the LLM do all the analysis
- **A combination of a static rule and an AI scanning rule** - the sweet spot for most use cases
- **Purely static rules** - for completeness, when a traditional static rule is all you need

The beauty of the approach is what you *don't* need:

- You don't need to modify the code
- You don't need to build something into the codebase
- You don't need to write code in the language of the codebase

All you need is:

- Access to the codebase
- An understanding of the problem you are trying to discover
- The ability to write some simple rules

There are almost certainly other ways of achieving this, but to our mind, this approach is both **straightforward** and **deterministic**.

#### Built for the Real World

Aside from the basic function, there are several features designed to make AGHAST easy to use and integrate into your existing workflow.

![16:9. Isometric digital art illustration showing AGHAST as a central hub connected to four satellite components: a CI/CD pipeline conveyor belt, interchangeable LLM provider blocks, output format documents (JSON, SARIF), and a configuration gear mechanism. Clean lines, modern tech illustration style, blue and teal color palette with white background.](/assets/img/2026-03-aghast-intro/architecture.png){: .blog-image}

##### 1. CI Pipeline Integration

From the beginning, AGHAST was designed to work easily within automated CI pipelines, utilizing a simple install process, text based configuration and a single CLI call to run.

We anticipate that most teams will find it most useful in this context in the long run. Set it up once, and it runs with every build.

##### 2. Pluggable LLM Providers

The current implementation is based around Claude Code and the Anthropic Agentic API.

However, the design intentionally allows for pluggability, so it can support:

- Different API providers
- Different LLM providers

No vendor lock-in here - use whatever works best for your team.

##### 3. Pluggable Output Formats

Output formats are also designed to be pluggable. Currently supported formats include  JSON and SARIF but it will be straightforward to extend this to other formats as well.

##### 4. Flexible Configuration Mechanism

AGHAST includes a flexible configuration mechanism.

This allows checks to be specified in multiple ways:

- **Per-codebase configuration** - tailor checks to individual projects
- **Central configuration containing definitions for multiple codebases** - manage everything from one place

This makes it easy to define a CI job in one place using a single configuration file, which can then apply across multiple codebases that use the same CI job.

#### Protection of our work

We want this tool to be widely available to practitioners to use in their environments or to consultants to implement in client environments.

However, we did not release this for companies to package up and sell within their own commercial product offerings. For this reason, we have licenced under AGPL. Regardless of the specifics of the license, do not build and sell a product around this tool or including this tool. 

#### Prior and Parallel Work

No tool exists in a vacuum. I want to acknowledge some prior and parallel work in this area that both inspired and validated the direction we took.

##### Semgrep

[![Semgrep](/assets/img/2026-03-aghast-intro/semgrep.svg){: .blog-image}](https://semgrep.dev/)

Firstly, I want to give a shout out to the team at **[Semgrep, Inc](https://semgrep.dev/)** for building a fantastic tool for simple static scanning. They truly revolutionized this space and we stand on their shoulders as do many others.

[Semgrep Community Edition](https://semgrep.dev/docs/cli-reference) is a key part of AGHAST today, although the system is also extensible and could support OpenGrep or other static discovery mechanisms.

##### Anthropic Code Security (et al)

A few weeks ago, Anthropic released their code security product to much fanfare (and gnashing of shareholder teeth) followed by similar releases from other LLM providers.

That product appears to focus on giving an LLM a codebase and seeing what vulnerabilities emerge.

AGHAST differs in a key way:

- Those tools are exploratory - "tell me what you find"
- AGHAST is goal-driven - "tell me about *this specific thing*"

AGHAST looks for **specific issues you define** and returns a **specific, well-formed answer** about those issues.

##### RAPTOR

```
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣤⣀⣀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⠿⠿⠟
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⣀⣤⣴⣶⣶⣶⣤⣿⡿⠁⠀⠀⠀
⣀⠤⠴⠒⠒⠛⠛⠛⠛⠛⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⣿⣿⣿⡟⠻⢿⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⢿⣿⠟⠀⠸⣊⡽⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⣿⡁⠀⠀⠀⠉⠁⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⠿⣿⣧⠀ Get them bugs.....⠀⠀⠀⠀⠀⠀⠀⠀
                                                 
```

(I had to reproduce their [funky ASCII art](https://github.com/gadievron/raptor/blob/main/README.md))

At the start of the year, our friends [Gadi Evron](https://www.linkedin.com/in/gadievron/), [Daniel Cuthbert](https://www.linkedin.com/in/daniel-cuthbert0x/) [and others](https://github.com/gadievron/raptor#raptor---autonomous-offensivedefensive-security-research-framework-based-on-claude-code) released RAPTOR, which performs agentic code scanning for various scenarios.

It is particularly strong for offensive work and moving from vulnerability discovery to exploitation.

While we initially considered building on Raptor, the design philosophy differs enough that it ultimately made more sense to build separately.

##### OpenAnt

[![OpenAnt](/assets/img/2026-03-aghast-intro/open-ant-black.png){: .blog-image}](https://www.knostic.ai/openant)

More recently, [Gadi Evron](https://www.linkedin.com/in/gadievron/) and [team](https://www.knostic.ai/) released [OpenAnt](https://www.knostic.ai/blog/oss-scan). I saw it about a week before release and thought their approach for focusing the LLM's attention on particular areas of code at a time was super interesting.

The key difference again is that AGHAST is oriented around specific checks and explicit criteria that determine which parts of the codebase are examined.

Nevertheless, it was encouraging to see them independently arrive at the same conclusion:

> A key differentiator for LLM-based analysis is guiding the model to the specific area of the codebase it should examine rather than trying to load a whole codebase into context.

#### What Comes Next

We think tools like **AGHAST** are going to be an important step in taking static code analysis to the next level of usability and accuracy. The combination of deterministic static rules and intelligent AI analysis opens up possibilities that neither approach could achieve alone.

We are looking forward to seeing your feedback - and even more, to seeing what custom checks you build with it!