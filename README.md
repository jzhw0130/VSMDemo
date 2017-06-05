# VSMDemo
This project requires Xcode 8, run iOS 9.0+. 

## Installation

Install `apollo-codegen`:

```sh
npm install -g apollo-codegen
```

Install `CocoaPods `:

```sh
sudo gem install cocoapods
```
Install framework dependency:   

```sh
cd (Your project path)/VSMDemo        (see Podfile in the directory)
pod install
```

## Configure server uri on StoreManager.swift
```sh
static internal let apolloClient = ApolloClient(url: URL(string: "http://192.168.2.107:4000/graphql")!)
```
