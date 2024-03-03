import bibtexparser
from habanero import Crossref

with open('../_bibliography/papers_gs.bib') as bibtex_file:
    bib_database = bibtexparser.load(bibtex_file)

cr = Crossref()

for entry in bib_database.entries:
    query = f"{entry['author'].split(',')[0]}: {entry['title']}"
    if entry['ENTRYTYPE'] == 'article':
        query += f", {entry['journal']}"
    elif entry['ENTRYTYPE'] == 'inproceedings':
        query += f", {entry['booktitle']}"
    print(query)

    entry['bibtex_show'] = 'true'

    if not 'doi' in entry:
        res = cr.works(query=query)
    
        i = 0
        print(res['message']['items'][i]['author'][0]['family'])
        print(res['message']['items'][i]['title'][0])
        print(res['message']['items'][i]['DOI'])
        print()

        if 'DOI' in res['message']['items'][i]: 
            entry['doi'] = res['message']['items'][i]['DOI']
            entry['dimensions'] = 'true'
            entry['altmetric'] = 'true'
    else:
        entry['html'] = f"https://doi.org/{entry['doi']}"

#with open('bibtex.bib', 'w') as bibtex_file:
#        bibtexparser.dump(bib_database, bibtex_file)