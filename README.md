# dev-benefit-verification-papi


📌 Project Overview <br />
The developed Mule Process API exposes a RESTful API with endpoints to manage Care Benefit Verification records in Salesforce Health Cloud. It provides functionality to:
<br />
<br />
1. Accept requests to create Care Benefit Verification records.<br />
2. Retrieve all created Care Benefit Verification requests.<br />
3. Validate the requests against provided information and update them accordingly.<br />
<br />

🏗 Features
### API Endpoints 
1.POST /api/care-benefit-verification – Creates a Care Benefit Verification request.<br />
2.GET /api/care-benefit-verification – Retrieves all created Care Benefit Verification requests.<br />
3.Scheduler – Executes periodically or can be triggered manually to validate and update requests.<br />

### Salesforce Integration 
- Used MuleSoft Built In Salesforce connector to connect with Salesforce Health Cloud.<br />
- Salesforce Bulk Data Load Jobs to process bulk number of records fastly.<br />
### Robust Error Handling 
- Making Use of Global Error Handler to capture the errors and give custom response back to the user along with Status Codes.<br />
### Data Validation
- Defined Request Body Schema in RAML with mandatory fields and data formats.<br />
- API Kit Router as first layer to identify the data Validation errors.<br />
### Security Measures
- HTTPS enformed for data transmission. Included key store certificate.<br />
- Encrypting the sensitive fields using secure property configurations(Blowfish Algorithm).<br />
- Included the sensitive environment varibles to be masked in mule-artifact.json<br />
- Applied Client-Id Enforcement and Rate Limiting policy.<br />
### Unit Test Cases.
- Created Munit Test Cases to ensure API reliability and correctness.
### Retry Mechanism
- Implemented Until Successsful and retry mechanism for handling transient Salesforce Connectivity Errors.
  
   

  
  
