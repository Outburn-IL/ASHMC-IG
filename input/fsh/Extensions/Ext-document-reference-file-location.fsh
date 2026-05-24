Extension: DocumentReferenceFileLocation
Id: ext-document-reference-file-location
Title: "Ext: Document Reference File Location"
Description: "Indicates the physical or logical file location of the binary content associated with `DocumentReference.content.attachment`. This extension is intended for internal or facade-layer use, enabling a service to resolve and retrieve the file from an external storage system (e.g., file system, object storage, or network share). The extension SHALL NOT be exposed to clients; it is removed after the content is resolved and the `attachment.data` element is populated."
* ^url = $extDocRefFileLocation

* insert ConformanceMetadata

* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "DocumentReference.content.attachment"

* . ^comment = "This extension is intentionally not included in the DocumentReference profile, as it does not represent part of the logical FHIR resource. It is used solely for internal processing within a facade or integration layer to resolve the physical file location and populate DocumentReference.content.attachment.data. The extension is removed prior to returning the resource to clients and therefore is not part of the exposed or persisted resource definition."

* value[x] only string or url
* valueString 0..1
* valueUrl 0..1
