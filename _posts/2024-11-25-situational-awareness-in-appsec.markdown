---
layout: post
title:  "Situational Awareness in AppSec"
subtitle: "How to gather information in a development organization"
date:   2024-11-25 12:45:21 +0300
categories: blog
hero_height: is-small
author: josh
summary: |
    In this post, I highlight the crucial role of situational awareness in AppSec and how AppSec engineers can leverage internal systems like ticketing, email, chat, and source control to gather vital information and enhance security practices. Discover practical tips to seamlessly integrate into development teams and boost your security posture.
image: /assets/img/2024-11-25-situational/sitware.png
---

## Introduction

For some of our client projects, we step into the shoes of an internal AppSec Engineer in the organization to provide developers with software security support on an ongoing basis.

Since we are acting as seconded employees of the client, we generally request some access to their internal systems as otherwise we are operating completely at "arms length" without insight into what they are working on and how they work. Additionally, most organizations nowadays are distributed in some way. That might be by having multiple international offices or a remote/hybrid working environment. This makes access to their internal communication systems even more important in order to be able to effectively interact with the team.

Since it came up recently, I thought it would be valuable to go into a little more detail about the sorts of systems we request access to and how this can help us.

![map representing situational awareness](/assets/img/2024-11-25-situational/sitware.png){: .blog-image}

Some of our uses here are a little more unorthodox and some may even be useful ideas for internal AppSec engineers (i.e. not working as consultants) so take a look and also let me know if you think there is anything I have missed 😀

For each system, I will give:

- A brief explanation of what it does
- Some examples that you might see "in the wild"
- What useful information we can gather
- How we can use the system for our own purposes
- Some subtler edge cases that the system can help us with


## Developer Ticketing system

This will be the system that the development organization uses to guide developers on what they will be working on at any point in time. It might be used just for regular work tracking, (e.g. you are working on this piece of functionality today,) or it might also be used for bug tracking as well, (i.e. QA will open tracking tickets when they find quality bugs.)

Either way, it tends to be a key system that developers (and maybe other development staff) use to organize their day.


![ticketing system](/assets/img/2024-11-25-situational/ticket.png){: .blog-image}

### Possible examples

Examples of systems like this include:

- Jira
- GitHub Issues
- Gitlab Issues
- Trello

### What can we gather from it

We can use this system to discover information including:

- What development work is currently going on:
  - New features? (Do we need to get in the loop for design security)
  - Bug fixing? (Security related, do they have a security impact?)
- What stage are they up to? (Just starting, nearly finished, etc)
- Who from the team is working on it? (and therefore who do we need to ask questions to)
- Potential links to design documentation (so we are prepared with questions to ask)

### How can this system be useful to us

This system can be useful for our own work, allowing us to:

- Open tickets for vulnerabilities so that the work can be prioritized alongside other bugs or work.
- Create a dashboard for tracking vulnerability bugs and progress in addressing them
- Open tickets for other work such as design reviews alongside the standard development tickets
- Maybe even automatically have sub tickets be opened for security tasks (such as threat modeling) when development task tickets get opened for a new feature or development.

## Company email 

A personal mailbox in the company's internal email system. I think we know what email is by now but the scope here is to have an account where when we send an email, it doesn't have a scary "this is an external email" message at the top.

![email system](/assets/img/2024-11-25-situational/email.png){: .blog-image}

### Possible examples

Examples of systems like this include:

- Office 365
- Google Workspace
- Zoho

### What can we gather from it

We can use this system to discover information including:

- Address book of staff so you can find their contact details from their name and maybe also where they work (useful if you want to physically find them or figure out what timezone they are on)
- Getting access to shared email mailing lists
  - (I once had a case where the first I heard about a new feature was from a company wide update announcing it's release. I then went and discovered a critical vulnerability in it!)
- Discover when people are out of office (no point in bothering people when they aren't around)
- Organizational charts, loads of useful information including:
  - Who reports to whom
  - Who works with whom
  - If this isn't maintained here, you might want to try and find it from somewhere else.

### How can this system be useful to us

This system can be useful for our own work, allowing us to:

- Communicate with people (obviously 🙃)
- Sending periodic updates on what is going on in the world of AppSec and within the internal AppSec team using internal mailing lists - Good to build awareness and for internal "marketing" of AppSec. (Obviously you don't want to overdo this!)
- Demonstrate that we are more integrated and "belong" more than a regular consultant
- Demonstrate why the company should take you more seriously since they spent money to give you an account

## Company calendar 

The place where employees plan their meetings and potentially structure their day in other ways.

![calendar image](/assets/img/2024-11-25-situational/calendar.png){: .blog-image}

### Possible examples

Mostly the same systems as for internal email.

### What can we gather from it

We can use this system to discover information including:

- When people are free or busy to make it easier to schedule meetings and avoid rounds of trying to find mutually acceptable times.
- Where people are working - sometimes this will indicate if they are in the office.

### Slightly sneakier information we can gather from it

If we are struggling to get traction or cooperation within development teams, calendars can sometimes also reveal some other interesting information. This could include:

Looking at the meetings people have on their calendars to understand who is the meeting with whom and about what. This might reveal information on new developments or new development plans. 
Planning documents or other notes documents might also be attached to meeting invites and therefore reveal information about what they are working on.

### How can this system be useful to us

This system can be useful for our own work, allowing us to:

- Send internal meeting invites using internal conference platform (more on this below)
- Look more official by sending meeting invites from a company email address.

## Internal chat system 

Most organizations will have a more informal system for internal ad hoc conversations without the overhead and formality of email. It will usually include both person to person conversations and also groups.

![chat image](/assets/img/2024-11-25-situational/chat.png){: .blog-image}

### Possible examples

Examples of systems like this include:

- Slack
- Discord
- Microsoft Teams
- IRC (maybe, maybe not...)

### What can we gather from it

We can use this system to discover information including:

- What is going on in the company that's not directly related to security, such as:
  - Company holidays so you know when not to bother people
  - Problematic/unfortunate events. Might be another indication that this is a not a good time for the company or for someone in particular. 
  - New joiners to the company who might be relevant to be in touch with them.
- Discover when people are out of office. Another source other than email or calendar.
- Search for information that might help you understand the applications including:
  - Historic information 
  - Valid object identifiers to use when querying the application
  - Discussions/solutions for errors that you might see
- Discover new third party products being on boarded

### Slightly sneakier information we can gather from it

If we are struggling to get traction or cooperation within development teams, chat systems can sometimes also reveal some other interesting information. This could include:

- Search for secret information or secrets being shared. Maybe you need test credentials but can't anyone who will provide them...
- Lurking in groups to discover potential issues. I was once lurking in a group where someone asked for the easiest way to forge a production token so as to do some testing. 

### How can this system be useful to us

This system can be useful for our own work, allowing us to:

- Create ad hoc groups to discuss particular issues or events with a specific team of people.
- Build automations to alert on particular events.
- Another channel to communicate with people. "Did you see my email?"
- Vary communication as different people communicate better in different ways. Some might prefer email, some might prefer chat.

## Internal conference platform 

The audio/video conferencing platform which the company uses for its internal meetings.

![videoconf image](/assets/img/2024-11-25-situational/videoconf.png){: .blog-image}

### Possible examples

Examples of systems like this include:

- Microsoft Teams
- Google Meet
- Zoom
- Cisco WebEx

### How can this system be useful to us

There probably isn't much data we can gather from this but this system can be useful for our own work in lots of ways, allowing us to:

- Set up internal meetings - As noted above it makes it look more like we belong.
- Use internal physical conference hardware. Often companies have their videoconferencing system integrated into their physical meeting rooms meaning if you want to do a hybrid meeting you will struggle using an external platform.
- Avoid the friction of waiting rooms because you are a guest in the company's conferencing system.
- Avoid having to ask other people to set up calls
- Avoid restrictions on sharing documents and other information during conference. Some systems have restrictions on sharing with external parties.
- Potential preserve the chat from the meeting to be referenced afterwards.
- Chat with participants beforehand and afterwards.
- Potentially preserve the attendee list for the meeting.
- Easily join prescheduled or periodic meetings which might be of interest.

-----

## Internal documentation platform 

The place where employees document long form information about the company, the application, etc. 

### Possible examples

Examples of systems like this include:

- Confluence
- Sharepoint
- Notion
- 

### What can we gather from it

We can use this system to discover information including:

- All sorts of backgrounds information and documentation including design documentation and how specific security mechanisms work.
  - Obviously it depends on how well updated the documentation is.
- Track ongoing tasks or features from project planning documentation

### How can this system be useful to us

This system can be useful for our own work, allowing us to:

- Create security documentation and diagrams in a platform that the company are familiar with.
- Add our comments and questions to existing documents.

----

## Source control system and Continuous Integration

The system the company uses to store their source code and also to perform compilation/build processes. 

### Possible examples

Examples of source control systems include:

- GitHub
- Gitlab
- Bitbucket
- SVN
- Azure DevOps

Examples of CI systems include:

- GitHub Actions
- Gitlab CI
- Circle CI
- Travis CI
- Jenkins
- Azure DevOps

### What can we gather from it

We can use this system to discover information including:

- See application code without having to specifically ask each time and keep it updated.
- See infrastructure as code definitions if this is how the organization operates.
- See which developers are working on what parts of the code base.
- See who last person was to touch this code and potentially ask them question. 
- See history of changes to understand remediations implemented or understand regressions.


### How can this system be useful to us

This system can be useful for our own work, allowing us to:

- Perform ad hoc security scanning and testing.
- Prepare security automations for processes such as change or deployment approval requirements.
- Integrate automated security scanning into existing automated processes.
- Keep our automation experiments within the company's control and track our changes.

------

## Observability 

((Meme of winnie the pooh in a suit. with logging and observability)

This is the posh new word for logging :) The overall goal is to give developers and operations team more insight into what is going on in the running application, especially in production.

### Possible examples

Examples of systems like this include:

- DataDog
- Logz.io
-

### What can we gather from it

We can use this system to discover information including:

- The impact of our actions in real time when performing security testing.
- The level of coverage that a DAST tool or penetration test is giving us if we have a way of knowing which traffic relates to the tool or test.
- Potentially being able to discover who is responsible for what within the application portfolio if they are associated with alerting for particular applications.

### How can this system be useful to us

This system can be useful for our own work, allowing us to:

- Set up custom application detections and alerts the a similar way to the approach defined by the OWASP AppSensor project.
- Investigate suspicious activity in realtime without having to request log files each time.

## In conclusion

This post got a little long but hopefully provides you with a useful overview of how you can use organizational systems to operate more effectively as an AppSec architect.

What did I miss out? Let me know on [Twitter](https://twitter.com/JoshCGrossman), [Blue Sky](https://bsky.app/profile/joshcgrossman.com) or [LinkedIn](https://www.linkedin.com/in/joshcgrossman/)!
