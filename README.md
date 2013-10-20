#intersystems-cache-humanapi-client

An InterSystems Cache Client for the HumanAPI.

![alt tag](https://raw.github.com/username/projectname/branch/path/to/img.png)

##Quantified Health
The idea that the Quantified Self movement in the context of devices and data points for patients can generate better outcomes for chronic disease management, healthier outcomes in patient care and provide relevant data to physicians on behalf of patients from these channels.  Use this client 



##The HumanAPI
[HumanAPI](http://www.humanapi.co) is an aggregator of consumer data streams from several devices in the market.  It keeps all of the data synchronized across all user devices and services, and normalizes it in real time to appropriate most up to date data.  The data is then served up via a normalized API to enable the rapid development of applications from a single endpoint/service.

* API Supports 11 Streams (Activity, Blood Glucose, Blood Pressure, Body Fat %, BMI, Genetic Information, Heart Rate, Location, Sleep, Weight, Height
* API Supports 11 Vendors ( BodyMedia, Fitbit, Jawbone, Moves, HealthGraph, Nike, Glooko, Withings, iHealth, 23andMe, and Jawbone. 

HumanAPI recently launched on July 4th weekend of 2013, and has been confirmed as a platform to build applications on top of in different capacities.

##InterSystems Cache
InterSystems Caché® is an advanced object database that provides in-memory speed with persistence, and the ability to handle huge volumes of transactional data. Plus, it can run SQL faster than relational databases. Caché enables rapid Web application development, massive scalability, and real-time queries against transactional data – with minimal maintenance and hardware requirements.


GitHub by [@ronsween](http://twitter.com/#!/ronsween)for proper tracking of enhancements and maintenance.

Cache does not come with any native JSON support, necessitating a third party utility to translate JSON strings to & from Cache objects for web applications.

## Information & Help

* For information about Intersystems products visit their [website](http://www.intersystems.com).
* Visit the Intersystems [online documentation](http://docs.intersystems.com/).
* Send a message to [@PlanetCache](http://twitter.com/#!/PlanetCache) on Twitter.

## Installation

### Create an SSL Object

Import the class into your `namespace` and compile.

Then simply extend `CacheJSON` on the class you wish to use it with:

``` ruby
Class Sample.Person Extends (%Persistent, %Populate, CacheJSON) [ ClassType = persistent, Inheritance = right ]
````

### Import Classes

Import the class into your `namespace` and compile.

Then call the `HumanAPI` class methods from your code.

``` ruby
Set encodedList = ##class(CacheJSON).Encode(list)
````

## Usage

Below I'll go through some of the common uses and flows you can use with CacheJSON.

