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
-- Module      : Network.AWS.StorageGateway.DescribeChapCredentials
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation returns an array of Challenge-Handshake Authentication
-- Protocol (CHAP) credentials information for a specified iSCSI target,
-- one for each target-initiator pair.
--
-- /See:/ <http://docs.aws.amazon.com/storagegateway/latest/APIReference/API_DescribeChapCredentials.html AWS API Reference> for DescribeChapCredentials.
module Network.AWS.StorageGateway.DescribeChapCredentials
    (
    -- * Creating a Request
      describeChapCredentials
    , DescribeChapCredentials
    -- * Request Lenses
    , dccTargetARN

    -- * Destructuring the Response
    , describeChapCredentialsResponse
    , DescribeChapCredentialsResponse
    -- * Response Lenses
    , dccrsChapCredentials
    , dccrsStatus
    ) where

import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response
import           Network.AWS.StorageGateway.Types
import           Network.AWS.StorageGateway.Types.Product

-- | A JSON object containing the Amazon Resource Name (ARN) of the iSCSI
-- volume target.
--
-- /See:/ 'describeChapCredentials' smart constructor.
newtype DescribeChapCredentials = DescribeChapCredentials'
    { _dccTargetARN :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DescribeChapCredentials' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dccTargetARN'
describeChapCredentials
    :: Text -- ^ 'dccTargetARN'
    -> DescribeChapCredentials
describeChapCredentials pTargetARN_ =
    DescribeChapCredentials'
    { _dccTargetARN = pTargetARN_
    }

-- | The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
-- DescribeStorediSCSIVolumes operation to return to retrieve the TargetARN
-- for specified VolumeARN.
dccTargetARN :: Lens' DescribeChapCredentials Text
dccTargetARN = lens _dccTargetARN (\ s a -> s{_dccTargetARN = a});

instance AWSRequest DescribeChapCredentials where
        type Sv DescribeChapCredentials = StorageGateway
        type Rs DescribeChapCredentials =
             DescribeChapCredentialsResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 DescribeChapCredentialsResponse' <$>
                   (x .?> "ChapCredentials" .!@ mempty) <*>
                     (pure (fromEnum s)))

instance ToHeaders DescribeChapCredentials where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("StorageGateway_20130630.DescribeChapCredentials" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DescribeChapCredentials where
        toJSON DescribeChapCredentials'{..}
          = object ["TargetARN" .= _dccTargetARN]

instance ToPath DescribeChapCredentials where
        toPath = const "/"

instance ToQuery DescribeChapCredentials where
        toQuery = const mempty

-- | A JSON object containing a .
--
-- /See:/ 'describeChapCredentialsResponse' smart constructor.
data DescribeChapCredentialsResponse = DescribeChapCredentialsResponse'
    { _dccrsChapCredentials :: !(Maybe [ChapInfo])
    , _dccrsStatus          :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DescribeChapCredentialsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dccrsChapCredentials'
--
-- * 'dccrsStatus'
describeChapCredentialsResponse
    :: Int -- ^ 'dccrsStatus'
    -> DescribeChapCredentialsResponse
describeChapCredentialsResponse pStatus_ =
    DescribeChapCredentialsResponse'
    { _dccrsChapCredentials = Nothing
    , _dccrsStatus = pStatus_
    }

-- | An array of ChapInfo objects that represent CHAP credentials. Each
-- object in the array contains CHAP credential information for one
-- target-initiator pair. If no CHAP credentials are set, an empty array is
-- returned. CHAP credential information is provided in a JSON object with
-- the following fields:
--
-- -   __InitiatorName__: The iSCSI initiator that connects to the target.
--
-- -   __SecretToAuthenticateInitiator__: The secret key that the initiator
--     (for example, the Windows client) must provide to participate in
--     mutual CHAP with the target.
--
-- -   __SecretToAuthenticateTarget__: The secret key that the target must
--     provide to participate in mutual CHAP with the initiator (e.g.
--     Windows client).
--
-- -   __TargetARN__: The Amazon Resource Name (ARN) of the storage volume.
--
dccrsChapCredentials :: Lens' DescribeChapCredentialsResponse [ChapInfo]
dccrsChapCredentials = lens _dccrsChapCredentials (\ s a -> s{_dccrsChapCredentials = a}) . _Default . _Coerce;

-- | The response status code.
dccrsStatus :: Lens' DescribeChapCredentialsResponse Int
dccrsStatus = lens _dccrsStatus (\ s a -> s{_dccrsStatus = a});
