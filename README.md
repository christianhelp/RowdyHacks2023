<!-- Image placeholder code --> 
<p align="center">
<img src="https://user-images.githubusercontent.com/91913752/227791787-f5e6c0d9-7d4c-4410-a51c-b95cb3ef998b.png" width="500" height="300">
</p>
    
<!-- Title and tagline content --> 
<h2 align="center">r/Slang</h2>
<p align="center"> r/Slang is a Python-powered dynamic map visualization of regional word usage on Reddit. It retrieves Reddit posts and comments with a user-determined slang term and generates a heat map based on popularity relative to the population of each state (word usage as a % of all posts). </p>

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
    
   
<h2 align="center">What's next for r/Slang</h2>

Our specific implementation focuses on all US states due to data acquisition constraints imposed by Reddit's API, but the underlying functionalities of our project can be applied to much wider scope through slight modifications.
We would like to include a functionality where it displays the top 3 most upvoted Reddit posts (with the queried term) per state when hovering over each state.
