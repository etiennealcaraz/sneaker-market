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

---
## Smart Contracts

---
## Digital Tokens - Non-Fungible Tokens(NFT)

---
## Initial Coin Offering (ICO)
- An Inital Coin Offering is essentially the stocks market's Initial Public Offering (IPO) in the cryptocurrency world. In other words, companies utilize ICO to raise money so that they have the capital to create new cryptocurrencies, softwares, or services. Similar to issuing debt and stocks, interested investors will receive a new cryptocurrency token issued by the company after credit the company with their resources. While the token represents the partial interests in the company, the token given by the company may be consumed or used in the products or services provided by the company. And this is one of the differences between the ICOs and IPOs, which is that a stock simply represents a certain portion you own of a company, whereas a token from an ICO could be used to exchange for products or services presented by the company.
- While there are similarities between ICO and IPO, there are also some differences between them, such as the entry barriers and the risks and returns. For the entry of ICO, investors may need to own digital currencies first and have knowledge in dealing with cryptocurrencies. As for risks, while the IPO gives investors a certain level of safety, the ICOs deals with more risks than IPOs, and that's because the there are not any regulatory agencies to regulate the digital currencies market yet. Although there are no regulators such as the  Securities and Exchange Commission (SEC) monitoring the crypto market, the SEC can intervene to protect the investors when ICO companies try to conduct unethical or illegal behaviors. On the other side, the ICOs could also provide unusual level of returns because it's unregulated, and nothing can be a better example than bitcoin.
- In conclusion, ICO investors should make sure that they know what cryptocurrency is all about so that they wouldn't get baited by some random companies that just want to raise money and run. Investors must be cautious with investing in ICOs because companies know that there are people who are greedy for the high returns of cryptocurrencies. Additionally, ICO investors should be using their existing cryptocurrency wallet in order to exchange with the ICO companies for the tokens, and the investors' own wallets will be used to hold the currencies or tokens issued by the company.
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
