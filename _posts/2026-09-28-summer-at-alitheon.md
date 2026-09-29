---
title: 'My summer at Alitheon: what a second internship taught me'
date: 2026-09-28
permalink: /posts/summer-at-alitheon/
excerpt: 'A general look back at a summer of computer vision work, and what it changed about how I approach machine learning problems.'
tags:
  - internship
  - computer vision
  - machine learning
---

I spent this summer back at Alitheon as a machine learning research intern, my second stint after summer 2024. Alitheon builds visual-fingerprint authentication: instead of asking "what kind of thing is this?", the system asks "is this the exact same physical object I saw before?" I find that question endlessly fun, because every object carries tiny surface details that a camera can read, and turning that into something dependable is a real engineering challenge.

I can't go deep on the technical specifics of my work here, but I can tell you what I worked on in broad strokes and, more importantly, what it taught me.

## What I worked on

My projects followed the path a photo takes through a vision system, from the moment a camera captures an image to the moment the system decides what it's looking at:

- **Capture.** Making sure the images coming from different cameras and stations are consistent enough to compare.
- **Preparation.** Cleaning up and normalizing images so that the parts of the system downstream get an easier problem.
- **Recognition.** Sorting objects into categories, including a stretch spent finding out how much a dataset could be trusted.
- **Identity.** The hard one: telling a single physical object apart from near-identical siblings, even when the photos come from different cameras.

Each of these sat in a different part of the system, so I got a much better feel for how a full pipeline hangs together than I would have from any one piece.

## The lessons

**Audit your data before you blame your model.** I lost more time to doubting a model than to any actual model bug. Once I started treating the dataset as something to be checked, the picture changed a lot. Now the first thing I do with a new dataset is look for independent evidence about whether it is right.

**Be suspicious of your own good news.** At one point I had a result I was quite happy about, and it turned out to come from something other than what I thought I was measuring. Nothing teaches you to double-check a promising number like getting excited about the wrong thing once.

**A demo is not a product.** The accuracy that makes a nice demo and the accuracy a production system needs can be far apart, and it's worth knowing which one you're being asked for on day one.

**Research isn't done until it runs where it will live.** Some of my most valuable work was taking things that worked in my own environment and making them fit the systems the rest of the team uses. It is less glamorous than the research, and it's what makes the research usable.

**Ask about constraints early.** In a one-on-one, my mentor pointed out a constraint I hadn't been designing for, and it reshaped the direction of a whole project. Storage, speed and maintenance limits are part of the problem statement even when nobody says them out loud.

**Write things down, including on the days you forget.** I kept a daily work log and I'm sorry to report there are a few "forgot to write" entries. Those are exactly the days I can't reconstruct now. Write-ups were also a natural part of finishing a project; a project wasn't done until someone else could pick it up from my notes.

**Explaining is part of the work.** I got to test tools for teammates and present my work to people with very different backgrounds. Being clear about what works, what doesn't, and what's still unknown builds more trust than a polished number ever does.

**Move fast between problems, but keep notes.** I was handed new projects mid-week more than once. Being able to pick up a problem, get useful quickly, and leave a clean trail for the next person turned out to be a skill worth practicing.

## Looking ahead

I'm heading into my last year at UW with a clearer idea of what I want: work where careful evaluation matters, where the machine learning has to survive contact with real hardware and real data, and where I'm still learning from people who know more than I do. If that sounds like something you're working on, I'd love to hear from you on [LinkedIn](https://www.linkedin.com/in/aaryan-pawar-548553329/).
