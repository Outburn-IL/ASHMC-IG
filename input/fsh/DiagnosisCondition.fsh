Profile: ASHMCDiagnosisCondition
Parent: ILHDPCondition
Id: ashmc-diagnosis-condition
Title: "ASHMC Diagnosis Condition Profile"
Description: "Profile for ASHMC Diagnosis Condition"

* id 1..1

// Extension statuschange
* extension contains StatusChange named status-change 0..1
* extension[status-change].url = "http://fhir.ashmc.co.il/StructureDefinition/status-change" (exactly)
* extension[status-change].extension[date].url = "date" (exactly)
* extension[status-change].extension[reason].url = "reason" (exactly)
* extension[status-change].extension[performer].url = "performer" (exactly)


// Identifier slicing
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier contains cml 0..1 and  mv 0..1
* identifier[cml].system 1..1
* identifier[cml].system = "http://fhir.ashmc.co.il/identifier/cml-diagnosis-id" (exactly)
* identifier[cml].value 0..1
* identifier[mv].system 1..1
* identifier[mv].system = "http://fhir.ashmc.co.il/identifier/mv-diagnosis-id" (exactly)
* identifier[mv].value 0..1


// Clinical Status slicing
* clinicalStatus.coding ^slicing.discriminator.type = #value
* clinicalStatus.coding ^slicing.discriminator.path = "system"
* clinicalStatus.coding ^slicing.rules = #open
* clinicalStatus.coding ^slicing.ordered = false
* clinicalStatus.coding contains hl7 0..1 and ash 0..1
* clinicalStatus.coding[hl7].system 1..1
* clinicalStatus.coding[hl7].system = "http://terminology.hl7.org/CodeSystem/condition-clinical" (exactly)
* clinicalStatus.coding[hl7].code 0..1
* clinicalStatus.coding[hl7].display 0..1
* clinicalStatus.coding[ash].system = "http://fhir.ashmc.co.il/cs/cml-diag-clinical-status" (exactly)
* clinicalStatus.coding[ash].system 1..1
* clinicalStatus.coding[ash].code 0..1


// Verification Status slicing
* verificationStatus.coding ^slicing.discriminator.type = #value
* verificationStatus.coding ^slicing.discriminator.path = "system"
* verificationStatus.coding ^slicing.rules = #open
* verificationStatus.coding ^slicing.ordered = false
* verificationStatus.coding contains hl7 0..1 and ash 0..1
* verificationStatus.coding[hl7].system = "http://terminology.hl7.org/CodeSystem/condition-ver-status" (exactly)
* verificationStatus.coding[hl7].system 1..1
* verificationStatus.coding[hl7].code 0..1
* verificationStatus.coding[hl7].display 0..1
* verificationStatus.coding[ash].system = "http://fhir.ashmc.co.il/cs/cml-diag-ver-status" (exactly)
* verificationStatus.coding[ash].system 1..1
* verificationStatus.coding[ash].code 0..1


// Category slicing
* category[ilcore].coding ^slicing.discriminator.type = #value
* category[ilcore].coding ^slicing.discriminator.path = "system"
* category[ilcore].coding ^slicing.rules = #open
* category[ilcore].coding ^slicing.ordered = false
* category[ilcore].coding contains ash 0..1 and mv 0..1
* category[ilcore].coding[ash].system 1..1
* category[ilcore].coding[ash].system = "http://fhir.ashmc.co.il/cs/cml-diag-category" (exactly)
* category[ilcore].coding[ash].code 0..1
* category[ilcore].coding[ash].display 0..1
* category[ilcore].coding[mv].system 1..1
* category[ilcore].coding[mv].system = "http://fhir.ashmc.co.il/cs/mv-diag-category" (exactly)
* category[ilcore].coding[mv].code 0..1
* category[ilcore].coding[mv].display 0..1


// Code slicing
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.ordered = false
* code.coding contains 
    snomed 0..1 and
    icd9 0..1 and
    local-cml 0..1 and
    local-mv 0..1 and
    extend 0..1
* code.coding[snomed].system 1..1
* code.coding[snomed].system = "http://snomed.info/sct" (exactly)
* code.coding[snomed].code 1..1
* code.coding[snomed].display 0..1
* code.coding[icd9] 0..1
* code.coding[icd9].system 1..1
* code.coding[icd9].system = "http://terminology.hl7.org/CodeSystem/icd9cm" (exactly)
* code.coding[icd9].code 1..1
* code.coding[icd9].display 0..1
* code.coding[local-cml].system 1..1
* code.coding[local-cml].system = "http://fhir.ashmc.co.il/cs/cml-diag-code" (exactly)
* code.coding[local-cml].code 1..1
* code.coding[local-cml].display 0..1
* code.coding[local-mv].system 1..1
* code.coding[local-mv].system = "http://fhir.ashmc.co.il/cs/mv-diag-code" (exactly)
* code.coding[local-mv].code 1..1
* code.coding[local-mv].display 0..1
* code.coding[extend].system 1..1
* code.coding[extend].system = "http://fhir.ashmc.co.il/cs/diag-extended-code" (exactly)
* code.coding[extend].code 1..1
* code.coding[extend].display 0..1


// Encounter identifier
* encounter.identifier.system 0..1
* encounter.identifier.system = "http://fhir.ashmc.co.il/identifier/cml-enc-session-id" (exactly)
