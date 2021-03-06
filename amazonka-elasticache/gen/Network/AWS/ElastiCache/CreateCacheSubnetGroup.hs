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
-- Module      : Network.AWS.ElastiCache.CreateCacheSubnetGroup
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The /CreateCacheSubnetGroup/ action creates a new cache subnet group.
--
-- Use this parameter only when you are creating a cluster in an Amazon
-- Virtual Private Cloud (VPC).
--
-- /See:/ <http://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_CreateCacheSubnetGroup.html AWS API Reference> for CreateCacheSubnetGroup.
module Network.AWS.ElastiCache.CreateCacheSubnetGroup
    (
    -- * Creating a Request
      createCacheSubnetGroup
    , CreateCacheSubnetGroup
    -- * Request Lenses
    , ccsgCacheSubnetGroupName
    , ccsgCacheSubnetGroupDescription
    , ccsgSubnetIds

    -- * Destructuring the Response
    , createCacheSubnetGroupResponse
    , CreateCacheSubnetGroupResponse
    -- * Response Lenses
    , crsCacheSubnetGroup
    , crsStatus
    ) where

import           Network.AWS.ElastiCache.Types
import           Network.AWS.ElastiCache.Types.Product
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | Represents the input of a /CreateCacheSubnetGroup/ action.
--
-- /See:/ 'createCacheSubnetGroup' smart constructor.
data CreateCacheSubnetGroup = CreateCacheSubnetGroup'
    { _ccsgCacheSubnetGroupName        :: !Text
    , _ccsgCacheSubnetGroupDescription :: !Text
    , _ccsgSubnetIds                   :: ![Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateCacheSubnetGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccsgCacheSubnetGroupName'
--
-- * 'ccsgCacheSubnetGroupDescription'
--
-- * 'ccsgSubnetIds'
createCacheSubnetGroup
    :: Text -- ^ 'ccsgCacheSubnetGroupName'
    -> Text -- ^ 'ccsgCacheSubnetGroupDescription'
    -> CreateCacheSubnetGroup
createCacheSubnetGroup pCacheSubnetGroupName_ pCacheSubnetGroupDescription_ =
    CreateCacheSubnetGroup'
    { _ccsgCacheSubnetGroupName = pCacheSubnetGroupName_
    , _ccsgCacheSubnetGroupDescription = pCacheSubnetGroupDescription_
    , _ccsgSubnetIds = mempty
    }

-- | A name for the cache subnet group. This value is stored as a lowercase
-- string.
--
-- Constraints: Must contain no more than 255 alphanumeric characters or
-- hyphens.
--
-- Example: 'mysubnetgroup'
ccsgCacheSubnetGroupName :: Lens' CreateCacheSubnetGroup Text
ccsgCacheSubnetGroupName = lens _ccsgCacheSubnetGroupName (\ s a -> s{_ccsgCacheSubnetGroupName = a});

-- | A description for the cache subnet group.
ccsgCacheSubnetGroupDescription :: Lens' CreateCacheSubnetGroup Text
ccsgCacheSubnetGroupDescription = lens _ccsgCacheSubnetGroupDescription (\ s a -> s{_ccsgCacheSubnetGroupDescription = a});

-- | A list of VPC subnet IDs for the cache subnet group.
ccsgSubnetIds :: Lens' CreateCacheSubnetGroup [Text]
ccsgSubnetIds = lens _ccsgSubnetIds (\ s a -> s{_ccsgSubnetIds = a}) . _Coerce;

instance AWSRequest CreateCacheSubnetGroup where
        type Sv CreateCacheSubnetGroup = ElastiCache
        type Rs CreateCacheSubnetGroup =
             CreateCacheSubnetGroupResponse
        request = postQuery
        response
          = receiveXMLWrapper "CreateCacheSubnetGroupResult"
              (\ s h x ->
                 CreateCacheSubnetGroupResponse' <$>
                   (x .@? "CacheSubnetGroup") <*> (pure (fromEnum s)))

instance ToHeaders CreateCacheSubnetGroup where
        toHeaders = const mempty

instance ToPath CreateCacheSubnetGroup where
        toPath = const "/"

instance ToQuery CreateCacheSubnetGroup where
        toQuery CreateCacheSubnetGroup'{..}
          = mconcat
              ["Action" =:
                 ("CreateCacheSubnetGroup" :: ByteString),
               "Version" =: ("2015-02-02" :: ByteString),
               "CacheSubnetGroupName" =: _ccsgCacheSubnetGroupName,
               "CacheSubnetGroupDescription" =:
                 _ccsgCacheSubnetGroupDescription,
               "SubnetIds" =:
                 toQueryList "SubnetIdentifier" _ccsgSubnetIds]

-- | /See:/ 'createCacheSubnetGroupResponse' smart constructor.
data CreateCacheSubnetGroupResponse = CreateCacheSubnetGroupResponse'
    { _crsCacheSubnetGroup :: !(Maybe CacheSubnetGroup)
    , _crsStatus           :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateCacheSubnetGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsCacheSubnetGroup'
--
-- * 'crsStatus'
createCacheSubnetGroupResponse
    :: Int -- ^ 'crsStatus'
    -> CreateCacheSubnetGroupResponse
createCacheSubnetGroupResponse pStatus_ =
    CreateCacheSubnetGroupResponse'
    { _crsCacheSubnetGroup = Nothing
    , _crsStatus = pStatus_
    }

-- | Undocumented member.
crsCacheSubnetGroup :: Lens' CreateCacheSubnetGroupResponse (Maybe CacheSubnetGroup)
crsCacheSubnetGroup = lens _crsCacheSubnetGroup (\ s a -> s{_crsCacheSubnetGroup = a});

-- | The response status code.
crsStatus :: Lens' CreateCacheSubnetGroupResponse Int
crsStatus = lens _crsStatus (\ s a -> s{_crsStatus = a});
