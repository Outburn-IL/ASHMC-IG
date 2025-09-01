Profile: AshmcOrgHier
Parent: il-hdp-organization
Id: ashmc-org-hier
Title: "ASHMC Organization Hierarchy"
Description: "Assuta Ashdod MC Organization hierarchy: sub-group, group, wing"
* insert ConformanceMetadata


* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets" (exactly)
* meta.security[HDP].code = #organization (exactly)
* meta.security[HDP].display = "יחידה ארגונית" (exactly)

* id 1..1

* identifier contains internal 1..1
* identifier[internal].system 1..1
* identifier[internal].system = "http://fhir.ashmc.co.il/cs/org-hier-type" (exactly)
* identifier[internal].value 1..1

* type contains org-hier-type 1..1 and snomed 0..1
* type[org-hier-type] from $vsOrgHierType (required)
* type[org-hier-type].coding 1..*
* type[org-hier-type].coding.system 1..1
* type[org-hier-type].coding.system = "http://fhir.ashmc.co.il/cs/org-hier-type" (exactly)
* type[org-hier-type].coding.code 1..1 
* type[org-hier-type].coding.display 1..1 
* type[snomed] from $all-snomed-codes (required)
* type[snomed].coding 0..*
* type[snomed].coding.system 1..1
* type[snomed].coding.system = "http://snomed.info/sct" (exactly)
* type[snomed].coding.code 1..1 
* type[snomed].coding.display 0..1 

* partOf 1..1
* partOf.reference 1..1


