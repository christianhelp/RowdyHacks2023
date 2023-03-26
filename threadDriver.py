import concurrent.futures
from slangFrequencyByState import *
import time
from main import drawState

def driver(word):
    pool = concurrent.futures.ThreadPoolExecutor(max_workers=8)

    state_names = ["alaska", "alabama", "arkansas", "arizona", "california", "colorado",
                   "connecticut", "delaware", "florida", "georgia", "hawaii",
                   "iowa", "idaho", "illinois", "indiana", "kansas", "kentucky", "louisiana", "massachusetts",
                   "maryland", "maine", "michigan", "minnesota", "missouri", "mississippi", "montana", "northcarolina",
                   "northdakota", "nebraska", "newnhampshire", "newjersey", "newmexico", "Nevada", "newyork",
                   "ohio", "oklahoma", "oregon", "pennsylvania", "rhodeisland", "southcarolina",
                   "southdakota", "tennessee", "texas", "utah", "virginia", "vermont", "washington",
                   "wisconsin", "westvirginia", "wyoming"]

    for state in state_names:
        result = pool.submit(findfrequency, state, word)
        if result is not None:
            drawState(state.lower(), result)

        time.sleep(20)
    pool.shutdown(wait=True)
