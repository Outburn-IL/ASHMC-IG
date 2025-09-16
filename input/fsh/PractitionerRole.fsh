Profile: AshmcPractitionerRole
Parent: il-core-practitioner-role 
Id: ashmc-practitioner-role
Title: "ASHMC Practitioner Role"
Description: "Assuta Ashdod Practitioner Role from Tafnit"
* insert ConformanceMetadata

* meta 1..1
// * meta.profile = "http://fhir.health.gov.il/StructureDefinition/il-core-practitioner-role" (exactly)
// * meta.source 1..1

* meta only ILHDPMeta
// * meta.security ^slicing.discriminator.type = #value
// * meta.security ^slicing.discriminator.path = "security.code"
// * meta.security ^slicing.rules = #open
// * meta.security ^slicing.ordered = false
// * meta.security contains HDP 1..1
// * meta.security[HDP].system 1..1
* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets" (exactly)
// * meta.security[HDP].code 1..1
* meta.security[HDP].code = #practitioner (exactly)
// * meta.security[HDP].display 1..1
* meta.security[HDP].display = "מטפל" (exactly)

* id 1..1

* identifier.system = "http://fhir.ashmc.co.il/identifier/job-id" (exactly)

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.ordered = false
* code.coding contains sector 0..1 and hl7 0..1 
* code.coding[sector].system 1..1
* code.coding[sector].system = "http://fhir.ashmc.co.il/cs/job-sector-hilan" (exactly)
* code.coding[sector].code 1..1
* code.coding[sector].display 0..1
* code.coding[hl7].system 1..1
* code.coding[hl7].system = "http://terminology.hl7.org/CodeSystem/practitioner-role" (exactly)
* code.coding[hl7].code 1..1
* code.coding[hl7].display 0..1

* specialty.coding.system = "http://fhir.ashmc.co.il/cs/job-code-tafnit" (exactly)