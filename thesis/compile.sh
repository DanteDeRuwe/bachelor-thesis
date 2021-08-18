echo $1

if [ $# -ne 0 ] && [ $1 == "--include-proposal" ]; then
    echo -e "\e[44mbuilding proposal ...\e[49m"
    cd ../proposal
    latexmk DeRuwe_Dante_BachelorThesisProposal.tex -synctex=1 -interaction=nonstopmode -file-line-error -pdf
    cd ../thesis
fi

echo -e "\e[44mbuilding thesis ...\e[49m"
latexmk DeRuwe_Dante_BachelorThesis.tex -synctex=1 -interaction=nonstopmode -file-line-error -pdf --shell-escape -auxdir=build -outdir=build