from scholarly import scholarly
from habanero import Crossref

# TODO: set ENTRYTYPE (article, inproceedings, etc) and ID (unique identifier) for each entry

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

cr = Crossref()

with open('bibtex.bib', 'w') as bibtex_file:
    for pub in author['publications']:
        scholarly.fill(pub)
    
        bib = pub['bib']
        bib['ENTRYTYPE'] = 'article'
        bib['ID'] = pub['cites_id'][0]
        bib.pop('abstract', None)
    
        # find the DOI from crossref
        query = f"{bib['title']}, {bib['citation']}"
        res = cr.works(query=query)
        i = 0
    
        for it in res['message']['items']:
            if it['title'][0].lower()[:10] == bib['title'].lower()[:10]:
                print(it['author'][0]['family'])
                print(it['title'][0])
                if 'DOI' in it: 
                    print(it['DOI'])
                    bib['doi'] = it['DOI']
                    bib['dimensions'] = 'true'
                    bib['altmetric'] = 'true'
                    bib['html'] = f"https://doi.org/{bib['doi']}"
                print()
                break
    
        bib['bibtex_show'] = 'true'
    
        bib_str = scholarly.bibtex(pub)
        print(bib_str)
        bibtex_file.write(bib_str)
