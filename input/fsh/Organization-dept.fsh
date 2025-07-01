Profile: AshmcDepTafnit
Parent: il-hdp-organization 
Id: ashmc-dep-tafnit
Title: "ASHMC Department Tafnit"
Description: "Assuta Ashdod Tafnit Department"
* insert ConformanceMetadata


* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets" (exactly)
* meta.security[HDP].code = #organization (exactly)
* meta.security[HDP].display = "יחידה ארגונית" (exactly)

* id 1..1

* identifier contains tafnit 1..1
* identifier[tafnit].system 1..1
* identifier[tafnit].system = "http://fhir.ashmc.co.il/identifier/tafnit-id" (exactly)
* identifier[tafnit].value 1..1

* type contains tafnit-type 1..1 and org-hier-type 0..1
* type[moh-department-type] 1..1
* type[moh-department-type].coding 1..*
* type[moh-department-type].coding.system 1..1
* type[moh-department-type].coding.code 1..1 
* type[tafnit-type].coding 1..*
* type[tafnit-type].coding.system 1..1
* type[tafnit-type].coding.system = "http://fhir.ashmc.co.il/cs/tafnit-dept-type" (exactly)
* type[tafnit-type].coding.code 1..1 
* type[tafnit-type].coding.display 1..1 
* type[org-hier-type].coding 0..*
* type[org-hier-type].coding.system 0..1
* type[org-hier-type].coding.system = "http://fhir.ashmc.co.il/cs/org-hier-type" (exactly)
* type[org-hier-type].coding.code 0..1 
* type[org-hier-type].coding.display 0..1 

* partOf 1..1
* partOf.reference 1..1

* contact ^slicing.discriminator.type = #value
* contact ^slicing.discriminator.path = "purpose.text"
* contact ^slicing.rules = #open
* contact ^slicing.ordered = false
* contact contains mng 0..1 and nurse 0..1
* contact[mng].purpose 1..1
* contact[mng].purpose.coding 1..1
* contact[mng].purpose.coding.system 1..1
* contact[mng].purpose.coding.system = "http://terminology.hl7.org/CodeSystem/contactentity-type" (exactly)
* contact[mng].purpose.coding.code 1..1
* contact[mng].purpose.coding.code = #"ADMIN" (exactly)
* contact[mng].purpose.coding.display 1..1
* contact[mng].purpose.coding.display = "Administrative" (exactly)
* contact[mng].purpose.text 1..1
* contact[mng].purpose.text = "מנהל.ת מחלקה" (exactly)
* contact[mng].name 1..1
* contact[mng].name.use 1..1
* contact[mng].name.use = #official
* contact[mng].name.text 1..1

* contact[nurse].purpose 1..1
* contact[nurse].purpose.text 1..1
* contact[nurse].purpose.text = "אח.ות ראשי.ת" (exactly)
* contact[nurse].name 1..1
* contact[nurse].name.use 1..1
* contact[nurse].name.use = #official
* contact[nurse].name.text 1..1
