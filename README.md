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
The sneaker resale market is a 2 billion dollar market and it is expected to triple in size to by 2025. We have created a decentralized collectible sneaker auction market built Ethereum using blockchain technology and smart contracts. 

---

## Market Analysis and Modeling
Using the dataset provide by StockX we evaluated the different aspects of the sneakers resale market and develop a regression model to predict resale price identify the most relevant features of the sneakers market. 

![by_name](MarketAnalysis/media/by_name.png)

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
![ethereum](images/ethereum.png)
![infura](images/infura.png)
![jupyterlab](images/jupyterlab.png)
![metamask](images/metamask.png)
![pinata](images/pinata.png)
![python](images/python.jpeg)
![remix](images/remix.png)
![solity](images/solidity.png)

---
## Blockchain Technology
- Blockchain is one of the most futuristic and forwarding technology created by human, and while it seems like an IT technology, it's also a revolutionary way of thinking. Similar to linguistics, languages are what human use to communicate with each other, but what's deeper is the way of forming the sentences with the words, and each language has different sentence structures. Blockchain can be explained by its name with the word "block" and the "chain". It simply is about connecting the blocks together like chains. Blockchain is a type of database, and each block essentially stores information, and this is one of the fascinating characteristics of blockchain. In the past 20 to 30 decades, internet world has been evloving to what we have today, where we can't even leave our phone for a second. What we attached is not the phone itself, but the network that connects us to the online world or society. And this leads to the fact that our physical world is ultimately turning into virtual or online world. As we spend more and more time in the online society, there are countless data that need to be properly and efficiently managed. What we have currently to store all the data and information is mostly centralized network. For banks as an example, our money and every detailed information about ourselves are stored and managed by the banks, and what they are providing is essentially a centralized services. Another example would be Amazon Web Services (AWS), where business use Amazon's centralized physical servers as a place to store their data and information, and this is one of the most profiting business that Amazon runs. And there are rumors about how this technology will change the whole world completely because it contradicts with what is supporting our world, instead, blockchain is all about decentralizing. The reason why the world could be change completely by this technology because if decentralizing becomes popular, large entities that provide centralized services will be harmed, such as the government, which is controlling all the data and information in each country. What blockchain is promoting is that remove the centralized network and make every individual a center. One of the great example is bitcoin, a digital currency built based on the structure of blockchain, where there is no single institution or agency controlling it. In fact, everyone who has a crypto wallet is a center and has all the transaction data once any transaction of bitcoin is being made. Under blockchain, there are almost no possibility to cheat or stolen by others because everyone has a piece of records. For example, if we store our money in the banks, banks could gone bankruptcy and the money that we stored would be gone. Although this technology has strengths, it also has weaknesses and that's why it cannot be widely used. For example, if we decentralize and remove the government, we cannot be sure that if people will still be following orders because there are no regulators. In conclusion, the reason why blockchain is safe, transparent, and can be decentralized is because of its algorithm. Each block is being encrypted by cryptographic hash of the previous block, and this is why it's impossible to edit the data or information or cheat without everyone acknowledges.
---
## Smart Contracts
- A smart contract is a self-executing contract with the terms of the agreement between buyer and seller being directly written into lines of code. The code and the agreements contained therein exist across a distributed, decentralized blockchain network. The code controls the execution, and transactions are trackable and irreversible.
- Smart contracts permit trusted transactions and agreements to be carried out among disparate, anonymous parties without the need for a central authority, legal system, or external enforcement mechanism.

---
## Digital Tokens - Non-Fungible Tokens (NFT)
- A non-fungible token (NFT) is a cryptographic token that represents something unique, and has an individual characteristic that sets it apart. NFTs are unique tokens or digital assets that generate value because of their uniqueness.

---
## Initial Coin Offering (ICO)
- An Inital Coin Offering is essentially the stocks market's Initial Public Offering (IPO) in the cryptocurrency world. In other words, companies utilize ICO to raise money so that they have the capital to create new cryptocurrencies, softwares, or services. Similar to issuing debt and stocks, interested investors will receive a new cryptocurrency token issued by the company after credit the company with their resources. While the token represents the partial interests in the company, the token given by the company may be consumed or used in the products or services provided by the company. And this is one of the differences between the ICOs and IPOs, which is that a stock simply represents a certain portion you own of a company, whereas a token from an ICO could be used to exchange for products or services presented by the company.
- While there are similarities between ICO and IPO, there are also some differences between them, such as the entry barriers and the risks and returns. For the entry of ICO, investors may need to own digital currencies first and have knowledge in dealing with cryptocurrencies. As for risks, while the IPO gives investors a certain level of safety, the ICOs deals with more risks than IPOs, and that's because the there are not any regulatory agencies to regulate the digital currencies market yet. Although there are no regulators such as the  Securities and Exchange Commission (SEC) monitoring the crypto market, the SEC can intervene to protect the investors when ICO companies try to conduct unethical or illegal behaviors. On the other side, the ICOs could also provide unusual level of returns because it's unregulated, and nothing can be a better example than bitcoin.
- In conclusion, ICO investors should make sure that they know what cryptocurrency is all about so that they wouldn't get baited by some random companies that just want to raise money and run. Investors must be cautious with investing in ICOs because companies know that there are people who are greedy for the high returns of cryptocurrencies. Additionally, ICO investors should be using their existing cryptocurrency wallet in order to exchange with the ICO companies for the tokens, and the investors' own wallets will be used to hold the currencies or tokens issued by the company.

---
## Demo 
We have created a decentralized collectible sneaker auction market built on Ethereum.
You can click [here](https://githb21.github.io/auction_dapp/) to access and start auctioning.  

![Demo](images/demo.gif)

---
## Collaborators
- Emmanuel Lopez els2310@gmail.com 
- Etienne Alcaraz etiennegalcaraz@gmail.com
- Jerry Hsieh cthsieh@ucdavis.edu
- Sylvia 

---
## Resources
- [Random Forest Regression](MarketAnalysis/notebooks/Random_Forest_Regression.ipynb)
- [Sneakers Analysis](MarketAnalysis/notebooks/Sneakers_Data_Analysis.ipynb)
- [StockX Data Contest](https://stockx.com/news/the-2019-data-contest/)

