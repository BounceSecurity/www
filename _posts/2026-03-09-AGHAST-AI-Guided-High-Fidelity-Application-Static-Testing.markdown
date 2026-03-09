---
layout: post
title: "AGHAST: AI-Guided High-Fidelity Application Static Testing"
subtitle: "Introducing AGHAST, an open source tool for orchestrating custom code scanning with static rules and AI"
date:   2026-03-09 15:30:00 +0300
categories: blog
hero_height: is-small
author: josh
summary: Introducing AGHAST, an open source tool that combines static scanning rules with AI prompts to find code-specific and company-specific security issues.
---

## Background

A couple of years ago, I started thinking about a particular problem in application security. There were loads of generic code scanning tools that would tell you about basic technical vulnerabilities, but what if I wanted to find something that was code-based specific or company specific?

Some of the scanning tools provide a custom rules mechanism, which is often very complicated. It wasn't until Semgrep came about that a powerful but simple way of writing custom code scanning rules was available.

## The Problem Space

The sorts of questions I wanted to answer were:

- Has this custom business verification been implemented correctly?
- Has the company's custom authorization mechanism been used in the right way?
- Has authorization been applied consistently, given that this company had lots of different ways of doing it?

These are questions that are specific to a codebase or organization, and difficult for generic security scanners to answer.

## Early Work

Working with Michal Kamensky, we prepared a talk and eventually a training course focused around this area of custom tests. The research initially focused on static testing, and for the training course also included dynamic testing.

The aim was simple: provide a straightforward way to get an answer to a code-based or company-specific question.

I also started using this mechanism with clients to secure their codebases. However, the simplicity was sometimes a drawback. Diagnosing certain problems could be complex or even impossible for a static rule alone to establish.

## Enter LLMs

Thankfully at this point, LLMs came to the rescue. Suddenly we had LLMs and coding agents that were very good at understanding and interpreting code.

I started by moving from static rules to LLM prompts and quickly discovered that once you reached a certain codebase size, the results became unreliable.

That led to a key realization: why not combine these two techniques?

- Use **static rules** to narrow down to particular areas of the codebase.
- Use an **AI prompt** to investigate that specific area in depth.

## The Orchestration Problem

That approach works conceptually, but it introduces another challenge:

How do you orchestrate this at scale, in a repeatable way, and in a way that integrates with existing processes?

## The Answer: AGHAST

The answer is **AGHAST**.

This is a tool that has been germinating for about six months.

**AGHAST** stands for **AI-Guided High-Fidelity Application Static Testing**, and it is the tool that allows me to orchestrate tests based on this custom test philosophy.

Today, we at **Arm Security** are open sourcing this tool for you to use and build on as well.

## What AGHAST Does

AGHAST helps you generate:

- **Pure AI scanning rules**
- **A combination of a static rule and an AI scanning rule**
- **Purely static rules** (for completeness)

You don't need to:

- Modify the code
- Build something into the codebase
- Write code in the language of the codebase

All you need is:

- Access to the codebase
- An understanding of the problem you are trying to discover
- The ability to write some simple rules

There are almost certainly other ways of achieving this, but to our mind, this approach is both **straightforward** and **deterministic**.

## Additional Features

Aside from the basic function, there are several features designed to make AGHAST easy to use and integrate.

### 1. CI Pipeline Integration

From the beginning, AGHAST was designed to work easily within automated **CI pipelines**. We anticipate that most teams will find it most useful in this context over the long run.

### 2. Pluggable LLM Providers

The current implementation is based around **Claudecode** and the **Anthropic Agentic API**.

However, the design intentionally allows for pluggability, so it can support:

- Different API providers
- Different LLM providers

### 3. Pluggable Output Formats

Output formats are also designed to be pluggable.

Currently supported formats include:

- **JSON**
- **SARIF**

But it should be straightforward to extend this to other formats as well.

### 4. Flexible Configuration Mechanism

AGHAST includes a flexible configuration mechanism.

This allows checks to be specified in multiple ways:

- **Per-codebase configuration**
- **Central configuration containing definitions for multiple codebases**

This makes it easy to define a CI job in one place using a **master configuration file**, which can then apply across multiple codebases that use the same CI job.

## Prior and Parallel Work

I want to note some prior and parallel work in this area.

### Semgrep

Firstly, I want to call out **Semgrep** for building a fantastic tool for simple static scanning. They truly revolutionized this space.

The **community edition** is a key part of AGHAST today.

The system is also extensible and could support:

- **OpenGrep**
- Other static discovery mechanisms

### Anthropic Code Security

A few weeks ago, **Anthropic released their code security product** to much fanfare — and some gnashing of shareholder teeth — followed by similar releases from other LLM providers.

That product appears to focus on giving an LLM a codebase and seeing what vulnerabilities emerge.

AGHAST differs in a key way:

- Those tools are **exploratory**
- AGHAST is **goal-driven**

AGHAST looks for **specific issues you define** and returns a **specific, well-formed answer** about those issues.

### Raptor

At the start of the year, some friends released **Raptor**, which performs agentic code scanning across various scenarios.

It is particularly strong for **offensive work** and moving from **vulnerability discovery to exploitation**.

While I initially considered building on Raptor, the design philosophy differs enough that it ultimately made more sense to build separately.

### OpenAnt

More recently, **Gadi Everyone and team released OpenAnt**. I saw it about a week before release and was fascinated by their approach for focusing the LLM's attention on particular areas of code at a time.

The key difference again is that AGHAST is oriented around **specific checks** and **explicit criteria** that determine which parts of the codebase are examined.

Nevertheless, it was encouraging to see them independently arrive at the same conclusion:

> A key differentiator for LLM-based analysis is **guiding the model to the specific area of the codebase it should examine**.

## Closing Thoughts

We think tools like **AGHAST** are going to be an important step in taking static code analysis to the next level of **usability** and **accuracy**.

We're looking forward to seeing your feedback.
