cd ../proposal
latexmk DeRuwe_Dante_BachelorThesisProposal.tex -synctex=1 -interaction=nonstopmode -file-line-error -pdf
cd ../thesis
latexmk DeRuwe_Dante_BachelorThesis.tex -synctex=1 -interaction=nonstopmode -file-line-error -pdf