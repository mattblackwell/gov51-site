# Gov 51: Data Analysis and Politics

## Matthew Blackwell

This repository is a Hugo/Blogdown site that makes [gov51.mattblackwell.org](https://gov51.mattblackwell.org), a course I am teaching at Harvard University in Fall 2020. 



Various hugo and blogdown features were borrowed more or less directly from [Kieran Healy](https://kieranhealy.org/) and [Andrew Heiss](https://www.andrewheiss.com). Their excellent courses can be found at:

- Healy: [Visualizing Society](http://visualizingsociety.com/) and [Data Visualization](http://socviz880.co/)
- Heiss: [Data Science For Public Management](https://statsf18.classes.andrewheiss.com/), [Economy, Society, and Public Policy](https://econw19.classes.andrewheiss.com/) [Data Visualization](https://datavizf18.classes.andrewheiss.com/).


This site uses the [Academic Hugo theme](https://sourcethemes.com/academic/). There are some slight template modifications found in `/assets/` and `layouts/`. The theme is included as a submodule, so when when cloning for the first time, use this command to get the theme too:

    git clone --recursive https://github.com/gcushen/hugo-academic.git

To get the theme later, use this command:

    git submodule add \
      https://github.com/gcushen/hugo-academic.git \
      themes/hugo-academic

To update to the latest version of the theme, use:

    git submodule update --recursive --remote
