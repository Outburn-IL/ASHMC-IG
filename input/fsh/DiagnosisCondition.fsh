Profile: ASHMCDiagnosisCondition
Parent: ILHDPCondition
Id: ashmc-diagnosis-condition
Title: "ASHMC Diagnosis Condition Profile"
Description: "Profile for ASHMC Diagnosis Condition"

* id 1..1

// Identifier slicing
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier contains cml 0..1
* identifier[cml].system = "http://fhir.ashmc.co.il/identifier/cml-diagnosis-id" (exactly)
* identifier[cml].value 0..1

//xxx
// Clinical Status slicing
* clinicalStatus.coding ^slicing.discriminator.type = #value
* clinicalStatus.coding ^slicing.discriminator.path = "system"
* clinicalStatus.coding ^slicing.rules = #open
* clinicalStatus.coding ^slicing.ordered = false
* clinicalStatus.coding contains 
    hl7 0..1 and
    ash 0..1

* clinicalStatus.coding[hl7].system 1..1
* clinicalStatus.coding[hl7].system = "http://terminology.hl7.org/CodeSystem/condition-clinical" (exactly)
* clinicalStatus.coding[hl7].code 0..1
* clinicalStatus.coding[hl7].display 0..1

* clinicalStatus.coding[ash].system = "http://fhir.ashmc.co.il/cs/cml-diag-clinical-status" (exactly)
* clinicalStatus.coding[ash].system 1..1
* clinicalStatus.coding[ash].code 0..1

//xxx
// Verification Status slicing
* verificationStatus.coding ^slicing.discriminator.type = #value
* verificationStatus.coding ^slicing.discriminator.path = "system"
* verificationStatus.coding ^slicing.rules = #open
* verificationStatus.coding ^slicing.ordered = false
* verificationStatus.coding contains 
    hl7 0..1 and
    ash 0..1

* verificationStatus.coding[hl7].system = "http://terminology.hl7.org/CodeSystem/condition-ver-status" (exactly)
* verificationStatus.coding[hl7].system 1..1
* verificationStatus.coding[hl7].code 0..1
* verificationStatus.coding[hl7].display 0..1

* verificationStatus.coding[ash].system = "http://fhir.ashmc.co.il/cs/cml-diag-ver-status" (exactly)
* verificationStatus.coding[ash].system 1..1
* verificationStatus.coding[ash].code 0..1

//xxx
// Category slicing
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "system"
* category.coding ^slicing.rules = #open
* category.coding ^slicing.ordered = false
* category.coding contains 
    hl7 0..1 and
    ash 0..1

* category.coding[hl7].system 1..1
* category.coding[hl7].system = "http://terminology.hl7.org/CodeSystem/condition-category" (exactly)
* category.coding[hl7].code 0..1
* category.coding[hl7].display 0..1

// * category.coding[ash] from http://fhir.ashmc.co.il/cs/cml-diag-category (required)
* category.coding[ash].system 1..1
* category.coding[ash].system = "http://fhir.ashmc.co.il/cs/cml-diag-category" (exactly)
* category.coding[ash].code 0..1
* category.coding[ash].display 0..1

//xxx
// Code slicing
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.ordered = false
* code.coding contains 
    snomed 0..1 and
    icd9 0..1 and
    local 0..1 and
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

* code.coding[local].system 1..1
* code.coding[local].system = "http://fhir.ashmc.co.il/cs/cml-diag-code" (exactly)
* code.coding[local].code 1..1
* code.coding[local].display 0..1

* code.coding[extend].system 1..1
* code.coding[extend].system = "http://fhir.ashmc.co.il/cs/cml-diag-extended-code" (exactly)
* code.coding[extend].code 1..1
* code.coding[extend].display 0..1

//xxx
// Encounter identifier
* encounter.identifier.system 0..1
* encounter.identifier.system = "http://fhir.ashmc.co.il/identifier/cml-enc-session-id" (exactly)
