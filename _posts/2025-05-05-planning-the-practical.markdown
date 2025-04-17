---
layout: post
title: "Planning the Practical"
subtitle: "Part 5, how will the participants get their hands dirty?"
date:   2025-05-05 15:30:00 +0300
categories: blog
hero_height: is-small
author: josh
summary: In this post, I want to talk through my thought process for practical exercises for the participants to do rather than just listening to me.
image: /assets/img/bhseries/practical.png
series: training_series
---

#### Introduction

I can almost guarantee that no one wants to go to a course where they listen to you talk for 7-8 hours each day. They want to get their hands dirty trying to apply what they've learnt.

This is one of the big things that will differentiate your course, so in this section, I will talk about this in more detail.

#### Split between labs

In the Black Hat Call for Training (CFT) documentation, it suggests that at least 40% of your training course should be hands-on/practical. The good news is that this means you only need to talk for at most 4-5 hours of each day. The bad news is that you need to figure out how to entertain your attendees for the rest of that time.

I can tell you from experience that the practical aspects will define the attendee experience and can make or break your course. You also need to be able to make the practical parts sound compelling enough for the review board and the potential attendees.

#### Traditional, practical labs

If you are planning on teaching a very practical skill then you will probably want practical, technical exercises to for your attendees to do.

##### Initial considerations

Now, this might soundeasy but consider the following points:

* How do you make the tasks challenging enough but also solvable?
* How do you make the exercises accessable and achievable by people at a variety of skill levels?
* Will you want to centrally track attendee process and if so, how?
* Is this a competition or every person for themselves at their own pace?
* Can you prepare enough content for the most advanced students to feel stretched?
* Are you going to need to test your labs before each course run to make sure everything works? Is that manual or automated?
* How are you going to keep your labs up to date? Are you training on something where new versions are released frequently?
* How will you be troubleshooting students accessing the labs?
* Do you have a way of resetting your labs or returning them to a known good state.
* How many students can you simultaneously troubleshoot for?

##### Providing lab access

The million dollar question is, how will students access the labs?

* Do they need to install software on their laptops? 
* Do you require a specific hardware or software specification?
* Will students need to have a virtualisation tool?
* Will students need to have local admin access.

##### Hosted labs

In the past, trainers would bring their own hardware such as servers to training courses to try and reduce load on student laptops and avoid these issues but this seems a little obselete nowadays and is unlikely to impress the review board. Instead, maybe you could side-step this by having cloud-based labs. For Black Hat that it is pretty much assumed that you will do this but that raises it's own questions:

* How will you be able to scale your cloud-based labs for greater numbers of students?
* Do you need to build automations to establish the labs for each student?
* Do you need to provide an authentication mechanism for each student to access their lab?
* Do you need to harden the cloud environment to protected against those "creative" students who think that security labs are fair game. (A few years back, a student decided it would be funny to deploy one of the nastier ransomware worms to some trainer's workshop labs.)
* Will students only have access during the course or can you provide access afterwards as well? (Might be a nice extra).

#### Other practical options

If you are not teaching strictly practical skills, you might need to be more creative in your practical exercises.

For my course I basically had to come up with exercise concepts from scratch. After some iteration, I came up with two primary exercise types.

(I go into quite a lot of detail here but I hope it helps other people with their thought process.)

##### Vulnerability Triage

The first type of exercise was a vulnerabilty triage exercise and involved participants working as a group to review a set of findings from an application security scanning tool type such as SAST, DAST and SCA. They had a code repository/running application they could refer to if necessary and broadly speaking could use as few or as many resources as they wished to try and make decisions. 

I deliberately skipped the stage of them running the tool because the whole course concept was to focus on organisational process and methodology. This had also been the focus of the lectures which preceeded each exercise.

The aim at the end was to come up with a reasoned prioritisation for addressing the vulnerabilities. The exact order was less important to me than the logic behind it.

##### Organisational process

The second type of exercise was a process/implementation plan exercise. This involved the team working again in groups to discuss how they would implement a particular scanning tool, using the working document I mentioned above as a basis.

Now, the first problem I had here was that for public training each attendee would come from a different background/organization so how would they decide what organisation the was being implemented for. I solved this by coming up with a basic case study of an organization which develops an app and provide information about that organization for the teams to use when planning the implementation.

Originally I thought about creating multiple examples so that each team would have something different but honestly it works great with all teams working on the same organisation. I got to invent a tech stack and a bunch of managers and team leaders who hold the various roles in the system. 

The app itself is also faintly sinister which amuses me and I deliberately designed the information provided to match the questions which the teams need to answer for the working document.

The second problem I had for this exercise type was how to feedback the results. Whereas for the vulnerability triage exercise, it works quite well for all the teams to feedback together and we can quite easily compare and contrast the orders in which they prioritised the vulnerabilities, for the process exercises there would be too much information to do that effectively all together and it would be too slow and uninteresting to do this one by one.

This led to possibly my favourite part of the course, the simulated stakeholder! (I think this was probably inspired by exercises we did back when I worked at Deloitte as part of training for more senior roles.)

For each process exercise, I would ask for a volunteer from each team who would become a simulated stakeholder. Instead of working with their own team, all the stakeholders would come and work as a group with me and we would go through a similar process to what the individual teams would be doing but I would be giving them a steer as to what I was expecting that they would answer for each part of the working document, based on the sample scenario.

After the teams had prepared their plan based on the working document, the stakeholder from one team would go and sit with another team and pretend to be senior management, specifically the CTO. The team would then have to explain and justify their plan to the simulated stakeholder with the stakeholder giving them guidance and feedback and asking them clarifying questions.

Aside from the simulated stakeholders getting much amusement from their sudden promotion to CTO (although I think on one occassion a stakeholder was actually a CTO in their day job), this was a great way to give the teams something to work towards and also stimulate discussion. I also feel like this is an important illustration of one of the key lessons from the course which is the importance of getting senior level buy-in.

#### Other ideas

I think that explaining about the time I created a multi-player game based on the ASVS entirely built in Google Sheets is beyond the scope of this article but buy me a beer and ask ask me about it 

#### What point was I trying to illustrate here?

Aside from crowing a bit about what I think are some cool ideas I had, I think the point is that you can think creatively about practical exercises and come up with ideas other than traditional hacking or code writing exercises. Remember that the rarest and most valuable skill in security is the ability to communicate and convince effectively.

#### Next Post: Putting pen to paper

So now, having figured out your financials, your niche, and your exercises, you now need to actually get accepted by a conference. In the next post, I will talk about writing a convincing Call for Training submission. 


