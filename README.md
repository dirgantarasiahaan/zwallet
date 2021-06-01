[![Platform](https://img.shields.io/cocoapods/p/LFAlertController.svg?style=flat)](http://cocoapods.org/pods/LFAlertController)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/EZSwiftExtensions.svg)](https://img.shields.io/cocoapods/v/LFAlertController.svg)  

# Zwallet Application

Mobile app for banking problems that oftenly wasting much of your times

<p align="col">
![Screenshoot](/Images/picture.png)
</p>



## Features

- [ ] Login
- [ ] Sign-Up
- [ ] Home
- [ ] History Transaction
- [ ] Transfer
- [ ] Top-Up
- [ ] Change Pin

## Requirements

- [ ] iOS 12.0+
- [ ] Xcode 12.4

## Installation

#### Clone Project
    git clone https://gitlab.com/dirgantarasiahaan/zwallet.git


#### CocoaPods
add this code in Podfile to install Library.

```Kingfisher
platform :ios, '12.0'
use_frameworks!
pod 'Kingfisher'
```

```Moya
platform :ios, '12.0'
use_frameworks!
pod 'Moya'
```

### How to Run this Project
1. Go to App folder
2. run "pod install" in directory App run code:
    pod install
3. open App/ZWallet.xcworkspace
4. Check simulator and running program


## Usage
##### View
Sebagai penerima action dari user untuk diteruskan ke presenter dan menampilkan apapun yang presenter hasilkan

##### Interactor
Backbone dari applikasi yang berisi business logic  

##### Presenter
sebagai Get data dari interactor atau pemanggilan router navigation untuk ditampilkan/diteruskan ke view 

##### Entity
Sebagai model yang biasanya digunakan oleh interactor

##### Router
sebagai navigation logic/wireframe untuk menuju screen yang diinginkan


## Tech in use
#### 1. VIPER
as design pattern consist of View, Interactor, Presenter, Entity, Router.
Benefit :
- Re-usability
- S.O.L.I.D principle -> Clean architecture
- Reduce load controller

#### 2. Moya & Kingfisher
as library for Rest API and use URL image

#### 3. Swift
as programming language dor development iOS App



