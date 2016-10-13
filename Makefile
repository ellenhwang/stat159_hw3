.PHONY: data tests eda regression report clean all

data:
	curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv > data/Advertising.csv

tests:
	cd tests; Rscript -e “library(testthat); test_file(‘test-that.R’)”

eda:
	cd code/scripts; Rscript eda-script.R; rm Rplots.pdf; mv eda-output.txt ../../data

regression:
	cd code/scripts; Rscript regression-script.R; rm Rplots.pdf

report:
	cd report; Rscript -e "library(rmarkdown); render('report.Rmd')"

clean:
	rm -f report/report.Rmd
	rm -f report/report.pdf

all: eda regression report 
