# HW03: Multiple Regression Analysis

**Author**: Ellen Hwang

**Project Description and Structure**: This assignment's purpose is to practicing exloratory data analysis using regression functions in R and to familiarize with a reproducible project structure. Makefile to compiles code, graphs, and report. This assignment is divided into code, data, images, and report.

**Steps**:

1. git clone the repository
2. `cd` into directory
3. run `make all` to execute all scripts and get all output

**File Structure**:

`stat159-fall2016-hw03/
    .gitignore
    README.md
    LICENSE
    Makefile
    session-info.txt                     # produced by session-info-script.R
    code/
        README.md
        test-that.R
        functions/
            regression-functions.R
        scripts/
            eda-script.R
            regression-script.R
            session-info-script.R
        tests/
            test-regression.R
    data/
        README.md
        Advertising.csv
        eda-output.txt                      # produced by eda-script.R
        correlation-matrix.RData            # produced by eda-script.R
        regression.RData                    # produced by regression-script.R
    images/
        histogram-sales.png                # produced by eda-script.R
        histogram-tv.png                   # produced by eda-script.R
        histogram-radio.png                # produced by eda-script.R
        histogram-newspaper.png            # produced by eda-script.R
        scatterplot-matrix.png             # produced by eda-script.R
        scatterplot-tv-sales.png           # produced by regression-script.R
        scatterplot-radio-sales.png        # produced by regression-script.R
        scatterplot-newspaper-sales.png    # produced by regression-script.R
        residual-plot.png                  # produced by regression-script.R
        scale-location-plot.png            # produced by regression-script.R
        normal-qq-plot.png                 # produced by regression-script.R
    report/
        report.Rmd
        report.pdf
`

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

