# PoC experimentation

## Process log

1. set up Blazor WASM hosted solution right from the IDE: ASP.NET Core hosted

2. set up server-side prerendering with the help of [this resource](https://andrewlock.net/enabling-prerendering-for-blazor-webassembly-apps/)

   - `services.AddRazorPages();` to server
   - create `_Host.cshtml` file in server in stead of the `index.html`, and map
     fallback to that in Startup
   - replace `<div id="app">...` with
     ```html
     <component type="typeof(Client.App)" render-mode="WebAssemblyPrerendered" />
     ```
   - in Client app, delete the addition of App to root components
   - fix DI issues (registrations in both the Client and Server.)

3. Set up dynamic rendering of components from microfrontends

   > for now the microfrontend dlls are copied over to the server on every build
   > and are served from there as improptu CDN. The filenames are hardcoded in
   > the client. See [improvements](#Improvements-to-be-made)

   - load Microfrontend dll
   - go over with reflection and get all `IComponent` types
   - store these in a `ComponentCollection`
   - Fragments: create `Fragment` component that can render the correct
     component from the `ComponentCollection` based on a name. For now this is
     with FQN (See [improvements](#Improvements-to-be-made)

4. Set up dynamic router for pages

- create own custom Blazor router with help of [this
  resource](https://chrissainty.com/introduction-to-routing-in-blazor/) and
  [this resource](https://chrissainty.com/building-a-custom-router-for-blazor/)
  - match against all components from `ComponentColletion` that have a `RouteAttribute`
  - make sure to add `@using` statement in Client App.
  - also make sure to add all client components in `ComponentColletion`

## Improvements to be made:

- Util library
- Make `ComponentCollection` a hashmap with custom names
- Make simple feed service?
- Route parameters
- More robust DI between client and server
  - to research [here](https://jonhilton.net/blazor-wasm-prerendering-missing-http-client/)
- debugging (loading the pdbs)
- Support more complicated components
  - Components with NuGet packages? -> Dependency management
  - Dependency injection
  - static files
    - media ([see here maybe?](https://github.com/smapiot/Piral.Blazor/pull/15))
    - css ([see here maybe?](https://github.com/smapiot/Piral.Blazor/pull/28))
