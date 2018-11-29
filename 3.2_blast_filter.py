
# coding: utf-8

# In[10]:


import pandas as pd
from utils import *
path_blast = 'data/results/'


# In[11]:


#TEs
params = {}
params['LTR'] = {'min_len':650,'max_len':False,'min_distance':5,'max_q':1.5,'min_q':0.5,'min_pident':80,'min_qcov':40,'file':'ltr_clustered.blast.csv'}
params['LINE'] = {'min_len':1500,'max_len':False,'min_distance':5,'max_q':1.2,'min_q':0.8,'min_pident':80,'min_qcov':80,'file':'line_clustered.blast.csv'}
params['SINE'] = {'min_len':150,'max_len':800,'min_distance':5,'max_q':1.1,'min_q':0.9,'min_pident':90,'min_qcov':90,'file':'sine_clustered.blast.csv'}
params['TIR'] = {'min_len':500,'max_len':False,'min_distance':5,'max_q':1.1,'min_q':0.9,'min_pident':90,'min_qcov':90,'file':'tirs_clustered.blast.csv'}
params['MITE'] = {'min_len':50,'max_len':800,'min_distance':5,'max_q':1.15,'min_q':0.85,'min_pident':90,'min_qcov':90,'file':'mites_clustered.blast.csv'}
params['helitrons'] = {'min_len':2000,'max_len':False,'min_distance':5,'max_q':1.2,'min_q':0.8,'min_pident':80,'min_qcov':80,'file':'helitrons_clustered.blast.csv'}
#select which TE type you want to run
te_type = 'LTR'
te_type


# In[12]:


#read blast output
df = pd.read_csv(path_blast + params[te_type]['file'], sep='\t', header=None)
df.columns = ['qseqid','sseqid','qstart','qend','sstart','send','score','length','mismatch','gaps','gapopen','nident','pident','qlen','slen','qcovs']
print('initial:',len(df.index))


# In[13]:


#filter by length
if(params[te_type]['min_len']):
    df = df[(df.qlen > params[te_type]['min_len'])]
    
if(params[te_type]['max_len']):
    df = df[(df.qlen < params[te_type]['max_len'])]

print('Min and max len: ' + str(len(df.index)))


# In[14]:


#filter by query / subject length treshold
df = df[((df.length / df.qlen) >= params[te_type]['min_q']) &
   ((df.length / df.qlen) <= params[te_type]['max_q'])]
print('treshold:',len(df.index))


# In[15]:


#filter by pident
df = df[(df.pident >= params[te_type]['min_pident'])]
print('Min_pident: ' + str(len(df.index)))


# In[16]:


#filter by qcov
df = df[(df.qcovs >= params[te_type]['min_qcov'])]
print('Min qcov: ' + str(len(df.index)))


# In[17]:


#order sstart and send
df['new_sstart'] = df[['sstart','send']].min(axis=1)
df['new_ssend'] = df[['sstart','send']].max(axis=1)
df['sstart'] = df['new_sstart']
df['send'] = df['new_ssend']
df = df.drop('new_sstart',axis=1).drop('new_ssend',axis=1)

# sep by chr
dfs = {}
for seq in df.sseqid.unique():
    dfs[seq] = df[df.sseqid == seq]


# In[ ]:


# filter overlapped 
rows = []
discard = []
total = len(df.index)
for index, row in df.iterrows():
    curr = index * 100 / (total * 1.0)
    if curr % 1 == 0:
        print(curr)
    if index in discard:
        continue
    df_2 = dfs[row.sseqid]
    res = df_2[(abs(df_2.sstart - row.sstart) <= params[te_type]['min_distance']) | (abs(df_2.send - row.send) <= params[te_type]['min_distance'])]
    if len(res.index) > 1:
        discard.extend(res.index.values)
    rows.append(row)


# In[ ]:


df = pd.DataFrame(rows)
df.sort_values(['sseqid', 'sstart'], inplace=True)
print('Non overlapped: ' + str(len(df.index)))


# In[ ]:


filename = path_blast + params[te_type]['file'] + '.filtered'
df.to_csv(filename, index=None, sep='\t')
filename

