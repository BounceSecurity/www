---
title: "Achieving Scalable Code Security Scanning through AI Acceleration"
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
- A market overview comparing what is availabile to what we are discussing in the course
- More detail on integrating into CI/CD processes

### Course Background

**[Back to top ↑](#top)**

The issues with generic SAST (Static Application Security Testing) have been understood for quite some time. These tools often miss important vulnerabilities while, at the same time, generating a large number of false positives or findings that aren’t particularly useful.

For several years, (as part of my work providing application security consulting and “on the ground” assistance to various organisations) I’ve been working on ways to complement generic SAST with custom checks. The rise of AI-powered coding assistants has helped complete this picture, giving us the ability to create custom tests that aren’t limited to static rules. This included not only writing the actual roles but actually operationalizing this into an organizational process with the technical and cultural challenges this entails.

I have seen high-impact issues at organizations such as missing authorization controls (especially where there is no single convention for this), misuse of internally developed libraries, unsafe use of dangerous functionality (where it was not possible to use a safer function instead), and inconsistent use of custom sanitization libraries. In each case, generic SAST was of no use whatsoever in detecting these issues and therefore a solution that would provide customized, ongoing, and repeatable coverage was the only way to prevent these. 

At the same time, with the meteoric rise in AI coding assistants, I have seen developers submit an entire new microservice in one shot, often without referring to any internal security guidance that exists. There is work to be done to try and address this earlier in the process but a detection based safety net is going to be needed in the interim.

### Key Takeaways

**[Back to top ↑](#top)**

- The hands-on ability to use a variety of scanning techniques to solve common code security challenges.
- The practical knowledge of how to build these into a scalable process across many codebases.
- The approach to getting code security scanning rolled out at the organizational level.


**[Back to top ↑](#top)**