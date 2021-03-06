{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-orphans        #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.DynamoDB
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Test.AWS.Gen.DynamoDB where

import Data.Proxy
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty
import Network.AWS.DynamoDB
import Test.AWS.DynamoDB.Internal

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ testUpdateItem $
--             updateItem
--
--         , testDeleteItem $
--             deleteItem
--
--         , testPutItem $
--             putItem
--
--         , testDeleteTable $
--             deleteTable
--
--         , testUpdateTable $
--             updateTable
--
--         , testBatchGetItem $
--             batchGetItem
--
--         , testDescribeTable $
--             describeTable
--
--         , testGetItem $
--             getItem
--
--         , testBatchWriteItem $
--             batchWriteItem
--
--         , testScan $
--             scan
--
--         , testListTables $
--             listTables
--
--         , testQuery $
--             query
--
--         , testCreateTable $
--             createTable
--
--           ]

--     , testGroup "response"
--         [ testUpdateItemResponse $
--             updateItemResponse
--
--         , testDeleteItemResponse $
--             deleteItemResponse
--
--         , testPutItemResponse $
--             putItemResponse
--
--         , testDeleteTableResponse $
--             deleteTableResponse
--
--         , testUpdateTableResponse $
--             updateTableResponse
--
--         , testBatchGetItemResponse $
--             batchGetItemResponse
--
--         , testDescribeTableResponse $
--             describeTableResponse
--
--         , testGetItemResponse $
--             getItemResponse
--
--         , testBatchWriteItemResponse $
--             batchWriteItemResponse
--
--         , testScanResponse $
--             scanResponse
--
--         , testListTablesResponse $
--             listTablesResponse
--
--         , testQueryResponse $
--             queryResponse
--
--         , testCreateTableResponse $
--             createTableResponse
--
--           ]
--     ]

-- Requests

testUpdateItem :: UpdateItem -> TestTree
testUpdateItem = req
    "UpdateItem"
    "fixture/UpdateItem"

testDeleteItem :: DeleteItem -> TestTree
testDeleteItem = req
    "DeleteItem"
    "fixture/DeleteItem"

testPutItem :: PutItem -> TestTree
testPutItem = req
    "PutItem"
    "fixture/PutItem"

testDeleteTable :: DeleteTable -> TestTree
testDeleteTable = req
    "DeleteTable"
    "fixture/DeleteTable"

testUpdateTable :: UpdateTable -> TestTree
testUpdateTable = req
    "UpdateTable"
    "fixture/UpdateTable"

testBatchGetItem :: BatchGetItem -> TestTree
testBatchGetItem = req
    "BatchGetItem"
    "fixture/BatchGetItem"

testDescribeTable :: DescribeTable -> TestTree
testDescribeTable = req
    "DescribeTable"
    "fixture/DescribeTable"

testGetItem :: GetItem -> TestTree
testGetItem = req
    "GetItem"
    "fixture/GetItem"

testBatchWriteItem :: BatchWriteItem -> TestTree
testBatchWriteItem = req
    "BatchWriteItem"
    "fixture/BatchWriteItem"

testScan :: Scan -> TestTree
testScan = req
    "Scan"
    "fixture/Scan"

testListTables :: ListTables -> TestTree
testListTables = req
    "ListTables"
    "fixture/ListTables"

testQuery :: Query -> TestTree
testQuery = req
    "Query"
    "fixture/Query"

testCreateTable :: CreateTable -> TestTree
testCreateTable = req
    "CreateTable"
    "fixture/CreateTable"

-- Responses

testUpdateItemResponse :: UpdateItemResponse -> TestTree
testUpdateItemResponse = res
    "UpdateItemResponse"
    "fixture/UpdateItemResponse"
    (Proxy :: Proxy UpdateItem)

testDeleteItemResponse :: DeleteItemResponse -> TestTree
testDeleteItemResponse = res
    "DeleteItemResponse"
    "fixture/DeleteItemResponse"
    (Proxy :: Proxy DeleteItem)

testPutItemResponse :: PutItemResponse -> TestTree
testPutItemResponse = res
    "PutItemResponse"
    "fixture/PutItemResponse"
    (Proxy :: Proxy PutItem)

testDeleteTableResponse :: DeleteTableResponse -> TestTree
testDeleteTableResponse = res
    "DeleteTableResponse"
    "fixture/DeleteTableResponse"
    (Proxy :: Proxy DeleteTable)

testUpdateTableResponse :: UpdateTableResponse -> TestTree
testUpdateTableResponse = res
    "UpdateTableResponse"
    "fixture/UpdateTableResponse"
    (Proxy :: Proxy UpdateTable)

testBatchGetItemResponse :: BatchGetItemResponse -> TestTree
testBatchGetItemResponse = res
    "BatchGetItemResponse"
    "fixture/BatchGetItemResponse"
    (Proxy :: Proxy BatchGetItem)

testDescribeTableResponse :: DescribeTableResponse -> TestTree
testDescribeTableResponse = res
    "DescribeTableResponse"
    "fixture/DescribeTableResponse"
    (Proxy :: Proxy DescribeTable)

testGetItemResponse :: GetItemResponse -> TestTree
testGetItemResponse = res
    "GetItemResponse"
    "fixture/GetItemResponse"
    (Proxy :: Proxy GetItem)

testBatchWriteItemResponse :: BatchWriteItemResponse -> TestTree
testBatchWriteItemResponse = res
    "BatchWriteItemResponse"
    "fixture/BatchWriteItemResponse"
    (Proxy :: Proxy BatchWriteItem)

testScanResponse :: ScanResponse -> TestTree
testScanResponse = res
    "ScanResponse"
    "fixture/ScanResponse"
    (Proxy :: Proxy Scan)

testListTablesResponse :: ListTablesResponse -> TestTree
testListTablesResponse = res
    "ListTablesResponse"
    "fixture/ListTablesResponse"
    (Proxy :: Proxy ListTables)

testQueryResponse :: QueryResponse -> TestTree
testQueryResponse = res
    "QueryResponse"
    "fixture/QueryResponse"
    (Proxy :: Proxy Query)

testCreateTableResponse :: CreateTableResponse -> TestTree
testCreateTableResponse = res
    "CreateTableResponse"
    "fixture/CreateTableResponse"
    (Proxy :: Proxy CreateTable)
