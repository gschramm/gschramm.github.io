from habanero import Crossref

orcid = '0000-0002-2251-3195'

cr = Crossref()
res = cr.works(filter = dict(orcid = orcid))

for item in res['message']['items']:
    if 'author' in item:
        print(f"{item['author'][0]['family']} et al.: {item['title'][0]}")
        print()