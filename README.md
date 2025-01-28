# dev-benefit-verification-papi


📌 Project Overview
The developed Mule Process API exposes a RESTful API with endpoints to manage Care Benefit Verification records in Salesforce Health Cloud. It provides functionality to:

1.Accept requests to create Care Benefit Verification records.
2.Retrieve all created Care Benefit Verification requests.
3.Validate the requests against provided information and update them accordingly.

API Endpoints:
POST /api/care-benefit-verification – Creates a Care Benefit Verification request.
GET /api/care-benefit-verification – Retrieves all created Care Benefit Verification requests.
Scheduler – Executes periodically or can be triggered manually to validate and update requests.
