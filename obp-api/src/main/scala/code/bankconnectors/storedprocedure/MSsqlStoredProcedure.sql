-- auto generated MS sql server procedures script, create on 2020-12-14T14:30:55Z

-- drop procedure obp_get_adapter_info
DROP PROCEDURE IF EXISTS obp_get_adapter_info;
GO
-- create procedure obp_get_adapter_info
CREATE PROCEDURE obp_get_adapter_info
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "errorCode":"error code",
         "backendMessages":[
           {
             "source":"",
             "status":"Status string",
             "errorCode":"errorCode string",
             "text":"text string"
           }
         ],
         "name":"NAME",
         "version":"version string",
         "git_commit":"git_commit",
         "date":"date String"
       }
     }'
	);
GO

 
 


-- drop procedure obp_validate_and_check_iban_number
DROP PROCEDURE IF EXISTS obp_validate_and_check_iban_number;
GO
-- create procedure obp_validate_and_check_iban_number
CREATE PROCEDURE obp_validate_and_check_iban_number
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "iban":"DE91 1000 0000 0123 4567 89"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "isValid":true,
         "details":{
           "bic":"BUKBGB22",
           "bank":"no-example-provided",
           "branch":"string",
           "address":"no-example-provided",
           "city":"no-example-provided",
           "zip":"string",
           "phone":"no-example-provided",
           "country":"string",
           "countryIso":"string",
           "sepaCreditTransfer":"yes",
           "sepaDirectDebit":"yes",
           "sepaSddCore":"yes",
           "sepaB2b":"yes",
           "sepaCardClearing":"no"
         }
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_challenge_threshold
DROP PROCEDURE IF EXISTS obp_get_challenge_threshold;
GO
-- create procedure obp_get_challenge_threshold
CREATE PROCEDURE obp_get_challenge_threshold
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":"gh.29.uk",
       "accountId":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
       "viewId":"owner",
       "transactionRequestType":"SEPA",
       "currency":"EUR",
       "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
       "username":"felixsmith"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "currency":"EUR",
         "amount":"10.12"
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_charge_level
DROP PROCEDURE IF EXISTS obp_get_charge_level;
GO
-- create procedure obp_get_charge_level
CREATE PROCEDURE obp_get_charge_level
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "accountId":{
         "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
       },
       "viewId":{
         "value":"owner"
       },
       "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
       "username":"felixsmith",
       "transactionRequestType":"SEPA",
       "currency":"EUR"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "currency":"EUR",
         "amount":"10.12"
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_charge_level_c2
DROP PROCEDURE IF EXISTS obp_get_charge_level_c2;
GO
-- create procedure obp_get_charge_level_c2
CREATE PROCEDURE obp_get_charge_level_c2
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "accountId":{
         "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
       },
       "viewId":{
         "value":"owner"
       },
       "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
       "username":"felixsmith",
       "transactionRequestType":"SEPA",
       "currency":"EUR",
       "amount":"10.12",
       "toAccountRoutings":[
         {
           "scheme":"IBAN",
           "address":"DE91 1000 0000 0123 4567 89"
         }
       ],
       "customAttributes":[
         {
           "name":"no-example-provided",
           "attributeType":"STRING",
           "value":"5987953"
         }
       ]
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "currency":"EUR",
         "amount":"10.12"
       }
     }'
	);
GO

 
 


-- drop procedure obp_create_challenge
DROP PROCEDURE IF EXISTS obp_create_challenge;
GO
-- create procedure obp_create_challenge
CREATE PROCEDURE obp_create_challenge
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "accountId":{
         "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
       },
       "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
       "transactionRequestType":{
         "value":"SEPA"
       },
       "transactionRequestId":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1",
       "scaMethod":"SMS"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":"string"
     }'
	);
GO

 
 


-- drop procedure obp_create_challenges
DROP PROCEDURE IF EXISTS obp_create_challenges;
GO
-- create procedure obp_create_challenges
CREATE PROCEDURE obp_create_challenges
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "accountId":{
         "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
       },
       "userIds":[
         "no-example-provided"
       ],
       "transactionRequestType":{
         "value":"SEPA"
       },
       "transactionRequestId":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1",
       "scaMethod":"SMS"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         "no-example-provided"
       ]
     }'
	);
GO

 
 


-- drop procedure obp_create_challenges_c2
DROP PROCEDURE IF EXISTS obp_create_challenges_c2;
GO
-- create procedure obp_create_challenges_c2
CREATE PROCEDURE obp_create_challenges_c2
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "userIds":[
         "no-example-provided"
       ],
       "challengeType":"OBP_PAYMENT",
       "transactionRequestId":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1",
       "scaMethod":"SMS",
       "scaStatus":"received",
       "consentId":"no-example-provided",
       "authenticationMethodId":"string"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "challengeId":"123chaneid13-6d02-40e3-a129-0b2bf89de9f0",
           "transactionRequestId":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1",
           "expectedAnswer":"string",
           "expectedUserId":"string",
           "salt":"string",
           "successful":true,
           "challengeType":"no-example-provided",
           "consentId":"no-example-provided",
           "scaMethod":"SMS",
           "scaStatus":"received",
           "authenticationMethodId":"string"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_validate_challenge_answer
DROP PROCEDURE IF EXISTS obp_validate_challenge_answer;
GO
-- create procedure obp_validate_challenge_answer
CREATE PROCEDURE obp_validate_challenge_answer
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "challengeId":"123chaneid13-6d02-40e3-a129-0b2bf89de9f0",
       "hashOfSuppliedAnswer":"a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":true
     }'
	);
GO

 
 


-- drop procedure obp_validate_challenge_answer_c2
DROP PROCEDURE IF EXISTS obp_validate_challenge_answer_c2;
GO
-- create procedure obp_validate_challenge_answer_c2
CREATE PROCEDURE obp_validate_challenge_answer_c2
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "transactionRequestId":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1",
       "consentId":"no-example-provided",
       "challengeId":"123chaneid13-6d02-40e3-a129-0b2bf89de9f0",
       "hashOfSuppliedAnswer":"a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "challengeId":"123chaneid13-6d02-40e3-a129-0b2bf89de9f0",
         "transactionRequestId":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1",
         "expectedAnswer":"string",
         "expectedUserId":"string",
         "salt":"string",
         "successful":true,
         "challengeType":"no-example-provided",
         "consentId":"no-example-provided",
         "scaMethod":"SMS",
         "scaStatus":"received",
         "authenticationMethodId":"string"
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_challenges_by_transaction_request_id
DROP PROCEDURE IF EXISTS obp_get_challenges_by_transaction_request_id;
GO
-- create procedure obp_get_challenges_by_transaction_request_id
CREATE PROCEDURE obp_get_challenges_by_transaction_request_id
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "transactionRequestId":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "challengeId":"123chaneid13-6d02-40e3-a129-0b2bf89de9f0",
           "transactionRequestId":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1",
           "expectedAnswer":"string",
           "expectedUserId":"string",
           "salt":"string",
           "successful":true,
           "challengeType":"no-example-provided",
           "consentId":"no-example-provided",
           "scaMethod":"SMS",
           "scaStatus":"received",
           "authenticationMethodId":"string"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_challenges_by_consent_id
DROP PROCEDURE IF EXISTS obp_get_challenges_by_consent_id;
GO
-- create procedure obp_get_challenges_by_consent_id
CREATE PROCEDURE obp_get_challenges_by_consent_id
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "consentId":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "challengeId":"123chaneid13-6d02-40e3-a129-0b2bf89de9f0",
           "transactionRequestId":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1",
           "expectedAnswer":"string",
           "expectedUserId":"string",
           "salt":"string",
           "successful":true,
           "challengeType":"no-example-provided",
           "consentId":"no-example-provided",
           "scaMethod":"SMS",
           "scaStatus":"received",
           "authenticationMethodId":"string"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_challenge
DROP PROCEDURE IF EXISTS obp_get_challenge;
GO
-- create procedure obp_get_challenge
CREATE PROCEDURE obp_get_challenge
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "challengeId":"123chaneid13-6d02-40e3-a129-0b2bf89de9f0"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "challengeId":"123chaneid13-6d02-40e3-a129-0b2bf89de9f0",
         "transactionRequestId":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1",
         "expectedAnswer":"string",
         "expectedUserId":"string",
         "salt":"string",
         "successful":true,
         "challengeType":"no-example-provided",
         "consentId":"no-example-provided",
         "scaMethod":"SMS",
         "scaStatus":"received",
         "authenticationMethodId":"string"
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_bank
DROP PROCEDURE IF EXISTS obp_get_bank;
GO
-- create procedure obp_get_bank
CREATE PROCEDURE obp_get_bank
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "bankId":{
           "value":"gh.29.uk"
         },
         "shortName":"bank shortName string",
         "fullName":"bank fullName string",
         "logoUrl":"bank logoUrl string",
         "websiteUrl":"bank websiteUrl string",
         "bankRoutingScheme":"BIC",
         "bankRoutingAddress":"GENODEM1GLS"
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_banks
DROP PROCEDURE IF EXISTS obp_get_banks;
GO
-- create procedure obp_get_banks
CREATE PROCEDURE obp_get_banks
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "bankId":{
             "value":"gh.29.uk"
           },
           "shortName":"bank shortName string",
           "fullName":"bank fullName string",
           "logoUrl":"bank logoUrl string",
           "websiteUrl":"bank websiteUrl string",
           "bankRoutingScheme":"BIC",
           "bankRoutingAddress":"GENODEM1GLS"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_bank_accounts_for_user
DROP PROCEDURE IF EXISTS obp_get_bank_accounts_for_user;
GO
-- create procedure obp_get_bank_accounts_for_user
CREATE PROCEDURE obp_get_bank_accounts_for_user
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "username":"felixsmith"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "bankId":"gh.29.uk",
           "accountId":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
           "viewsToGenerate":[
             "Owner",
             "Accountant",
             "Auditor"
           ]
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_user
DROP PROCEDURE IF EXISTS obp_get_user;
GO
-- create procedure obp_get_user
CREATE PROCEDURE obp_get_user
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "name":"felixsmith",
       "password":"password"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "email":"felixsmith@example.com",
         "password":"password",
         "displayName":"no-example-provided"
       }
     }'
	);
GO

 
 


-- drop procedure obp_check_external_user_credentials
DROP PROCEDURE IF EXISTS obp_check_external_user_credentials;
GO
-- create procedure obp_check_external_user_credentials
CREATE PROCEDURE obp_check_external_user_credentials
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "username":"felixsmith",
       "password":"password"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "aud":"String",
         "exp":"String",
         "iat":"String",
         "iss":"String",
         "sub":"felixsmith",
         "azp":"string",
         "email":"felixsmith@example.com",
         "emailVerified":"String",
         "name":"felixsmith"
       }
     }'
	);
GO

 
 


-- drop procedure obp_check_external_user_exists
DROP PROCEDURE IF EXISTS obp_check_external_user_exists;
GO
-- create procedure obp_check_external_user_exists
CREATE PROCEDURE obp_check_external_user_exists
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "username":"felixsmith"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "aud":"String",
         "exp":"String",
         "iat":"String",
         "iss":"String",
         "sub":"felixsmith",
         "azp":"string",
         "email":"felixsmith@example.com",
         "emailVerified":"String",
         "name":"felixsmith"
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_bank_account_old
DROP PROCEDURE IF EXISTS obp_get_bank_account_old;
GO
-- create procedure obp_get_bank_account_old
CREATE PROCEDURE obp_get_bank_account_old
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "bankId":{
         "value":"gh.29.uk"
       },
       "accountId":{
         "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "accountType":"AC",
         "balance":"10",
         "currency":"EUR",
         "name":"bankAccount name string",
         "number":"bankAccount number string",
         "bankId":{
           "value":"gh.29.uk"
         },
         "lastUpdate":"2018-03-09T00:00:00Z",
         "branchId":"DERBY6",
         "accountRoutings":[
           {
             "scheme":"IBAN",
             "address":"DE91 1000 0000 0123 4567 89"
           }
         ],
         "attributes":[
           {
             "name":"STATUS",
             "type":"STRING",
             "value":"closed"
           }
         ]
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_bank_account_by_iban
DROP PROCEDURE IF EXISTS obp_get_bank_account_by_iban;
GO
-- create procedure obp_get_bank_account_by_iban
CREATE PROCEDURE obp_get_bank_account_by_iban
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "iban":"DE91 1000 0000 0123 4567 89"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "accountType":"AC",
         "balance":"10",
         "currency":"EUR",
         "name":"bankAccount name string",
         "number":"bankAccount number string",
         "bankId":{
           "value":"gh.29.uk"
         },
         "lastUpdate":"2018-03-09T00:00:00Z",
         "branchId":"DERBY6",
         "accountRoutings":[
           {
             "scheme":"IBAN",
             "address":"DE91 1000 0000 0123 4567 89"
           }
         ],
         "attributes":[
           {
             "name":"STATUS",
             "type":"STRING",
             "value":"closed"
           }
         ]
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_bank_account_by_routing
DROP PROCEDURE IF EXISTS obp_get_bank_account_by_routing;
GO
-- create procedure obp_get_bank_account_by_routing
CREATE PROCEDURE obp_get_bank_account_by_routing
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "scheme":"no-example-provided",
       "address":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "accountType":"AC",
         "balance":"10",
         "currency":"EUR",
         "name":"bankAccount name string",
         "number":"bankAccount number string",
         "bankId":{
           "value":"gh.29.uk"
         },
         "lastUpdate":"2018-03-09T00:00:00Z",
         "branchId":"DERBY6",
         "accountRoutings":[
           {
             "scheme":"IBAN",
             "address":"DE91 1000 0000 0123 4567 89"
           }
         ],
         "attributes":[
           {
             "name":"STATUS",
             "type":"STRING",
             "value":"closed"
           }
         ]
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_bank_accounts
DROP PROCEDURE IF EXISTS obp_get_bank_accounts;
GO
-- create procedure obp_get_bank_accounts
CREATE PROCEDURE obp_get_bank_accounts
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankIdAccountIds":[
         {
           "bankId":{
             "value":"gh.29.uk"
           },
           "accountId":{
             "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
           }
         }
       ]
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "accountId":{
             "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
           },
           "accountType":"AC",
           "balance":"10",
           "currency":"EUR",
           "name":"bankAccount name string",
           "number":"bankAccount number string",
           "bankId":{
             "value":"gh.29.uk"
           },
           "lastUpdate":"2018-03-09T00:00:00Z",
           "branchId":"DERBY6",
           "accountRoutings":[
             {
               "scheme":"IBAN",
               "address":"DE91 1000 0000 0123 4567 89"
             }
           ],
           "attributes":[
             {
               "name":"STATUS",
               "type":"STRING",
               "value":"closed"
             }
           ]
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_bank_accounts_balances
DROP PROCEDURE IF EXISTS obp_get_bank_accounts_balances;
GO
-- create procedure obp_get_bank_accounts_balances
CREATE PROCEDURE obp_get_bank_accounts_balances
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankIdAccountIds":[
         {
           "bankId":{
             "value":"gh.29.uk"
           },
           "accountId":{
             "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
           }
         }
       ]
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "accounts":[
           {
             "id":"no-example-provided",
             "label":"My Account",
             "bankId":"gh.29.uk",
             "accountRoutings":[
               {
                 "scheme":"IBAN",
                 "address":"DE91 1000 0000 0123 4567 89"
               }
             ],
             "balance":{
               "currency":"EUR",
               "amount":"50.89"
             }
           }
         ],
         "overallBalance":{
           "currency":"EUR",
           "amount":"10.12"
         },
         "overallBalanceDate":"2020-01-27T00:00:00Z"
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_core_bank_accounts
DROP PROCEDURE IF EXISTS obp_get_core_bank_accounts;
GO
-- create procedure obp_get_core_bank_accounts
CREATE PROCEDURE obp_get_core_bank_accounts
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankIdAccountIds":[
         {
           "bankId":{
             "value":"gh.29.uk"
           },
           "accountId":{
             "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
           }
         }
       ]
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
           "label":"My Account",
           "bankId":"gh.29.uk",
           "accountType":"AC",
           "accountRoutings":[
             {
               "scheme":"IBAN",
               "address":"DE91 1000 0000 0123 4567 89"
             }
           ]
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_bank_accounts_held
DROP PROCEDURE IF EXISTS obp_get_bank_accounts_held;
GO
-- create procedure obp_get_bank_accounts_held
CREATE PROCEDURE obp_get_bank_accounts_held
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankIdAccountIds":[
         {
           "bankId":{
             "value":"gh.29.uk"
           },
           "accountId":{
             "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
           }
         }
       ]
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "id":"no-example-provided",
           "label":"My Account",
           "bankId":"gh.29.uk",
           "number":"no-example-provided",
           "accountRoutings":[
             {
               "scheme":"IBAN",
               "address":"DE91 1000 0000 0123 4567 89"
             }
           ]
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_check_bank_account_exists
DROP PROCEDURE IF EXISTS obp_check_bank_account_exists;
GO
-- create procedure obp_check_bank_account_exists
CREATE PROCEDURE obp_check_bank_account_exists
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "accountId":{
         "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "accountType":"AC",
         "balance":"10",
         "currency":"EUR",
         "name":"bankAccount name string",
         "number":"bankAccount number string",
         "bankId":{
           "value":"gh.29.uk"
         },
         "lastUpdate":"2018-03-09T00:00:00Z",
         "branchId":"DERBY6",
         "accountRoutings":[
           {
             "scheme":"IBAN",
             "address":"DE91 1000 0000 0123 4567 89"
           }
         ],
         "attributes":[
           {
             "name":"STATUS",
             "type":"STRING",
             "value":"closed"
           }
         ]
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_counterparty_trait
DROP PROCEDURE IF EXISTS obp_get_counterparty_trait;
GO
-- create procedure obp_get_counterparty_trait
CREATE PROCEDURE obp_get_counterparty_trait
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "accountId":{
         "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
       },
       "couterpartyId":"string"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "createdByUserId":"no-example-provided",
         "name":"no-example-provided",
         "description":"no-example-provided",
         "currency":"EUR",
         "thisBankId":"no-example-provided",
         "thisAccountId":"no-example-provided",
         "thisViewId":"no-example-provided",
         "counterpartyId":"9fg8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "otherAccountRoutingScheme":"no-example-provided",
         "otherAccountRoutingAddress":"no-example-provided",
         "otherAccountSecondaryRoutingScheme":"no-example-provided",
         "otherAccountSecondaryRoutingAddress":"no-example-provided",
         "otherBankRoutingScheme":"no-example-provided",
         "otherBankRoutingAddress":"no-example-provided",
         "otherBranchRoutingScheme":"no-example-provided",
         "otherBranchRoutingAddress":"no-example-provided",
         "isBeneficiary":true,
         "bespoke":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_counterparty_by_counterparty_id
DROP PROCEDURE IF EXISTS obp_get_counterparty_by_counterparty_id;
GO
-- create procedure obp_get_counterparty_by_counterparty_id
CREATE PROCEDURE obp_get_counterparty_by_counterparty_id
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "counterpartyId":{
         "value":"9fg8a7e4-6d02-40e3-a129-0b2bf89de8uh"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "createdByUserId":"no-example-provided",
         "name":"no-example-provided",
         "description":"no-example-provided",
         "currency":"EUR",
         "thisBankId":"no-example-provided",
         "thisAccountId":"no-example-provided",
         "thisViewId":"no-example-provided",
         "counterpartyId":"9fg8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "otherAccountRoutingScheme":"no-example-provided",
         "otherAccountRoutingAddress":"no-example-provided",
         "otherAccountSecondaryRoutingScheme":"no-example-provided",
         "otherAccountSecondaryRoutingAddress":"no-example-provided",
         "otherBankRoutingScheme":"no-example-provided",
         "otherBankRoutingAddress":"no-example-provided",
         "otherBranchRoutingScheme":"no-example-provided",
         "otherBranchRoutingAddress":"no-example-provided",
         "isBeneficiary":true,
         "bespoke":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_counterparty_by_iban
DROP PROCEDURE IF EXISTS obp_get_counterparty_by_iban;
GO
-- create procedure obp_get_counterparty_by_iban
CREATE PROCEDURE obp_get_counterparty_by_iban
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "iban":"DE91 1000 0000 0123 4567 89"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "createdByUserId":"no-example-provided",
         "name":"no-example-provided",
         "description":"no-example-provided",
         "currency":"EUR",
         "thisBankId":"no-example-provided",
         "thisAccountId":"no-example-provided",
         "thisViewId":"no-example-provided",
         "counterpartyId":"9fg8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "otherAccountRoutingScheme":"no-example-provided",
         "otherAccountRoutingAddress":"no-example-provided",
         "otherAccountSecondaryRoutingScheme":"no-example-provided",
         "otherAccountSecondaryRoutingAddress":"no-example-provided",
         "otherBankRoutingScheme":"no-example-provided",
         "otherBankRoutingAddress":"no-example-provided",
         "otherBranchRoutingScheme":"no-example-provided",
         "otherBranchRoutingAddress":"no-example-provided",
         "isBeneficiary":true,
         "bespoke":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_counterparty_by_iban_and_bank_account_id
DROP PROCEDURE IF EXISTS obp_get_counterparty_by_iban_and_bank_account_id;
GO
-- create procedure obp_get_counterparty_by_iban_and_bank_account_id
CREATE PROCEDURE obp_get_counterparty_by_iban_and_bank_account_id
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "iban":"DE91 1000 0000 0123 4567 89",
       "bankId":{
         "value":"gh.29.uk"
       },
       "accountId":{
         "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "createdByUserId":"no-example-provided",
         "name":"no-example-provided",
         "description":"no-example-provided",
         "currency":"EUR",
         "thisBankId":"no-example-provided",
         "thisAccountId":"no-example-provided",
         "thisViewId":"no-example-provided",
         "counterpartyId":"9fg8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "otherAccountRoutingScheme":"no-example-provided",
         "otherAccountRoutingAddress":"no-example-provided",
         "otherAccountSecondaryRoutingScheme":"no-example-provided",
         "otherAccountSecondaryRoutingAddress":"no-example-provided",
         "otherBankRoutingScheme":"no-example-provided",
         "otherBankRoutingAddress":"no-example-provided",
         "otherBranchRoutingScheme":"no-example-provided",
         "otherBranchRoutingAddress":"no-example-provided",
         "isBeneficiary":true,
         "bespoke":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_counterparties
DROP PROCEDURE IF EXISTS obp_get_counterparties;
GO
-- create procedure obp_get_counterparties
CREATE PROCEDURE obp_get_counterparties
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "thisBankId":{
         "value":"no-example-provided"
       },
       "thisAccountId":{
         "value":"no-example-provided"
       },
       "viewId":{
         "value":"owner"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "createdByUserId":"no-example-provided",
           "name":"no-example-provided",
           "description":"no-example-provided",
           "currency":"EUR",
           "thisBankId":"no-example-provided",
           "thisAccountId":"no-example-provided",
           "thisViewId":"no-example-provided",
           "counterpartyId":"9fg8a7e4-6d02-40e3-a129-0b2bf89de8uh",
           "otherAccountRoutingScheme":"no-example-provided",
           "otherAccountRoutingAddress":"no-example-provided",
           "otherAccountSecondaryRoutingScheme":"no-example-provided",
           "otherAccountSecondaryRoutingAddress":"no-example-provided",
           "otherBankRoutingScheme":"no-example-provided",
           "otherBankRoutingAddress":"no-example-provided",
           "otherBranchRoutingScheme":"no-example-provided",
           "otherBranchRoutingAddress":"no-example-provided",
           "isBeneficiary":true,
           "bespoke":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ]
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_transactions
DROP PROCEDURE IF EXISTS obp_get_transactions;
GO
-- create procedure obp_get_transactions
CREATE PROCEDURE obp_get_transactions
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "accountId":{
         "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
       },
       "limit":100,
       "offset":100,
       "fromDate":"2018-03-09",
       "toDate":"2018-03-09"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "id":{
             "value":"2fg8a7e4-6d02-40e3-a129-0b2bf89de8ub"
           },
           "thisAccount":{
             "accountId":{
               "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
             },
             "accountType":"AC",
             "balance":"10",
             "currency":"EUR",
             "name":"bankAccount name string",
             "label":"My Account",
             "number":"bankAccount number string",
             "bankId":{
               "value":"gh.29.uk"
             },
             "lastUpdate":"2018-03-09T00:00:00Z",
             "branchId":"DERBY6",
             "accountRoutings":[
               {
                 "scheme":"IBAN",
                 "address":"DE91 1000 0000 0123 4567 89"
               }
             ],
             "accountRules":[
               {
                 "scheme":"AccountRule scheme string",
                 "value":"AccountRule value string"
               }
             ],
             "accountHolder":"bankAccount accountHolder string",
             "attributes":[
               {
                 "name":"STATUS",
                 "type":"STRING",
                 "value":"closed"
               }
             ]
           },
           "otherAccount":{
             "kind":"Counterparty kind string",
             "counterpartyId":"9fg8a7e4-6d02-40e3-a129-0b2bf89de8uh",
             "counterpartyName":"John Smith Ltd.",
             "thisBankId":{
               "value":"no-example-provided"
             },
             "thisAccountId":{
               "value":"no-example-provided"
             },
             "isBeneficiary":true
           },
           "transactionType":"DEBIT",
           "amount":"19.64",
           "currency":"EUR",
           "description":"For the piano lesson in June 2018 - Invoice No: 68",
           "startDate":"2019-09-07T00:00:00Z",
           "finishDate":"2019-09-08T00:00:00Z",
           "balance":"10"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_transactions_core
DROP PROCEDURE IF EXISTS obp_get_transactions_core;
GO
-- create procedure obp_get_transactions_core
CREATE PROCEDURE obp_get_transactions_core
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "accountId":{
         "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
       },
       "limit":100,
       "offset":100,
       "fromDate":"no-example-provided",
       "toDate":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "id":{
             "value":"no-example-provided"
           },
           "thisAccount":{
             "accountId":{
               "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
             },
             "accountType":"AC",
             "balance":"10",
             "currency":"EUR",
             "name":"bankAccount name string",
             "label":"My Account",
             "number":"bankAccount number string",
             "bankId":{
               "value":"gh.29.uk"
             },
             "lastUpdate":"2018-03-09T00:00:00Z",
             "branchId":"DERBY6",
             "accountRoutings":[
               {
                 "scheme":"IBAN",
                 "address":"DE91 1000 0000 0123 4567 89"
               }
             ],
             "accountRules":[
               {
                 "scheme":"AccountRule scheme string",
                 "value":"AccountRule value string"
               }
             ],
             "accountHolder":"bankAccount accountHolder string",
             "attributes":[
               {
                 "name":"STATUS",
                 "type":"STRING",
                 "value":"closed"
               }
             ]
           },
           "otherAccount":{
             "kind":"no-example-provided",
             "counterpartyId":"9fg8a7e4-6d02-40e3-a129-0b2bf89de8uh",
             "counterpartyName":"John Smith Ltd.",
             "thisBankId":{
               "value":"no-example-provided"
             },
             "thisAccountId":{
               "value":"no-example-provided"
             },
             "otherBankRoutingScheme":"no-example-provided",
             "otherBankRoutingAddress":"no-example-provided",
             "otherAccountRoutingScheme":"no-example-provided",
             "otherAccountRoutingAddress":"no-example-provided",
             "otherAccountProvider":"",
             "isBeneficiary":true
           },
           "transactionType":"DEBIT",
           "amount":"10.12",
           "currency":"EUR",
           "description":"no-example-provided",
           "startDate":"2020-01-27T00:00:00Z",
           "finishDate":"2020-01-27T00:00:00Z",
           "balance":"10"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_transaction
DROP PROCEDURE IF EXISTS obp_get_transaction;
GO
-- create procedure obp_get_transaction
CREATE PROCEDURE obp_get_transaction
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "accountId":{
         "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
       },
       "transactionId":{
         "value":"2fg8a7e4-6d02-40e3-a129-0b2bf89de8ub"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "id":{
           "value":"2fg8a7e4-6d02-40e3-a129-0b2bf89de8ub"
         },
         "thisAccount":{
           "accountId":{
             "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
           },
           "accountType":"AC",
           "balance":"10",
           "currency":"EUR",
           "name":"bankAccount name string",
           "label":"My Account",
           "number":"bankAccount number string",
           "bankId":{
             "value":"gh.29.uk"
           },
           "lastUpdate":"2018-03-09T00:00:00Z",
           "branchId":"DERBY6",
           "accountRoutings":[
             {
               "scheme":"IBAN",
               "address":"DE91 1000 0000 0123 4567 89"
             }
           ],
           "accountRules":[
             {
               "scheme":"AccountRule scheme string",
               "value":"AccountRule value string"
             }
           ],
           "accountHolder":"bankAccount accountHolder string",
           "attributes":[
             {
               "name":"STATUS",
               "type":"STRING",
               "value":"closed"
             }
           ]
         },
         "otherAccount":{
           "kind":"Counterparty kind string",
           "counterpartyId":"9fg8a7e4-6d02-40e3-a129-0b2bf89de8uh",
           "counterpartyName":"John Smith Ltd.",
           "thisBankId":{
             "value":"no-example-provided"
           },
           "thisAccountId":{
             "value":"no-example-provided"
           },
           "isBeneficiary":true
         },
         "transactionType":"DEBIT",
         "amount":"19.64",
         "currency":"EUR",
         "description":"For the piano lesson in June 2018 - Invoice No: 68",
         "startDate":"2019-09-07T00:00:00Z",
         "finishDate":"2019-09-08T00:00:00Z",
         "balance":"10"
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_physical_cards_for_user
DROP PROCEDURE IF EXISTS obp_get_physical_cards_for_user;
GO
-- create procedure obp_get_physical_cards_for_user
CREATE PROCEDURE obp_get_physical_cards_for_user
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "user":{
         "userPrimaryKey":{
           "value":123
         },
         "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
         "idGivenByProvider":"string",
         "provider":"no-example-provided",
         "emailAddress":"no-example-provided",
         "name":"felixsmith"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "cardId":"36f8a9e6-c2b1-407a-8bd0-421b7119307e ",
           "bankId":"gh.29.uk",
           "bankCardNumber":"364435172576215",
           "cardType":"Credit",
           "nameOnCard":"SusanSmith",
           "issueNumber":"1",
           "serialNumber":"1324234",
           "validFrom":"2020-01-27T00:00:00Z",
           "expires":"2021-01-27T00:00:00Z",
           "enabled":true,
           "cancelled":true,
           "onHotList":false,
           "technology":"no-example-provided",
           "networks":[
             "no-example-provided"
           ],
           "allows":[
             "DEBIT"
           ],
           "account":{
             "accountId":{
               "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
             },
             "accountType":"AC",
             "balance":"10",
             "currency":"EUR",
             "name":"bankAccount name string",
             "label":"My Account",
             "number":"546387432",
             "bankId":{
               "value":"gh.29.uk"
             },
             "lastUpdate":"2018-03-09T00:00:00Z",
             "branchId":"DERBY6",
             "accountRoutings":[
               {
                 "scheme":"IBAN",
                 "address":"DE91 1000 0000 0123 4567 89"
               }
             ],
             "accountRules":[
               {
                 "scheme":"AccountRule scheme string",
                 "value":"AccountRule value string"
               }
             ],
             "accountHolder":"bankAccount accountHolder string",
             "attributes":[
               {
                 "name":"STATUS",
                 "type":"STRING",
                 "value":"closed"
               }
             ]
           },
           "replacement":{
             "requestedDate":"2020-01-27T00:00:00Z",
             "reasonRequested":"FIRST"
           },
           "pinResets":[
             {
               "requestedDate":"2020-01-27T00:00:00Z",
               "reasonRequested":"FORGOT"
             }
           ],
           "collected":{
             "date":"2020-01-27T00:00:00Z"
           },
           "posted":{
             "date":"2020-01-27T00:00:00Z"
           },
           "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_physical_card_for_bank
DROP PROCEDURE IF EXISTS obp_get_physical_card_for_bank;
GO
-- create procedure obp_get_physical_card_for_bank
CREATE PROCEDURE obp_get_physical_card_for_bank
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "cardId":"36f8a9e6-c2b1-407a-8bd0-421b7119307e "
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "cardId":"36f8a9e6-c2b1-407a-8bd0-421b7119307e ",
         "bankId":"gh.29.uk",
         "bankCardNumber":"364435172576215",
         "cardType":"Credit",
         "nameOnCard":"SusanSmith",
         "issueNumber":"1",
         "serialNumber":"1324234",
         "validFrom":"2020-01-27T00:00:00Z",
         "expires":"2021-01-27T00:00:00Z",
         "enabled":true,
         "cancelled":true,
         "onHotList":false,
         "technology":"no-example-provided",
         "networks":[
           "no-example-provided"
         ],
         "allows":[
           "DEBIT"
         ],
         "account":{
           "accountId":{
             "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
           },
           "accountType":"AC",
           "balance":"10",
           "currency":"EUR",
           "name":"bankAccount name string",
           "label":"My Account",
           "number":"546387432",
           "bankId":{
             "value":"gh.29.uk"
           },
           "lastUpdate":"2018-03-09T00:00:00Z",
           "branchId":"DERBY6",
           "accountRoutings":[
             {
               "scheme":"IBAN",
               "address":"DE91 1000 0000 0123 4567 89"
             }
           ],
           "accountRules":[
             {
               "scheme":"AccountRule scheme string",
               "value":"AccountRule value string"
             }
           ],
           "accountHolder":"bankAccount accountHolder string",
           "attributes":[
             {
               "name":"STATUS",
               "type":"STRING",
               "value":"closed"
             }
           ]
         },
         "replacement":{
           "requestedDate":"2020-01-27T00:00:00Z",
           "reasonRequested":"FIRST"
         },
         "pinResets":[
           {
             "requestedDate":"2020-01-27T00:00:00Z",
             "reasonRequested":"FORGOT"
           }
         ],
         "collected":{
           "date":"2020-01-27T00:00:00Z"
         },
         "posted":{
           "date":"2020-01-27T00:00:00Z"
         },
         "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
       }
     }'
	);
GO

 
 


-- drop procedure obp_delete_physical_card_for_bank
DROP PROCEDURE IF EXISTS obp_delete_physical_card_for_bank;
GO
-- create procedure obp_delete_physical_card_for_bank
CREATE PROCEDURE obp_delete_physical_card_for_bank
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "cardId":"36f8a9e6-c2b1-407a-8bd0-421b7119307e "
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":true
     }'
	);
GO

 
 


-- drop procedure obp_get_physical_cards_for_bank
DROP PROCEDURE IF EXISTS obp_get_physical_cards_for_bank;
GO
-- create procedure obp_get_physical_cards_for_bank
CREATE PROCEDURE obp_get_physical_cards_for_bank
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bank":{
         "bankId":{
           "value":"gh.29.uk"
         },
         "shortName":"bank shortName string",
         "fullName":"bank fullName string",
         "logoUrl":"bank logoUrl string",
         "websiteUrl":"bank websiteUrl string",
         "bankRoutingScheme":"BIC",
         "bankRoutingAddress":"GENODEM1GLS",
         "swiftBic":"bank swiftBic string",
         "nationalIdentifier":"bank nationalIdentifier string"
       },
       "user":{
         "userPrimaryKey":{
           "value":123
         },
         "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
         "idGivenByProvider":"string",
         "provider":"no-example-provided",
         "emailAddress":"no-example-provided",
         "name":"felixsmith"
       },
       "limit":100,
       "offset":100,
       "fromDate":"no-example-provided",
       "toDate":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "cardId":"36f8a9e6-c2b1-407a-8bd0-421b7119307e ",
           "bankId":"gh.29.uk",
           "bankCardNumber":"364435172576215",
           "cardType":"Credit",
           "nameOnCard":"SusanSmith",
           "issueNumber":"1",
           "serialNumber":"1324234",
           "validFrom":"2020-01-27T00:00:00Z",
           "expires":"2021-01-27T00:00:00Z",
           "enabled":true,
           "cancelled":true,
           "onHotList":false,
           "technology":"no-example-provided",
           "networks":[
             "no-example-provided"
           ],
           "allows":[
             "DEBIT"
           ],
           "account":{
             "accountId":{
               "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
             },
             "accountType":"AC",
             "balance":"10",
             "currency":"EUR",
             "name":"bankAccount name string",
             "label":"My Account",
             "number":"546387432",
             "bankId":{
               "value":"gh.29.uk"
             },
             "lastUpdate":"2018-03-09T00:00:00Z",
             "branchId":"DERBY6",
             "accountRoutings":[
               {
                 "scheme":"IBAN",
                 "address":"DE91 1000 0000 0123 4567 89"
               }
             ],
             "accountRules":[
               {
                 "scheme":"AccountRule scheme string",
                 "value":"AccountRule value string"
               }
             ],
             "accountHolder":"bankAccount accountHolder string",
             "attributes":[
               {
                 "name":"STATUS",
                 "type":"STRING",
                 "value":"closed"
               }
             ]
           },
           "replacement":{
             "requestedDate":"2020-01-27T00:00:00Z",
             "reasonRequested":"FIRST"
           },
           "pinResets":[
             {
               "requestedDate":"2020-01-27T00:00:00Z",
               "reasonRequested":"FORGOT"
             }
           ],
           "collected":{
             "date":"2020-01-27T00:00:00Z"
           },
           "posted":{
             "date":"2020-01-27T00:00:00Z"
           },
           "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_create_physical_card
DROP PROCEDURE IF EXISTS obp_create_physical_card;
GO
-- create procedure obp_create_physical_card
CREATE PROCEDURE obp_create_physical_card
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankCardNumber":"364435172576215",
       "nameOnCard":"SusanSmith",
       "cardType":"Credit",
       "issueNumber":"1",
       "serialNumber":"1324234",
       "validFrom":"2020-01-27T00:00:00Z",
       "expires":"2021-01-27T00:00:00Z",
       "enabled":true,
       "cancelled":true,
       "onHotList":false,
       "technology":"no-example-provided",
       "networks":[
         "no-example-provided"
       ],
       "allows":[
         "no-example-provided"
       ],
       "accountId":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
       "bankId":"gh.29.uk",
       "replacement":{
         "requestedDate":"2020-01-27T00:00:00Z",
         "reasonRequested":"FIRST"
       },
       "pinResets":[
         {
           "requestedDate":"2020-01-27T00:00:00Z",
           "reasonRequested":"FORGOT"
         }
       ],
       "collected":{
         "date":"2020-01-27T00:00:00Z"
       },
       "posted":{
         "date":"2020-01-27T00:00:00Z"
       },
       "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "cardId":"36f8a9e6-c2b1-407a-8bd0-421b7119307e ",
         "bankId":"gh.29.uk",
         "bankCardNumber":"364435172576215",
         "cardType":"Credit",
         "nameOnCard":"SusanSmith",
         "issueNumber":"1",
         "serialNumber":"1324234",
         "validFrom":"2020-01-27T00:00:00Z",
         "expires":"2021-01-27T00:00:00Z",
         "enabled":true,
         "cancelled":true,
         "onHotList":false,
         "technology":"no-example-provided",
         "networks":[
           "no-example-provided"
         ],
         "allows":[
           "DEBIT"
         ],
         "account":{
           "accountId":{
             "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
           },
           "accountType":"AC",
           "balance":"10",
           "currency":"EUR",
           "name":"bankAccount name string",
           "label":"My Account",
           "number":"546387432",
           "bankId":{
             "value":"gh.29.uk"
           },
           "lastUpdate":"2018-03-09T00:00:00Z",
           "branchId":"DERBY6",
           "accountRoutings":[
             {
               "scheme":"IBAN",
               "address":"DE91 1000 0000 0123 4567 89"
             }
           ],
           "accountRules":[
             {
               "scheme":"AccountRule scheme string",
               "value":"AccountRule value string"
             }
           ],
           "accountHolder":"bankAccount accountHolder string",
           "attributes":[
             {
               "name":"STATUS",
               "type":"STRING",
               "value":"closed"
             }
           ]
         },
         "replacement":{
           "requestedDate":"2020-01-27T00:00:00Z",
           "reasonRequested":"FIRST"
         },
         "pinResets":[
           {
             "requestedDate":"2020-01-27T00:00:00Z",
             "reasonRequested":"FORGOT"
           }
         ],
         "collected":{
           "date":"2020-01-27T00:00:00Z"
         },
         "posted":{
           "date":"2020-01-27T00:00:00Z"
         },
         "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
       }
     }'
	);
GO

 
 


-- drop procedure obp_update_physical_card
DROP PROCEDURE IF EXISTS obp_update_physical_card;
GO
-- create procedure obp_update_physical_card
CREATE PROCEDURE obp_update_physical_card
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "cardId":"36f8a9e6-c2b1-407a-8bd0-421b7119307e ",
       "bankCardNumber":"364435172576215",
       "nameOnCard":"SusanSmith",
       "cardType":"Credit",
       "issueNumber":"1",
       "serialNumber":"1324234",
       "validFrom":"2020-01-27T00:00:00Z",
       "expires":"2021-01-27T00:00:00Z",
       "enabled":true,
       "cancelled":true,
       "onHotList":false,
       "technology":"no-example-provided",
       "networks":[
         "no-example-provided"
       ],
       "allows":[
         "no-example-provided"
       ],
       "accountId":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
       "bankId":"gh.29.uk",
       "replacement":{
         "requestedDate":"2020-01-27T00:00:00Z",
         "reasonRequested":"FIRST"
       },
       "pinResets":[
         {
           "requestedDate":"2020-01-27T00:00:00Z",
           "reasonRequested":"FORGOT"
         }
       ],
       "collected":{
         "date":"2020-01-27T00:00:00Z"
       },
       "posted":{
         "date":"2020-01-27T00:00:00Z"
       },
       "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "cardId":"36f8a9e6-c2b1-407a-8bd0-421b7119307e ",
         "bankId":"gh.29.uk",
         "bankCardNumber":"364435172576215",
         "cardType":"Credit",
         "nameOnCard":"SusanSmith",
         "issueNumber":"1",
         "serialNumber":"1324234",
         "validFrom":"2020-01-27T00:00:00Z",
         "expires":"2021-01-27T00:00:00Z",
         "enabled":true,
         "cancelled":true,
         "onHotList":false,
         "technology":"no-example-provided",
         "networks":[
           "no-example-provided"
         ],
         "allows":[
           "DEBIT"
         ],
         "account":{
           "accountId":{
             "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
           },
           "accountType":"AC",
           "balance":"10",
           "currency":"EUR",
           "name":"bankAccount name string",
           "label":"My Account",
           "number":"546387432",
           "bankId":{
             "value":"gh.29.uk"
           },
           "lastUpdate":"2018-03-09T00:00:00Z",
           "branchId":"DERBY6",
           "accountRoutings":[
             {
               "scheme":"IBAN",
               "address":"DE91 1000 0000 0123 4567 89"
             }
           ],
           "accountRules":[
             {
               "scheme":"AccountRule scheme string",
               "value":"AccountRule value string"
             }
           ],
           "accountHolder":"bankAccount accountHolder string",
           "attributes":[
             {
               "name":"STATUS",
               "type":"STRING",
               "value":"closed"
             }
           ]
         },
         "replacement":{
           "requestedDate":"2020-01-27T00:00:00Z",
           "reasonRequested":"FIRST"
         },
         "pinResets":[
           {
             "requestedDate":"2020-01-27T00:00:00Z",
             "reasonRequested":"FORGOT"
           }
         ],
         "collected":{
           "date":"2020-01-27T00:00:00Z"
         },
         "posted":{
           "date":"2020-01-27T00:00:00Z"
         },
         "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
       }
     }'
	);
GO

 
 


-- drop procedure obp_make_paymentv210
DROP PROCEDURE IF EXISTS obp_make_paymentv210;
GO
-- create procedure obp_make_paymentv210
CREATE PROCEDURE obp_make_paymentv210
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "fromAccount":{
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "accountType":"AC",
         "balance":"10",
         "currency":"EUR",
         "name":"bankAccount name string",
         "label":"My Account",
         "number":"bankAccount number string",
         "bankId":{
           "value":"gh.29.uk"
         },
         "lastUpdate":"2018-03-09T00:00:00Z",
         "branchId":"DERBY6",
         "accountRoutings":[
           {
             "scheme":"IBAN",
             "address":"DE91 1000 0000 0123 4567 89"
           }
         ],
         "accountRules":[
           {
             "scheme":"AccountRule scheme string",
             "value":"AccountRule value string"
           }
         ],
         "accountHolder":"bankAccount accountHolder string",
         "attributes":[
           {
             "name":"STATUS",
             "type":"STRING",
             "value":"closed"
           }
         ]
       },
       "toAccount":{
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "accountType":"AC",
         "balance":"10",
         "currency":"EUR",
         "name":"bankAccount name string",
         "label":"My Account",
         "number":"bankAccount number string",
         "bankId":{
           "value":"gh.29.uk"
         },
         "lastUpdate":"2018-03-09T00:00:00Z",
         "branchId":"DERBY6",
         "accountRoutings":[
           {
             "scheme":"IBAN",
             "address":"DE91 1000 0000 0123 4567 89"
           }
         ],
         "accountRules":[
           {
             "scheme":"AccountRule scheme string",
             "value":"AccountRule value string"
           }
         ],
         "accountHolder":"bankAccount accountHolder string",
         "attributes":[
           {
             "name":"STATUS",
             "type":"STRING",
             "value":"closed"
           }
         ]
       },
       "transactionRequestId":{
         "value":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1"
       },
       "transactionRequestCommonBody":{
         "value":{
           "currency":"EUR",
           "amount":"10.12"
         },
         "description":"no-example-provided"
       },
       "amount":"10.12",
       "description":"no-example-provided",
       "transactionRequestType":{
         "value":"SEPA"
       },
       "chargePolicy":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "value":"2fg8a7e4-6d02-40e3-a129-0b2bf89de8ub"
       }
     }'
	);
GO

 
 


-- drop procedure obp_create_transaction_requestv210
DROP PROCEDURE IF EXISTS obp_create_transaction_requestv210;
GO
-- create procedure obp_create_transaction_requestv210
CREATE PROCEDURE obp_create_transaction_requestv210
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "initiator":{
         "userPrimaryKey":{
           "value":123
         },
         "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
         "idGivenByProvider":"string",
         "provider":"no-example-provided",
         "emailAddress":"no-example-provided",
         "name":"felixsmith"
       },
       "viewId":{
         "value":"owner"
       },
       "fromAccount":{
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "accountType":"AC",
         "balance":"10",
         "currency":"EUR",
         "name":"bankAccount name string",
         "label":"My Account",
         "number":"bankAccount number string",
         "bankId":{
           "value":"gh.29.uk"
         },
         "lastUpdate":"2018-03-09T00:00:00Z",
         "branchId":"DERBY6",
         "accountRoutings":[
           {
             "scheme":"IBAN",
             "address":"DE91 1000 0000 0123 4567 89"
           }
         ],
         "accountRules":[
           {
             "scheme":"AccountRule scheme string",
             "value":"AccountRule value string"
           }
         ],
         "accountHolder":"bankAccount accountHolder string",
         "attributes":[
           {
             "name":"STATUS",
             "type":"STRING",
             "value":"closed"
           }
         ]
       },
       "toAccount":{
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "accountType":"AC",
         "balance":"10",
         "currency":"EUR",
         "name":"bankAccount name string",
         "label":"My Account",
         "number":"bankAccount number string",
         "bankId":{
           "value":"gh.29.uk"
         },
         "lastUpdate":"2018-03-09T00:00:00Z",
         "branchId":"DERBY6",
         "accountRoutings":[
           {
             "scheme":"IBAN",
             "address":"DE91 1000 0000 0123 4567 89"
           }
         ],
         "accountRules":[
           {
             "scheme":"AccountRule scheme string",
             "value":"AccountRule value string"
           }
         ],
         "accountHolder":"bankAccount accountHolder string",
         "attributes":[
           {
             "name":"STATUS",
             "type":"STRING",
             "value":"closed"
           }
         ]
       },
       "transactionRequestType":{
         "value":"SEPA"
       },
       "transactionRequestCommonBody":{
         "value":{
           "currency":"EUR",
           "amount":"10.12"
         },
         "description":"no-example-provided"
       },
       "detailsPlain":"string",
       "chargePolicy":"no-example-provided",
       "challengeType":"no-example-provided",
       "scaMethod":"SMS"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "id":{
           "value":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1"
         },
         "type":"SEPA",
         "from":{
           "bank_id":"gh.29.uk",
           "account_id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "body":{
           "value":{
             "currency":"EUR",
             "amount":"10.12"
           },
           "description":"no-example-provided"
         },
         "transaction_ids":"string",
         "status":"no-example-provided",
         "start_date":"2019-09-07T00:00:00Z",
         "end_date":"2019-09-08T00:00:00Z",
         "challenge":{
           "id":"123chaneid13-6d02-40e3-a129-0b2bf89de9f0",
           "allowed_attempts":123,
           "challenge_type":"string"
         },
         "charge":{
           "summary":"no-example-provided",
           "value":{
             "currency":"EUR",
             "amount":"10.12"
           }
         }
       }
     }'
	);
GO

 
 


-- drop procedure obp_create_transaction_requestv400
DROP PROCEDURE IF EXISTS obp_create_transaction_requestv400;
GO
-- create procedure obp_create_transaction_requestv400
CREATE PROCEDURE obp_create_transaction_requestv400
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "initiator":{
         "userPrimaryKey":{
           "value":123
         },
         "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
         "idGivenByProvider":"string",
         "provider":"no-example-provided",
         "emailAddress":"no-example-provided",
         "name":"felixsmith"
       },
       "viewId":{
         "value":"owner"
       },
       "fromAccount":{
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "accountType":"AC",
         "balance":"10",
         "currency":"EUR",
         "name":"bankAccount name string",
         "label":"My Account",
         "number":"bankAccount number string",
         "bankId":{
           "value":"gh.29.uk"
         },
         "lastUpdate":"2018-03-09T00:00:00Z",
         "branchId":"DERBY6",
         "accountRoutings":[
           {
             "scheme":"IBAN",
             "address":"DE91 1000 0000 0123 4567 89"
           }
         ],
         "accountRules":[
           {
             "scheme":"AccountRule scheme string",
             "value":"AccountRule value string"
           }
         ],
         "accountHolder":"bankAccount accountHolder string",
         "attributes":[
           {
             "name":"STATUS",
             "type":"STRING",
             "value":"closed"
           }
         ]
       },
       "toAccount":{
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "accountType":"AC",
         "balance":"10",
         "currency":"EUR",
         "name":"bankAccount name string",
         "label":"My Account",
         "number":"bankAccount number string",
         "bankId":{
           "value":"gh.29.uk"
         },
         "lastUpdate":"2018-03-09T00:00:00Z",
         "branchId":"DERBY6",
         "accountRoutings":[
           {
             "scheme":"IBAN",
             "address":"DE91 1000 0000 0123 4567 89"
           }
         ],
         "accountRules":[
           {
             "scheme":"AccountRule scheme string",
             "value":"AccountRule value string"
           }
         ],
         "accountHolder":"bankAccount accountHolder string",
         "attributes":[
           {
             "name":"STATUS",
             "type":"STRING",
             "value":"closed"
           }
         ]
       },
       "transactionRequestType":{
         "value":"SEPA"
       },
       "transactionRequestCommonBody":{
         "value":{
           "currency":"EUR",
           "amount":"10.12"
         },
         "description":"no-example-provided"
       },
       "detailsPlain":"string",
       "chargePolicy":"no-example-provided",
       "challengeType":"no-example-provided",
       "scaMethod":"SMS",
       "reasons":[
         {
           "code":"no-example-provided",
           "documentNumber":"no-example-provided",
           "amount":"10.12",
           "currency":"EUR",
           "description":"no-example-provided"
         }
       ],
       "berlinGroupPayments":{
         "endToEndIdentification":"string",
         "instructionIdentification":"string",
         "debtorName":"string",
         "debtorAccount":{
           "iban":"string"
         },
         "debtorId":"string",
         "ultimateDebtor":"string",
         "instructedAmount":{
           "currency":"EUR",
           "amount":"10.12"
         },
         "currencyOfTransfer":"string",
         "exchangeRateInformation":"string",
         "creditorAccount":{
           "iban":"string"
         },
         "creditorAgent":"string",
         "creditorAgentName":"string",
         "creditorName":"string",
         "creditorId":"string",
         "creditorAddress":"string",
         "creditorNameAndAddress":"string",
         "ultimateCreditor":"string",
         "purposeCode":"string",
         "chargeBearer":"string",
         "serviceLevel":"string",
         "remittanceInformationUnstructured":"string",
         "remittanceInformationUnstructuredArray":"string",
         "remittanceInformationStructured":"string",
         "remittanceInformationStructuredArray":"string",
         "requestedExecutionDate":"string",
         "requestedExecutionTime":"string"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "id":{
           "value":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1"
         },
         "type":"SEPA",
         "from":{
           "bank_id":"gh.29.uk",
           "account_id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "body":{
           "value":{
             "currency":"EUR",
             "amount":"10.12"
           },
           "description":"no-example-provided"
         },
         "transaction_ids":"string",
         "status":"no-example-provided",
         "start_date":"2019-09-07T00:00:00Z",
         "end_date":"2019-09-08T00:00:00Z",
         "challenge":{
           "id":"123chaneid13-6d02-40e3-a129-0b2bf89de9f0",
           "allowed_attempts":123,
           "challenge_type":"string"
         },
         "charge":{
           "summary":"no-example-provided",
           "value":{
             "currency":"EUR",
             "amount":"10.12"
           }
         }
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_transaction_requests210
DROP PROCEDURE IF EXISTS obp_get_transaction_requests210;
GO
-- create procedure obp_get_transaction_requests210
CREATE PROCEDURE obp_get_transaction_requests210
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "initiator":{
         "userPrimaryKey":{
           "value":123
         },
         "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
         "idGivenByProvider":"string",
         "provider":"no-example-provided",
         "emailAddress":"no-example-provided",
         "name":"felixsmith"
       },
       "fromAccount":{
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "accountType":"AC",
         "balance":"10",
         "currency":"EUR",
         "name":"bankAccount name string",
         "label":"My Account",
         "number":"bankAccount number string",
         "bankId":{
           "value":"gh.29.uk"
         },
         "lastUpdate":"2018-03-09T00:00:00Z",
         "branchId":"DERBY6",
         "accountRoutings":[
           {
             "scheme":"IBAN",
             "address":"DE91 1000 0000 0123 4567 89"
           }
         ],
         "accountRules":[
           {
             "scheme":"AccountRule scheme string",
             "value":"AccountRule value string"
           }
         ],
         "accountHolder":"bankAccount accountHolder string",
         "attributes":[
           {
             "name":"STATUS",
             "type":"STRING",
             "value":"closed"
           }
         ]
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "id":{
             "value":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1"
           },
           "type":"SEPA",
           "from":{
             "bank_id":"gh.29.uk",
             "account_id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
           },
           "body":{
             "value":{
               "currency":"EUR",
               "amount":"10.12"
             },
             "description":"no-example-provided"
           },
           "transaction_ids":"string",
           "status":"no-example-provided",
           "start_date":"2019-09-07T00:00:00Z",
           "end_date":"2019-09-08T00:00:00Z",
           "challenge":{
             "id":"123chaneid13-6d02-40e3-a129-0b2bf89de9f0",
             "allowed_attempts":123,
             "challenge_type":"string"
           },
           "charge":{
             "summary":"no-example-provided",
             "value":{
               "currency":"EUR",
               "amount":"10.12"
             }
           }
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_transaction_request_impl
DROP PROCEDURE IF EXISTS obp_get_transaction_request_impl;
GO
-- create procedure obp_get_transaction_request_impl
CREATE PROCEDURE obp_get_transaction_request_impl
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "transactionRequestId":{
         "value":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "id":{
           "value":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1"
         },
         "type":"SEPA",
         "from":{
           "bank_id":"gh.29.uk",
           "account_id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "body":{
           "value":{
             "currency":"EUR",
             "amount":"10.12"
           },
           "description":"no-example-provided"
         },
         "transaction_ids":"string",
         "status":"no-example-provided",
         "start_date":"2019-09-07T00:00:00Z",
         "end_date":"2019-09-08T00:00:00Z",
         "challenge":{
           "id":"123chaneid13-6d02-40e3-a129-0b2bf89de9f0",
           "allowed_attempts":123,
           "challenge_type":"string"
         },
         "charge":{
           "summary":"no-example-provided",
           "value":{
             "currency":"EUR",
             "amount":"10.12"
           }
         }
       }
     }'
	);
GO

 
 


-- drop procedure obp_create_transaction_after_challenge_v210
DROP PROCEDURE IF EXISTS obp_create_transaction_after_challenge_v210;
GO
-- create procedure obp_create_transaction_after_challenge_v210
CREATE PROCEDURE obp_create_transaction_after_challenge_v210
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "fromAccount":{
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "accountType":"AC",
         "balance":"10",
         "currency":"EUR",
         "name":"bankAccount name string",
         "label":"My Account",
         "number":"bankAccount number string",
         "bankId":{
           "value":"gh.29.uk"
         },
         "lastUpdate":"2018-03-09T00:00:00Z",
         "branchId":"DERBY6",
         "accountRoutings":[
           {
             "scheme":"IBAN",
             "address":"DE91 1000 0000 0123 4567 89"
           }
         ],
         "accountRules":[
           {
             "scheme":"AccountRule scheme string",
             "value":"AccountRule value string"
           }
         ],
         "accountHolder":"bankAccount accountHolder string",
         "attributes":[
           {
             "name":"STATUS",
             "type":"STRING",
             "value":"closed"
           }
         ]
       },
       "transactionRequest":{
         "id":{
           "value":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1"
         },
         "type":"SEPA",
         "from":{
           "bank_id":"gh.29.uk",
           "account_id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "body":{
           "value":{
             "currency":"EUR",
             "amount":"10.12"
           },
           "description":"no-example-provided"
         },
         "transaction_ids":"string",
         "status":"no-example-provided",
         "start_date":"2019-09-07T00:00:00Z",
         "end_date":"2019-09-08T00:00:00Z",
         "challenge":{
           "id":"123chaneid13-6d02-40e3-a129-0b2bf89de9f0",
           "allowed_attempts":123,
           "challenge_type":"string"
         },
         "charge":{
           "summary":"no-example-provided",
           "value":{
             "currency":"EUR",
             "amount":"10.12"
           }
         }
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "id":{
           "value":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1"
         },
         "type":"SEPA",
         "from":{
           "bank_id":"gh.29.uk",
           "account_id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "body":{
           "value":{
             "currency":"EUR",
             "amount":"10.12"
           },
           "description":"no-example-provided"
         },
         "transaction_ids":"string",
         "status":"no-example-provided",
         "start_date":"2019-09-07T00:00:00Z",
         "end_date":"2019-09-08T00:00:00Z",
         "challenge":{
           "id":"123chaneid13-6d02-40e3-a129-0b2bf89de9f0",
           "allowed_attempts":123,
           "challenge_type":"string"
         },
         "charge":{
           "summary":"no-example-provided",
           "value":{
             "currency":"EUR",
             "amount":"10.12"
           }
         }
       }
     }'
	);
GO

 
 


-- drop procedure obp_update_bank_account
DROP PROCEDURE IF EXISTS obp_update_bank_account;
GO
-- create procedure obp_update_bank_account
CREATE PROCEDURE obp_update_bank_account
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "accountId":{
         "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
       },
       "accountType":"AC",
       "accountLabel":"string",
       "branchId":"DERBY6",
       "accountRoutings":[
         {
           "scheme":"IBAN",
           "address":"DE91 1000 0000 0123 4567 89"
         }
       ]
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "accountType":"AC",
         "balance":"10",
         "currency":"EUR",
         "name":"bankAccount name string",
         "number":"bankAccount number string",
         "bankId":{
           "value":"gh.29.uk"
         },
         "lastUpdate":"2018-03-09T00:00:00Z",
         "branchId":"DERBY6",
         "accountRoutings":[
           {
             "scheme":"IBAN",
             "address":"DE91 1000 0000 0123 4567 89"
           }
         ],
         "attributes":[
           {
             "name":"STATUS",
             "type":"STRING",
             "value":"closed"
           }
         ]
       }
     }'
	);
GO

 
 


-- drop procedure obp_create_bank_account
DROP PROCEDURE IF EXISTS obp_create_bank_account;
GO
-- create procedure obp_create_bank_account
CREATE PROCEDURE obp_create_bank_account
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "accountId":{
         "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
       },
       "accountType":"AC",
       "accountLabel":"string",
       "currency":"EUR",
       "initialBalance":"123.321",
       "accountHolderName":"string",
       "branchId":"DERBY6",
       "accountRoutings":[
         {
           "scheme":"IBAN",
           "address":"DE91 1000 0000 0123 4567 89"
         }
       ]
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "accountType":"AC",
         "balance":"10",
         "currency":"EUR",
         "name":"bankAccount name string",
         "number":"bankAccount number string",
         "bankId":{
           "value":"gh.29.uk"
         },
         "lastUpdate":"2018-03-09T00:00:00Z",
         "branchId":"DERBY6",
         "accountRoutings":[
           {
             "scheme":"IBAN",
             "address":"DE91 1000 0000 0123 4567 89"
           }
         ],
         "attributes":[
           {
             "name":"STATUS",
             "type":"STRING",
             "value":"closed"
           }
         ]
       }
     }'
	);
GO

 
 


-- drop procedure obp_account_exists
DROP PROCEDURE IF EXISTS obp_account_exists;
GO
-- create procedure obp_account_exists
CREATE PROCEDURE obp_account_exists
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "bankId":{
         "value":"gh.29.uk"
       },
       "accountNumber":"546387432"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":true
     }'
	);
GO

 
 


-- drop procedure obp_get_products
DROP PROCEDURE IF EXISTS obp_get_products;
GO
-- create procedure obp_get_products
CREATE PROCEDURE obp_get_products
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "bankId":{
         "value":"gh.29.uk"
       },
       "params":[
         {
           "name":"no-example-provided",
           "value":[
             "5987953"
           ]
         }
       ]
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "bankId":{
             "value":"gh.29.uk"
           },
           "code":{
             "value":"no-example-provided"
           },
           "parentProductCode":{
             "value":"no-example-provided"
           },
           "name":"no-example-provided",
           "category":"no-example-provided",
           "family":"no-example-provided",
           "superFamily":"no-example-provided",
           "moreInfoUrl":"no-example-provided",
           "details":"no-example-provided",
           "description":"no-example-provided",
           "meta":{
             "license":{
               "id":"no-example-provided",
               "name":"no-example-provided"
             }
           }
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_product
DROP PROCEDURE IF EXISTS obp_get_product;
GO
-- create procedure obp_get_product
CREATE PROCEDURE obp_get_product
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "bankId":{
         "value":"gh.29.uk"
       },
       "productCode":{
         "value":"no-example-provided"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "bankId":{
           "value":"gh.29.uk"
         },
         "code":{
           "value":"no-example-provided"
         },
         "parentProductCode":{
           "value":"no-example-provided"
         },
         "name":"no-example-provided",
         "category":"no-example-provided",
         "family":"no-example-provided",
         "superFamily":"no-example-provided",
         "moreInfoUrl":"no-example-provided",
         "details":"no-example-provided",
         "description":"no-example-provided",
         "meta":{
           "license":{
             "id":"no-example-provided",
             "name":"no-example-provided"
           }
         }
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_branch
DROP PROCEDURE IF EXISTS obp_get_branch;
GO
-- create procedure obp_get_branch
CREATE PROCEDURE obp_get_branch
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "branchId":{
         "value":"DERBY6"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "branchId":{
           "value":"DERBY6"
         },
         "bankId":{
           "value":"gh.29.uk"
         },
         "name":"no-example-provided",
         "address":{
           "line1":"no-example-provided",
           "line2":"no-example-provided",
           "line3":"no-example-provided",
           "city":"no-example-provided",
           "county":"no-example-provided",
           "state":"no-example-provided",
           "postCode":"no-example-provided",
           "countryCode":"no-example-provided"
         },
         "location":{
           "latitude":38.8951,
           "longitude":-77.0364,
           "date":"2020-01-27T00:00:00Z",
           "user":{
             "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
             "provider":"no-example-provided",
             "username":"felixsmith"
           }
         },
         "lobbyString":{
           "hours":"string"
         },
         "driveUpString":{
           "hours":"string"
         },
         "meta":{
           "license":{
             "id":"no-example-provided",
             "name":"no-example-provided"
           }
         },
         "branchRouting":{
           "scheme":"BRANCH-CODE",
           "address":"DERBY6"
         },
         "lobby":{
           "monday":[
             {
               "openingTime":"no-example-provided",
               "closingTime":"no-example-provided"
             }
           ],
           "tuesday":[
             {
               "openingTime":"no-example-provided",
               "closingTime":"no-example-provided"
             }
           ],
           "wednesday":[
             {
               "openingTime":"no-example-provided",
               "closingTime":"no-example-provided"
             }
           ],
           "thursday":[
             {
               "openingTime":"no-example-provided",
               "closingTime":"no-example-provided"
             }
           ],
           "friday":[
             {
               "openingTime":"no-example-provided",
               "closingTime":"no-example-provided"
             }
           ],
           "saturday":[
             {
               "openingTime":"no-example-provided",
               "closingTime":"no-example-provided"
             }
           ],
           "sunday":[
             {
               "openingTime":"no-example-provided",
               "closingTime":"no-example-provided"
             }
           ]
         },
         "driveUp":{
           "monday":{
             "openingTime":"no-example-provided",
             "closingTime":"no-example-provided"
           },
           "tuesday":{
             "openingTime":"no-example-provided",
             "closingTime":"no-example-provided"
           },
           "wednesday":{
             "openingTime":"no-example-provided",
             "closingTime":"no-example-provided"
           },
           "thursday":{
             "openingTime":"no-example-provided",
             "closingTime":"no-example-provided"
           },
           "friday":{
             "openingTime":"no-example-provided",
             "closingTime":"no-example-provided"
           },
           "saturday":{
             "openingTime":"no-example-provided",
             "closingTime":"no-example-provided"
           },
           "sunday":{
             "openingTime":"no-example-provided",
             "closingTime":"no-example-provided"
           }
         },
         "isAccessible":true,
         "accessibleFeatures":"string",
         "branchType":"no-example-provided",
         "moreInfo":"no-example-provided",
         "phoneNumber":"no-example-provided",
         "isDeleted":true
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_branches
DROP PROCEDURE IF EXISTS obp_get_branches;
GO
-- create procedure obp_get_branches
CREATE PROCEDURE obp_get_branches
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "limit":100,
       "offset":100,
       "fromDate":"no-example-provided",
       "toDate":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "branchId":{
             "value":"DERBY6"
           },
           "bankId":{
             "value":"gh.29.uk"
           },
           "name":"no-example-provided",
           "address":{
             "line1":"no-example-provided",
             "line2":"no-example-provided",
             "line3":"no-example-provided",
             "city":"no-example-provided",
             "county":"no-example-provided",
             "state":"no-example-provided",
             "postCode":"no-example-provided",
             "countryCode":"no-example-provided"
           },
           "location":{
             "latitude":38.8951,
             "longitude":-77.0364,
             "date":"2020-01-27T00:00:00Z",
             "user":{
               "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
               "provider":"no-example-provided",
               "username":"felixsmith"
             }
           },
           "lobbyString":{
             "hours":"string"
           },
           "driveUpString":{
             "hours":"string"
           },
           "meta":{
             "license":{
               "id":"no-example-provided",
               "name":"no-example-provided"
             }
           },
           "branchRouting":{
             "scheme":"BRANCH-CODE",
             "address":"DERBY6"
           },
           "lobby":{
             "monday":[
               {
                 "openingTime":"no-example-provided",
                 "closingTime":"no-example-provided"
               }
             ],
             "tuesday":[
               {
                 "openingTime":"no-example-provided",
                 "closingTime":"no-example-provided"
               }
             ],
             "wednesday":[
               {
                 "openingTime":"no-example-provided",
                 "closingTime":"no-example-provided"
               }
             ],
             "thursday":[
               {
                 "openingTime":"no-example-provided",
                 "closingTime":"no-example-provided"
               }
             ],
             "friday":[
               {
                 "openingTime":"no-example-provided",
                 "closingTime":"no-example-provided"
               }
             ],
             "saturday":[
               {
                 "openingTime":"no-example-provided",
                 "closingTime":"no-example-provided"
               }
             ],
             "sunday":[
               {
                 "openingTime":"no-example-provided",
                 "closingTime":"no-example-provided"
               }
             ]
           },
           "driveUp":{
             "monday":{
               "openingTime":"no-example-provided",
               "closingTime":"no-example-provided"
             },
             "tuesday":{
               "openingTime":"no-example-provided",
               "closingTime":"no-example-provided"
             },
             "wednesday":{
               "openingTime":"no-example-provided",
               "closingTime":"no-example-provided"
             },
             "thursday":{
               "openingTime":"no-example-provided",
               "closingTime":"no-example-provided"
             },
             "friday":{
               "openingTime":"no-example-provided",
               "closingTime":"no-example-provided"
             },
             "saturday":{
               "openingTime":"no-example-provided",
               "closingTime":"no-example-provided"
             },
             "sunday":{
               "openingTime":"no-example-provided",
               "closingTime":"no-example-provided"
             }
           },
           "isAccessible":true,
           "accessibleFeatures":"string",
           "branchType":"no-example-provided",
           "moreInfo":"no-example-provided",
           "phoneNumber":"no-example-provided",
           "isDeleted":true
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_atm
DROP PROCEDURE IF EXISTS obp_get_atm;
GO
-- create procedure obp_get_atm
CREATE PROCEDURE obp_get_atm
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "atmId":{
         "value":"no-example-provided"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "atmId":{
           "value":"no-example-provided"
         },
         "bankId":{
           "value":"gh.29.uk"
         },
         "name":"no-example-provided",
         "address":{
           "line1":"no-example-provided",
           "line2":"no-example-provided",
           "line3":"no-example-provided",
           "city":"no-example-provided",
           "county":"no-example-provided",
           "state":"no-example-provided",
           "postCode":"no-example-provided",
           "countryCode":"no-example-provided"
         },
         "location":{
           "latitude":38.8951,
           "longitude":-77.0364,
           "date":"2020-01-27T00:00:00Z",
           "user":{
             "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
             "provider":"no-example-provided",
             "username":"felixsmith"
           }
         },
         "meta":{
           "license":{
             "id":"no-example-provided",
             "name":"no-example-provided"
           }
         },
         "OpeningTimeOnMonday":"string",
         "ClosingTimeOnMonday":"string",
         "OpeningTimeOnTuesday":"string",
         "ClosingTimeOnTuesday":"string",
         "OpeningTimeOnWednesday":"string",
         "ClosingTimeOnWednesday":"string",
         "OpeningTimeOnThursday":"string",
         "ClosingTimeOnThursday":"string",
         "OpeningTimeOnFriday":"string",
         "ClosingTimeOnFriday":"string",
         "OpeningTimeOnSaturday":"string",
         "ClosingTimeOnSaturday":"string",
         "OpeningTimeOnSunday":"string",
         "ClosingTimeOnSunday":"string",
         "isAccessible":true,
         "locatedAt":"no-example-provided",
         "moreInfo":"no-example-provided",
         "hasDepositCapability":true
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_atms
DROP PROCEDURE IF EXISTS obp_get_atms;
GO
-- create procedure obp_get_atms
CREATE PROCEDURE obp_get_atms
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "limit":100,
       "offset":100,
       "fromDate":"no-example-provided",
       "toDate":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "atmId":{
             "value":"no-example-provided"
           },
           "bankId":{
             "value":"gh.29.uk"
           },
           "name":"no-example-provided",
           "address":{
             "line1":"no-example-provided",
             "line2":"no-example-provided",
             "line3":"no-example-provided",
             "city":"no-example-provided",
             "county":"no-example-provided",
             "state":"no-example-provided",
             "postCode":"no-example-provided",
             "countryCode":"no-example-provided"
           },
           "location":{
             "latitude":38.8951,
             "longitude":-77.0364,
             "date":"2020-01-27T00:00:00Z",
             "user":{
               "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
               "provider":"no-example-provided",
               "username":"felixsmith"
             }
           },
           "meta":{
             "license":{
               "id":"no-example-provided",
               "name":"no-example-provided"
             }
           },
           "OpeningTimeOnMonday":"string",
           "ClosingTimeOnMonday":"string",
           "OpeningTimeOnTuesday":"string",
           "ClosingTimeOnTuesday":"string",
           "OpeningTimeOnWednesday":"string",
           "ClosingTimeOnWednesday":"string",
           "OpeningTimeOnThursday":"string",
           "ClosingTimeOnThursday":"string",
           "OpeningTimeOnFriday":"string",
           "ClosingTimeOnFriday":"string",
           "OpeningTimeOnSaturday":"string",
           "ClosingTimeOnSaturday":"string",
           "OpeningTimeOnSunday":"string",
           "ClosingTimeOnSunday":"string",
           "isAccessible":true,
           "locatedAt":"no-example-provided",
           "moreInfo":"no-example-provided",
           "hasDepositCapability":true
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_current_fx_rate
DROP PROCEDURE IF EXISTS obp_get_current_fx_rate;
GO
-- create procedure obp_get_current_fx_rate
CREATE PROCEDURE obp_get_current_fx_rate
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "bankId":{
         "value":"gh.29.uk"
       },
       "fromCurrencyCode":"no-example-provided",
       "toCurrencyCode":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "bankId":{
           "value":"gh.29.uk"
         },
         "fromCurrencyCode":"no-example-provided",
         "toCurrencyCode":"no-example-provided",
         "conversionValue":100.0,
         "inverseConversionValue":50.0,
         "effectiveDate":"2020-01-27T00:00:00Z"
       }
     }'
	);
GO

 
 


-- drop procedure obp_create_transaction_after_challengev300
DROP PROCEDURE IF EXISTS obp_create_transaction_after_challengev300;
GO
-- create procedure obp_create_transaction_after_challengev300
CREATE PROCEDURE obp_create_transaction_after_challengev300
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "initiator":{
         "userPrimaryKey":{
           "value":123
         },
         "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
         "idGivenByProvider":"string",
         "provider":"no-example-provided",
         "emailAddress":"no-example-provided",
         "name":"felixsmith"
       },
       "fromAccount":{
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "accountType":"AC",
         "balance":"10",
         "currency":"EUR",
         "name":"bankAccount name string",
         "label":"My Account",
         "number":"bankAccount number string",
         "bankId":{
           "value":"gh.29.uk"
         },
         "lastUpdate":"2018-03-09T00:00:00Z",
         "branchId":"DERBY6",
         "accountRoutings":[
           {
             "scheme":"IBAN",
             "address":"DE91 1000 0000 0123 4567 89"
           }
         ],
         "accountRules":[
           {
             "scheme":"AccountRule scheme string",
             "value":"AccountRule value string"
           }
         ],
         "accountHolder":"bankAccount accountHolder string",
         "attributes":[
           {
             "name":"STATUS",
             "type":"STRING",
             "value":"closed"
           }
         ]
       },
       "transReqId":{
         "value":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1"
       },
       "transactionRequestType":{
         "value":"SEPA"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "id":{
           "value":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1"
         },
         "type":"SEPA",
         "from":{
           "bank_id":"gh.29.uk",
           "account_id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "body":{
           "value":{
             "currency":"EUR",
             "amount":"10.12"
           },
           "description":"no-example-provided"
         },
         "transaction_ids":"string",
         "status":"no-example-provided",
         "start_date":"2019-09-07T00:00:00Z",
         "end_date":"2019-09-08T00:00:00Z",
         "challenge":{
           "id":"123chaneid13-6d02-40e3-a129-0b2bf89de9f0",
           "allowed_attempts":123,
           "challenge_type":"string"
         },
         "charge":{
           "summary":"no-example-provided",
           "value":{
             "currency":"EUR",
             "amount":"10.12"
           }
         }
       }
     }'
	);
GO

 
 


-- drop procedure obp_make_paymentv300
DROP PROCEDURE IF EXISTS obp_make_paymentv300;
GO
-- create procedure obp_make_paymentv300
CREATE PROCEDURE obp_make_paymentv300
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "initiator":{
         "userPrimaryKey":{
           "value":123
         },
         "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
         "idGivenByProvider":"string",
         "provider":"no-example-provided",
         "emailAddress":"no-example-provided",
         "name":"felixsmith"
       },
       "fromAccount":{
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "accountType":"AC",
         "balance":"10",
         "currency":"EUR",
         "name":"bankAccount name string",
         "label":"My Account",
         "number":"bankAccount number string",
         "bankId":{
           "value":"gh.29.uk"
         },
         "lastUpdate":"2018-03-09T00:00:00Z",
         "branchId":"DERBY6",
         "accountRoutings":[
           {
             "scheme":"IBAN",
             "address":"DE91 1000 0000 0123 4567 89"
           }
         ],
         "accountRules":[
           {
             "scheme":"AccountRule scheme string",
             "value":"AccountRule value string"
           }
         ],
         "accountHolder":"bankAccount accountHolder string",
         "attributes":[
           {
             "name":"STATUS",
             "type":"STRING",
             "value":"closed"
           }
         ]
       },
       "toAccount":{
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "accountType":"AC",
         "balance":"10",
         "currency":"EUR",
         "name":"bankAccount name string",
         "label":"My Account",
         "number":"bankAccount number string",
         "bankId":{
           "value":"gh.29.uk"
         },
         "lastUpdate":"2018-03-09T00:00:00Z",
         "branchId":"DERBY6",
         "accountRoutings":[
           {
             "scheme":"IBAN",
             "address":"DE91 1000 0000 0123 4567 89"
           }
         ],
         "accountRules":[
           {
             "scheme":"AccountRule scheme string",
             "value":"AccountRule value string"
           }
         ],
         "accountHolder":"bankAccount accountHolder string",
         "attributes":[
           {
             "name":"STATUS",
             "type":"STRING",
             "value":"closed"
           }
         ]
       },
       "toCounterparty":{
         "createdByUserId":"no-example-provided",
         "name":"John Smith Ltd.",
         "description":"no-example-provided",
         "currency":"EUR",
         "thisBankId":"no-example-provided",
         "thisAccountId":"no-example-provided",
         "thisViewId":"no-example-provided",
         "counterpartyId":"9fg8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "otherAccountRoutingScheme":"OBP",
         "otherAccountRoutingAddress":"36f8a9e6-c2b1-407a-8bd0-421b7119307e",
         "otherAccountSecondaryRoutingScheme":"IBAN",
         "otherAccountSecondaryRoutingAddress":"DE89370400440532013000",
         "otherBankRoutingScheme":"OBP",
         "otherBankRoutingAddress":"gh.29.uk",
         "otherBranchRoutingScheme":"OBP",
         "otherBranchRoutingAddress":"12f8a9e6-c2b1-407a-8bd0-421b7119307e",
         "isBeneficiary":true,
         "bespoke":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "transactionRequestCommonBody":{
         "value":{
           "currency":"EUR",
           "amount":"10.12"
         },
         "description":"no-example-provided"
       },
       "transactionRequestType":{
         "value":"SEPA"
       },
       "chargePolicy":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "value":"2fg8a7e4-6d02-40e3-a129-0b2bf89de8ub"
       }
     }'
	);
GO

 
 


-- drop procedure obp_create_transaction_requestv300
DROP PROCEDURE IF EXISTS obp_create_transaction_requestv300;
GO
-- create procedure obp_create_transaction_requestv300
CREATE PROCEDURE obp_create_transaction_requestv300
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "initiator":{
         "userPrimaryKey":{
           "value":123
         },
         "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
         "idGivenByProvider":"string",
         "provider":"no-example-provided",
         "emailAddress":"no-example-provided",
         "name":"felixsmith"
       },
       "viewId":{
         "value":"owner"
       },
       "fromAccount":{
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "accountType":"AC",
         "balance":"10",
         "currency":"EUR",
         "name":"bankAccount name string",
         "label":"My Account",
         "number":"bankAccount number string",
         "bankId":{
           "value":"gh.29.uk"
         },
         "lastUpdate":"2018-03-09T00:00:00Z",
         "branchId":"DERBY6",
         "accountRoutings":[
           {
             "scheme":"IBAN",
             "address":"DE91 1000 0000 0123 4567 89"
           }
         ],
         "accountRules":[
           {
             "scheme":"AccountRule scheme string",
             "value":"AccountRule value string"
           }
         ],
         "accountHolder":"bankAccount accountHolder string",
         "attributes":[
           {
             "name":"STATUS",
             "type":"STRING",
             "value":"closed"
           }
         ]
       },
       "toAccount":{
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "accountType":"AC",
         "balance":"10",
         "currency":"EUR",
         "name":"bankAccount name string",
         "label":"My Account",
         "number":"bankAccount number string",
         "bankId":{
           "value":"gh.29.uk"
         },
         "lastUpdate":"2018-03-09T00:00:00Z",
         "branchId":"DERBY6",
         "accountRoutings":[
           {
             "scheme":"IBAN",
             "address":"DE91 1000 0000 0123 4567 89"
           }
         ],
         "accountRules":[
           {
             "scheme":"AccountRule scheme string",
             "value":"AccountRule value string"
           }
         ],
         "accountHolder":"bankAccount accountHolder string",
         "attributes":[
           {
             "name":"STATUS",
             "type":"STRING",
             "value":"closed"
           }
         ]
       },
       "toCounterparty":{
         "createdByUserId":"no-example-provided",
         "name":"John Smith Ltd.",
         "description":"no-example-provided",
         "currency":"EUR",
         "thisBankId":"no-example-provided",
         "thisAccountId":"no-example-provided",
         "thisViewId":"no-example-provided",
         "counterpartyId":"9fg8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "otherAccountRoutingScheme":"OBP",
         "otherAccountRoutingAddress":"36f8a9e6-c2b1-407a-8bd0-421b7119307e",
         "otherAccountSecondaryRoutingScheme":"IBAN",
         "otherAccountSecondaryRoutingAddress":"DE89370400440532013000",
         "otherBankRoutingScheme":"OBP",
         "otherBankRoutingAddress":"gh.29.uk",
         "otherBranchRoutingScheme":"OBP",
         "otherBranchRoutingAddress":"12f8a9e6-c2b1-407a-8bd0-421b7119307e",
         "isBeneficiary":true,
         "bespoke":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "transactionRequestType":{
         "value":"SEPA"
       },
       "transactionRequestCommonBody":{
         "value":{
           "currency":"EUR",
           "amount":"10.12"
         },
         "description":"no-example-provided"
       },
       "detailsPlain":"string",
       "chargePolicy":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "id":{
           "value":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1"
         },
         "type":"SEPA",
         "from":{
           "bank_id":"gh.29.uk",
           "account_id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "body":{
           "value":{
             "currency":"EUR",
             "amount":"10.12"
           },
           "description":"no-example-provided"
         },
         "transaction_ids":"string",
         "status":"no-example-provided",
         "start_date":"2019-09-07T00:00:00Z",
         "end_date":"2019-09-08T00:00:00Z",
         "challenge":{
           "id":"123chaneid13-6d02-40e3-a129-0b2bf89de9f0",
           "allowed_attempts":123,
           "challenge_type":"string"
         },
         "charge":{
           "summary":"no-example-provided",
           "value":{
             "currency":"EUR",
             "amount":"10.12"
           }
         }
       }
     }'
	);
GO

 
 


-- drop procedure obp_make_payment_v400
DROP PROCEDURE IF EXISTS obp_make_payment_v400;
GO
-- create procedure obp_make_payment_v400
CREATE PROCEDURE obp_make_payment_v400
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "transactionRequest":{
         "id":{
           "value":"8138a7e4-6d02-40e3-a129-0b2bf89de9f1"
         },
         "type":"SEPA",
         "from":{
           "bank_id":"gh.29.uk",
           "account_id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "body":{
           "value":{
             "currency":"EUR",
             "amount":"10.12"
           },
           "description":"no-example-provided"
         },
         "transaction_ids":"string",
         "status":"no-example-provided",
         "start_date":"2019-09-07T00:00:00Z",
         "end_date":"2019-09-08T00:00:00Z",
         "challenge":{
           "id":"123chaneid13-6d02-40e3-a129-0b2bf89de9f0",
           "allowed_attempts":123,
           "challenge_type":"string"
         },
         "charge":{
           "summary":"no-example-provided",
           "value":{
             "currency":"EUR",
             "amount":"10.12"
           }
         }
       },
       "reasons":[
         {
           "code":"no-example-provided",
           "documentNumber":"no-example-provided",
           "amount":"10.12",
           "currency":"EUR",
           "description":"no-example-provided"
         }
       ]
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "value":"2fg8a7e4-6d02-40e3-a129-0b2bf89de8ub"
       }
     }'
	);
GO

 
 


-- drop procedure obp_cancel_payment_v400
DROP PROCEDURE IF EXISTS obp_cancel_payment_v400;
GO
-- create procedure obp_cancel_payment_v400
CREATE PROCEDURE obp_cancel_payment_v400
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "transactionId":{
         "value":"2fg8a7e4-6d02-40e3-a129-0b2bf89de8ub"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "canBeCancelled":true,
         "startSca":true
       }
     }'
	);
GO

 
 


-- drop procedure obp_create_counterparty
DROP PROCEDURE IF EXISTS obp_create_counterparty;
GO
-- create procedure obp_create_counterparty
CREATE PROCEDURE obp_create_counterparty
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "name":"no-example-provided",
       "description":"no-example-provided",
       "currency":"EUR",
       "createdByUserId":"no-example-provided",
       "thisBankId":"no-example-provided",
       "thisAccountId":"no-example-provided",
       "thisViewId":"no-example-provided",
       "otherAccountRoutingScheme":"no-example-provided",
       "otherAccountRoutingAddress":"no-example-provided",
       "otherAccountSecondaryRoutingScheme":"no-example-provided",
       "otherAccountSecondaryRoutingAddress":"no-example-provided",
       "otherBankRoutingScheme":"no-example-provided",
       "otherBankRoutingAddress":"no-example-provided",
       "otherBranchRoutingScheme":"no-example-provided",
       "otherBranchRoutingAddress":"no-example-provided",
       "isBeneficiary":true,
       "bespoke":[
         {
           "key":"CustomerNumber",
           "value":"5987953"
         }
       ]
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "createdByUserId":"no-example-provided",
         "name":"no-example-provided",
         "description":"no-example-provided",
         "currency":"EUR",
         "thisBankId":"no-example-provided",
         "thisAccountId":"no-example-provided",
         "thisViewId":"no-example-provided",
         "counterpartyId":"9fg8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "otherAccountRoutingScheme":"no-example-provided",
         "otherAccountRoutingAddress":"no-example-provided",
         "otherAccountSecondaryRoutingScheme":"no-example-provided",
         "otherAccountSecondaryRoutingAddress":"no-example-provided",
         "otherBankRoutingScheme":"no-example-provided",
         "otherBankRoutingAddress":"no-example-provided",
         "otherBranchRoutingScheme":"no-example-provided",
         "otherBranchRoutingAddress":"no-example-provided",
         "isBeneficiary":true,
         "bespoke":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       }
     }'
	);
GO

 
 


-- drop procedure obp_check_customer_number_available
DROP PROCEDURE IF EXISTS obp_check_customer_number_available;
GO
-- create procedure obp_check_customer_number_available
CREATE PROCEDURE obp_check_customer_number_available
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "customerNumber":"5987953"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":true
     }'
	);
GO

 
 


-- drop procedure obp_create_customer
DROP PROCEDURE IF EXISTS obp_create_customer;
GO
-- create procedure obp_create_customer
CREATE PROCEDURE obp_create_customer
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "legalName":"Eveline Tripman",
       "mobileNumber":"+44 07972 444 876",
       "email":"felixsmith@example.com",
       "faceImage":{
         "date":"2019-09-08T00:00:00Z",
         "url":"http://www.example.com/id-docs/123/image.png"
       },
       "dateOfBirth":"2018-03-09T00:00:00Z",
       "relationshipStatus":"single",
       "dependents":1,
       "dobOfDependents":[
         "2019-09-08T00:00:00Z",
         "2019-01-03T00:00:00Z"
       ],
       "highestEducationAttained":"Master",
       "employmentStatus":"worker",
       "kycStatus":true,
       "lastOkDate":"2019-09-12T00:00:00Z",
       "creditRating":{
         "rating":"",
         "source":""
       },
       "creditLimit":{
         "currency":"EUR",
         "amount":"1000.00"
       },
       "title":"Dr.",
       "branchId":"DERBY6",
       "nameSuffix":"Sr"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "bankId":"gh.29.uk",
         "number":"5987953",
         "legalName":"Eveline Tripman",
         "mobileNumber":"+44 07972 444 876",
         "email":"felixsmith@example.com",
         "faceImage":{
           "date":"2019-09-08T00:00:00Z",
           "url":"http://www.example.com/id-docs/123/image.png"
         },
         "dateOfBirth":"2018-03-09T00:00:00Z",
         "relationshipStatus":"single",
         "dependents":1,
         "dobOfDependents":[
           "2019-09-08T00:00:00Z",
           "2019-01-03T00:00:00Z"
         ],
         "highestEducationAttained":"Master",
         "employmentStatus":"worker",
         "creditRating":{
           "rating":"",
           "source":""
         },
         "creditLimit":{
           "currency":"EUR",
           "amount":"1000.00"
         },
         "kycStatus":true,
         "lastOkDate":"2019-09-08T00:00:00Z",
         "title":"title of customer",
         "branchId":"DERBY6",
         "nameSuffix":"Sr"
       }
     }'
	);
GO

 
 


-- drop procedure obp_update_customer_sca_data
DROP PROCEDURE IF EXISTS obp_update_customer_sca_data;
GO
-- create procedure obp_update_customer_sca_data
CREATE PROCEDURE obp_update_customer_sca_data
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
       "mobileNumber":"+44 07972 444 876",
       "email":"felixsmith@example.com",
       "customerNumber":"5987953"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "bankId":"gh.29.uk",
         "number":"5987953",
         "legalName":"Eveline Tripman",
         "mobileNumber":"+44 07972 444 876",
         "email":"felixsmith@example.com",
         "faceImage":{
           "date":"2019-09-08T00:00:00Z",
           "url":"http://www.example.com/id-docs/123/image.png"
         },
         "dateOfBirth":"2018-03-09T00:00:00Z",
         "relationshipStatus":"single",
         "dependents":1,
         "dobOfDependents":[
           "2019-09-08T00:00:00Z",
           "2019-01-03T00:00:00Z"
         ],
         "highestEducationAttained":"Master",
         "employmentStatus":"worker",
         "creditRating":{
           "rating":"",
           "source":""
         },
         "creditLimit":{
           "currency":"EUR",
           "amount":"1000.00"
         },
         "kycStatus":true,
         "lastOkDate":"2019-09-08T00:00:00Z",
         "title":"title of customer",
         "branchId":"DERBY6",
         "nameSuffix":"Sr"
       }
     }'
	);
GO

 
 


-- drop procedure obp_update_customer_credit_data
DROP PROCEDURE IF EXISTS obp_update_customer_credit_data;
GO
-- create procedure obp_update_customer_credit_data
CREATE PROCEDURE obp_update_customer_credit_data
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
       "creditRating":"no-example-provided",
       "creditSource":"string",
       "creditLimit":{
         "currency":"EUR",
         "amount":"1000.00"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "bankId":"gh.29.uk",
         "number":"5987953",
         "legalName":"Eveline Tripman",
         "mobileNumber":"+44 07972 444 876",
         "email":"felixsmith@example.com",
         "faceImage":{
           "date":"2019-09-08T00:00:00Z",
           "url":"http://www.example.com/id-docs/123/image.png"
         },
         "dateOfBirth":"2018-03-09T00:00:00Z",
         "relationshipStatus":"single",
         "dependents":1,
         "dobOfDependents":[
           "2019-09-08T00:00:00Z",
           "2019-01-03T00:00:00Z"
         ],
         "highestEducationAttained":"Master",
         "employmentStatus":"worker",
         "creditRating":{
           "rating":"",
           "source":""
         },
         "creditLimit":{
           "currency":"EUR",
           "amount":"1000.00"
         },
         "kycStatus":true,
         "lastOkDate":"2019-09-08T00:00:00Z",
         "title":"title of customer",
         "branchId":"DERBY6",
         "nameSuffix":"Sr"
       }
     }'
	);
GO

 
 


-- drop procedure obp_update_customer_general_data
DROP PROCEDURE IF EXISTS obp_update_customer_general_data;
GO
-- create procedure obp_update_customer_general_data
CREATE PROCEDURE obp_update_customer_general_data
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
       "legalName":"Eveline Tripman",
       "faceImage":{
         "date":"2019-09-08T00:00:00Z",
         "url":"http://www.example.com/id-docs/123/image.png"
       },
       "dateOfBirth":"2018-03-09T00:00:00Z",
       "relationshipStatus":"single",
       "dependents":1,
       "highestEducationAttained":"Master",
       "employmentStatus":"worker",
       "title":"Dr.",
       "branchId":"DERBY6",
       "nameSuffix":"Sr"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "bankId":"gh.29.uk",
         "number":"5987953",
         "legalName":"Eveline Tripman",
         "mobileNumber":"+44 07972 444 876",
         "email":"felixsmith@example.com",
         "faceImage":{
           "date":"2019-09-08T00:00:00Z",
           "url":"http://www.example.com/id-docs/123/image.png"
         },
         "dateOfBirth":"2018-03-09T00:00:00Z",
         "relationshipStatus":"single",
         "dependents":1,
         "dobOfDependents":[
           "2019-09-08T00:00:00Z",
           "2019-01-03T00:00:00Z"
         ],
         "highestEducationAttained":"Master",
         "employmentStatus":"worker",
         "creditRating":{
           "rating":"",
           "source":""
         },
         "creditLimit":{
           "currency":"EUR",
           "amount":"1000.00"
         },
         "kycStatus":true,
         "lastOkDate":"2019-09-08T00:00:00Z",
         "title":"title of customer",
         "branchId":"DERBY6",
         "nameSuffix":"Sr"
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_customers_by_user_id
DROP PROCEDURE IF EXISTS obp_get_customers_by_user_id;
GO
-- create procedure obp_get_customers_by_user_id
CREATE PROCEDURE obp_get_customers_by_user_id
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
           "bankId":"gh.29.uk",
           "number":"5987953",
           "legalName":"Eveline Tripman",
           "mobileNumber":"+44 07972 444 876",
           "email":"felixsmith@example.com",
           "faceImage":{
             "date":"2019-09-08T00:00:00Z",
             "url":"http://www.example.com/id-docs/123/image.png"
           },
           "dateOfBirth":"2018-03-09T00:00:00Z",
           "relationshipStatus":"single",
           "dependents":1,
           "dobOfDependents":[
             "2019-09-08T00:00:00Z",
             "2019-01-03T00:00:00Z"
           ],
           "highestEducationAttained":"Master",
           "employmentStatus":"worker",
           "creditRating":{
             "rating":"",
             "source":""
           },
           "creditLimit":{
             "currency":"EUR",
             "amount":"1000.00"
           },
           "kycStatus":true,
           "lastOkDate":"2019-09-08T00:00:00Z",
           "title":"title of customer",
           "branchId":"DERBY6",
           "nameSuffix":"Sr"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_customer_by_customer_id
DROP PROCEDURE IF EXISTS obp_get_customer_by_customer_id;
GO
-- create procedure obp_get_customer_by_customer_id
CREATE PROCEDURE obp_get_customer_by_customer_id
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "bankId":"gh.29.uk",
         "number":"5987953",
         "legalName":"Eveline Tripman",
         "mobileNumber":"+44 07972 444 876",
         "email":"felixsmith@example.com",
         "faceImage":{
           "date":"2019-09-08T00:00:00Z",
           "url":"http://www.example.com/id-docs/123/image.png"
         },
         "dateOfBirth":"2018-03-09T00:00:00Z",
         "relationshipStatus":"single",
         "dependents":1,
         "dobOfDependents":[
           "2019-09-08T00:00:00Z",
           "2019-01-03T00:00:00Z"
         ],
         "highestEducationAttained":"Master",
         "employmentStatus":"worker",
         "creditRating":{
           "rating":"",
           "source":""
         },
         "creditLimit":{
           "currency":"EUR",
           "amount":"1000.00"
         },
         "kycStatus":true,
         "lastOkDate":"2019-09-08T00:00:00Z",
         "title":"title of customer",
         "branchId":"DERBY6",
         "nameSuffix":"Sr"
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_customer_by_customer_number
DROP PROCEDURE IF EXISTS obp_get_customer_by_customer_number;
GO
-- create procedure obp_get_customer_by_customer_number
CREATE PROCEDURE obp_get_customer_by_customer_number
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "customerNumber":"5987953",
       "bankId":{
         "value":"gh.29.uk"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "bankId":"gh.29.uk",
         "number":"5987953",
         "legalName":"Eveline Tripman",
         "mobileNumber":"+44 07972 444 876",
         "email":"felixsmith@example.com",
         "faceImage":{
           "date":"2019-09-08T00:00:00Z",
           "url":"http://www.example.com/id-docs/123/image.png"
         },
         "dateOfBirth":"2018-03-09T00:00:00Z",
         "relationshipStatus":"single",
         "dependents":1,
         "dobOfDependents":[
           "2019-09-08T00:00:00Z",
           "2019-01-03T00:00:00Z"
         ],
         "highestEducationAttained":"Master",
         "employmentStatus":"worker",
         "creditRating":{
           "rating":"",
           "source":""
         },
         "creditLimit":{
           "currency":"EUR",
           "amount":"1000.00"
         },
         "kycStatus":true,
         "lastOkDate":"2019-09-08T00:00:00Z",
         "title":"title of customer",
         "branchId":"DERBY6",
         "nameSuffix":"Sr"
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_customer_address
DROP PROCEDURE IF EXISTS obp_get_customer_address;
GO
-- create procedure obp_get_customer_address
CREATE PROCEDURE obp_get_customer_address
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
           "customerAddressId":"no-example-provided",
           "line1":"no-example-provided",
           "line2":"no-example-provided",
           "line3":"no-example-provided",
           "city":"no-example-provided",
           "county":"no-example-provided",
           "state":"no-example-provided",
           "postcode":"no-example-provided",
           "countryCode":"no-example-provided",
           "status":"no-example-provided",
           "tags":"no-example-provided",
           "insertDate":"2020-01-27T00:00:00Z"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_create_customer_address
DROP PROCEDURE IF EXISTS obp_create_customer_address;
GO
-- create procedure obp_create_customer_address
CREATE PROCEDURE obp_create_customer_address
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
       "line1":"no-example-provided",
       "line2":"no-example-provided",
       "line3":"no-example-provided",
       "city":"no-example-provided",
       "county":"no-example-provided",
       "state":"no-example-provided",
       "postcode":"no-example-provided",
       "countryCode":"no-example-provided",
       "tags":"no-example-provided",
       "status":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "customerAddressId":"no-example-provided",
         "line1":"no-example-provided",
         "line2":"no-example-provided",
         "line3":"no-example-provided",
         "city":"no-example-provided",
         "county":"no-example-provided",
         "state":"no-example-provided",
         "postcode":"no-example-provided",
         "countryCode":"no-example-provided",
         "status":"no-example-provided",
         "tags":"no-example-provided",
         "insertDate":"2020-01-27T00:00:00Z"
       }
     }'
	);
GO

 
 


-- drop procedure obp_update_customer_address
DROP PROCEDURE IF EXISTS obp_update_customer_address;
GO
-- create procedure obp_update_customer_address
CREATE PROCEDURE obp_update_customer_address
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "customerAddressId":"no-example-provided",
       "line1":"no-example-provided",
       "line2":"no-example-provided",
       "line3":"no-example-provided",
       "city":"no-example-provided",
       "county":"no-example-provided",
       "state":"no-example-provided",
       "postcode":"no-example-provided",
       "countryCode":"no-example-provided",
       "tags":"no-example-provided",
       "status":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "customerAddressId":"no-example-provided",
         "line1":"no-example-provided",
         "line2":"no-example-provided",
         "line3":"no-example-provided",
         "city":"no-example-provided",
         "county":"no-example-provided",
         "state":"no-example-provided",
         "postcode":"no-example-provided",
         "countryCode":"no-example-provided",
         "status":"no-example-provided",
         "tags":"no-example-provided",
         "insertDate":"2020-01-27T00:00:00Z"
       }
     }'
	);
GO

 
 


-- drop procedure obp_delete_customer_address
DROP PROCEDURE IF EXISTS obp_delete_customer_address;
GO
-- create procedure obp_delete_customer_address
CREATE PROCEDURE obp_delete_customer_address
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "customerAddressId":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":true
     }'
	);
GO

 
 


-- drop procedure obp_create_tax_residence
DROP PROCEDURE IF EXISTS obp_create_tax_residence;
GO
-- create procedure obp_create_tax_residence
CREATE PROCEDURE obp_create_tax_residence
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
       "domain":"no-example-provided",
       "taxNumber":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "taxResidenceId":"no-example-provided",
         "domain":"no-example-provided",
         "taxNumber":"no-example-provided"
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_tax_residence
DROP PROCEDURE IF EXISTS obp_get_tax_residence;
GO
-- create procedure obp_get_tax_residence
CREATE PROCEDURE obp_get_tax_residence
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
           "taxResidenceId":"no-example-provided",
           "domain":"no-example-provided",
           "taxNumber":"no-example-provided"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_delete_tax_residence
DROP PROCEDURE IF EXISTS obp_delete_tax_residence;
GO
-- create procedure obp_delete_tax_residence
CREATE PROCEDURE obp_delete_tax_residence
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "taxResourceId":"string"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":true
     }'
	);
GO

 
 


-- drop procedure obp_get_customers
DROP PROCEDURE IF EXISTS obp_get_customers;
GO
-- create procedure obp_get_customers
CREATE PROCEDURE obp_get_customers
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "limit":100,
       "offset":100,
       "fromDate":"no-example-provided",
       "toDate":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
           "bankId":"gh.29.uk",
           "number":"5987953",
           "legalName":"Eveline Tripman",
           "mobileNumber":"+44 07972 444 876",
           "email":"felixsmith@example.com",
           "faceImage":{
             "date":"2019-09-08T00:00:00Z",
             "url":"http://www.example.com/id-docs/123/image.png"
           },
           "dateOfBirth":"2018-03-09T00:00:00Z",
           "relationshipStatus":"single",
           "dependents":1,
           "dobOfDependents":[
             "2019-09-08T00:00:00Z",
             "2019-01-03T00:00:00Z"
           ],
           "highestEducationAttained":"Master",
           "employmentStatus":"worker",
           "creditRating":{
             "rating":"",
             "source":""
           },
           "creditLimit":{
             "currency":"EUR",
             "amount":"1000.00"
           },
           "kycStatus":true,
           "lastOkDate":"2019-09-08T00:00:00Z",
           "title":"title of customer",
           "branchId":"DERBY6",
           "nameSuffix":"Sr"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_customers_by_customer_phone_number
DROP PROCEDURE IF EXISTS obp_get_customers_by_customer_phone_number;
GO
-- create procedure obp_get_customers_by_customer_phone_number
CREATE PROCEDURE obp_get_customers_by_customer_phone_number
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "phoneNumber":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
           "bankId":"gh.29.uk",
           "number":"5987953",
           "legalName":"Eveline Tripman",
           "mobileNumber":"+44 07972 444 876",
           "email":"felixsmith@example.com",
           "faceImage":{
             "date":"2019-09-08T00:00:00Z",
             "url":"http://www.example.com/id-docs/123/image.png"
           },
           "dateOfBirth":"2018-03-09T00:00:00Z",
           "relationshipStatus":"single",
           "dependents":1,
           "dobOfDependents":[
             "2019-09-08T00:00:00Z",
             "2019-01-03T00:00:00Z"
           ],
           "highestEducationAttained":"Master",
           "employmentStatus":"worker",
           "creditRating":{
             "rating":"",
             "source":""
           },
           "creditLimit":{
             "currency":"EUR",
             "amount":"1000.00"
           },
           "kycStatus":true,
           "lastOkDate":"2019-09-08T00:00:00Z",
           "title":"title of customer",
           "branchId":"DERBY6",
           "nameSuffix":"Sr"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_checkbook_orders
DROP PROCEDURE IF EXISTS obp_get_checkbook_orders;
GO
-- create procedure obp_get_checkbook_orders
CREATE PROCEDURE obp_get_checkbook_orders
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":"gh.29.uk",
       "accountId":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "account":{
           "bank_id":"gh.29.uk",
           "account_id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
           "account_type":"string",
           "account_routings":[
             {
               "scheme":"no-example-provided",
               "address":"no-example-provided"
             }
           ],
           "branch_routings":[
             {
               "scheme":"no-example-provided",
               "address":"no-example-provided"
             }
           ]
         },
         "orders":[
           {
             "order":{
               "order_id":"string",
               "order_date":"string",
               "number_of_checkbooks":"string",
               "distribution_channel":"string",
               "status":"no-example-provided",
               "first_check_number":"string",
               "shipping_code":"string"
             }
           }
         ]
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_status_of_credit_card_order
DROP PROCEDURE IF EXISTS obp_get_status_of_credit_card_order;
GO
-- create procedure obp_get_status_of_credit_card_order
CREATE PROCEDURE obp_get_status_of_credit_card_order
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":"gh.29.uk",
       "accountId":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "card_type":"string",
           "card_description":"string",
           "use_type":"string"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_create_user_auth_context
DROP PROCEDURE IF EXISTS obp_create_user_auth_context;
GO
-- create procedure obp_create_user_auth_context
CREATE PROCEDURE obp_create_user_auth_context
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
       "key":"CustomerNumber",
       "value":"5987953"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "userAuthContextId":"no-example-provided",
         "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
         "key":"CustomerNumber",
         "value":"5987953"
       }
     }'
	);
GO

 
 


-- drop procedure obp_create_user_auth_context_update
DROP PROCEDURE IF EXISTS obp_create_user_auth_context_update;
GO
-- create procedure obp_create_user_auth_context_update
CREATE PROCEDURE obp_create_user_auth_context_update
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
       "key":"CustomerNumber",
       "value":"5987953"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "userAuthContextUpdateId":"no-example-provided",
         "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
         "key":"CustomerNumber",
         "value":"5987953",
         "challenge":"no-example-provided",
         "status":"no-example-provided"
       }
     }'
	);
GO

 
 


-- drop procedure obp_delete_user_auth_contexts
DROP PROCEDURE IF EXISTS obp_delete_user_auth_contexts;
GO
-- create procedure obp_delete_user_auth_contexts
CREATE PROCEDURE obp_delete_user_auth_contexts
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":true
     }'
	);
GO

 
 


-- drop procedure obp_delete_user_auth_context_by_id
DROP PROCEDURE IF EXISTS obp_delete_user_auth_context_by_id;
GO
-- create procedure obp_delete_user_auth_context_by_id
CREATE PROCEDURE obp_delete_user_auth_context_by_id
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "userAuthContextId":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":true
     }'
	);
GO

 
 


-- drop procedure obp_get_user_auth_contexts
DROP PROCEDURE IF EXISTS obp_get_user_auth_contexts;
GO
-- create procedure obp_get_user_auth_contexts
CREATE PROCEDURE obp_get_user_auth_contexts
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "userAuthContextId":"no-example-provided",
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "key":"CustomerNumber",
           "value":"5987953"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_create_or_update_product_attribute
DROP PROCEDURE IF EXISTS obp_create_or_update_product_attribute;
GO
-- create procedure obp_create_or_update_product_attribute
CREATE PROCEDURE obp_create_or_update_product_attribute
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "productCode":{
         "value":"no-example-provided"
       },
       "productAttributeId":"no-example-provided",
       "name":"no-example-provided",
       "productAttributeType":"STRING",
       "value":"5987953"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "bankId":{
           "value":"gh.29.uk"
         },
         "productCode":{
           "value":"no-example-provided"
         },
         "productAttributeId":"no-example-provided",
         "name":"no-example-provided",
         "attributeType":"STRING",
         "value":"5987953"
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_product_attribute_by_id
DROP PROCEDURE IF EXISTS obp_get_product_attribute_by_id;
GO
-- create procedure obp_get_product_attribute_by_id
CREATE PROCEDURE obp_get_product_attribute_by_id
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "productAttributeId":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "bankId":{
           "value":"gh.29.uk"
         },
         "productCode":{
           "value":"no-example-provided"
         },
         "productAttributeId":"no-example-provided",
         "name":"no-example-provided",
         "attributeType":"STRING",
         "value":"5987953"
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_product_attributes_by_bank_and_code
DROP PROCEDURE IF EXISTS obp_get_product_attributes_by_bank_and_code;
GO
-- create procedure obp_get_product_attributes_by_bank_and_code
CREATE PROCEDURE obp_get_product_attributes_by_bank_and_code
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bank":{
         "value":"no-example-provided"
       },
       "productCode":{
         "value":"no-example-provided"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "bankId":{
             "value":"gh.29.uk"
           },
           "productCode":{
             "value":"no-example-provided"
           },
           "productAttributeId":"no-example-provided",
           "name":"no-example-provided",
           "attributeType":"STRING",
           "value":"5987953"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_delete_product_attribute
DROP PROCEDURE IF EXISTS obp_delete_product_attribute;
GO
-- create procedure obp_delete_product_attribute
CREATE PROCEDURE obp_delete_product_attribute
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "productAttributeId":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":true
     }'
	);
GO

 
 


-- drop procedure obp_get_account_attribute_by_id
DROP PROCEDURE IF EXISTS obp_get_account_attribute_by_id;
GO
-- create procedure obp_get_account_attribute_by_id
CREATE PROCEDURE obp_get_account_attribute_by_id
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "accountAttributeId":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "bankId":{
           "value":"gh.29.uk"
         },
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "productCode":{
           "value":"no-example-provided"
         },
         "accountAttributeId":"no-example-provided",
         "name":"no-example-provided",
         "attributeType":"STRING",
         "value":"5987953"
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_transaction_attribute_by_id
DROP PROCEDURE IF EXISTS obp_get_transaction_attribute_by_id;
GO
-- create procedure obp_get_transaction_attribute_by_id
CREATE PROCEDURE obp_get_transaction_attribute_by_id
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "transactionAttributeId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "bankId":{
           "value":"gh.29.uk"
         },
         "transactionId":{
           "value":"2fg8a7e4-6d02-40e3-a129-0b2bf89de8ub"
         },
         "transactionAttributeId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "attributeType":"STRING",
         "name":"HOUSE_RENT",
         "value":"123456789"
       }
     }'
	);
GO

 
 


-- drop procedure obp_create_or_update_account_attribute
DROP PROCEDURE IF EXISTS obp_create_or_update_account_attribute;
GO
-- create procedure obp_create_or_update_account_attribute
CREATE PROCEDURE obp_create_or_update_account_attribute
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "accountId":{
         "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
       },
       "productCode":{
         "value":"no-example-provided"
       },
       "productAttributeId":"no-example-provided",
       "name":"no-example-provided",
       "accountAttributeType":"STRING",
       "value":"5987953"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "bankId":{
           "value":"gh.29.uk"
         },
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "productCode":{
           "value":"no-example-provided"
         },
         "accountAttributeId":"no-example-provided",
         "name":"no-example-provided",
         "attributeType":"STRING",
         "value":"5987953"
       }
     }'
	);
GO

 
 


-- drop procedure obp_create_or_update_customer_attribute
DROP PROCEDURE IF EXISTS obp_create_or_update_customer_attribute;
GO
-- create procedure obp_create_or_update_customer_attribute
CREATE PROCEDURE obp_create_or_update_customer_attribute
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "customerId":{
         "value":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
       },
       "customerAttributeId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
       "name":"no-example-provided",
       "attributeType":"STRING",
       "value":"5987953"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "bankId":{
           "value":"gh.29.uk"
         },
         "customerId":{
           "value":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
         },
         "customerAttributeId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "attributeType":"STRING",
         "name":"SPECIAL_TAX_NUMBER",
         "value":"123456789"
       }
     }'
	);
GO

 
 


-- drop procedure obp_create_or_update_transaction_attribute
DROP PROCEDURE IF EXISTS obp_create_or_update_transaction_attribute;
GO
-- create procedure obp_create_or_update_transaction_attribute
CREATE PROCEDURE obp_create_or_update_transaction_attribute
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "transactionId":{
         "value":"2fg8a7e4-6d02-40e3-a129-0b2bf89de8ub"
       },
       "transactionAttributeId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
       "name":"no-example-provided",
       "attributeType":"STRING",
       "value":"5987953"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "bankId":{
           "value":"gh.29.uk"
         },
         "transactionId":{
           "value":"2fg8a7e4-6d02-40e3-a129-0b2bf89de8ub"
         },
         "transactionAttributeId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "attributeType":"STRING",
         "name":"HOUSE_RENT",
         "value":"123456789"
       }
     }'
	);
GO

 
 


-- drop procedure obp_create_account_attributes
DROP PROCEDURE IF EXISTS obp_create_account_attributes;
GO
-- create procedure obp_create_account_attributes
CREATE PROCEDURE obp_create_account_attributes
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "accountId":{
         "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
       },
       "productCode":{
         "value":"no-example-provided"
       },
       "accountAttributes":[
         {
           "bankId":{
             "value":"gh.29.uk"
           },
           "productCode":{
             "value":"no-example-provided"
           },
           "productAttributeId":"no-example-provided",
           "name":"no-example-provided",
           "attributeType":"STRING",
           "value":"5987953"
         }
       ]
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "bankId":{
             "value":"gh.29.uk"
           },
           "accountId":{
             "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
           },
           "productCode":{
             "value":"no-example-provided"
           },
           "accountAttributeId":"no-example-provided",
           "name":"no-example-provided",
           "attributeType":"STRING",
           "value":"5987953"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_account_attributes_by_account
DROP PROCEDURE IF EXISTS obp_get_account_attributes_by_account;
GO
-- create procedure obp_get_account_attributes_by_account
CREATE PROCEDURE obp_get_account_attributes_by_account
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "accountId":{
         "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "bankId":{
             "value":"gh.29.uk"
           },
           "accountId":{
             "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
           },
           "productCode":{
             "value":"no-example-provided"
           },
           "accountAttributeId":"no-example-provided",
           "name":"no-example-provided",
           "attributeType":"STRING",
           "value":"5987953"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_customer_attributes
DROP PROCEDURE IF EXISTS obp_get_customer_attributes;
GO
-- create procedure obp_get_customer_attributes
CREATE PROCEDURE obp_get_customer_attributes
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "customerId":{
         "value":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "bankId":{
             "value":"gh.29.uk"
           },
           "customerId":{
             "value":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
           },
           "customerAttributeId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
           "attributeType":"STRING",
           "name":"SPECIAL_TAX_NUMBER",
           "value":"123456789"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_customer_ids_by_attribute_name_values
DROP PROCEDURE IF EXISTS obp_get_customer_ids_by_attribute_name_values;
GO
-- create procedure obp_get_customer_ids_by_attribute_name_values
CREATE PROCEDURE obp_get_customer_ids_by_attribute_name_values
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "nameValues":{
         "some_name":[
           "name1",
           "name2"
         ]
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         "no-example-provided"
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_customer_attributes_for_customers
DROP PROCEDURE IF EXISTS obp_get_customer_attributes_for_customers;
GO
-- create procedure obp_get_customer_attributes_for_customers
CREATE PROCEDURE obp_get_customer_attributes_for_customers
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "customers":[
         {
           "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
           "bankId":"gh.29.uk",
           "number":"5987953",
           "legalName":"Eveline Tripman",
           "mobileNumber":"+44 07972 444 876",
           "email":"felixsmith@example.com",
           "faceImage":{
             "date":"2019-09-08T00:00:00Z",
             "url":"http://www.example.com/id-docs/123/image.png"
           },
           "dateOfBirth":"2018-03-09T00:00:00Z",
           "relationshipStatus":"single",
           "dependents":1,
           "dobOfDependents":[
             "2019-09-08T00:00:00Z",
             "2019-01-03T00:00:00Z"
           ],
           "highestEducationAttained":"Master",
           "employmentStatus":"worker",
           "creditRating":{
             "rating":"",
             "source":""
           },
           "creditLimit":{
             "currency":"EUR",
             "amount":"1000.00"
           },
           "kycStatus":true,
           "lastOkDate":"2019-09-08T00:00:00Z",
           "title":"title of customer",
           "branchId":"DERBY6",
           "nameSuffix":"Sr"
         }
       ]
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "customer":{
             "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
             "bankId":"gh.29.uk",
             "number":"546387432",
             "legalName":"Eveline Tripman",
             "mobileNumber":"+44 07972 444 876",
             "email":"felixsmith@example.com",
             "faceImage":{
               "date":"2017-09-19T00:00:00Z",
               "url":"http://www.example.com/id-docs/123/image.png"
             },
             "dateOfBirth":"2017-09-19T00:00:00Z",
             "relationshipStatus":"single",
             "dependents":1,
             "dobOfDependents":[
               "2017-09-19T00:00:00Z"
             ],
             "highestEducationAttained":"Master",
             "employmentStatus":"worker",
             "creditRating":{
               "rating":"",
               "source":""
             },
             "creditLimit":{
               "currency":"EUR",
               "amount":"50.89"
             },
             "kycStatus":true,
             "lastOkDate":"2017-09-19T00:00:00Z",
             "title":"Dr.",
             "branchId":"DERBY6",
             "nameSuffix":"Sr"
           },
           "attributes":[
             {
               "bankId":{
                 "value":"gh.29.uk"
               },
               "customerId":{
                 "value":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
               },
               "customerAttributeId":"some_customer_attributeId_value",
               "attributeType":"INTEGER",
               "name":"customer_attribute_field",
               "value":"example_value"
             }
           ]
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_transaction_ids_by_attribute_name_values
DROP PROCEDURE IF EXISTS obp_get_transaction_ids_by_attribute_name_values;
GO
-- create procedure obp_get_transaction_ids_by_attribute_name_values
CREATE PROCEDURE obp_get_transaction_ids_by_attribute_name_values
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "nameValues":{
         "some_name":[
           "name1",
           "name2"
         ]
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         "no-example-provided"
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_transaction_attributes
DROP PROCEDURE IF EXISTS obp_get_transaction_attributes;
GO
-- create procedure obp_get_transaction_attributes
CREATE PROCEDURE obp_get_transaction_attributes
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "transactionId":{
         "value":"2fg8a7e4-6d02-40e3-a129-0b2bf89de8ub"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "bankId":{
             "value":"gh.29.uk"
           },
           "transactionId":{
             "value":"2fg8a7e4-6d02-40e3-a129-0b2bf89de8ub"
           },
           "transactionAttributeId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
           "attributeType":"STRING",
           "name":"HOUSE_RENT",
           "value":"123456789"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_customer_attribute_by_id
DROP PROCEDURE IF EXISTS obp_get_customer_attribute_by_id;
GO
-- create procedure obp_get_customer_attribute_by_id
CREATE PROCEDURE obp_get_customer_attribute_by_id
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "customerAttributeId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "bankId":{
           "value":"gh.29.uk"
         },
         "customerId":{
           "value":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
         },
         "customerAttributeId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "attributeType":"STRING",
         "name":"SPECIAL_TAX_NUMBER",
         "value":"123456789"
       }
     }'
	);
GO

 
 


-- drop procedure obp_create_or_update_card_attribute
DROP PROCEDURE IF EXISTS obp_create_or_update_card_attribute;
GO
-- create procedure obp_create_or_update_card_attribute
CREATE PROCEDURE obp_create_or_update_card_attribute
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "cardId":"36f8a9e6-c2b1-407a-8bd0-421b7119307e ",
       "cardAttributeId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
       "name":"no-example-provided",
       "cardAttributeType":"STRING",
       "value":"5987953"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "name":"OVERDRAFT_START_DATE",
         "card_id":"36f8a9e6-c2b1-407a-8bd0-421b7119307e ",
         "attribute_type":"STRING",
         "bank_id":{
           "value":"gh.29.uk"
         },
         "value":"2012-04-23",
         "card_attribute_id":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50"
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_card_attribute_by_id
DROP PROCEDURE IF EXISTS obp_get_card_attribute_by_id;
GO
-- create procedure obp_get_card_attribute_by_id
CREATE PROCEDURE obp_get_card_attribute_by_id
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "cardAttributeId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "name":"OVERDRAFT_START_DATE",
         "card_id":"36f8a9e6-c2b1-407a-8bd0-421b7119307e ",
         "attribute_type":"STRING",
         "bank_id":{
           "value":"gh.29.uk"
         },
         "value":"2012-04-23",
         "card_attribute_id":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50"
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_card_attributes_from_provider
DROP PROCEDURE IF EXISTS obp_get_card_attributes_from_provider;
GO
-- create procedure obp_get_card_attributes_from_provider
CREATE PROCEDURE obp_get_card_attributes_from_provider
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "cardId":"36f8a9e6-c2b1-407a-8bd0-421b7119307e "
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "name":"OVERDRAFT_START_DATE",
           "card_id":"36f8a9e6-c2b1-407a-8bd0-421b7119307e ",
           "attribute_type":"STRING",
           "bank_id":{
             "value":"gh.29.uk"
           },
           "value":"2012-04-23",
           "card_attribute_id":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_create_account_application
DROP PROCEDURE IF EXISTS obp_create_account_application;
GO
-- create procedure obp_create_account_application
CREATE PROCEDURE obp_create_account_application
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "productCode":{
         "value":"no-example-provided"
       },
       "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
       "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "accountApplicationId":"no-example-provided",
         "productCode":{
           "value":"no-example-provided"
         },
         "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
         "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "dateOfApplication":"2020-01-27T00:00:00Z",
         "status":"no-example-provided"
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_all_account_application
DROP PROCEDURE IF EXISTS obp_get_all_account_application;
GO
-- create procedure obp_get_all_account_application
CREATE PROCEDURE obp_get_all_account_application
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "accountApplicationId":"no-example-provided",
           "productCode":{
             "value":"no-example-provided"
           },
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
           "dateOfApplication":"2020-01-27T00:00:00Z",
           "status":"no-example-provided"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_account_application_by_id
DROP PROCEDURE IF EXISTS obp_get_account_application_by_id;
GO
-- create procedure obp_get_account_application_by_id
CREATE PROCEDURE obp_get_account_application_by_id
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "accountApplicationId":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "accountApplicationId":"no-example-provided",
         "productCode":{
           "value":"no-example-provided"
         },
         "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
         "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "dateOfApplication":"2020-01-27T00:00:00Z",
         "status":"no-example-provided"
       }
     }'
	);
GO

 
 


-- drop procedure obp_update_account_application_status
DROP PROCEDURE IF EXISTS obp_update_account_application_status;
GO
-- create procedure obp_update_account_application_status
CREATE PROCEDURE obp_update_account_application_status
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "accountApplicationId":"no-example-provided",
       "status":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "accountApplicationId":"no-example-provided",
         "productCode":{
           "value":"no-example-provided"
         },
         "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
         "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "dateOfApplication":"2020-01-27T00:00:00Z",
         "status":"no-example-provided"
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_or_create_product_collection
DROP PROCEDURE IF EXISTS obp_get_or_create_product_collection;
GO
-- create procedure obp_get_or_create_product_collection
CREATE PROCEDURE obp_get_or_create_product_collection
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "collectionCode":"no-example-provided",
       "productCodes":[
         "no-example-provided"
       ]
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "collectionCode":"no-example-provided",
           "productCode":"no-example-provided"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_product_collection
DROP PROCEDURE IF EXISTS obp_get_product_collection;
GO
-- create procedure obp_get_product_collection
CREATE PROCEDURE obp_get_product_collection
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "collectionCode":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "collectionCode":"no-example-provided",
           "productCode":"no-example-provided"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_or_create_product_collection_item
DROP PROCEDURE IF EXISTS obp_get_or_create_product_collection_item;
GO
-- create procedure obp_get_or_create_product_collection_item
CREATE PROCEDURE obp_get_or_create_product_collection_item
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "collectionCode":"no-example-provided",
       "memberProductCodes":[
         "no-example-provided"
       ]
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "collectionCode":"no-example-provided",
           "memberProductCode":"no-example-provided"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_product_collection_item
DROP PROCEDURE IF EXISTS obp_get_product_collection_item;
GO
-- create procedure obp_get_product_collection_item
CREATE PROCEDURE obp_get_product_collection_item
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "collectionCode":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "collectionCode":"no-example-provided",
           "memberProductCode":"no-example-provided"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_product_collection_items_tree
DROP PROCEDURE IF EXISTS obp_get_product_collection_items_tree;
GO
-- create procedure obp_get_product_collection_items_tree
CREATE PROCEDURE obp_get_product_collection_items_tree
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "collectionCode":"no-example-provided",
       "bankId":"gh.29.uk"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "productCollectionItem":{
             "collectionCode":"no-example-provided",
             "memberProductCode":"no-example-provided"
           },
           "product":{
             "bankId":{
               "value":"gh.29.uk"
             },
             "code":{
               "value":"no-example-provided"
             },
             "parentProductCode":{
               "value":"no-example-provided"
             },
             "name":"no-example-provided",
             "category":"no-example-provided",
             "family":"no-example-provided",
             "superFamily":"no-example-provided",
             "moreInfoUrl":"no-example-provided",
             "details":"no-example-provided",
             "description":"no-example-provided",
             "meta":{
               "license":{
                 "id":"no-example-provided",
                 "name":"no-example-provided"
               }
             }
           },
           "attributes":[
             {
               "bankId":{
                 "value":"gh.29.uk"
               },
               "productCode":{
                 "value":"no-example-provided"
               },
               "productAttributeId":"no-example-provided",
               "name":"no-example-provided",
               "attributeType":"STRING",
               "value":"5987953"
             }
           ]
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_create_meeting
DROP PROCEDURE IF EXISTS obp_create_meeting;
GO
-- create procedure obp_create_meeting
CREATE PROCEDURE obp_create_meeting
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "staffUser":{
         "userPrimaryKey":{
           "value":123
         },
         "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
         "idGivenByProvider":"string",
         "provider":"no-example-provided",
         "emailAddress":"no-example-provided",
         "name":"felixsmith"
       },
       "customerUser":{
         "userPrimaryKey":{
           "value":123
         },
         "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
         "idGivenByProvider":"string",
         "provider":"no-example-provided",
         "emailAddress":"no-example-provided",
         "name":"felixsmith"
       },
       "providerId":"no-example-provided",
       "purposeId":"no-example-provided",
       "when":"2020-01-27T00:00:00Z",
       "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
       "customerToken":"no-example-provided",
       "staffToken":"no-example-provided",
       "creator":{
         "name":"no-example-provided",
         "phone":"no-example-provided",
         "email":"felixsmith@example.com"
       },
       "invitees":[
         {
           "contactDetails":{
             "name":"no-example-provided",
             "phone":"no-example-provided",
             "email":"felixsmith@example.com"
           },
           "status":"no-example-provided"
         }
       ]
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "meetingId":"no-example-provided",
         "providerId":"no-example-provided",
         "purposeId":"no-example-provided",
         "bankId":"gh.29.uk",
         "present":{
           "staffUserId":"no-example-provided",
           "customerUserId":"no-example-provided"
         },
         "keys":{
           "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
           "customerToken":"no-example-provided",
           "staffToken":"no-example-provided"
         },
         "when":"2020-01-27T00:00:00Z",
         "creator":{
           "name":"no-example-provided",
           "phone":"no-example-provided",
           "email":"felixsmith@example.com"
         },
         "invitees":[
           {
             "contactDetails":{
               "name":"no-example-provided",
               "phone":"no-example-provided",
               "email":"felixsmith@example.com"
             },
             "status":"no-example-provided"
           }
         ]
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_meetings
DROP PROCEDURE IF EXISTS obp_get_meetings;
GO
-- create procedure obp_get_meetings
CREATE PROCEDURE obp_get_meetings
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "user":{
         "userPrimaryKey":{
           "value":123
         },
         "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
         "idGivenByProvider":"string",
         "provider":"no-example-provided",
         "emailAddress":"no-example-provided",
         "name":"felixsmith"
       }
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "meetingId":"no-example-provided",
           "providerId":"no-example-provided",
           "purposeId":"no-example-provided",
           "bankId":"gh.29.uk",
           "present":{
             "staffUserId":"no-example-provided",
             "customerUserId":"no-example-provided"
           },
           "keys":{
             "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
             "customerToken":"no-example-provided",
             "staffToken":"no-example-provided"
           },
           "when":"2020-01-27T00:00:00Z",
           "creator":{
             "name":"no-example-provided",
             "phone":"no-example-provided",
             "email":"felixsmith@example.com"
           },
           "invitees":[
             {
               "contactDetails":{
                 "name":"no-example-provided",
                 "phone":"no-example-provided",
                 "email":"felixsmith@example.com"
               },
               "status":"no-example-provided"
             }
           ]
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_meeting
DROP PROCEDURE IF EXISTS obp_get_meeting;
GO
-- create procedure obp_get_meeting
CREATE PROCEDURE obp_get_meeting
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "user":{
         "userPrimaryKey":{
           "value":123
         },
         "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
         "idGivenByProvider":"string",
         "provider":"no-example-provided",
         "emailAddress":"no-example-provided",
         "name":"felixsmith"
       },
       "meetingId":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "meetingId":"no-example-provided",
         "providerId":"no-example-provided",
         "purposeId":"no-example-provided",
         "bankId":"gh.29.uk",
         "present":{
           "staffUserId":"no-example-provided",
           "customerUserId":"no-example-provided"
         },
         "keys":{
           "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
           "customerToken":"no-example-provided",
           "staffToken":"no-example-provided"
         },
         "when":"2020-01-27T00:00:00Z",
         "creator":{
           "name":"no-example-provided",
           "phone":"no-example-provided",
           "email":"felixsmith@example.com"
         },
         "invitees":[
           {
             "contactDetails":{
               "name":"no-example-provided",
               "phone":"no-example-provided",
               "email":"felixsmith@example.com"
             },
             "status":"no-example-provided"
           }
         ]
       }
     }'
	);
GO

 
 


-- drop procedure obp_create_or_update_kyc_check
DROP PROCEDURE IF EXISTS obp_create_or_update_kyc_check;
GO
-- create procedure obp_create_or_update_kyc_check
CREATE PROCEDURE obp_create_or_update_kyc_check
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":"gh.29.uk",
       "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
       "id":"no-example-provided",
       "customerNumber":"5987953",
       "date":"2020-01-27T00:00:00Z",
       "how":"no-example-provided",
       "staffUserId":"no-example-provided",
       "mStaffName":"string",
       "mSatisfied":true,
       "comments":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "bankId":"gh.29.uk",
         "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "idKycCheck":"string",
         "customerNumber":"5987953",
         "date":"2020-01-27T00:00:00Z",
         "how":"no-example-provided",
         "staffUserId":"no-example-provided",
         "staffName":"no-example-provided",
         "satisfied":true,
         "comments":"no-example-provided"
       }
     }'
	);
GO

 
 


-- drop procedure obp_create_or_update_kyc_document
DROP PROCEDURE IF EXISTS obp_create_or_update_kyc_document;
GO
-- create procedure obp_create_or_update_kyc_document
CREATE PROCEDURE obp_create_or_update_kyc_document
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":"gh.29.uk",
       "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
       "id":"no-example-provided",
       "customerNumber":"5987953",
       "type":"no-example-provided",
       "number":"no-example-provided",
       "issueDate":"2020-01-27T00:00:00Z",
       "issuePlace":"no-example-provided",
       "expiryDate":"2021-01-27T00:00:00Z"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "bankId":"gh.29.uk",
         "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "idKycDocument":"string",
         "customerNumber":"5987953",
         "type":"no-example-provided",
         "number":"no-example-provided",
         "issueDate":"2020-01-27T00:00:00Z",
         "issuePlace":"no-example-provided",
         "expiryDate":"2021-01-27T00:00:00Z"
       }
     }'
	);
GO

 
 


-- drop procedure obp_create_or_update_kyc_media
DROP PROCEDURE IF EXISTS obp_create_or_update_kyc_media;
GO
-- create procedure obp_create_or_update_kyc_media
CREATE PROCEDURE obp_create_or_update_kyc_media
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":"gh.29.uk",
       "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
       "id":"no-example-provided",
       "customerNumber":"5987953",
       "type":"no-example-provided",
       "url":"http://www.example.com/id-docs/123/image.png",
       "date":"2020-01-27T00:00:00Z",
       "relatesToKycDocumentId":"no-example-provided",
       "relatesToKycCheckId":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "bankId":"gh.29.uk",
         "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "idKycMedia":"string",
         "customerNumber":"5987953",
         "type":"no-example-provided",
         "url":"http://www.example.com/id-docs/123/image.png",
         "date":"2020-01-27T00:00:00Z",
         "relatesToKycDocumentId":"no-example-provided",
         "relatesToKycCheckId":"no-example-provided"
       }
     }'
	);
GO

 
 


-- drop procedure obp_create_or_update_kyc_status
DROP PROCEDURE IF EXISTS obp_create_or_update_kyc_status;
GO
-- create procedure obp_create_or_update_kyc_status
CREATE PROCEDURE obp_create_or_update_kyc_status
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":"gh.29.uk",
       "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
       "customerNumber":"5987953",
       "ok":true,
       "date":"2020-01-27T00:00:00Z"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "bankId":"gh.29.uk",
         "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "customerNumber":"5987953",
         "ok":true,
         "date":"2020-01-27T00:00:00Z"
       }
     }'
	);
GO

 
 


-- drop procedure obp_get_kyc_checks
DROP PROCEDURE IF EXISTS obp_get_kyc_checks;
GO
-- create procedure obp_get_kyc_checks
CREATE PROCEDURE obp_get_kyc_checks
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "bankId":"gh.29.uk",
           "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
           "idKycCheck":"string",
           "customerNumber":"5987953",
           "date":"2020-01-27T00:00:00Z",
           "how":"no-example-provided",
           "staffUserId":"no-example-provided",
           "staffName":"no-example-provided",
           "satisfied":true,
           "comments":"no-example-provided"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_kyc_documents
DROP PROCEDURE IF EXISTS obp_get_kyc_documents;
GO
-- create procedure obp_get_kyc_documents
CREATE PROCEDURE obp_get_kyc_documents
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "bankId":"gh.29.uk",
           "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
           "idKycDocument":"string",
           "customerNumber":"5987953",
           "type":"no-example-provided",
           "number":"no-example-provided",
           "issueDate":"2020-01-27T00:00:00Z",
           "issuePlace":"no-example-provided",
           "expiryDate":"2021-01-27T00:00:00Z"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_kyc_medias
DROP PROCEDURE IF EXISTS obp_get_kyc_medias;
GO
-- create procedure obp_get_kyc_medias
CREATE PROCEDURE obp_get_kyc_medias
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "bankId":"gh.29.uk",
           "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
           "idKycMedia":"string",
           "customerNumber":"5987953",
           "type":"no-example-provided",
           "url":"http://www.example.com/id-docs/123/image.png",
           "date":"2020-01-27T00:00:00Z",
           "relatesToKycDocumentId":"no-example-provided",
           "relatesToKycCheckId":"no-example-provided"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_get_kyc_statuses
DROP PROCEDURE IF EXISTS obp_get_kyc_statuses;
GO
-- create procedure obp_get_kyc_statuses
CREATE PROCEDURE obp_get_kyc_statuses
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":[
         {
           "bankId":"gh.29.uk",
           "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
           "customerNumber":"5987953",
           "ok":true,
           "date":"2020-01-27T00:00:00Z"
         }
       ]
     }'
	);
GO

 
 


-- drop procedure obp_create_message
DROP PROCEDURE IF EXISTS obp_create_message;
GO
-- create procedure obp_create_message
CREATE PROCEDURE obp_create_message
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "user":{
         "userPrimaryKey":{
           "value":123
         },
         "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
         "idGivenByProvider":"string",
         "provider":"no-example-provided",
         "emailAddress":"no-example-provided",
         "name":"felixsmith"
       },
       "bankId":{
         "value":"gh.29.uk"
       },
       "message":"no-example-provided",
       "fromDepartment":"no-example-provided",
       "fromPerson":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "messageId":"string",
         "date":"2020-01-27T00:00:00Z",
         "message":"no-example-provided",
         "fromDepartment":"no-example-provided",
         "fromPerson":"no-example-provided"
       }
     }'
	);
GO

 
 


-- drop procedure obp_make_historical_payment
DROP PROCEDURE IF EXISTS obp_make_historical_payment;
GO
-- create procedure obp_make_historical_payment
CREATE PROCEDURE obp_make_historical_payment
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "fromAccount":{
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "accountType":"AC",
         "balance":"10",
         "currency":"EUR",
         "name":"bankAccount name string",
         "label":"My Account",
         "number":"bankAccount number string",
         "bankId":{
           "value":"gh.29.uk"
         },
         "lastUpdate":"2018-03-09T00:00:00Z",
         "branchId":"DERBY6",
         "accountRoutings":[
           {
             "scheme":"IBAN",
             "address":"DE91 1000 0000 0123 4567 89"
           }
         ],
         "accountRules":[
           {
             "scheme":"AccountRule scheme string",
             "value":"AccountRule value string"
           }
         ],
         "accountHolder":"bankAccount accountHolder string",
         "attributes":[
           {
             "name":"STATUS",
             "type":"STRING",
             "value":"closed"
           }
         ]
       },
       "toAccount":{
         "accountId":{
           "value":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0"
         },
         "accountType":"AC",
         "balance":"10",
         "currency":"EUR",
         "name":"bankAccount name string",
         "label":"My Account",
         "number":"bankAccount number string",
         "bankId":{
           "value":"gh.29.uk"
         },
         "lastUpdate":"2018-03-09T00:00:00Z",
         "branchId":"DERBY6",
         "accountRoutings":[
           {
             "scheme":"IBAN",
             "address":"DE91 1000 0000 0123 4567 89"
           }
         ],
         "accountRules":[
           {
             "scheme":"AccountRule scheme string",
             "value":"AccountRule value string"
           }
         ],
         "accountHolder":"bankAccount accountHolder string",
         "attributes":[
           {
             "name":"STATUS",
             "type":"STRING",
             "value":"closed"
           }
         ]
       },
       "posted":"2020-01-27T00:00:00Z",
       "completed":"2020-01-27T00:00:00Z",
       "amount":"10.12",
       "currency":"EUR",
       "description":"no-example-provided",
       "transactionRequestType":"SEPA",
       "chargePolicy":"no-example-provided"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "value":"2fg8a7e4-6d02-40e3-a129-0b2bf89de8ub"
       }
     }'
	);
GO

 
 


-- drop procedure obp_create_direct_debit
DROP PROCEDURE IF EXISTS obp_create_direct_debit;
GO
-- create procedure obp_create_direct_debit
CREATE PROCEDURE obp_create_direct_debit
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "bankId":"gh.29.uk",
       "accountId":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
       "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
       "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
       "counterpartyId":"9fg8a7e4-6d02-40e3-a129-0b2bf89de8uh",
       "dateSigned":"2020-01-27T00:00:00Z",
       "dateStarts":"2020-01-27T00:00:00Z",
       "dateExpires":"2021-01-27T00:00:00Z"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "directDebitId":"no-example-provided",
         "bankId":"gh.29.uk",
         "accountId":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
         "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
         "counterpartyId":"9fg8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "dateSigned":"2020-01-27T00:00:00Z",
         "dateCancelled":"2020-01-27T00:00:00Z",
         "dateStarts":"2020-01-27T00:00:00Z",
         "dateExpires":"2021-01-27T00:00:00Z",
         "active":true
       }
     }'
	);
GO

 
 


-- drop procedure obp_delete_customer_attribute
DROP PROCEDURE IF EXISTS obp_delete_customer_attribute;
GO
-- create procedure obp_delete_customer_attribute
CREATE PROCEDURE obp_delete_customer_attribute
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "customerAttributeId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":true
     }'
	);
GO

 
 


-- drop procedure obp_dynamic_entity_process
DROP PROCEDURE IF EXISTS obp_dynamic_entity_process;
GO
-- create procedure obp_dynamic_entity_process
CREATE PROCEDURE obp_dynamic_entity_process
   @outbound_json NVARCHAR(MAX),
   @inbound_json NVARCHAR(MAX) OUT
   AS
	  SET nocount on

-- replace the follow example to real logic
/*
this is example of parameter @outbound_json
     N'{
       "outboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "consumerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ],
         "outboundAdapterAuthInfo":{
           "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
           "username":"felixsmith",
           "linkedCustomers":[
             {
               "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
               "customerNumber":"5987953",
               "legalName":"Eveline Tripman"
             }
           ],
           "userAuthContext":[
             {
               "key":"CustomerNumber",
               "value":"5987953"
             }
           ],
           "authViews":[
             {
               "view":{
                 "id":"owner",
                 "name":"Owner",
                 "description":"This view is for the owner for the account."
               },
               "account":{
                 "id":"8ca8a7e4-6d02-40e3-a129-0b2bf89de9f0",
                 "accountRoutings":[
                   {
                     "scheme":"IBAN",
                     "address":"DE91 1000 0000 0123 4567 89"
                   }
                 ],
                 "customerOwners":[
                   {
                     "bankId":"gh.29.uk",
                     "customerId":"7uy8a7e4-6d02-40e3-a129-0b2bf89de8uh",
                     "customerNumber":"5987953",
                     "legalName":"Eveline Tripman",
                     "dateOfBirth":"2018-03-09T00:00:00Z"
                   }
                 ],
                 "userOwners":[
                   {
                     "userId":"9ca9a7e4-6d02-40e3-a129-0b2bf89de9b1",
                     "emailAddress":"felixsmith@example.com",
                     "name":"felixsmith"
                   }
                 ]
               }
             }
           ]
         }
       },
       "operation":"UPDATE",
       "entityName":"FooBar",
       "requestBody":{
         "name":"James Brown",
         "number":1234567890
       },
       "entityId":"foobar-id-value"
     }'
*/

-- return example value
	SELECT @inbound_json = (
		SELECT
     N'{
       "inboundAdapterCallContext":{
         "correlationId":"1flssoftxq0cr1nssr68u0mioj",
         "sessionId":"b4e0352a-9a0f-4bfa-b30b-9003aa467f50",
         "generalContext":[
           {
             "key":"CustomerNumber",
             "value":"5987953"
           }
         ]
       },
       "status":{
         "errorCode":"",
         "backendMessages":[
           {
             "source":"String",
             "status":"String",
             "errorCode":"",
             "text":"String"
           }
         ]
       },
       "data":{
         "name":"James Brown",
         "number":1234567890,
         "fooBarId":"foobar-id-value"
       }
     }'
	);
GO

