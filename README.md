<!-- Image placeholder code --> 
<p align="center">
<img src="https://user-images.githubusercontent.com/91913752/227791787-f5e6c0d9-7d4c-4410-a51c-b95cb3ef998b.png" width="500" height="300">
</p>
    
<!-- Title and tagline content --> 
<h2 align="center">r/Slang</h2>
<p align="center"> r/Slang is a Python-powered dynamic map visualization of regional word usage on Reddit. It retrieves Reddit posts and comments with a user-determined slang term and generates a heat map based on popularity relative to the population of each state (word usage as a % of all posts). </p>


Check out our [Devpost submission for RowdyHacks 2023](https://devpost.com/software/r-slang?ref_content=my-projects-tab&ref_feature=my_projects)!



<!-- platforms used --> 
<p align = "center">
<img alt="Python" src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white"  />
<img alt="JSON" src="https://img.shields.io/badge/json%20web%20tokens-323330?style=for-the-badge&logo=json-web-tokens&logoColor=pink"  />
<img alt="Adobe Photoshop" src="https://img.shields.io/badge/Adobe%20Photoshop-31A8FF?style=for-the-badge&logo=Adobe%20Photoshop&logoColor=black"  />
</p>


<!-- Code requirements --> 
## Requirements
snscrape requires Python 3.8 or higher. The Python package dependencies are installed automatically when you install snscrape.

Note that one of the dependencies, lxml, also requires libxml2 and libxslt to be installed.

## If running on Windows, invoke setup script
    .\env\scripts\activate

## Installation
    pip install snscrape
    


<!-- Devpost submission content -->
<h2 align="center">Our Inspiration</h2>
There are a variety of uses for a tool like this, but our primary inspiration was for examining regional dialects and linguistic differences across a wide geographic area, most notably the usage of slang words. This exact usage of such a tool was demonstrated in an academic journal (linked below) to show the propagation of terms over time, however, due to the limited scope and resources of our project, we opted to instead visualize current data in an interactive format.


<h2 align="center">How we built it</h2>
We utilized an open-source web scraper library to retrieve Reddit posts and comments. We used Pandas, PyQt, Qt Design Studio, the Concurrent Python library for multithreading, and several Python libraries.

<h2 align="center">Challenges we ran into</h2>
We ran into multiple issues such as the Twitter API access not being granted, which led us to switch to a web-scraper approach.
Twitter web-scraper approach does not include geodata, so considered various other options:
Generating randomized locations for given data points (points would be evenly distributed if random) using Meta API (Meta API is being shut down)
Reddit API (confusing and time-consuming application process)
We settled on the Reddit web scraper approach by state subreddit which requires us to switch from a dot density map to a heat color map
Accomplishments that we're proud of
We are proud of being able to adapt to various shortcomings and of utilizing distinct tools in novel ways. We were able to not only use them, but learn them (Pandas, multithreading, new Python libraries, adapting to new web scrapers, PyQt).

<h2 align="center">What we learned</h2>
Multiple members of our group programmed Python for the first time in this project, and we became proficient in the end. We never used Qt Studio before this, but are now comfortable using it.
   
<h2 align="center">What's next for r/Slang</h2>
Our specific implementation focuses on all US states due to data acquisition constraints imposed by Reddit's API, but the underlying functionalities of our project can be applied to much wider scope through slight modifications.
We would like to include a functionality where it displays the top 3 most upvoted Reddit posts (with the queried term) per state when hovering over each state.
