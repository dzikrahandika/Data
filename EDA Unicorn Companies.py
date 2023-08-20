#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import matplotlib.pyplot as plt


# In[3]:


companies = pd.read_csv("/Users/mac/Downloads/Unicorn_Companies.csv")


# Display 10 rows

# In[5]:


companies.head(10)


# Challenge questions: 
# What does Date Joined Represent?
# It represents the join
# 
# What does Select Investors mean?
# 
# 

# In[7]:


# Convert to datetime

companies['Date Joined'] = pd.to_datetime(companies['Date Joined'])


# In[8]:


#to confirm that the datetime has changed

companies.info()



# In[10]:


companies.describe


# In[11]:


companies.shape


# Create Year Joined Column

# In[16]:


companies['Year Joined'] = companies['Date Joined'].dt.year
companies.head(10)


# In[17]:


companies.info()


# In[ ]:




