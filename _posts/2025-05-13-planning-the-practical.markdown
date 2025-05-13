---
layout: post
title: "Planning the Practical"
subtitle: "Part 5, how will the participants get their hands dirty?"
date:   2025-05-13 15:30:00 +0300
categories: blog
hero_height: is-small
author: josh
summary: In this post, I want to talk through my thought process for practical exercises for the participants to do rather than just listening to me.
image: /assets/img/bhseries/practical.png
series: training_series
---

#### Introduction

Let's be honest: nobody's signing up for a training course just to sit and listen to someone talk for 7–8 hours a day.

People come to *do the things*, to get their hands dirty, apply what they've learned, and leave with new skills they can actually use. And that's your edge.

In this post, I talk about how to make the hands-on elements of your course not just functional, but an integral part of the course.

![alt text](/assets/img/bhseries/practicalintro.png)

#### Splitting the Day: Labs vs. Lectures

The Black Hat Call for Training (CFT) recommends at least **40% of your course be practical**. That's great news as it means you only need to talk for 4–5 hours a day.

But here's the catch: you now need to figure out how to entertain your attendees the remaining time.

I can tell you that the practical segments are *the* part attendees remember most and will define their takeaway experience. You therefore need to make these segments sound compelling enough for the review board and the potential attendees.

#### Traditional, Practical Labs

If you're teaching a very hands-on skill such as offensive security, reverse engineering, cloud config hardening, practical labs are likely your core.

But just saying "we have labs" isn't enough, how are these labs going to work.

##### Initial Considerations

Here's what you need to think through — trust me, these details matter:

- How do you make tasks challenging **yet solvable**?
- Are the exercises **accessible and achievable** by people at a variety of skill levels?
* Will you want to **centrally track** attendee process and if so, how?
- Is it a **competition** or self-paced?
- Can you stretch your **most advanced students**?
- How can you test that your **labs still work** before each run? Is that manual or automated?
- How will you keep lab content **up to date** if your subject moves fast?
- How many students can you **realistically support and troubleshoot** for at once?
- Do you have an automated way to reset your labs to a **known good state**?

![alt text](/assets/img/bhseries/labconsiderations.png)

##### Providing Lab Access

One of the biggest questions: how will students access the labs?

- Do they need to **install software**?
- Is specific **hardware/software** required?
- Do they need a **virtualization tool**?
- Will they need **admin access**?

If the answer to any of these is yes, expect friction and maybe a few frustrated emails.

#### Hosted Labs: The Modern Standard

In the old days, trainers would lug laptops and servers into conference venues. Now? **Cloud-hosted labs** are the norm.

Sensepost set the gold standard for this almost 10 years ago as they discuss in [their blogpost here](https://sensepost.com/blog/2015/into-the-cloud/). Nowadays, this should probably just be the standard.

But don't let the cloud fool you into thinking it's simpler. It comes with its own set of questions:

- Can your labs **scale** to support dozens (or hundreds) of users?
- How will you **automate provisioning** for each user?
- Do students **authenticate individually**? How will you set this up
- Have you secured your environment from... creative attendees?
  - _Yes, someone once deployed ransomware in someone's training lab environment. Be ready!_
- Will students have **post-course access**? (Bonus points if yes.)

![alt text](/assets/img/bhseries/labcloud.png)

#### When "Hacking" Isn't the Goal: Creative Practical Exercises

What if your course isn't about hacking or coding? Then you'll need to get creative.

In my case, I built two distinct types of exercises from scratch and they actually became the highlight of the course.

(I go into quite a lot of detail here but I hope it helps other people with their thought process. Feel free to skip if you don't want the details)

##### Vulnerability Triage

The first was a **vulnerability triage** challenge.

Students worked in groups, reviewing fictional findings from tools like SAST, DAST, and SCA. They had a simulated codebase or running app as a reference, but running tools wasn't the goal or even part of the exercise.

Instead, they had to prioritize the vulnerabilities and more importantly, **explain their reasoning**.

Why? Because the course and therefore the exercises focused on *process* and *decision-making*, not tool mastery.

![alt text](/assets/img/bhseries/vulntriage.png)

This exercise built on the lectures and gave students a chance to the new ideas in a low-stakes setting.

##### Organisational Process

The second type of exercise asked: *How do you roll out a security tool across an organisation?*

Students had to plan an implementation using a working document based on the content in the lectures. Sounds fun, right? Well I had to work a little on the fun part.

Since attendees came from diverse backgrounds I created a **fictional company case study** for everyone to work from. I also prepared a tech stack, fake team leads, and a slightly sinister app to keep things fun. All teams worked from the same case study as I felt it would make it easier for teams to compare notes afterwards.

But how would they provide their feedback?

Enter: **The Simulated Stakeholder**

Rather than each team presenting their plan to the entire class (which might be a little repetitive), I introduced the simulated stakeholder, in most cases the CTO of the simulated company.

(I think this was probably inspired by exercises we did back when I worked at Deloitte as part of training for more senior roles.)

Each team nominated one person to roleplay the CTO. All the "CTOs" joined me in a breakout session, where I worked through the working document with them and guided them on the kinds of questions and expectations a real executive might have and how best to interact with the teams.

Then, each CTO joined a _different_ team, and that team had to **justify their plan to a skeptical senior stakeholder**.

Aside from the simulated stakeholders getting much amusement from their sudden promotion to CTO (although I think on one occassion a stakeholder was actually a CTO in their day job), this was a great way to give the teams something to work towards and also stimulate discussion.

It was also an important illustration of one of the key lessons from the course which is the importance of getting senior level buy-in.

![alt text](/assets/img/bhseries/stakeholder.png)

#### Other Ideas

I'll save the story about the time I built a multi-player game based on the ASVS entirely in Google Sheets for another post, or over a beer. 🍻

Just know that even if it sounds weird, it might actually work.

#### The Real Point

Yes, I wanted to show off some my cool ideas but the real message is this: You can go beyond traditional "labs" and build creative, impactful exercises that magnify the impact of your course.

Don't limit yourself to hacking and code. Remember that the rarest and most valuable skill in security is the ability to communicate and persuade. Think about courses which build that muscle as well.

#### Next Post: Putting pen to paper

So now, having figured out your financials, your niche, and your exercises, you now need to actually get accepted by a conference.

In the next post, I'll walk through how to write a compelling Call for Training (CFT) submission.


