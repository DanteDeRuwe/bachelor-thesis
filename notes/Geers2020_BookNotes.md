# Book notes: Micro Frontends in Action
> Michael Geers -- Manning Publications

[TOC]

## General Notes
...

## Per chapter

### Part 1 Getting started with micro frontends 
#### [1] What are micro frontends? 

> *Micro frontends are not a concrete technology. They’re an alternative **organizational** and **architectural** approach.*

##### Architecture
1. Monolith
2. Frontend-backend ( horizontal split ) 
3. Microservices (horizontal split with backend vertical split)
4. Micro frontends (almost entire vertical split)
```diff
+ loosely coupled --> predictable: no shared state
+ autonomous, technology independent and independently deployable
+ narrow in scope: easier to understand
+ smaller codebase
+ full control over tech stack and therefore changes in technology (micro arch.) 
--- as long as you stay compatible with inter-team conventions (macro arch.)

- Need for an integration system 
- Redundancy
--- Trade-off for autonomy
- Reduced consistency
--- Trade-off for robustness
- Reduced heterogeneity
--- Trade-off for autonomy
```

Micro frontends tackle the issue of a monolithic frontend where 1 team has to manage this whole project.
![](https://i.imgur.com/2g1WVTQ.png)


##### Organisation
> *The most significant difference between micro frontends and other architectures is team structure*
1. Traditional: specialist teams
2. Micro frontends: Autonomous **cross-functional teams**
    - Different perspectives
    - Clear mission along customer journey with end-to-end responsibility
    - Communication between teams is expensive
        - Reduce waiting time between teams for decisions
        - *Shared Nothing Architecture*
        - Accept redundancy in favor of autonomy


##### Integration 
Happens at the topmost layer of the frontend, here ***Fragments*** can be put together.

Integration aspects:
- Routing
    - By having shared app shell
- Composition 
    - Server side
    - Client side
- Communication between fragments


> (More later)


##### Use cases
- medium-to-large projects that need to scale
- best for the web
    - native apps have momolithic frontend by default
    - you can however have a MF-web, and a monolthic native app that uses the microservice API's 

---


#### [2] My first micro frontends project 

### [Part 2] Routing, composition, and communication 
#### [3] Composition with Ajax and server-side routing 
#### [4] Server-side composition 
#### [5] Client-side composition 
#### [6] Communication patterns 
#### [7] Client-side routing and the application shell 
#### [8] Composition and universal rendering 
#### [9] Which architecture fits my project? 

### [Part 3] How to be fast, consistent, and effective 
#### [10] Asset loading 
#### [11] Performance is key 
#### [12] User interface and design system 
#### [13] Teams and boundaries 
#### [14] Migration, local development, and testing 