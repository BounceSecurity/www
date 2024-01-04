---
layout: post
title:  "What’s the problem with Passkeys?"
subtitle: "Or why a great and secure solution to passwordless authentication is not so great?"
date:   2024-01-16 10:19:21 +0300
categories: blog
hero_height: is-small
author: michal
summary: Passkeys is a great improvement on authentication security, but current implementation practicies hold back on its potential
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

Lets start with a quick overview of what Passkeys actually are:

It’s an authentication method, based on the WebAuthN protocol, that relies on public key cryptography, by the FIDO2 alliance. Well, this protocol is not that new, and is used to authenticate with a USB stick or some other hardware device. But that’s not really that useful, especially when talking about B2C applications. You can’t expect everyone to purchase a hardware authenticator in order to authenticate to your app. And if they loose the device, they’re locked out. No recovery is possible. 

**Here is where Passkeys come into the picture**. Nowadays we all go everywhere with a hardware device that we’re attached at thumbs with - our mobile phones. And those devices operate either on iOS or Android. And the laptops we use are operated mostly by Apple or Microsoft. So those big 3 companies joined together to implement Passkeys - a passwordless authentication method, that relies on your authentication to your device (preferably a biometric authentication). 

No more phishing, no more password reuse/ weaknesses/ mishandling, no danger in email takeover. And if you lose a device, no worries. Your Passkeys are synched to your cloud account and you can access them from a new device. The 3 companies even worked out flows to authenticate on one OS after creating the Passkeys on another, with a simple scan of a QR code.

There’re Android, Apple and Web APIs to implement Passkeys authentication in your mobile and web app and some third party password manager companies are starting to offer Passkeys creation and storage as well - like 1Password for example.

**Ok, all of that sounds incredible. Why the long title then?**

Because in practice, something isn’t working. All implementations we see offer at least one additional authentication method, a lot of the times its a simple mail OTP, and you can’t even configure that you want your account to be accessible only with a Passkey and not through any other method.

Okay, but when I first saw this, I thought *“that’s just their implementation choice”*. Nothing in the Passkeys specification requires you to have a fallback or an alternative authentication method.
But even Google, in their implementation [guide for Passkeys](https://developers.google.com/identity/passkeys/developer-guides#existing_legacy_authentication_mechanisms), advice to keep a second authentication method for 3 reasons:

1. For users who don’t have Passkeys compatibility on their device.
2. Due to the fact that Passkeys are relatively new and the compatibility between different environments is not mature enough yet .
3. Simply because there might be people who wouldn’t want to use Passkeys - because they’re not familiar with it or for whatever reason, and you wouldn’t want to lose those users.

But since **the security of your app’s authentication mechanism is as secure as it’s weakest link**, it doesn’t help anyone that you have a strong and impenetrable wall if the gates are wide open. 

And no developer will spend time on learning how to implement a new security mechanism if they need to implement a fallback alongside it, and could have done just with the fallback to begin with.

I don’t know what the solution for this problem is, but I wouldn’t want us to miss out on this great technology of Passkeys, and all the security and UX benefits it brings with it, just because we didn’t put enough thought and effort into solving the edge cases that require a fallback that makes the implementation of Passkeys redundant in the first place.

I hope that the same way MFA started as a must on heavy regulated and at high risk apps and then became a common practice throughout the industry, that Passkeys will become widespread as well (and even more) without the need for faulty fallbacks.
