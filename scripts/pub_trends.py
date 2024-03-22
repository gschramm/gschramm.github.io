import datetime
from scholarly import scholarly
import pandas as pd
from pathlib import Path

query = 'Georg Schramm KU Leuven'
fname = Path(f"{query}_{datetime.datetime.today().strftime('%Y-%m')}.json")

if fname.exists():
    df = pd.read_json(fname)
else:
    # %%
    # Retrieve the author's data, fill-in, and print
    # Get an iterator for the author results
    search_query = scholarly.search_author('Georg Schramm KU Leuven')
    
    # Retrieve the first result from the iterator
    first_author_result = next(search_query)
    
    print(f"name    .: {first_author_result['name']}")
    print(f"affil   .: {first_author_result['affiliation']}")
    print(f"citedby .: {first_author_result['citedby']}")
    print()
    
    # Retrieve all the details for the author
    author = scholarly.fill(first_author_result )
    
    publications_filled = [scholarly.fill(pub) for pub in author['publications']]
    
    cpy = [x['cites_per_year'] for x in publications_filled]
    titles = [x['bib']['title'][:80] for x in publications_filled]
    
    # %%
    df = pd.DataFrame(cpy, index=titles)
    df = df.reindex(sorted(df.columns), axis=1).fillna(0).astype(int)

    df.to_json(fname)


for series_name, series in df.items():
    print(series_name, series.sum())
    print(series.sort_values(ascending=False)[:6])
    print()