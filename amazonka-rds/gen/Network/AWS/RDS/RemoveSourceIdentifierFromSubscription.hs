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
-- Module      : Network.AWS.RDS.RemoveSourceIdentifierFromSubscription
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a source identifier from an existing RDS event notification
-- subscription.
--
-- /See:/ <http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_RemoveSourceIdentifierFromSubscription.html AWS API Reference> for RemoveSourceIdentifierFromSubscription.
module Network.AWS.RDS.RemoveSourceIdentifierFromSubscription
    (
    -- * Creating a Request
      removeSourceIdentifierFromSubscription
    , RemoveSourceIdentifierFromSubscription
    -- * Request Lenses
    , rsifsSubscriptionName
    , rsifsSourceIdentifier

    -- * Destructuring the Response
    , removeSourceIdentifierFromSubscriptionResponse
    , RemoveSourceIdentifierFromSubscriptionResponse
    -- * Response Lenses
    , rsifsrsEventSubscription
    , rsifsrsStatus
    ) where

import           Network.AWS.Prelude
import           Network.AWS.RDS.Types
import           Network.AWS.RDS.Types.Product
import           Network.AWS.Request
import           Network.AWS.Response

-- |
--
-- /See:/ 'removeSourceIdentifierFromSubscription' smart constructor.
data RemoveSourceIdentifierFromSubscription = RemoveSourceIdentifierFromSubscription'
    { _rsifsSubscriptionName :: !Text
    , _rsifsSourceIdentifier :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemoveSourceIdentifierFromSubscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsifsSubscriptionName'
--
-- * 'rsifsSourceIdentifier'
removeSourceIdentifierFromSubscription
    :: Text -- ^ 'rsifsSubscriptionName'
    -> Text -- ^ 'rsifsSourceIdentifier'
    -> RemoveSourceIdentifierFromSubscription
removeSourceIdentifierFromSubscription pSubscriptionName_ pSourceIdentifier_ =
    RemoveSourceIdentifierFromSubscription'
    { _rsifsSubscriptionName = pSubscriptionName_
    , _rsifsSourceIdentifier = pSourceIdentifier_
    }

-- | The name of the RDS event notification subscription you want to remove a
-- source identifier from.
rsifsSubscriptionName :: Lens' RemoveSourceIdentifierFromSubscription Text
rsifsSubscriptionName = lens _rsifsSubscriptionName (\ s a -> s{_rsifsSubscriptionName = a});

-- | The source identifier to be removed from the subscription, such as the
-- __DB instance identifier__ for a DB instance or the name of a security
-- group.
rsifsSourceIdentifier :: Lens' RemoveSourceIdentifierFromSubscription Text
rsifsSourceIdentifier = lens _rsifsSourceIdentifier (\ s a -> s{_rsifsSourceIdentifier = a});

instance AWSRequest
         RemoveSourceIdentifierFromSubscription where
        type Sv RemoveSourceIdentifierFromSubscription = RDS
        type Rs RemoveSourceIdentifierFromSubscription =
             RemoveSourceIdentifierFromSubscriptionResponse
        request = postQuery
        response
          = receiveXMLWrapper
              "RemoveSourceIdentifierFromSubscriptionResult"
              (\ s h x ->
                 RemoveSourceIdentifierFromSubscriptionResponse' <$>
                   (x .@? "EventSubscription") <*> (pure (fromEnum s)))

instance ToHeaders
         RemoveSourceIdentifierFromSubscription where
        toHeaders = const mempty

instance ToPath
         RemoveSourceIdentifierFromSubscription where
        toPath = const "/"

instance ToQuery
         RemoveSourceIdentifierFromSubscription where
        toQuery RemoveSourceIdentifierFromSubscription'{..}
          = mconcat
              ["Action" =:
                 ("RemoveSourceIdentifierFromSubscription" ::
                    ByteString),
               "Version" =: ("2014-10-31" :: ByteString),
               "SubscriptionName" =: _rsifsSubscriptionName,
               "SourceIdentifier" =: _rsifsSourceIdentifier]

-- | /See:/ 'removeSourceIdentifierFromSubscriptionResponse' smart constructor.
data RemoveSourceIdentifierFromSubscriptionResponse = RemoveSourceIdentifierFromSubscriptionResponse'
    { _rsifsrsEventSubscription :: !(Maybe EventSubscription)
    , _rsifsrsStatus            :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemoveSourceIdentifierFromSubscriptionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsifsrsEventSubscription'
--
-- * 'rsifsrsStatus'
removeSourceIdentifierFromSubscriptionResponse
    :: Int -- ^ 'rsifsrsStatus'
    -> RemoveSourceIdentifierFromSubscriptionResponse
removeSourceIdentifierFromSubscriptionResponse pStatus_ =
    RemoveSourceIdentifierFromSubscriptionResponse'
    { _rsifsrsEventSubscription = Nothing
    , _rsifsrsStatus = pStatus_
    }

-- | Undocumented member.
rsifsrsEventSubscription :: Lens' RemoveSourceIdentifierFromSubscriptionResponse (Maybe EventSubscription)
rsifsrsEventSubscription = lens _rsifsrsEventSubscription (\ s a -> s{_rsifsrsEventSubscription = a});

-- | The response status code.
rsifsrsStatus :: Lens' RemoveSourceIdentifierFromSubscriptionResponse Int
rsifsrsStatus = lens _rsifsrsStatus (\ s a -> s{_rsifsrsStatus = a});
