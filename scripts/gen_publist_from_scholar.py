import bibtexparser
from scholarly import scholarly
from habanero import Crossref

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

# %%
publication_filled = [scholarly.fill(x) for x in author['publications']]
bibs = [pub['bib'] for pub in publication_filled]

# %%
# use cross-ref API to find DOIs
cr = Crossref()

for ib, bib in enumerate(bibs):
    query = f"{bib['title']}, {bib['citation']}"
    res = cr.works(query=query)
    i = 0

    for it in res['message']['items']:
        if it['title'][0].lower()[:10] == bib['title'].lower()[:10]:
            print(ib, it['author'][0]['family'])
            print(it['title'][0])
            if 'DOI' in it: 
                print(it['DOI'])
                bib['doi'] = it['DOI']
                bib['dimensions'] = 'true'
                bib['altmetric'] = 'true'
            print()
            break

    bib['bibtex_show'] = 'true'

with open('bibtex.bib', 'w') as bibtex_file:
    bibtexparser.dump(bibs[0], bibtex_file)