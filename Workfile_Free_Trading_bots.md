<!-- Logo -->
<div align="center">
  <a href="https://avatars.githubusercontent.com/u/95321908">
    <img src=https://avatars.githubusercontent.com/u/95321908 alt="Logo" width="180" height="180">
     </a>
</div>

<a name="readme-top"></a>
<!-- TABLE OF CONTENTS -->
## Table of Contents
- [Prerequisites](#prerequisites)
- [ByBit](#ByBit)
- [AWS Launch Template](#AWS-Launch-Template)
  [Connect to AWS Instance](#Connect-to-AWS-Instance)
- [Github token](#Github-token)
- [Get Access To Strat](#get-access-to-strat)
- [Add Token To Script](#Add-Token-To-Script)
- [Contributing](#Contributing)

--====================================================

# Prerequisites
<!-- Combined from AWS and Github and WINSCP -->
* If you don't have one [Create a github account](https://www.youtube.com/watch?v=Gn3w1UvTx0A)
* You will need to sign up to the [EC2 Free Tier](https://aws.amazon.com/ec2/pricing/?loc=ft#Free_tier)
* Install [Winscp](https://winscp.net/eng/downloads.php)
  * download winscp https://winscp.net/eng/downloads.php then launch the install
  * choose typical and then commander then install
  * uncheck open get started page
* Install [PuTTY](https://winscp.net/eng/downloads.php#putty)
* Make sure you have a working credit card and finish the whole sign up process before you continue.
<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ByBit
(include in Bybit section - added from [WINSCP](https://quantfreedom1022.github.io/QuantFreedom/free_trading_bots/#winscp))
* for bybit you have to make sure you are in a uinfied account ... log into bybit and go to the trading pair btcusdt and on the right side below the open and short and above the contract details and price pool ... if you see the word upgrade make sure
<p align="center"><img src="https://quantfreedom1022.github.io/QuantFreedom/images/image-10.png" width="300px;"/></p>  
<p align="right">(<a href="#readme-top">back to top </a>)</p>  

## AWS Launch Template
* Log into AWS and go to the console home page and click on EC2
* On the left side menu click on [Security Groups](https://eu-north-1.console.aws.amazon.com/ec2/home?region=eu-north-1#SecurityGroups:) under Network and Security.
* Crerate new security group (in my case: wizard 1), and make sure the Inbound and Outbound rules are setup correctly, and create new security group. 
* Go back to EC2 main page, on the left side menu click on launch templates under instances and then click the orange create launch template
* Name your template under launch template name
  <img src="https://quantfreedom1022.github.io/QuantFreedom/images/image-22.png" width="800px;"/>

* In the next section choose latest ubuntu version
  <img src="https://quantfreedom1022.github.io/QuantFreedom/images/image-23.png" width="800px;"/>

* For instance type choose the .micro Free tier eligible option
  <img src="https://quantfreedom1022.github.io/QuantFreedom/images/image-24.png" width="800px;"/>
  
* next in key pair login click on create new key pair
  <img src="https://quantfreedom1022.github.io/QuantFreedom/images/image-25.png" width="800px;"/>
  
* Then name the key pair something and select ppk and then click create key pair
  <img src="https://quantfreedom1022.github.io/QuantFreedom/images/image-26.png" width="800px;"/>
  
* Make sure you save the download somewhere other than your desktop because you will need to use it later on.
* in network settings choose the security groups as (created begore) wizard 1
  <img src="https://quantfreedom1022.github.io/QuantFreedom/images/image-27.png" width="800px;"/>

(Added from [Adding Github Token](https://quantfreedom1022.github.io/QuantFreedom/free_trading_bots/#adding-github-token))
* create launch template
* now in the green sction click on the link
* then click on actions and launch instance from template
* then in lower right corner click launch instance
* thne in the green click the link to see the instance details
<p align="right">(<a href="#readme-top">back to top </a>)</p>

## Connect to AWS Instance
* Go to EC2 main page
* then under instance id you click that link
* copy the ipv4 dns and paste it into the host name for the winscp, use SFTP file protocol port 22 and ubuntu as username
* clcik on the name advanced and on the left side go to SSH / Autnetication
* now find the private key file that you downloaded during creation of AWS template. 
* then hit OK and login, (make sure the IP from Instance ID and security group inbound and outbound are corrct)
* click on the live bots folder and then open logs and you should see that the bot is running
<p align="right">(<a href="#readme-top">back to top </a>)</p>
  
## Github token
* In the upper right corner of github click on your profile icon and go to [settings](https://github.com/settings/profile) at the bottom of the menu
* now go all the way down to the bottom and on the left side click [dev settings](https://github.com/settings/apps)
* then on the left side click personal access tokens then click on token classics
* now click on generate a new token on the upper right side next to revoke all and click on generate new token classic
* then select the main repo that will select all the options under repo alt text
<img src="https://quantfreedom1022.github.io/QuantFreedom/images/image-21.png" width="800px;"/>

* then scroll to the bottom and choose create token
* make sure you copy and save this somewhere because you will need it to run the strategy
<p align="right">(<a href="#readme-top">back to top </a>)</p>

<!-- Get Access To Strat -->
## Get Access To Strat
So at this point you should have everything done and you have the following

- [x] You have at least 100 dollars in your crpyto exchange account
- [x] You have a AWS account that is ready to be used
- [x] You have a github account and token
- [x] you have your api keys ready and for bybit users that you have verified your account is unified
- [ ] now you will go to the discord and let me know you signed up in the bot sign up channel
- [ ] You will send the following: A screen shot of you following me on all the social media accounts and a link to your github account.
- [ ] Once you have got confirmation from me that I added you to the repo go to this repo and approve being a collaborator. Bot Github Repo
<p align="right">(<a href="#readme-top">back to top </a>)</p>

## Add Token To Script
no chane
<p align="right">(<a href="#readme-top">back to top </a>)</p>
