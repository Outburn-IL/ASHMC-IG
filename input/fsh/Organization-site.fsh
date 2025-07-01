Profile: AshmcOrgite
Parent: il-hdp-organization 
Id: ashmc-org-site
Title: "ASHMC Organization Site"
Description: "Assuta Ashdod MC Site ID (hospital|remote)"
* insert ConformanceMetadata


* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets" (exactly)
* meta.security[HDP].code = #organization (exactly)
* meta.security[HDP].display = "יחידה ארגונית" (exactly)

* id 1..1

* identifier contains internal 1..1
* identifier[internal].system 1..1
* identifier[internal].system = "http://fhir.ashmc.co.il/identifier/site-id" (exactly)
* identifier[internal].value 1..1

* active = true

* type[moh-institute-type] 1..1
* type[moh-institute-type].coding 1..*
* type[moh-institute-type].coding.system 1..1
* type[moh-institute-type].coding.system = "http://fhir.health.gov.il/cs/institution-type-moh" (exactly)
* type[moh-institute-type].coding.code 1..1 
* type[moh-institute-type].coding.code = #1 (exactly)
* type[moh-institute-type].coding.display 1..1
* type[moh-institute-type].coding.display = "אשפוז כללי" (exactly)
