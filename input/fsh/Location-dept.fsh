Profile: AshmcDepTafnitLoc
Parent: il-hdp-location 
Id: ashmc-dep-tafnit-loc
Title: "ASHMC Department Tafnit - Location"
Description: "Assuta Ashdod Tafnit Department - Location"
* insert ConformanceMetadata


* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets" (exactly)
* meta.security[HDP].code = #organization (exactly)
* meta.security[HDP].display = "יחידה ארגונית" (exactly)

* id 1..1

* identifier contains tafnit 1..1
* identifier[tafnit].system 1..1
* identifier[tafnit].system = "http://fhir.ashmc.co.il/identifier/tafnit-id" (exactly)
* identifier[tafnit].value 1..1

* type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode" (exactly)
* type.coding.code = #HU (exactly)
* type.coding.display = "Hospital unit" (exactly)

