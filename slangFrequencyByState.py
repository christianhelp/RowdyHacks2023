import pandas as pd
import snscrape.modules.reddit as snReddit
import time
from tqdm import tqdm


def findfrequency(word, state):
    # daterange = pd.date_range(start='2022/03/25', end='2023-03-25')
    scraper = snReddit.RedditSubredditScraper(state)
    # Holds tweets
    posts = []
    i = 0
    numberofmatches = 0

    for post in scraper.get_items():
        if i % 100 == 0:
            time.sleep(3)
        if i > 3000:
            break
        # and post.selftext is not None and word in post.selftext

        if type(post) == snReddit.Submission and post.selftext is not None and word in post.selftext:
            data = [
                post.date,
                post.author,
                post.selftext
            ]
            posts.append(data)
            numberofmatches += 1
            # print("Submission Found!")
        # and post.body is not None and word in post.body
        elif type(post) != snReddit.Submission and post.body is not None and word in post.body:
            data = [
                post.date,
                post.author,
                post.body
            ]
            posts.append(data)
            numberofmatches += 1
            # print("Submission Found!")

        i += 1
        # Created data frame using pandas
    dataframe = pd.DataFrame(posts, columns=['date', 'username', 'post'])
    # Converts code to CSV
    dataframe.to_csv(f'{state}.csv', index=False)
    print(f'Total number of Matches with the word {numberofmatches}')
    # return numberofmatches
    # getstatewordfrequency(wordToQueryFor)


def getstatewordfrequency(word):
    state_names = ["Alaska", "Alabama", "Arkansas", "Arizona", "California", "Colorado",
                   "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii",
                   "Iowa", "Idaho", "Illinois", "Indiana", "Kansas", "Kentucky", "Louisiana", "Massachusetts",
                   "Maryland", "Maine", "Michigan", "Minnesota", "Missouri", "Mississippi", "Montana", "NorthCarolina",
                   "NorthDakota", "Nebraska", "NewHampshire", "NewJersey", "New Mexico", "Nevada", "NewYork",
                   "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina",
                   "South Dakota", "Tennessee", "Texas", "Utah", "Virginia", "Vermont", "Washington",
                   "Wisconsin", "West Virginia", "Wyoming"]
    """
        for state in state_names:
        findfrequency(word,state)
        print("Sleeping...")
        time.sleep(1)
        print("Continuing...")
    """

    findfrequency(word, "Florida")


if __name__ == "__main__":
    getstatewordfrequency("y'all")
