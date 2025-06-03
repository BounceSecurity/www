---
layout: post
title:  "Knowing is half the battle"
subtitle: "Gathering information in a development organization"
date:   2025-01-06 12:45:21 +0300
categories: blog
hero_height: is-small
author: josh
summary: |
    In this post, I highlight the crucial role of situational awareness in AppSec and how AppSec architects can leverage internal systems like ticketing, email, chat, and source control to gather vital information and enhance security practices. Discover practical tips to seamlessly integrate into development teams and boost your security posture.
image: /assets/img/2025-01-06-situational/knowing.png
toc: true
toc_title: " "
---

## Introduction

AppSec architects (sometimes known as AppSec engineers) have a tough job. As a small team within a larger development organization, they are tasked with figuring out how to ensure that software is being built securely and being available to provide support in doing this. 

Amongst other things, this involves being aware of what development activity is actually going on.

And as GI Joe famously taught us:

![knowing is half the battle](/assets/img/2025-01-06-situational/knowing.png){: .blog-image}

For some of our clients we operate as part-time AppSec architects either joining their existing team or becoming their team. As we are acting as virtual employees, we generally request some access to internal systems to get some situational awareness into development activity (or activity in general) within the organization. Otherwise we are operating completely at "arms length" without insight into what they are working on and how they work. 

Additionally, most organizations nowadays are distributed in some way. That might be by having multiple international offices or a remote/hybrid working environment. This makes access to their internal communication systems even more important in order to be able to effectively interact with the team.

Since it came up recently, I thought it would be valuable to go into a little more detail about the sorts of systems we request access to and how this can help us.

Some of our uses here are a little more unorthodox and many will be useful ideas for regular, full time employed, AppSec architects as well.

So take a look and also let me know if you think there is anything I have missed 😀

![map representing situational awareness](/assets/img/2025-01-06-situational/sitware.png){: .blog-image}

For each system, I will give:

- **Explanation** - A brief overview of each system type and what it does
- **System examples** - Some examples that you might see "in the wild"
- **Information provided** - What useful information can we gather from the system to increase our situational awareness?
  - In some cases we might be able to use some slightly more sneaky tricks to discover useful information.
- **Usage cases for AppSec** - How we can use the system for our own purposes

### Security systems and platforms

I am not going to mention these in detail as it almost goes without saying that these would be useful for AppSec work. My intention in this post is to focus on the more mainstream organizational systems.

------

## Developer Ticketing system

**[Back to top ↑](#top)**

### Explanation

This will be the systaaem that the development organization uses to guide developers on what they will be working on at any point in time. It might be used just for regular work tracking, (e.g. you are working on this piece of functionality today,) or it might also be used for bug tracking as well, (i.e. QA will open tracking tickets when they find quality bugs.)

Either way, it tends to be a key system that developers (and maybe other development staff) use to organize their day.


![ticketing system](/assets/img/2025-01-06-situational/ticket.png){: .blog-image}

### System examples

Examples of systems like this include:

<div class="list-awesome-system" markdown="1">
- Jira
- GitHub Issues
- Gitlab Issues
- Trello
- Notion
</div>

### Information provided

We can use this system to discover information including:

<div class="list-awesome-info" markdown="1">
- What development work is currently going on:
  - New features? (Do we need to get in the loop for design security)
  - Bug fixing? (Security related, do they have a security impact?)
- What stage are they up to? (Just starting, nearly finished, etc)
- Who from the team is working on it? (and therefore who do we need to ask questions to)
- Potential links to design documentation (so we are prepared with questions to ask)
</div>

### Usage cases for AppSec

This system can be useful for our own work, allowing us to:

<div class="list-awesome-action" markdown="1">
- Open tickets for vulnerabilities so that the work can be prioritized alongside other bugs or work.
- Create a dashboard for tracking vulnerability bugs and progress in addressing them
- Open tickets for other work such as design reviews alongside the standard development tickets
- Maybe even automatically have sub tickets be opened for security tasks (such as threat modeling) when development task tickets get opened for a new feature or development.
</div>

------

## Company email

**[Back to top ↑](#top)**

### Explanation

A personal mailbox in the company's internal email system. I think we know what email is by now but the scope here is to have an account where when we send an email, it doesn't have a scary "this is an external email" message at the top.

![email system](/assets/img/2025-01-06-situational/email.png){: .blog-image}

### System examples

Examples of systems like this include:

<div class="list-awesome-system" markdown="1">
- Office 365
- Google Workspace
- Zoho
</div>

### Information provided

We can use this system to discover information including:

<div class="list-awesome-info" markdown="1">
- Address book of staff so you can find their contact details from their name and maybe also where they work (useful if you want to physically find them or figure out what timezone they are on)
- Getting access to shared email mailing lists
  - (I once had a case where the first I heard about a new feature was from a company wide update announcing it's release. I then went and discovered a critical vulnerability in it!)
- Discover when people are out of office (no point in bothering people when they aren't around)
- Organizational charts, loads of useful information including:
  - Who reports to whom
  - Who works with whom
  - If this isn't maintained here, you might want to try and find it from somewhere else.
</div>

### Usage cases for AppSec

This system can be useful for our own work, allowing us to:

<div class="list-awesome-action" markdown="1">
- Communicate with people (obviously 🙃)
- Sending periodic updates on what is going on in the world of AppSec and within the internal AppSec team using internal mailing lists - Good to build awareness and for internal "marketing" of AppSec. (Obviously you don't want to overdo this!)
- Demonstrate that we are more integrated and have a real human identity within the organization. This should differentiate us from a regular "arms length" or "short term" consultant
- Demonstrate why the company should take you more seriously since they spent money to give you an account
</div>

------

## Company calendar

**[Back to top ↑](#top)**

### Explanation 

The place where employees plan their meetings and potentially structure their day in other ways.

![calendar image](/assets/img/2025-01-06-situational/calendar.png){: .blog-image}

### System examples

Mostly the same systems as for internal email.

### Information provided

We can use this system to discover information including:

<div class="list-awesome-info" markdown="1">
- When people are free or busy to make it easier to schedule meetings and avoid rounds of trying to find mutually acceptable times.
- Where people are working - sometimes this will indicate if they are in the office.
</div>

#### Slightly sneakier information we can gather from it

If we are struggling to get traction or cooperation within development teams, calendars can sometimes also reveal some other interesting information.

This could include:

- Looking at the meetings which people have on their calendars in order to understand who is meeting with whom and about what. This might reveal information on new developments or new development plans. 
- Planning documents or other notes documents might also be attached to meeting invites and therefore reveal information about what they are working on.

### Usage cases for AppSec

This system can be useful for our own work, allowing us to:

<div class="list-awesome-action" markdown="1">
- Send internal meeting invites using internal conference platform (more on this below)
- Look more official by sending meeting invites from a company email address.
</div>

------

## Internal chat system

**[Back to top ↑](#top)**

### Explanation 

Most organizations will have a more informal system for internal ad hoc conversations without the overhead and formality of email. It will usually include both person to person conversations and also groups.

![chat image](/assets/img/2025-01-06-situational/chat.png){: .blog-image}

### System examples

Examples of systems like this include:

<div class="list-awesome-system" markdown="1">
- Slack
- Discord
- Microsoft Teams
- IRC (maybe, maybe not...)
</div>

### Information provided

We can use this system to discover information including:

<div class="list-awesome-info" markdown="1">
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
</div>

#### Slightly sneakier information we can gather from it

If we are struggling to get traction or cooperation within development teams, chat systems can sometimes also reveal some other interesting information. This could include:

- Search for secret information or secrets being shared. Maybe you need test credentials but can't anyone who will provide them...
- Lurking in groups to discover potential issues. I was once lurking in a group where someone asked for the easiest way to forge a production token so as to do some testing. 

### Usage cases for AppSec

This system can be useful for our own work, allowing us to:

<div class="list-awesome-action" markdown="1">
- Create ad hoc groups to discuss particular issues or events with a specific team of people.
- Build automations to alert on particular events.
- Another channel to communicate with people. "Did you see my email?"
- Vary communication mechanisms since different people communicate better in different ways. Some might prefer email, some might prefer chat.
</div>

------

## Internal conference platform

**[Back to top ↑](#top)**

### Explanation 

The audio/video conferencing platform which the company uses for its internal meetings.

![videoconf image](/assets/img/2025-01-06-situational/videoconf.png){: .blog-image}

### System examples

Examples of systems like this include:

<div class="list-awesome-system" markdown="1">
- Microsoft Teams
- Google Meet
- Zoom
- Cisco WebEx
</div>

### Usage cases for AppSec

There probably isn't much data we can gather from this but this system can be useful for our own work in lots of ways, allowing us to:

<div class="list-awesome-action" markdown="1">
- Set up internal meetings - As noted above it makes it look more like we belong.
- Use internal physical conference hardware. Often companies have their videoconferencing system integrated into their physical meeting rooms meaning if you want to do a hybrid meeting you will struggle using an external platform.
- Avoid the friction of waiting rooms because you are a guest in the company's conferencing system.
- Avoid having to ask other people to set up calls
- Avoid restrictions on sharing documents and other information during conference. Some systems have restrictions on sharing with external parties.
- Potential preserve the chat from the meeting to be referenced afterwards.
- Chat with participants beforehand and afterwards.
- Potentially preserve the attendee list for the meeting.
- Easily join prescheduled or periodic meetings which might be of interest.
</div>

------

## Internal documentation / file storage platform

**[Back to top ↑](#top)**

### Explanation 

The place where employees document long form information about the company, the application, etc. This could include both simple documents but also larger files such as meeting recordings.

![library image](/assets/img/2025-01-06-situational/library.png){: .blog-image}

### System examples

Examples of systems like this include:

<div class="list-awesome-system" markdown="1">
- Confluence
- Sharepoint / Office 365
- Notion
- Google Drive / Google Workspace
</div>

### Information provided

We can use this system to discover information including:

<div class="list-awesome-info" markdown="1">
- All sorts of backgrounds information and documentation including design documentation and how specific security mechanisms work.
  - Obviously it depends on how well updated the documentation is.
- Track ongoing tasks or features from project planning documentation
</div>

### Usage cases for AppSec

This system can be useful for our own work, allowing us to:

<div class="list-awesome-action" markdown="1">
- Create security documentation and diagrams in a platform that the company are familiar with.
- Add our comments and questions to existing documents.
- Upload files and other materials to a storage location which is native to the organization rather than relying on some external storage
</div>

------

## Source control system and Continuous Integration

**[Back to top ↑](#top)**

### Explanation

The system the company uses to store their source code and also to perform compilation/build processes.

![source image](/assets/img/2025-01-06-situational/source.png){: .blog-image}

### System examples

Examples of source control systems include:

<div class="list-awesome-system" markdown="1">
- GitHub
- Gitlab
- Bitbucket
- SVN
- Azure DevOps
</div>

Examples of CI systems include:

<div class="list-awesome-system" markdown="1">
- GitHub Actions
- Gitlab CI
- Circle CI
- Travis CI
- Jenkins
- Azure DevOps
</div>

### Information provided

We can use this system to discover information including:

<div class="list-awesome-info" markdown="1">
- See application code without having to specifically ask each time and keep it updated.
- See infrastructure as code definitions if this is how the organization operates.
- See which developers are working on what parts of the code base.
- See who last person was to touch this code and potentially ask them question. 
- See history of changes to understand remediations implemented or understand regressions.
</div>

### Usage cases for AppSec

This system can be useful for our own work, allowing us to:

<div class="list-awesome-action" markdown="1">
- Perform ad hoc security scanning and testing.
- Prepare security automations for processes such as change or deployment approval requirements.
- Integrate automated security scanning into existing automated processes.
- Keep our automation experiments within the company's control and track our changes.
</div>

------

## Cloud Management Platforms

**[Back to top ↑](#top)**

### Explanation 

Most organizations are using cloud hosted infrastucture to host their applications. Some may be entirely cloud based or cloud native. There will generally be a management platform where all of this infrastructure is managed. Visibility of this platform will be even more important if the company is not using "Infrastucture as Code" to configure it.

For our purposes, access to the API might be even better than the graphical console.

![cloud platforms image](/assets/img/2025-01-06-situational/cloudplatforms.png){: .blog-image}

### System examples

Examples of systems like this include:

<div class="list-awesome-system" markdown="1">
- Amazon Web Services management console
- Microsoft Azure portal
- Google Cloud Platform console
- Digital Ocean admin interface
</div>

### Information provided

We can use this system to discover information including:

<div class="list-awesome-info" markdown="1">
- What cloud resources are currently deployed.
- Which different deployment environments are available including which are considered "production" and which are not.
- Any logging, monitoring, or security relevant information which the platform provides
</div>

### Usage cases for AppSec

This system can be useful for our own work, allowing us to:

<div class="list-awesome-action" markdown="1">
- Deploy our own infrastructure for our own internal tools or mechanisms rather than having to rely on separate mechanisms.
- Utilize scans which pull information directly from the cloud platform API.
</div>

------

## Observability

**[Back to top ↑](#top)**

### Explanation 

This is the posh new word for logging :) The overall goal is to give developers and operations team more insight into what is going on in the running application, especially in production.

![observability image](/assets/img/2025-01-06-situational/observability.jpg){: .blog-image}

### System examples

Examples of systems like this include:

<div class="list-awesome-system" markdown="1">
- DataDog
- Logz.io
- Sentry
- New Relic
</div>

### Information provided

We can use this system to discover information including:

<div class="list-awesome-info" markdown="1">
- The impact of our actions in real time when performing security testing.
- The level of coverage that a DAST tool or penetration test is giving us if we have a way of knowing which traffic relates to the tool or test.
- Potentially being able to discover who is responsible for what within the application portfolio if they are associated with alerting for particular applications.
</div>

### Usage cases for AppSec

This system can be useful for our own work, allowing us to:

<div class="list-awesome-action" markdown="1">
- Set up custom application detections and alerts the a similar way to the approach defined by the OWASP AppSensor project.
- Investigate suspicious activity in realtime without having to request log files each time.
</div>

------

## In conclusion

This post got a little long but hopefully provides you with a useful overview of how you can use organizational systems to operate more effectively as an AppSec architect.

What did I miss out? Let me know on [Twitter](https://twitter.com/JoshCGrossman), [Blue Sky](https://bsky.app/profile/joshcgrossman.com) or [LinkedIn](https://www.linkedin.com/in/joshcgrossman/)!
