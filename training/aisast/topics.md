---
title: "Repeatable, Scalable and Valuable Code Security Scanning"
subtitle: An end to end masterclass on securing your codebases
layout: service
hero_height: is-small
backlink: /training
backname: Training
menubar: aisast_menu
toc: true
---

### Course Content

**[Back to top ↑](#top)**

The course can be tailored to specific audiences or use cases. It has a set of standard topics which are covered and other topics which may be included.

### Summary of standard topics covered

**[Back to top ↑](#top)**

Topics to be covered include:

* Overview – setting out the basic details of what we will be talking about in terms of code scanning and SAST.
* Key techniques – Discuss the different techniques which can be used for this including generic “off the shelf” SAST, deterministic custom scanning rules, and LLM powered custom AI prompts
* Technique comparison - Advantages and disadvantages of each technique based on our in-depth experience with each and which technique you will want to use in different situations, to avoid wasting time trying to use a technique in an inappropriate use case.
* Organizational process – How to get these processes built into an organization’s existing software lifecycle
* Generic SAST – Using “off the shelf” rules effectively to catch “low hanging fruit” and avoid reinventing the wheel.
* Custom SAST – Introduce custom rule languages (e.g., Semgrep, CodeQL), writing rules from scratch, and scaling analysis across a codebase.
* Basic AI Code Security Scanning – Overview of AI-based scanning, platforms, principles, and initial single-shot prompts.
* Complex AI Code Security Scanning – AI-driven techniques for code security, including using AI to review and triage findings and creating multi-stage rules that combine deterministic rules with AI prompts to get the best of both worlds.
* Integrating into CI – Learn how to integrate customized static and AI tests into CI pipelines with automation.
* Summary – Recap key concepts, techniques, and takeaways from the course.

### Black Hat Exclusive Content

**[Back to top ↑](#top)**

The Black Hat version of this course "Achieving Scalable Code Security Scanning through AI Acceleration" includes additional exclusive content including:

- A deeper dive into custom static rules and combining static and AI rules
- Using RAG/context based techniques for better AI-based scanning
- A market overview comparing what is available to what we are discussing in the course
- More detail on integrating into CI/CD processes

### Key Takeaways

**[Back to top ↑](#top)**

- The hands-on ability to use a variety of scanning techniques to solve common code security challenges.
- The practical knowledge of how to build these into a scalable process across many codebases.
- The approach to getting code security scanning rolled out at the organizational level.

### Detailed Course Outline (Black Hat version)

**[Back to top ↑](#top)**

**COURSE OVERVIEW**

* Overview - Setup training, share training goals and detailed agenda.

**INTRO TO CODE SCANNING**

* What is SAST - Detailed introduction to SAST including the different techniques to be discussed in the course (generic, custom or AI powered) and their strengths and weaknesses
* What to use and when - Review the reasoning for which technique is most efficient for different situations from a cost/effort/benefit perspective.
* Organizational processes for SAST - Organizational considerations for rolling out any type of SAST, the stakeholders who will need to be involved, the business processes which will be needed and the expectations which must be set.
* Exercise - SAST process - Introduce the simulated organization to be used in the exercises and use our guidance template to prepare a plan for integrating a SAST strategy into a simulated organization.

**GENERIC STATIC APPLICATION SECURITY TESTING**

* What is Generic SAST - Some more specific explanation on what we mean by Generic SAST and how it would generally be automated.
* Addressing Generic SAST findings - Understand the various considerations for addressing Generic SAST findings including eliminating noise and how best to remediate, including effective AI prompts for triage
* Exercise - Evaluating Generic SAST findings - Practice evaluating SAST findings according to considerations above. Prepare mitigation and prioritization advice and explanations.

**CUSTOM STATIC APPLICATION SECURITY TESTING**

* Intro to custom SAST - Some initial examples of custom tests and rule languages that can be used (such as lint, Semgrep, CodeQL) and an intro to the rule language we will be focusing on (Semgrep) and why.
* Similar patterns and limiting search - How to find simple, but significant, patterns in the code whilst narrowing down results to avoid false positives - PLUS hands-on practice exercises using examples related to this
* Writing rules from scratch for root cause analysis - Learn how to write rules from a blank state and using them to track flow of tainted data across the code and how to find the common cause PLUS hands-on practice exercises using examples related to this
* Broad system analysis with multi function/file rules - How to use the CLI and combine everything learned so far on the scale of the whole app – mapping entry points, tracking flows, detecting missing security mechanisms. Start using AI assistants to help develop Semgrep rules as well.
* Summary exercise - Summary exercise covering everything learnt so far

**INTRO TO AI CODE SECURITY SCANNING**

* Introduction to AI and Code Scanning - Starting with a general overview and then moving into some key principles for writing rules, a discussion of which platforms and models to use and also some security considerations. 
* AI Assistant hands-on - Initial short exercise to practice using AI coding assistants.
* AI Rules - Initial prompt and basic rules - Guidance around developing a system prompt and then the structure of a standard rule PLUS an exercise to practice this.

**COMPLEX AI CODE SECURITY SCANNING**

* Complex rules - Reviewing generic SAST - How to use AI to review and triage generic SAST findings PLUS an exercise to practice this.
* Complex rules - Combined static/AI - Creating multi-stage rules that start with a static test and then use the results to perform specific analysis PLUS an exercise to practice this.
* Complex rules - RAG/Context based - Rules that use RAG to provide additional context to the LLM when performing analysis PLUS an exercise to practice this.
* Market survey - Briefly compare current offering types with the techniques being discussed here, group products by functionality and approach.

**INTEGRATING INTO CI**

* Integrating Customized Tests into CI Pipelines - Running repository focused custom tests (static and AI based), potential CI integration architectures, scan configurations and output formats.
* CI scan example - Brief example of what to consider when integrating into CI using the simulated organization.

**SUMMARY**

* Course Summary - Summarize course content and key takeaways.

**[Back to top ↑](#top)**