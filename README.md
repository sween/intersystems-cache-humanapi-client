#intersystems-cache-humanapi-client

An InterSystems Cache Client for the HumanAPI.

![alt tag](https://raw.github.com/sween/intersystems-cache-humanapi-client/master/human-cache.png)

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
Import the classes into your `namespace` from the Studio export `StudioExport\Human.xml` and compile.


###CacheJSON
Cache does not come with any native JSON support, necessitating a third party utility to translate JSON strings to & from Cache objects for applications.  Recent releases of the Ensemble and HealthShare products have JSON support for the Zen stack, but for purposes of keeping it clean and usable for Cache Single Development installs, this solution utilizes the [CacheJSON](https://github.com/PlanetCache/CacheJSON) library to accomplish JSON marshalling to Cache Objects.  The Library has been included in the package for your conveinence. 

## Usage

You can either get yourself a developer account on HumanAPI or interact with the client with the `demo` token for use with this library to take it for a spin.  A developer account will be required to register your application with HumanAPI, once you are ready to get serious with your application.

Lets Grab the the top level Human object using the demo token:

``` ruby
set response = ##class(IntegrationRequired.HumanAPI.Human).Human("demo")
````
Returns the following Array of Data Types:
``` ruby
Do $System.OBJ.Dump(response)                                                       
+----------------- general information ---------------
|      oref value: 7
|      class name: %Library.ArrayOfDataTypes
| reference count: 1
+----------------- attribute values ------------------
|Data("activitySummary") = "33@%Library.ListOfDataTypes"
|Data("bloodGlucose") = "18@%Library.ArrayOfDataTypes"
|Data("bloodPressure") = "20@%Library.ArrayOfDataTypes"
|        Data("bmi") = "22@%Library.ArrayOfDataTypes"
|    Data("bodyFat") = "24@%Library.ArrayOfDataTypes"
|  Data("createdAt") = "2013-09-24T16:17:16.482Z"
|      Data("email") = "demo@humanapi.co"
|     Data("gender") = "male"
|  Data("heartRate") = "29@%Library.ArrayOfDataTypes"
|     Data("height") = "26@%Library.ArrayOfDataTypes"
|Data("sleepSummary") = "35@%Library.ArrayOfDataTypes"
|     Data("userId") = "5241bb0c69f3d19828000001"
|     Data("weight") = "31@%Library.ArrayOfDataTypes"
|        ElementType = "%String"
````


## Have Fun

HumanAPI Client for InterSystems Cache by [@ronsween](http://twitter.com/#!/ronsween) of [Integration Required, LLC](http://www.integrationrequired.com).
