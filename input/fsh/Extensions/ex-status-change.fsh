Extension: StatusChange
Id: status-change
Title: "Status Change"
Description: "מידע נוסף אודות רשומה מחוקה"
* ^url = $statusChange

* insert ConformanceMetadata

* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Condition"
* . ^comment = "מידע נוסף שיסייע להבין מהי מהות המחיקה של הרשומה במערכת המקור"

* . 0..*
* value[x] 0..0
* extension contains
    date 0..1 and
    reason 0..1 and
    performer 0..1 

* extension[date] only Extension
* extension[date] ^short = "Date of change"
* extension[date] ^definition = "Date of data changed/deleted."
* extension[date] ^definition = "Date of data changed/deleted."
* extension[date].url only uri
* extension[date].value[x] 1..
* extension[date].value[x] only date
* extension[date].valueDate ^example.valueDateTime = "2022-01-01"
* extension[date].valueDate ^example.label = "Valid Example"

* extension[reason] only Extension
* extension[reason] ^short = "Reason for the status change"
* extension[reason] ^definition = "Reason for the status change (update/delete)."
* extension[reason].url only uri
* extension[reason].value[x] 1..
* extension[reason].value[x] only CodeableConcept
* extension[reason].valueCodeableConcept ^example.valueCodeableConcept = http://fhir.ashmc.co.il/cs/reason-changed-code#1 "updated"
* extension[reason].valueCodeableConcept ^example.label = "Valid Example"

* extension[performer] only Extension
* extension[performer] ^short = "Person responsible for the change"
* extension[performer] ^definition = "Person responsible for the change (update/delete)"
* extension[performer].url only uri
* extension[performer].value[x] 1..
* extension[performer].value[x] only Reference
* extension[performer].valueReference ^example.valueReference = Reference(Practitioner/y-cohen)
* extension[performer].valueReference ^example.label = "Valid Example"
