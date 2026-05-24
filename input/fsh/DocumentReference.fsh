Profile: AsutaAshdodDocumentReferenceProfile
Parent: ILHDPDocumentReference
Id: ashmc-document-reference
Title: "Asuta Ashdod Document Reference Profile"
Description: "Asuta Ashdod Document Reference"

* insert ConformanceMetadata

// Extension: source
* extension contains $extDocumentSource named source 0..*
* extension[source].url 1..1
* extension[source].url = $extDocumentSource (exactly)

// masterIdentifier
* masterIdentifier 1..1
* masterIdentifier.system 1..1
// * masterIdentifier.system = "http://fhir.ashmc.co.il/identifier/document-router-versioned-message-id" (exactly)
* masterIdentifier.value 1..1

// docStatus
* docStatus 1..1
* docStatus = #final (exactly)

// identifier slice: router-message-id
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains router-message-id 0..1
* identifier[router-message-id].system 1..1
* identifier[router-message-id].system = "http://fhir.ashmc.co.il/identifier/document-router-message-id" (exactly)
* identifier[router-message-id].value 1..1

// type.coding slices
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open
* type.coding contains msg-sub-type 0..1 and loinc 1..1

* type.coding[msg-sub-type].system 1..1
* type.coding[msg-sub-type].system = "http://fhir.ashmc.co.il/identifier/document-message-sub-type" (exactly)
* type.coding[msg-sub-type].code 1..1

* type.coding[loinc].system 1..1
* type.coding[loinc].system = "http://loinc.org" (exactly)
* type.coding[loinc].code 1..1
