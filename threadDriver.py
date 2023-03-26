import snscrape.modules.twitter as sntwitter
import pandas as pd
import time
import concurrent.futures
from slangFrequencyByState import *
import time


"""
for post in items:
    print(post.author)
    if start - time.time() >= 8.000:
        break
        
dataframe = pd.DataFrame(posts, columns=['date', 'username', 'post'])
# Converts code to CSV
dataframe.to_csv(f'testFile.csv', index=False)
"""

pool = concurrent.futures.ThreadPoolExecutor(max_workers=8)

state_names = ["Alaska", "Alabama", "Arkansas", "Arizona", "California", "Colorado",
               "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii",
               "Iowa", "Idaho", "Illinois", "Indiana", "Kansas", "Kentucky", "Louisiana", "Massachusetts",
               "Maryland", "Maine", "Michigan", "Minnesota", "Missouri", "Mississippi", "Montana", "NorthCarolina",
               "NorthDakota", "Nebraska", "NewHampshire", "NewJersey", "New Mexico", "Nevada", "NewYork",
               "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina",
               "South Dakota", "Tennessee", "Texas", "Utah", "Virginia", "Vermont", "Washington",
               "Wisconsin", "West Virginia", "Wyoming"]

for state in state_names:
    pool.submit(findfrequency, state, 'y\'all')
    time.sleep(20)
pool.shutdown(wait=True)
