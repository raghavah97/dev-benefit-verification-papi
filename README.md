
## 📌 Project Overview <br />
The developed Mule Process API exposes a RESTful API with endpoints to manage Care Benefit Verification records in Salesforce Health Cloud. It provides functionality to:
<br />
<br />
1. Accept requests to create Care Benefit Verification records.<br />
2. Retrieve all created Care Benefit Verification requests.<br />
3. Validate the requests against provided information and update them accordingly.<br />
<br />

## 🏗 Features
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
- Applied Client-Id Enforcement and Rate Limiting policy. Used Auto discovery to bind the policies applied in API Manager.<br />
### Unit Test Cases.
- Created Munit Test Cases to ensure API reliability and correctness.
### Retry Mechanism
- Implemented Until Successsful and retry mechanism for handling transient Salesforce Connectivity Errors.
### Logging
- Utilized json logger module for capturing Logs as Structured JSON Object for easy readability.
### Cloud-hub Deployment
- Hosted the application in CloudHub 1.0.
### Salesforce Page Layouts and Objects Customization.
- Modified Page layouts to remove the irrelavent fields.
- Customized the fields to add the missing fields.

## 🚀 Application SetUp
### 1️⃣ Prerequisites
- Download Anypoint Studio.
- Java Installation
- Create Anypoint Platform Account.
- Salesforce Developer account with Health Cloud Enabled.
- Request Access token in Salesforce to by-pass two-factor authentication b/w Mule and Salesforce.
- Postman
### 2️⃣ Setup Instructions to deploy in local.
- Download the code repository from the link.
- Open Anypoint Studio.
- Click on File and import
![image](https://github.com/user-attachments/assets/724da937-7cfe-4062-9101-403afb4db192)
- Select the option as mentioned in the image and Click next
- Browse the project root folder,Select Mule Server Runtime as 4.8 and click finish.
- To run the application right click on project and select Run As -> Run Configurations.
- ![image](https://github.com/user-attachments/assets/58776a19-df9c-4c91-a1e4-9a87ca8620ad)
- You should see the above image and click on Arguments. Paste the below arguments in VM arguments.
  -M-XX:-UseBiasedLocking -M-Dfile.encoding=UTF-8 -M-XX:+UseG1GC -M-XX:+UseStringDeduplication -M-Dmule.deployment.forceParseConfigXmls=true -M-Dmule.env=dev -M-Dmule.key= (Will be sent in seperate email).
- Once you see deployed you are ready to run the application.
- Open postman and hit the URL's see the sample request response document for reference.


🔗 GitHub Repo: https://github.com/raghavah97/dev-benefit-verification-papi <br />
🔗 Request Response document: https://docs.google.com/document/d/1HL67s5G8bIGexulGMYC3iOI4O1Ovh7Lfrcv7BbZw0HQ/edit?usp=sharing <br />
🎬 Demonstration Video : https://drive.google.com/drive/u/0/folders/1Kz59TNuO5sCN57d3gGIyngFgXfYf1t3P <br />

## 🏆 Challenges:
- Understanding the Salesforce Health Cloud Objects Relationships to create benefit verification request.
- Getting the Salesforce Health Cloud License
## 🤔 Assumptions:
- Coverage Benefits provided by the Insurance companies were already avalabile in the org with In-Network and Out-Network costs.


 

   

  
  
