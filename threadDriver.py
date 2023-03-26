import concurrent.futures
from slangFrequencyByState import *
import time


def driver(word):
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
        result = pool.submit(findfrequency, state, word)
        """
         "if result is not None:
            drawstate(state, result)"
        """

        time.sleep(20)
    pool.shutdown(wait=True)
