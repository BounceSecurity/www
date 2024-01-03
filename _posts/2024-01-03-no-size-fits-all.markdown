---
layout: post
title:  "No size fits all!"
subtitle: "Custom AppSec Testing"
date:   2024-01-03 10:19:21 +0300
categories: blog
hero_height: is-small
author: michal
summary: Why no size fits all and you should move to custom appsec testing
---

<!-- 
Jekyll requires blog post files to be named according to the following format: 

Where `YEAR` is a four-digit number, `MONTH` and `DAY` are both two-digit numbers, and `MARKUP` is the file extension representing the format used in the file. After that, include the necessary front matter. Take a look at the source for this post to get an idea about how it works.

Format using markdown, for example:

# Heading 1

## Heading 2

### Heading 3

**Bold**

_Italic_

etc

-->

Is this as good as it gets? Triaging hundreds of findings, two weeks after deploying the code, with high rates of false positives and no time or resources left to spend on finding and addressing anything besides the low hanging fruit? Is this our fate in the appsec industry? 

It is the reality of many organizations out there. But it doesn’t have to be.

We put a lot of effort, time and resources into our organization’s security. Every respectable software company does. We have static and dynamic scanning tools to check our code for vulnerabilities, but they don’t live up to their promise. Why?

The problem with all those tools is that they’re generic. They assume we’re all pretty much the same. That we write code the same way, use the same popular frameworks, copy the same code snippets from stack overflow. And under this assumption, it makes sense that a finite number of generic rules can find all the problems when scanning any application.

But until AI writes all of our code (in the not so distant future) we’re still unique. With our own unique code bases and corporate bureaucracy that hinders changes we want to make and after all - our own unique business logic, or otherwise we wouldn’t have a separate company and product, do we?

Okay, that makes sense, but what’s the solution? Each company needs to develop its own scanning tools?

Well, not exactly. Companies are already coming up with their own unique guidelines and best practices that accumulate over the years as the product grows and as more features and functionalities are added. For example - using a certain 3rd party library only with a wrapper, or verifying a user is authenticated before they can perform certain actions.

But this raises a new problem - who enforces that? Who makes sure those guidelines are actually implemented? Who keeps track of all of them or even remembers all of them? Is it the responsibility of the security team? The developers? Should those guidelines be checked every code review?

And that brings us back to the question of automation - should each company develop its own scanning tools to scan its unique applications and verify the implementation of its unique security guidelines?

The answer is still no. Well, not completely. We do need our own unique rules to scan our app statically and dynamically, but there’s no reason to develop our own engine.

And for that exact purpose some SAST products started offering the option to customize the rules they run and other products - like Semgrep or CodeQL allow you to write your own rules completely from scratch, or customize given generic rules. And PenTests are a common practice for a reason, and there are tools like Nuclei and Burp Suite that allow us to automate the process of dynamic testing.

Those tools can be integrated directly into your CI/CD pipelines, run automatically with each deploy, and give results - actually relevant ones, in a matter of minutes.

Now that we understand the problem and the solution, let’s define exactly what we’re trying to address:

There are 3 kinds of vulnerabilities that we are looking for - 

1. Generic vulnerabilities with a generic solution - for example, an SQLi that we solve with parameterized queries.
2. Generic vulnerabilities with a bespoke mitigation - for example, path traversal that we solve with our implementation of an input sanitization function.
3. Unique vulnerabilities that stem from the application’s business logic - for example, TOCTOU that is related to a unique business flow.

And there are 2 kinds of problems that generic tools cause - 

1. False negatives - missing an actual vulnerability.
2. False positives - causing noise and a lot of triage work by returning many findings that are in fact non issues.

We can map the kinds of vulnerabilities to the kinds of problems:

**Generic vulnerabilities with generic solutions** - those are exactly the problems that generic tools are built for. They find true positives where there’s a problem and don’t return false positives where there is a mitigation in place.

**Generic vulnerabilities with bespoke mitigations** - generic tools will find the issue, but might not recognize our mitigation, therefore returning multiple **false positives**, making all its findings useless - having to go over all of them to check if there’s a true positive one where we forgot to implement our mitigation.

**Unique vulnerabilities** - generic tools are pretty useless here, doesn’t matter if there’s a mitigation here or not, they just won’t realize there’s an issue in the first place. This is the case of **false negatives**.

If you want to learn more on how to address those cases, with your own easily crafted rules - both static or dynamic demonstrated through some practical examples, I invite you to my talk (or to watch its recording) at the upcoming NDC Security conference - “No Size Fits All”.
