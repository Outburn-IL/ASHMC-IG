Profile: AshmcPractitionerHilan
Parent: il-core-practitioner 
Id: ashmc-practitioner-hilan
Title: "ASHMC Practitioner Hilan"
Description: "Assuta Ashdod Hilan Practitioner"
* insert ConformanceMetadata


* meta 1..1
* meta.profile = "http://fhir.health.gov.il/StructureDefinition/il-core-practicioner" (exactly)

* meta.security ^slicing.discriminator.type = #value
* meta.security ^slicing.discriminator.path = "security.code"
* meta.security ^slicing.rules = #open
* meta.security ^slicing.ordered = false
* meta.security contains HDP 1..1
* meta.security[HDP].system 1..1
* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets" (exactly)
* meta.security[HDP].code 1..1
* meta.security[HDP].code = #practitioner (exactly)
* meta.security[HDP].display 1..1
* meta.security[HDP].display = "מטפל" (exactly)

* id 1..1

* identifier contains login 1..1 and enc-login 1..1
* identifier[login].system 1..1
* identifier[login].system = "http://fhir.ashmc.co.il/identifier/login-id" (exactly)
* identifier[login].value 1..1
* identifier[enc-login].system 1..1
* identifier[enc-login].system = "http://fhir.ashmc.co.il/identifier/encrypted-login-id" (exactly)
* identifier[enc-login].value 1..1

* name.given 1..1

* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom ^slicing.ordered = false
* telecom contains phone 0..1 and email 0..1
* telecom[phone] 0..1
* telecom[phone].system 1..1
* telecom[phone].system = #phone (exactly)
* telecom[phone].use 1..1
* telecom[phone].use = #mobile
* telecom[phone].value 1..1
* telecom[email] 0..1
* telecom[email].system 1..1
* telecom[email].system = #email (exactly)
* telecom[email].value 1..1
