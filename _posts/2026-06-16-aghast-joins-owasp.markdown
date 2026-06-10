---
layout: post
title: "AGHAST is now an OWASP project"
subtitle: "Our AI-guided hybrid scanning framework finds a vendor-neutral home"
date: 2026-06-16 04:00:00 +0300
categories: blog
hero_height: is-small
author: josh
image: /assets/img/2026-04-aghast-intro/aghastowaspcaption.png
summary: AGHAST, our open source framework that combines static discovery with AI analysis, has been donated to OWASP. It is now OWASP AGHAST, with a new home, package, and project site.
---

#### tl;dr

When we [open sourced AGHAST](/blog/2026/04/14/Introducing-AGHAST.html) earlier this year, we said we wanted it to be widely available and built on by the community. Today we are taking the natural next step: **AGHAST is now an OWASP project.**

It is officially **OWASP AGHAST**, an OWASP Incubator project, with a new home, a new package name, and a dedicated project site. Bounce Security continues as a maintaining supporter.

- **Project site:** [aghast.owasp.org](https://aghast.owasp.org)
- **Code:** [github.com/owasp-aghast/aghast](https://github.com/owasp-aghast/aghast)
- **Install:** `npm install -g @owasp-aghast/aghast`

![OWASP AGHAST logo](/assets/img/2026-04-aghast-intro/aghastowaspcaption.png){: .blog-image}

#### Why OWASP?

AGHAST was always meant to be a community tool, not a Bounce product. The philosophy behind it — that you should be able to ask *codebase-specific* and *company-specific* security questions and get well-formed answers — belongs to the whole application security community, not to any single vendor.

OWASP is the natural home for that. Donating AGHAST to OWASP gives it three things we care about:

- **Vendor neutrality** — a home that does not belong to any one company, so teams can adopt it without adopting us.
- **Longevity** — a governance structure and community that outlast any single maintainer.
- **Reach** — the credibility and audience of the world's largest application security community.

#### What is changing

Everything important about *using* AGHAST stays the same — the three check modes, the pluggable architecture, the CI-first design. What changes are the names and locations:

| | Before | Now |
|---|---|---|
| Name | AGHAST | **OWASP AGHAST** |
| Repository | `BounceSecurity/aghast` | [`owasp-aghast/aghast`](https://github.com/owasp-aghast/aghast) |
| npm package | `@bouncesecurity/aghast` | `@owasp-aghast/aghast` |
| Project home | bouncesecurity.com/aghast | [aghast.owasp.org](https://aghast.owasp.org) |

If you already use AGHAST in a CI pipeline, see the [migration notes](#migrating) below — it is a one-line change.

#### Migrating

The old GitHub URLs redirect automatically, so existing links and clones keep working. To move to the new package:

```bash
npm uninstall -g @bouncesecurity/aghast
npm install -g @owasp-aghast/aghast
```

The `@bouncesecurity/aghast` package has been deprecated with a pointer to the new one, so `npm install` will tell you where to go if you forget. The CLI, configuration format, and check definitions are unchanged.

#### Bounce Security's continuing role

We created AGHAST, and we are not walking away from it. Bounce Security continues as a **maintaining supporter** of the OWASP project, alongside project leaders [Josh Grossman](https://owasp.org/) and [Avi Douglen](https://owasp.org/).

If you want commercial licensing, professional support, or help implementing OWASP AGHAST in your organization, [get in touch](mailto:info@bouncesecurity.com?subject=AGHAST) — that is still us. And if you want hands-on experience building custom checks, AGHAST features heavily in our [Repeatable, Scalable and Valuable Code Security Scanning](/training/aisast/) training course.

#### Thank you

Thank you to everyone who tried AGHAST, gave feedback, and filed issues since the April launch — and to OWASP for welcoming the project in. We are excited to keep building it in the open, now with a community behind it.

Go and ask your codebase the questions only *you* know to ask: [aghast.owasp.org](https://aghast.owasp.org).
