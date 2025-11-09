Profile: ASHMCPatient
Parent: ILCorePatient
Id: ashmc-patient
Title: "ASHMC Patient Profile"
Description: "Patient profile for ASHMC"

* id 1..1

* extension 1..*

// ParentName extension constraints
* extension[parentName].url 1..1
* extension[parentName].extension 1..*
* extension[parentName].extension[given].url = "given" (exactly)
* extension[parentName].extension[given].valueString 1..1
* extension[parentName].extension[role].url = "role" (exactly)
* extension[parentName].extension[role].valueCode = #FTH (exactly)

// Identifier slicing - add internal slice
* identifier contains tafnit 1..1 and internal 0..1 and cml 0..1

* identifier[tafnit].system 1..1
* identifier[tafnit].system = "http://fhir.ashmc.co.il/identifier/pat-id-tafnit" (exactly)
* identifier[tafnit].value 1..1

* identifier[internal].system 1..1
* identifier[internal].system = "http://fhir.ashmc.co.il/identifier/pat-id-internal" (exactly)
* identifier[internal].value 1..1

* identifier[cml].system 1..1
* identifier[cml].system = "http://fhir.ashmc.co.il/identifier/pat-id-cml" (exactly)
* identifier[cml].value 1..1
