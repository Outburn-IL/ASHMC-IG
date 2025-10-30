Profile: ASHMCDiagnosisCondition
Parent: ILHDPCondition
Id: ashmc-diagnosis-condition
Title: "ASHMC Diagnosis Condition Profile"
Description: "Profile for ASHMC Diagnosis Condition"

* id 1..1

// Identifier slicing
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "system"
* identifier ^slicing.rules = #open
* identifier contains cml 0..1
* identifier[cml].system = "http://fhir.ashmc.co.il/identifier/cml-diagnosis-id" (exactly)
* identifier[cml].value 0..1

// Clinical Status slicing
* clinicalStatus.coding ^slicing.discriminator[0].type = #value
* clinicalStatus.coding ^slicing.discriminator[0].path = "system"
* clinicalStatus.coding ^slicing.rules = #open
* clinicalStatus.coding contains 
    hl7 0..1 and
    ash 0..1

* clinicalStatus.coding[hl7] from http://terminology.hl7.org/CodeSystem/condition-clinical (required)
* clinicalStatus.coding[hl7].system 0..1
* clinicalStatus.coding[hl7].code 0..1
* clinicalStatus.coding[hl7].display 0..1

* clinicalStatus.coding[ash] from http://fhir.ashmc.co.il/cs/cml-diag-clinical-status (required)
* clinicalStatus.coding[ash].system 0..1
* clinicalStatus.coding[ash].code 0..1

// Verification Status slicing
* verificationStatus.coding ^slicing.discriminator[0].type = #value
* verificationStatus.coding ^slicing.discriminator[0].path = "system"
* verificationStatus.coding ^slicing.rules = #open
* verificationStatus.coding contains 
    hl7 0..1 and
    ash 0..1

* verificationStatus.coding[hl7] from http://terminology.hl7.org/CodeSystem/condition-ver-status (required)
* verificationStatus.coding[hl7].system 0..1
* verificationStatus.coding[hl7].code 0..1
* verificationStatus.coding[hl7].display 0..1

* verificationStatus.coding[ash] from http://fhir.ashmc.co.il/cs/cml-diag-ver-status (required)
* verificationStatus.coding[ash].system 0..1
* verificationStatus.coding[ash].code 0..1

// Category slicing
* category.coding ^slicing.discriminator[0].type = #value
* category.coding ^slicing.discriminator[0].path = "system"
* category.coding ^slicing.rules = #open
* category.coding contains 
    hl7 0..1 and
    ash 0..1

* category.coding[hl7] from http://terminology.hl7.org/CodeSystem/condition-category (required)
* category.coding[hl7].system 0..1
* category.coding[hl7].code 0..1
* category.coding[hl7].display 0..1

* category.coding[ash] from http://fhir.ashmc.co.il/cs/cml-diag-category (required)
* category.coding[ash].system 0..1
* category.coding[ash].code 0..1
* category.coding[ash].display 0..1

// Code slicing
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[0].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains 
    snomed 0..1 and
    icd9 0..1 and
    local 0..1 and
    extend 0..1

* code.coding[snomed] from http://snomed.info/sct (required)
* code.coding[snomed].system 1..1
* code.coding[snomed].code 1..1
* code.coding[snomed].display 0..1

* code.coding[icd9] 0..1
* code.coding[icd9].system 1..1
* code.coding[icd9].code 1..1
* code.coding[icd9].display 0..1

* code.coding[local] from http://fhir.ashmc.co.il/cs/cml-diag-code (required)
* code.coding[local].system 1..1
* code.coding[local].code 1..1
* code.coding[local].display 0..1

* code.coding[extend] from http://fhir.ashmc.co.il/cs/cml-diag-extended-code (required)
* code.coding[extend].system 1..1
* code.coding[extend].code 1..1
* code.coding[extend].display 0..1

// Encounter identifier
* encounter.identifier.system 0..1
* encounter.identifier.system from http://fhir.ashmc.co.il/identifier/cml-enc-session-id (required)
