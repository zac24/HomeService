//
//  HSUrl.swift
//  HomeService
//
//  Created by Prashant Dwivedi on 4/7/18.
//  Copyright © 2018 Prashant Dwivedi. All rights reserved.
//

import Foundation
import UIKit

let BASE_URL = "http://101.53.130.236:8282/api/"

let REGISTER_USER   = "register"
// Request : {"phone":"8828567966"}

let LOGIN_USER      = "login"
// Request : {"email":"sushant@gmail.com","phone":"9860435653"}

let UPDATE_USER     = "update"

let SAVE_ADDRESS    = "saveaddress"
// Request : {"address":"dbdh","landmark":"dhdbbdsb","latitude":"28.669156500000003","location":"Ghaziabad, Uttar Pradesh, India","longitude":"77.45375779999999","type":"Office","userId":14}

let GET_ADDRESS     = "getaddress"
// Request : {"id":14}

let GET_ARTICLES    = "getarticles"

let GET_BANNER      = "getbanner"

let GET_ENTITIES    = "getentities"

let PROMOTIONS      = "promotions"

let FEEDBACK        = "feedback"

let CATEGORIES      = "categories"
// Request : {"city":"default"}
// Request : {"city":"Mumbai"}

let SUBSCRIPTION    = "subscriptions"
// Request : {"city":"default"}

let PLACEHOLDER     = "placeorder"
// Request : {"address":"Office - Test, Test, IT Park, MBP Mahape, Sector I, MIDC Industrial Area, Sector 1, Kopar Khairane, Navi Mumbai, Maharashtra 400710, India","addressId":24,"creditPoints":0,"customerEmail":"sushant@gmail.com","customerName":"Sushant Borhade","customerPhone":"9860435653","deviceId":"ab9a29d97607c28e","discount":0.0,"orderDate":"24-Mar-2018 12:27:08 pm","orderItems":[{"menuCategory":"Pest Control","menuItemId":22,"menuItemName":"2BHK","orderState":"1","price":90.0,"quantity":1},{"menuCategory":"Pest Control","menuItemId":14,"menuItemName":"1BHK","orderState":"1","price":90.0,"quantity":1}],"orderState":"2","paymentMode":"COD","paymentType":"Cash","source":"B2C","tax":{"country":"India","financialYear":"2018","id":3,"state":"Maharastra","taxCode":"CGST @9.0% SGST @9.0% ","value":18.0},"taxAmount":32.4,"totalAmount":180.0,"totalPayable":212.4,"userId":15}

// Request : {"address":"Office - Test, Test, IT Park, MBP Mahape, Sector I, MIDC Industrial Area, Sector 1, Kopar Khairane, Navi Mumbai, Maharashtra 400710, India","addressId":24,"creditPoints":0,"customerEmail":"sushant@gmail.com","customerName":"Sushant Borhade","customerPhone":"9860435653","deviceId":"ab9a29d97607c28e","discount":0.0,"orderDate":"24-Mar-2018 12:27:08 pm","orderItems":[{"menuCategory":"Pest Control","menuItemId":22,"menuItemName":"2BHK","orderState":"1","price":90.0,"quantity":1},{"menuCategory":"Pest Control","menuItemId":14,"menuItemName":"1BHK","orderState":"1","price":90.0,"quantity":1}],"orderState":"2","paymentMode":"COD","paymentType":"Cash","source":"B2C","tax":{"country":"India","financialYear":"2018","id":3,"state":"Maharastra","taxCode":"CGST @9.0% SGST @9.0% ","value":18.0},"taxAmount":32.4,"totalAmount":180.0,"totalPayable":212.4,"userId":15}

let CHANGE_ORDER_STATUS     = "changeorderstatus"
// Request : {"address":"Office - Test, Test, IT Park, MBP Mahape, Sector I, MIDC Industrial Area, Sector 1, Kopar Khairane, Navi Mumbai, Maharashtra 400710, India","addressId":24,"creditPoints":0,"customerEmail":"sushant@gmail.com","customerName":"Sushant Borhade","customerPhone":"9860435653","deviceId":"ab9a29d97607c28e","discount":0.0,"orderDate":"24-Mar-2018 12:27:08 pm","orderItems":[{"id": 69,"menuCategory":"Pest Control","menuItemId":22,"menuItemName":"2BHK","orderState":"5","price":90.0,"quantity":1},{"id": 70,"menuCategory":"Pest Control","menuItemId":14,"menuItemName":"1BHK","orderState":"6","price":90.0,"quantity":1}],"orderState":"2","paymentMode":"COD","paymentType":"Cash","source":"B2C","tax":{"country":"India","financialYear":"2018","id":3,"state":"Maharastra","taxCode":"CGST @9.0% SGST @9.0% ","value":18.0},"taxAmount":32.4,"totalAmount":180.0,"totalPayable":212.4,"userId":15,"id":54}


// Promotions API is mentioned twice in doc
// getAddress API is mentioned twice in doc
//
