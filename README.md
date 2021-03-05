![Crypto Sneaks Logo](images/CryptoSneaks.gif)

## Table of Contents

* [Summary](#summary)
* [Market Analysis and Modeling](#market-analysis-and-modeling) 
* [Development Platforms](#development-platforms)
* [Blockchain Technology](#blockchain-technology) 
* [Smart Contracts](#smart_contracts) 
* [Digital Tokens - Non-Fungible Tokens(NFT)](#digital-tokens-non-fungible-tokens(NFT)) 
* [Initial Coin Offering (ICO)](#initial-coin-offering-(ICO)) 
* [Demo](#demo)
* [Collaborators](#collaborators)
* [Resources](#resources)



---
## Summary

---

## Market Analysis and Modeling
Using the dataset provide by StockX we evaluated the different aspects of the sneakers resale market and develop a regression model to predict resale price identify the most relevant features of the sneakers market. 

![by_name](MarketAnalysis/media/by_name.png)


![by_retail_price](MarketAnalysis/media/by_retail_price.png)


![by_shoe_size](MarketAnalysis/media/by_shoe_size.png)


![by_region](MarketAnalysis/media/by_region.png)


![avg_sale_price](MarketAnalysis/media/avg_sale_price.png)

### Parameters
```python
# Define features set
X = df.drop(['sale_price'], axis=1)

# Define target vector
y = df.sale_price

# Encoding variables
X = pd.get_dummies(X, columns=["brand", "sneaker_name", "buyer_region"])
X.head()

# Splitting into Train and Test sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state = 27)

# Create the random forest regresor instance
rf_model = RandomForestRegressor(n_estimators=500,random_state=27)
```

### Results
```python
R²: 0.98
Mean Absolute Error: 14.49
Median Absolute Error: 7.10
Accuracy: 97.14%
```
![feature_importances](MarketAnalysis/media/feature_importance.png)

---
## Development Platforms
![pinata](images/pinata.png)
![metamask](images/metamask.png)
![python](images/python.jpeg)
![jupyterlab](images/jupyterlab.png)

---
## Blockchain Technology
- Blockchain is one of the most futuristic and forwarding technology created by human, and while it seems like an IT technology, it's also a revolutionary way of thinking. Similar to linguistics, languages are what human use to communicate with each other, but what's deeper is the way of forming the sentences with the words, and each language has different sentence structures. Blockchain can be explained by its name with the word "block" and the "chain". It simply is about connecting the blocks together like chains. Blockchain is a type of database, and each block essentially stores information, and this is one of the fascinating characteristics of blockchain. In the past 20 to 30 decades, internet world has been evloving to what we have today, where we can't even leave our phone for a second. What we attached is not the phone itself, but the network that connects us to the online world or society. And this leads to the fact that our physical world is ultimately turning into virtual or online world. As we spend more and more time in the online society, there are countless data that need to be properly and efficiently managed. What we have currently to store all the data and information is mostly centralized network. For banks as an example, our money and every detailed information about ourselves are stored and managed by the banks, and what they are providing is essentially a centralized services. Another example would be Amazon Web Services (AWS), where business use Amazon's centralized physical servers as a place to store their data and information, and this is one of the most profiting business that Amazon runs. And there are rumors about how this technology will change the whole world completely because it contradicts with what is supporting our world, instead, blockchain is all about decentralizing. The reason why the world could be change completely by this technology because if decentralizing becomes popular, large entities that provide centralized services will be harmed, such as the government, which is controlling all the data and information in each country. What blockchain is promoting is that remove the centralized network and make every individual a center. One of the great example is bitcoin, a digital currency built based on the structure of blockchain, where there is no single institution or agency controlling it. In fact, everyone who has a crypto wallet is a center and has all the transaction data once any transaction of bitcoin is being made. Under blockchain, there are almost no possibility to cheat or stolen by others because everyone has a piece of records. For example, if we store our money in the banks, banks could gone bankruptcy and the money that we stored would be gone. Although this technology has strengths, it also has weaknesses and that's why it cannot be widely used. For example, if we decentralize and remove the government, we cannot be sure that if people will still be following orders because there are no regulators. In conclusion, the reason why blockchain is safe, transparent, and can be decentralized is because of its algorithm. Each block is being encrypted by cryptographic hash of the previous block, and this is why it's impossible to edit the data or information or cheat without everyone acknowledges.
---
## Smart Contracts

---
## Digital Tokens - Non-Fungible Tokens(NFT)

---
## Initial Coin Offering (ICO)

---
## Demo 

---
## Collaborators
- Emmanuel Lopez els2310@gmail.com 
- Etienne Alcaraz etiennegalcaraz@gmail.com
- Jerry Hsieh cthsieh@ucdavis.edu
- Sylvia 

---
## Resources
- [StockX Data Contest](https://stockx.com/news/the-2019-data-contest/)
- [Random Forest Regression](MarketAnalysis/notebooks/Random_Forest_Regression.ipynb)
- [Sneakers Analysis](MarketAnalysis/notebooks/Sneakers_Data_Analysis.ipynb)
