import pandas as pd
import snscrape.modules.reddit as snReddit


def findfrequency(state, word):
    try:
        print(f'Ran at state {state}')
        # daterange = pd.date_range(start='2022/03/25', end='2023-03-25')
        scraper = snReddit.RedditSubredditScraper(state)
        # Holds tweets
        posts = []
        i = 0
        numberofmatches = 0

        for post in scraper.get_items():
            # Stop because it gets mad it will fingerprinting
            if i > 100:
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
        print(f'{state}: Total number of Matches with the word {numberofmatches}')
        # return numberofmatches
        # getstatewordfrequency(wordToQueryFor)
        return numberofmatches / 100
    except:
        print(f'Error! {state} did not finish running!')
        return None


def getstatewordfrequency(word):
    findfrequency(word, "Texas")
