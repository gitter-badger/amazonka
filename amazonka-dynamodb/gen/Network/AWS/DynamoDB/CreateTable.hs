{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.CreateTable
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The /CreateTable/ operation adds a new table to your account. In an AWS
-- account, table names must be unique within each region. That is, you can
-- have two tables with same name if you create the tables in different
-- regions.
--
-- /CreateTable/ is an asynchronous operation. Upon receiving a
-- /CreateTable/ request, DynamoDB immediately returns a response with a
-- /TableStatus/ of 'CREATING'. After the table is created, DynamoDB sets
-- the /TableStatus/ to 'ACTIVE'. You can perform read and write operations
-- only on an 'ACTIVE' table.
--
-- You can optionally define secondary indexes on the new table, as part of
-- the /CreateTable/ operation. If you want to create multiple tables with
-- secondary indexes on them, you must create the tables sequentially. Only
-- one table with secondary indexes can be in the 'CREATING' state at any
-- given time.
--
-- You can use the /DescribeTable/ API to check the table status.
--
-- /See:/ <http://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_CreateTable.html AWS API Reference> for CreateTable.
module Network.AWS.DynamoDB.CreateTable
    (
    -- * Creating a Request
      createTable
    , CreateTable
    -- * Request Lenses
    , ctGlobalSecondaryIndexes
    , ctLocalSecondaryIndexes
    , ctStreamSpecification
    , ctAttributeDefinitions
    , ctTableName
    , ctKeySchema
    , ctProvisionedThroughput

    -- * Destructuring the Response
    , createTableResponse
    , CreateTableResponse
    -- * Response Lenses
    , ctrsTableDescription
    , ctrsStatus
    ) where

import           Network.AWS.DynamoDB.Types
import           Network.AWS.DynamoDB.Types.Product
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | Represents the input of a /CreateTable/ operation.
--
-- /See:/ 'createTable' smart constructor.
data CreateTable = CreateTable'
    { _ctGlobalSecondaryIndexes :: !(Maybe [GlobalSecondaryIndex])
    , _ctLocalSecondaryIndexes  :: !(Maybe [LocalSecondaryIndex])
    , _ctStreamSpecification    :: !(Maybe StreamSpecification)
    , _ctAttributeDefinitions   :: ![AttributeDefinition]
    , _ctTableName              :: !Text
    , _ctKeySchema              :: !(List1 KeySchemaElement)
    , _ctProvisionedThroughput  :: !ProvisionedThroughput
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctGlobalSecondaryIndexes'
--
-- * 'ctLocalSecondaryIndexes'
--
-- * 'ctStreamSpecification'
--
-- * 'ctAttributeDefinitions'
--
-- * 'ctTableName'
--
-- * 'ctKeySchema'
--
-- * 'ctProvisionedThroughput'
createTable
    :: Text -- ^ 'ctTableName'
    -> NonEmpty KeySchemaElement -- ^ 'ctKeySchema'
    -> ProvisionedThroughput -- ^ 'ctProvisionedThroughput'
    -> CreateTable
createTable pTableName_ pKeySchema_ pProvisionedThroughput_ =
    CreateTable'
    { _ctGlobalSecondaryIndexes = Nothing
    , _ctLocalSecondaryIndexes = Nothing
    , _ctStreamSpecification = Nothing
    , _ctAttributeDefinitions = mempty
    , _ctTableName = pTableName_
    , _ctKeySchema = _List1 # pKeySchema_
    , _ctProvisionedThroughput = pProvisionedThroughput_
    }

-- | One or more global secondary indexes (the maximum is five) to be created
-- on the table. Each global secondary index in the array includes the
-- following:
--
-- -   /IndexName/ - The name of the global secondary index. Must be unique
--     only for this table.
--
-- -   /KeySchema/ - Specifies the key schema for the global secondary
--     index.
--
-- -   /Projection/ - Specifies attributes that are copied (projected) from
--     the table into the index. These are in addition to the primary key
--     attributes and index key attributes, which are automatically
--     projected. Each attribute specification is composed of:
--
--     -   /ProjectionType/ - One of the following:
--
--         -   'KEYS_ONLY' - Only the index and primary keys are projected
--             into the index.
--
--         -   'INCLUDE' - Only the specified table attributes are
--             projected into the index. The list of projected attributes
--             are in /NonKeyAttributes/.
--
--         -   'ALL' - All of the table attributes are projected into the
--             index.
--
--     -   /NonKeyAttributes/ - A list of one or more non-key attribute
--         names that are projected into the secondary index. The total
--         count of attributes provided in /NonKeyAttributes/, summed
--         across all of the secondary indexes, must not exceed 20. If you
--         project the same attribute into two different indexes, this
--         counts as two distinct attributes when determining the total.
--
-- -   /ProvisionedThroughput/ - The provisioned throughput settings for
--     the global secondary index, consisting of read and write capacity
--     units.
--
ctGlobalSecondaryIndexes :: Lens' CreateTable [GlobalSecondaryIndex]
ctGlobalSecondaryIndexes = lens _ctGlobalSecondaryIndexes (\ s a -> s{_ctGlobalSecondaryIndexes = a}) . _Default . _Coerce;

-- | One or more local secondary indexes (the maximum is five) to be created
-- on the table. Each index is scoped to a given hash key value. There is a
-- 10 GB size limit per hash key; otherwise, the size of a local secondary
-- index is unconstrained.
--
-- Each local secondary index in the array includes the following:
--
-- -   /IndexName/ - The name of the local secondary index. Must be unique
--     only for this table.
--
-- -   /KeySchema/ - Specifies the key schema for the local secondary
--     index. The key schema must begin with the same hash key attribute as
--     the table.
--
-- -   /Projection/ - Specifies attributes that are copied (projected) from
--     the table into the index. These are in addition to the primary key
--     attributes and index key attributes, which are automatically
--     projected. Each attribute specification is composed of:
--
--     -   /ProjectionType/ - One of the following:
--
--         -   'KEYS_ONLY' - Only the index and primary keys are projected
--             into the index.
--
--         -   'INCLUDE' - Only the specified table attributes are
--             projected into the index. The list of projected attributes
--             are in /NonKeyAttributes/.
--
--         -   'ALL' - All of the table attributes are projected into the
--             index.
--
--     -   /NonKeyAttributes/ - A list of one or more non-key attribute
--         names that are projected into the secondary index. The total
--         count of attributes provided in /NonKeyAttributes/, summed
--         across all of the secondary indexes, must not exceed 20. If you
--         project the same attribute into two different indexes, this
--         counts as two distinct attributes when determining the total.
--
ctLocalSecondaryIndexes :: Lens' CreateTable [LocalSecondaryIndex]
ctLocalSecondaryIndexes = lens _ctLocalSecondaryIndexes (\ s a -> s{_ctLocalSecondaryIndexes = a}) . _Default . _Coerce;

-- | The settings for DynamoDB Streams on the table. These settings consist
-- of:
--
-- -   /StreamEnabled/ - Indicates whether Streams is to be enabled (true)
--     or disabled (false).
--
-- -   /StreamViewType/ - When an item in the table is modified,
--     /StreamViewType/ determines what information is written to the
--     table\'s stream. Valid values for /StreamViewType/ are:
--
--     -   /KEYS_ONLY/ - Only the key attributes of the modified item are
--         written to the stream.
--
--     -   /NEW_IMAGE/ - The entire item, as it appears after it was
--         modified, is written to the stream.
--
--     -   /OLD_IMAGE/ - The entire item, as it appeared before it was
--         modified, is written to the stream.
--
--     -   /NEW_AND_OLD_IMAGES/ - Both the new and the old item images of
--         the item are written to the stream.
--
ctStreamSpecification :: Lens' CreateTable (Maybe StreamSpecification)
ctStreamSpecification = lens _ctStreamSpecification (\ s a -> s{_ctStreamSpecification = a});

-- | An array of attributes that describe the key schema for the table and
-- indexes.
ctAttributeDefinitions :: Lens' CreateTable [AttributeDefinition]
ctAttributeDefinitions = lens _ctAttributeDefinitions (\ s a -> s{_ctAttributeDefinitions = a}) . _Coerce;

-- | The name of the table to create.
ctTableName :: Lens' CreateTable Text
ctTableName = lens _ctTableName (\ s a -> s{_ctTableName = a});

-- | Specifies the attributes that make up the primary key for a table or an
-- index. The attributes in /KeySchema/ must also be defined in the
-- /AttributeDefinitions/ array. For more information, see
-- <http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html Data Model>
-- in the /Amazon DynamoDB Developer Guide/.
--
-- Each /KeySchemaElement/ in the array is composed of:
--
-- -   /AttributeName/ - The name of this key attribute.
--
-- -   /KeyType/ - Determines whether the key attribute is 'HASH' or
--     'RANGE'.
--
-- For a primary key that consists of a hash attribute, you must provide
-- exactly one element with a /KeyType/ of 'HASH'.
--
-- For a primary key that consists of hash and range attributes, you must
-- provide exactly two elements, in this order: The first element must have
-- a /KeyType/ of 'HASH', and the second element must have a /KeyType/ of
-- 'RANGE'.
--
-- For more information, see
-- <http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#WorkingWithTables.primary.key Specifying the Primary Key>
-- in the /Amazon DynamoDB Developer Guide/.
ctKeySchema :: Lens' CreateTable (NonEmpty KeySchemaElement)
ctKeySchema = lens _ctKeySchema (\ s a -> s{_ctKeySchema = a}) . _List1;

-- | Undocumented member.
ctProvisionedThroughput :: Lens' CreateTable ProvisionedThroughput
ctProvisionedThroughput = lens _ctProvisionedThroughput (\ s a -> s{_ctProvisionedThroughput = a});

instance AWSRequest CreateTable where
        type Sv CreateTable = DynamoDB
        type Rs CreateTable = CreateTableResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 CreateTableResponse' <$>
                   (x .?> "TableDescription") <*> (pure (fromEnum s)))

instance ToHeaders CreateTable where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("DynamoDB_20120810.CreateTable" :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.0" :: ByteString)])

instance ToJSON CreateTable where
        toJSON CreateTable'{..}
          = object
              ["GlobalSecondaryIndexes" .=
                 _ctGlobalSecondaryIndexes,
               "LocalSecondaryIndexes" .= _ctLocalSecondaryIndexes,
               "StreamSpecification" .= _ctStreamSpecification,
               "AttributeDefinitions" .= _ctAttributeDefinitions,
               "TableName" .= _ctTableName,
               "KeySchema" .= _ctKeySchema,
               "ProvisionedThroughput" .= _ctProvisionedThroughput]

instance ToPath CreateTable where
        toPath = const "/"

instance ToQuery CreateTable where
        toQuery = const mempty

-- | Represents the output of a /CreateTable/ operation.
--
-- /See:/ 'createTableResponse' smart constructor.
data CreateTableResponse = CreateTableResponse'
    { _ctrsTableDescription :: !(Maybe TableDescription)
    , _ctrsStatus           :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateTableResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctrsTableDescription'
--
-- * 'ctrsStatus'
createTableResponse
    :: Int -- ^ 'ctrsStatus'
    -> CreateTableResponse
createTableResponse pStatus_ =
    CreateTableResponse'
    { _ctrsTableDescription = Nothing
    , _ctrsStatus = pStatus_
    }

-- | Undocumented member.
ctrsTableDescription :: Lens' CreateTableResponse (Maybe TableDescription)
ctrsTableDescription = lens _ctrsTableDescription (\ s a -> s{_ctrsTableDescription = a});

-- | The response status code.
ctrsStatus :: Lens' CreateTableResponse Int
ctrsStatus = lens _ctrsStatus (\ s a -> s{_ctrsStatus = a});
