// AUTO-GENERATED FILE. DO NOT MODIFY.
// This file is auto-generated by the Ballerina OpenAPI tool.

// Copyright (c) 2024, WSO2 LLC. (http://www.wso2.org).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/http;
import ballerina/os;

boolean isBalBuild = os:getEnv("IS_BAL_BUILD") == "true";
string certPathPostFix = isBalBuild ? "../" : "/home/ballerina/ballerina/";

listener http:Listener ep0 = new (9090,
    secureSocket = {
        key: {
            certFile: certPathPostFix + "resources/public.crt",
            keyFile: certPathPostFix + "resources/private.key"
        }
    }
);

service /sap/opu/odata/sap/API_INBOUND_DELIVERY_SRV on ep0 {

    resource function head .() returns http:Response {
        http:Response res = new;
        res.statusCode = 200;
        res.setHeader("X-CSRF-TOKEN", "SAP-Delivery-Document");
        return res;
    }

    # Reads inbound delivery items.
    #
    # + \$top - Show only the first n items, see [Paging - Top](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=66)
    # + \$skip - Skip the first n items, see [Paging - Skip](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    # + search - Search items by search phrases, see [Searching](https://wiki.scn.sap.com/wiki/display/EmTech/SAP+Annotations+for+OData+Version+2.0#SAPAnnotationsforODataVersion2.0-Query_Option_searchQueryOptionsearch)
    # + \$filter - Filter items by property values, see [Filtering](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=64)
    # + \$inlinecount - Include count of items, see [Inlinecount](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=67)
    # + \$orderby - Order items by property values, see [Sorting](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    # + \$select - Select properties to be returned, see [Select](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=68)
    # + \$expand - Expand related entities, see [Expand](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=63)
    # + return - returns can be any of following types 
    # http:Ok (Retrieved entities)
    # http:Response (Error)
    resource function get A_InbDeliveryItem(int? \$top, int? \$skip, string? search, string? \$filter, "allpages"|"none"? \$inlinecount, A_InbDeliveryItemOrderByOptions? \$orderby, A_InbDeliveryItemSelectOptions? \$select, A_InbDeliveryItemExpandOptions? \$expand) returns CollectionOfA_InbDeliveryItemWrapper|http:Response {
        return {
            d: {
                results: [
                    {
                        "InbDeliveryItem": "12345"
                    }
                ]
            }
        };
    }

    # Creates an additional batch split item for an inbound delivery item.
    #
    # + BatchBySupplier - Value needs to be enclosed in single quotes
    # + ManufactureDate - Time Stamp  
    # (Value needs to be enclosed in single quotes and prefixed with `datetime`, e.g. `datetime'2017-12-31T00:00'`)
    # + ShelfLifeExpirationDate - Time Stamp  
    # (Value needs to be enclosed in single quotes and prefixed with `datetime`, e.g. `datetime'2017-12-31T00:00'`)
    # + ActualDeliveryQuantity - Value needs to be suffixed with `M`
    # + Batch - Value needs to be enclosed in single quotes
    # + DeliveryDocument - Value needs to be enclosed in single quotes
    # + DeliveryDocumentItem - Value needs to be enclosed in single quotes
    # + DeliveryQuantityUnit - Value needs to be enclosed in single quotes
    # + PutawayQuantityInOrderUnit - Value needs to be suffixed with `M`
    # + return - returns can be any of following types 
    # http:Ok (Success)
    # http:Response (Error)
    resource function post CreateBatchSplitItem(string? BatchBySupplier, string? ManufactureDate, string? ShelfLifeExpirationDate, string ActualDeliveryQuantity, string Batch, string DeliveryDocument, string DeliveryDocumentItem, string DeliveryQuantityUnit, string? PutawayQuantityInOrderUnit) returns OkCreatedDeliveryItem_1|http:Response {
        http:Response res = new;
        res.statusCode = 500;
        return res;
    }
}
