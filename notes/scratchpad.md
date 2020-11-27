# Bachelor Thesis Proposal - Scratchpad
[TOC]


## 1. Correspondence with Mr. Rappl (Co-promoter) 

### Subjects provided
1. The Integration of Piral Micro Fontends and Blazor
    - Blazor binaries are trimmed down to reduce file size and load, but what if we need some of those in the future, because we are making a library? 
2. Universal Micro Frontends with Blazor
    - Exploration of the microfrontend architecture in Blazor: a "from scratch" solution.
3. Proof-of-concept OAuth2 Identity Provider in .NET 5
    - As IdentityServer will be closed source soon.
4. Securely integrating an OAuth2 IP into a .NET 5 solution
6. End-to-end Testing of a Micro Frontend Solution
    - Browser automation
    - How to design tests
    - Maintenance
    - Why? Benefits, Challenges, Drawbacks

### Agreed upon subject for proposal (for now)
Subject 2

### Description of the subject
> With the WebAssembly (WASM) standard a new set of web applications has been made possible. Now the technology stack selection no longer needs to be given as JS only to the browser. In .NET the most popular solution for generating WASM is called Blazor. This framework allows writing full-stack managed code, which can then be used to make interactive clients, server-side rendering, and native mobile apps work. One challenge in this approach is that there is no direct way of enabling distributed development. While component libraries can be created independently, knowledge in the main application would be required for integration. Using a microfrontend architecture this relationship could be reversed. This thesis investigates what is needed to empower distributed development of large-scale Blazor-based web applications, tackling the individual challenges such as debugging or assembly sharing on its way.

#### Topics that have to be adressed
- Distributed development of isomorphic Blazor WASM applications. Being able to independently develop and deploy parts of the frontend using .NET / Blazor WASM.
- Proof-of-concept solution
- Bringing distributed development of frontend applications (also known as microfrontends) to Blazor using an (almost) exclusive .NET approach. How to progressively render the microfrontends with the proper isolation and performance?
- The WASM part tries to be progressive. As mentioned you can now drop in your Blazor WASM application within a special component in an ASP&period;NET server and it will provide the server-side rendering with an hydration on the client. This way you get to see the content immediately, but it still becomes fully client-side interactive. This is what server-side rendering is about.


### References provided
#### Books
- "Micro Frontends in Action", M. Geers, Manning, 2020
- "Building Micro-Frontends", L. Mezzalira, O'Reilly, 2021 (in prep.)
- "Art of Microfrontends", F. Rappl, Packt, 2021 (in prep.)

#### Papers
- "Motivations, Benefits, and Issues for Adopting Micro-Frontends: A Multivocal Literature Review", S. Peltonen, L. Mezzalira, D. Taibi, arXiv:2007.00293, 2020
- "Research and Application of Micro Frontends", C. Yang, C. Liu, Z. Su, IOP Conference Series Materials Science and Engineering , 2019
- "Micro-frontends: application of microservices to web front-ends", A. Pavlenko, N. Askarbekuly, S. Megha, M. Mazzaram, preprint, 2020
- "A Novel Application of Educational Management Information System based on Micro Frontends", D. Wang, D. Yang, H. Zhou, Y. Wang, Procedia Computer Science, 2020
- "Plutt: A tool for creating type-safe and version-safe microfrontends", C. Celik, J. Recep, KTH, 2020


## 2. Introductory media and webinars on the subject


### [Florian Rappl - The Next Frontier: Microfrontends!](https://www.youtube.com/watch?v=AtUKNsdnwBc)
> The architecture pattern of microservices can be found in many modern system landscapes, which offers flexibility for the backend services. On the other side, the frontend is very often realized as a monolith. We present an example implementation of a highly modular frontend architecture based on microfrontends running in Azure, which mirrors the dynamic of a modern microservices backend with some crucial differences. We will also introduce our concept for CI/CD with microfrontends, where Azure DevOps helps us to get from an idea to having a new feature online within minutes.


Traditionally: 
<img src="https://i.imgur.com/jRWx5mU.png" height="200px">

Microfrontends: 
<img src="https://i.imgur.com/nEbR8Gw.png" height="200px">


---
Implementation patterns (more [in this blogpost](https://blog.bitsrc.io/6-patterns-for-microfrontends-347ae0017ec0))
- reverse proxy (like nginx)
    - Everything server side rendered>
- app shell approach

<img src="https://i.imgur.com/7HmrYmI.png" height="200px">

---

But desired solution is sweet spot between monolith aspects and microservices aspect: the *modular distributed web application*.

<img src="https://i.imgur.com/q4RaCBQ.png" height="300px">
<img src="https://i.imgur.com/kSgYFWc.png" height="250px">


What Serverless is for microservices, ***Siteless UI*** is for micro frontends

Implementation:

<img src="https://i.imgur.com/3FgEgct.png" height="300px">

---
---
<br><br><br>

### [Microfrontends with Blazor: Welcome to the Party! (.NET Conf 2020)](https://www.youtube.com/watch?v=npff2NjVXEE)

> *Introduction is same as in previous talk*

**Options in Blazor WASM:**


1. Use packages (NuGET)
    
<img src="https://i.imgur.com/caYw86J.png" height="200px">

```diff 
+ stays in the flow
- recompilation
- no cross-framework support
- needs full reflection/inspection before starting
```


2. Combine with JS
    Start with JS and use Blazor as just a component within that

```diff 
+ recombine freely
+ no framework lock-in
+ Blazor part can be lazy loaded
- difficult to publish
- We need JS and C# (but this is a limitation with Blazor anyway at the moment)
```


--- 
**Challenges**
1. Routing
2. DOM Projection
3. Dynamic Registration
4. Shared Components
5. Lazy Loading ([solved in .NET 5 / Blazor 5](https://docs.microsoft.com/en-us/aspnet/core/blazor/webassembly-lazy-load-assemblies?view=aspnetcore-5.0))


[**\> Reference Implementation**](https://github.com/piral-samples/azure-static-web-app)