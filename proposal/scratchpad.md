# Bachelor Thesis Proposal - Scratchpad
[TOC]


## Correspondence with Mr. Rappl (Co-promoter) 

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
