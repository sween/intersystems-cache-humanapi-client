Class IntegrationRequired.HumanAPI.Human Extends (%RegisteredObject, %XML.Adaptor, %ZEN.DataModel.Adaptor)
{

Parameter Server = "api.humanapi.co";

Parameter Port = 443;

Parameter Https = 1;

Parameter SSLConfiguration = "HUMANAPI";

ClassMethod GetHuman() As %Net.HttpRequest
{
	
 Set request = ##class(%Net.HttpRequest).%New()
 		
 Set request.Server = ..%GetParameter("Server")
 Set request.Port = ..%GetParameter("Port")
 Set request.Https = ..%GetParameter("Https")
 Set request.SSLConfiguration = ..%GetParameter("SSLConfiguration")
 Set requestStream = ##class(%GlobalBinaryStream).%New()	
 Set request.EntityBody = requestStream           
		
 quit request
}

/// Profile
ClassMethod Human(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Profile
ClassMethod Profile(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/profile")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Blood Glucose
/// Most Recent Blood Glucose Reading
ClassMethod Glucose(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/blood_glucose")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Blood Glucose
/// Most Recent Blood Glucose Reading
ClassMethod GlucoseReadings(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/blood_glucose/readings")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Blood Glucose
/// Get Blood Glucose Reading by Id
ClassMethod GlucoseReading(AccessToken As %String, Id As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/blood_glucose/readings/"_Id)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Blood Glucose
/// Get Blood Glucose Readings by Date(YYY-MM-DD)
ClassMethod GlucoseReadingsByDate(AccessToken As %String, Date As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/blood_glucose/readings/daily/"_Date)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Blood Pressure
/// Most Recent Blood Pressure Reading
ClassMethod Pressure(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/blood_pressure")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Blood Pressure
/// Most Recent Blood Pressure Reading
ClassMethod PressureReadings(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/blood_pressure/readings")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Blood Pressure
/// Get Blood Pressure Reading by Id
ClassMethod PressureReading(AccessToken As %String, Id As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/blood_pressure/readings/"_Id)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Blood Pressure
/// Get Blood Pressure Readings by Date(YYY-MM-DD)
ClassMethod PressureReadingsByDate(AccessToken As %String, Date As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/blood_pressure/readings/daily/"_Date)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// BMI
/// Most Recent BMI Reading
ClassMethod BMI(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/bmi")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// BMI
/// Most Recent BMI Reading
ClassMethod BMIReadings(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/bmi/readings")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// BMI
/// Get BMI Reading by Id
ClassMethod BMIReading(AccessToken As %String, Id As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/bmi/readings/"_Id)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// BMI
/// Get BMI Readings by Date(YYY-MM-DD)
ClassMethod BMIReadingsByDate(AccessToken As %String, Date As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/bmi/readings/daily/"_Date)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Body Fat
/// Most Recent Body Fat Reading
ClassMethod BodyFat(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/body_fat")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Body Fat
/// Most Recent Body Fat Reading
ClassMethod BodyFatReadings(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/body_fat/readings")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Body Fat
/// Get Body Fat Reading by Id
ClassMethod BodyFatReading(AccessToken As %String, Id As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/body_fat/readings/"_Id)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Body Fat
/// Get Body Fat Readings by Date(YYY-MM-DD)
ClassMethod BodyFatReadingsByDate(AccessToken As %String, Date As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/body_fat/readings/daily/"_Date)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Heart Rate
/// Most Recent Heart Rate Reading
ClassMethod HeartRate(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/heart_rate")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Heart Rate
/// Most Recent Heart Rate Reading
ClassMethod HeartRateReadings(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/heart_rate/readings")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Heart Rate
/// Get Heart Rate Reading by Id
ClassMethod HeartRateReading(AccessToken As %String, Id As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/heart_rate/readings/"_Id)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Heart Rate
/// Get Heart Rate Readings by Date(YYY-MM-DD)
ClassMethod HeartRateReadingsByDate(AccessToken As %String, Date As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/heart_rate/readings/daily/"_Date)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Height
/// Most Recent Height Reading
ClassMethod Height(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/height")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Height
/// Most Recent Height Reading
ClassMethod HeightReadings(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/height/readings")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Height
/// Get Height Reading by Id
ClassMethod HeightReading(AccessToken As %String, Id As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/height/readings/"_Id)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Height
/// Get Height Readings by Date(YYY-MM-DD)
ClassMethod HeightReadingsByDate(AccessToken As %String, Date As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/height/readings/daily/"_Date)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Weight
/// Most Recent Weight Reading
ClassMethod Weight(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/weight")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Weight
/// Most Recent Weight Reading
ClassMethod WeightReadings(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/weight/readings")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Weight
/// Get Weight Reading by Id
ClassMethod WeightReading(AccessToken As %String, Id As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/weight/readings/"_Id)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Weight
/// Get Weight Readings by Date(YYY-MM-DD)
ClassMethod WeightReadingsByDate(AccessToken As %String, Date As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/weight/readings/daily/"_Date)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Activities
/// Most Recent Activities
ClassMethod Activities(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/activities")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Activities
/// Get Activities Reading by Id
ClassMethod ActivitiesReading(AccessToken As %String, Id As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/activities/"_Id)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Activities
/// Get Activities  by Date(YYY-MM-DD)
ClassMethod ActivitiesByDate(AccessToken As %String, Date As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/activities/daily/"_Date)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Activities
/// Summary of most recent acive minutes.
ClassMethod ActivitiesSummary(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/activities/summary")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Activities
/// Summary of most recent acive minutes by Date (YYYY-MM-HH)
ClassMethod ActivitiesSummaryByDate(AccessToken As %String, Date As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/activities/summary/"_Date)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Sleeps
/// Most Recent Sleeps
ClassMethod Sleeps(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/sleeps")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Sleeps
/// Get Sleeps Reading by Id
ClassMethod SleepsReading(AccessToken As %String, Id As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/sleeps/"_Id)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Sleeps
/// Get Sleeps  by Date(YYY-MM-DD)
ClassMethod SleepsByDate(AccessToken As %String, Date As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/sleeps/daily/"_Date)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Sleeps
/// Summary of most recent acive minutes.
ClassMethod SleepsSummary(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/sleeps/summary")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Sleeps
/// Summary of most recent acive minutes by Date (YYYY-MM-HH)
ClassMethod SleepsSummaryByDate(AccessToken As %String, Date As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/sleeps/summary/"_Date)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Locations
/// Most Recent Locations
ClassMethod Locations(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/locations")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Locations
/// Get Locations Reading by Id
ClassMethod LocationsReading(AccessToken As %String, Id As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/locations/"_Id)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Locations
/// Get Locations  by Date(YYY-MM-DD)
ClassMethod LocationsByDate(AccessToken As %String, Date As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/locations/daily/"_Date)			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Traits
/// Get Genetic Traits
ClassMethod GeneticTraits(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token", AccessToken)
 Do request.Get("/v1/human/genetic/traits")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

/// Summary of the Persons Health Data
ClassMethod Summary(AccessToken As %String) As %ArrayOfDataTypes
{

 Set sc = $$$OK
			
 Set request = ..GetHuman()
 Do request.InsertParam("access_token",AccessToken)
 Do request.Get("/v1/human")			
 Quit:$System.Status.IsError(sc)
			
 Set responseStream = ##class(%Stream.GlobalBinary).%New() 
 Set response = request.HttpResponse.Data.Read()			
 Set returnHumanresponse = ##class(IntegrationRequired.HumanAPI.Lib.CacheJSON).Decode(response)
 Quit:$System.Status.IsError(sc)
 
 Quit returnHumanresponse
}

}
