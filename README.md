# Enabling the Distributed Development of Blazor-Based Web Applications Using a Microfrontend Architecture
> Bachelor Thesis by Dante De Ruwe 

## Reading from source

- All the essential content for the **proposal** is in the [/proposal/proposal-content.tex](https://github.com/DanteDeRuwe/bachelor-thesis/tree/master/proposal/proposal-content.tex) file.
- All the essential content for the **thesis** is in the [/thesis/partials](https://github.com/DanteDeRuwe/bachelor-thesis/tree/master/thesis/partials) folder.

## Building the PDF

### Prerequisites

The compile script makes use of `latexmk` and other MikTeX packages.

- Make sure you have MikTeX installed. 
- If you are having issues with `latexmk`, read the docs [here](https://mg.readthedocs.io/latexmk.html). 
- On Windows it could be necessary to download Perl, you can find it [here](https://www.perl.org/)

### Compiling the full thesis PDF
```sh
cd thesis
bash compile.sh --include-proposal
```
The output pdf should be in `/thesis/build/DeRuwe_Dante_BachelorThesis.pdf`.
