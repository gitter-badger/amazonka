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
-- Module      : Network.AWS.StorageGateway.StartGateway
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation starts a gateway that you previously shut down (see
-- ShutdownGateway). After the gateway starts, you can then make other API
-- calls, your applications can read from or write to the gateway\'s
-- storage volumes and you will be able to take snapshot backups.
--
-- When you make a request, you will get a 200 OK success response
-- immediately. However, it might take some time for the gateway to be
-- ready. You should call DescribeGatewayInformation and check the status
-- before making any additional API calls. For more information, see
-- ActivateGateway.
--
-- To specify which gateway to start, use the Amazon Resource Name (ARN) of
-- the gateway in your request.
--
-- /See:/ <http://docs.aws.amazon.com/storagegateway/latest/APIReference/API_StartGateway.html AWS API Reference> for StartGateway.
module Network.AWS.StorageGateway.StartGateway
    (
    -- * Creating a Request
      startGateway
    , StartGateway
    -- * Request Lenses
    , sgGatewayARN

    -- * Destructuring the Response
    , startGatewayResponse
    , StartGatewayResponse
    -- * Response Lenses
    , srsGatewayARN
    , srsStatus
    ) where

import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response
import           Network.AWS.StorageGateway.Types
import           Network.AWS.StorageGateway.Types.Product

-- | A JSON object containing the of the gateway to start.
--
-- /See:/ 'startGateway' smart constructor.
newtype StartGateway = StartGateway'
    { _sgGatewayARN :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StartGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgGatewayARN'
startGateway
    :: Text -- ^ 'sgGatewayARN'
    -> StartGateway
startGateway pGatewayARN_ =
    StartGateway'
    { _sgGatewayARN = pGatewayARN_
    }

-- | Undocumented member.
sgGatewayARN :: Lens' StartGateway Text
sgGatewayARN = lens _sgGatewayARN (\ s a -> s{_sgGatewayARN = a});

instance AWSRequest StartGateway where
        type Sv StartGateway = StorageGateway
        type Rs StartGateway = StartGatewayResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 StartGatewayResponse' <$>
                   (x .?> "GatewayARN") <*> (pure (fromEnum s)))

instance ToHeaders StartGateway where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("StorageGateway_20130630.StartGateway" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON StartGateway where
        toJSON StartGateway'{..}
          = object ["GatewayARN" .= _sgGatewayARN]

instance ToPath StartGateway where
        toPath = const "/"

instance ToQuery StartGateway where
        toQuery = const mempty

-- | A JSON object containing the of the gateway that was restarted.
--
-- /See:/ 'startGatewayResponse' smart constructor.
data StartGatewayResponse = StartGatewayResponse'
    { _srsGatewayARN :: !(Maybe Text)
    , _srsStatus     :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StartGatewayResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsGatewayARN'
--
-- * 'srsStatus'
startGatewayResponse
    :: Int -- ^ 'srsStatus'
    -> StartGatewayResponse
startGatewayResponse pStatus_ =
    StartGatewayResponse'
    { _srsGatewayARN = Nothing
    , _srsStatus = pStatus_
    }

-- | Undocumented member.
srsGatewayARN :: Lens' StartGatewayResponse (Maybe Text)
srsGatewayARN = lens _srsGatewayARN (\ s a -> s{_srsGatewayARN = a});

-- | The response status code.
srsStatus :: Lens' StartGatewayResponse Int
srsStatus = lens _srsStatus (\ s a -> s{_srsStatus = a});
