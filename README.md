#intersystems-cache-humanapi-client

An InterSystems Cache Client for the HumanAPI.

![alt tag](https://raw.github.com/username/projectname/branch/path/to/img.png)

##Quantified Health
The idea that the Quantified Self movement in the context of devices and data points for patients can generate better outcomes for chronic disease management, healthier outcomes in patient care and provide relevant data to physicians on behalf of patients from these channels.  Use this client and the HumanAPI to use this data for your next breakthrough application in `Quantified Health`.


##The HumanAPI
[HumanAPI](http://www.humanapi.co) is an aggregator of consumer data streams from several devices in the market.  It keeps all of the data synchronized across all user devices and services, and normalizes it in real time to appropriate most up to date data.  The data is then served up via a normalized API to enable the rapid development of applications from a single endpoint/service.

* API Supports 11 Streams (Activity, Blood Glucose, Blood Pressure, Body Fat %, BMI, Genetic Information, Heart Rate, Location, Sleep, Weight, Height
* API Supports 11 Vendors ( BodyMedia, Fitbit, Jawbone, Moves, HealthGraph, Nike, Glooko, Withings, iHealth, 23andMe, and Jawbone. 

HumanAPI recently launched on July 4th weekend of 2013, and has been confirmed as a platform to build applications on top of in different capacities.

* For information about the HumanAPI visit their [website](http://www.humanapi.co).
* Visit the [online documentation](http://www.humanapi.co/docs).

##InterSystems Cache
[InterSystems Caché®](http://www.intersystems.com/cache/) is an advanced object database that provides in-memory speed with persistence, and the ability to handle huge volumes of transactional data. Plus, it can run SQL faster than relational databases. Caché enables rapid Web application development, massive scalability, and real-time queries against transactional data – with minimal maintenance and hardware requirements.

* For information about Intersystems products visit their [website](http://www.intersystems.com).
* Visit the Intersystems [online documentation](http://docs.intersystems.com/).


## Installation

### Create an SSL Object

Create an SSL Object `HUMANAPI` for host `api.humanapi.co` from the System Management Portal, and make sure you get a successful test.

``` ruby
Parameter SSLConfiguration = "HUMANAPI";
````

### Import Classes

Import the class into your `namespace` and compile.

Then call the `HumanAPI` class methods from your code.


##CacheJSON
Cache does not come with any native JSON support, necessitating a third party utility to translate JSON strings to & from Cache objects for applications.  Recent releases of the Ensemble and HealthShare products have JSON support for the Zen stack, but for purposes of keeping it clean and usable for Cache Single Development installs, this solution utilizes the [CacheJSON](https://github.com/PlanetCache/CacheJSON) library to accomplish JSON marshalling to Cache Objects.  The Library has been included in the package for your conveinence. 

## Usage

Below I'll go through some of the common uses and flows you can use with CacheJSON.

``` ruby
Set encodedList = ##class(CacheJSON).Encode(list)
````




## Have Fun

HumanAPI Client for InterSystems Cache by [@ronsween](http://twitter.com/#!/ronsween) of [Integration Required, LLC](http://www.integrationrequired.com).
