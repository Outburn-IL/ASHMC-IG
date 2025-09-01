Profile: AshmcOrgHosp
Parent: il-hdp-organization 
Id: ashmc-org-hosp
Title: "ASHMC Organization Hospital"
Description: "Assuta Ashdod MC Organization Hospital"
* insert ConformanceMetadata


* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets" (exactly)
* meta.security[HDP].code = #organization (exactly)
* meta.security[HDP].display = "יחידה ארגונית" (exactly)

* id 1..1

* identifier[moh-inst-symbol] 1..1
* identifier[moh-inst-symbol].system 1..1
* identifier[moh-inst-symbol].system = "http://institutions.health.gov.il/Institutions" (exactly)
* identifier[moh-inst-symbol].value 1..1
* identifier[moh-inst-symbol].value = "01608" (exactly)
* identifier[legal-entity] 1..1
* identifier[legal-entity].system 1..1
* identifier[legal-entity].system = "http://fhir.health.gov.il/identifier/legal-entity" (exactly)
* identifier[legal-entity].value 1..1
* identifier[legal-entity].value = "580757821" (exactly)
* identifier contains internal 1..1
* identifier[internal].system 1..1
* identifier[internal].system = "http://fhir.ashmc.co.il/identifier/hosp-id" (exactly)
* identifier[internal].value 1..1
* identifier[internal].value = "100" (exactly)

* active = true

* type[moh-institute-type] 1..1
* type[moh-institute-type].coding 1..*
* type[moh-institute-type].coding.system 1..1
* type[moh-institute-type].coding.system = "http://fhir.health.gov.il/cs/institution-type-moh" (exactly)
* type[moh-institute-type].coding.code 1..1 
* type[moh-institute-type].coding.code = #1 (exactly)
* type[moh-institute-type].coding.display 1..1
* type[moh-institute-type].coding.display = "אשפוז כללי" (exactly)

* name = "בית החולים הציבורי אסותא אשדוד" (exactly)
* alias = "בית החולים אסותא אשדוד" (exactly)

* telecom 1..*
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom ^slicing.ordered = false
* telecom contains phone 1..1 and fax 1..1 and email 1..1
* telecom[phone] 1..1
* telecom[phone].system 1..1
* telecom[phone].system = #phone (exactly)
* telecom[phone].value 1..1
* telecom[phone].value = "08-3004100" (exactly)
* telecom[fax] 1..1
* telecom[fax].system 1..1
* telecom[fax].system = #fax (exactly)
* telecom[fax].value 1..1
* telecom[fax].value = "072-3392131" (exactly)
* telecom[email] 1..1
* telecom[email].system 1..1
* telecom[email].system = #email (exactly)
* telecom[email].value 1..1
* telecom[email].value = "ashdodcc@assuta.co.il" (exactly)

// * address 1..*
// * address.line 1..*
// * address.line = "הרפואה 7" (exactly)
// * address.city = "אשדוד" (exactly)
// * address.city.extension[cityCode] 1..1
// * address.city.extension[cityCode].valueCodeableConcept 1..1
// * address.city.extension[cityCode].valueCodeableConcept.coding 1..*
// * address.city.extension[cityCode].valueCodeableConcept.coding.system 1..1
// * address.city.extension[cityCode].valueCodeableConcept.coding.system = "http://fhir.health.gov.il/cs/city-symbol" (exactly)
// * address.city.extension[cityCode].valueCodeableConcept.coding.code 1..1
// * address.city.extension[cityCode].valueCodeableConcept.coding.code = #70 (exactly)
// * address.city.extension[cityCode].valueCodeableConcept.coding.display 1..1
// * address.city.extension[cityCode].valueCodeableConcept.coding.display = "אשדוד" (exactly)