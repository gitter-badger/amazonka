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
-- Module      : Network.AWS.SES.DeleteVerifiedEmailAddress
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified email address from the list of verified addresses.
--
-- The DeleteVerifiedEmailAddress action is deprecated as of the May 15,
-- 2012 release of Domain Verification. The DeleteIdentity action is now
-- preferred.
--
-- This action is throttled at one request per second.
--
-- /See:/ <http://docs.aws.amazon.com/ses/latest/APIReference/API_DeleteVerifiedEmailAddress.html AWS API Reference> for DeleteVerifiedEmailAddress.
module Network.AWS.SES.DeleteVerifiedEmailAddress
    (
    -- * Creating a Request
      deleteVerifiedEmailAddress
    , DeleteVerifiedEmailAddress
    -- * Request Lenses
    , dveaEmailAddress

    -- * Destructuring the Response
    , deleteVerifiedEmailAddressResponse
    , DeleteVerifiedEmailAddressResponse
    ) where

import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response
import           Network.AWS.SES.Types
import           Network.AWS.SES.Types.Product

-- | Represents a request instructing the service to delete an address from
-- the list of verified email addresses.
--
-- /See:/ 'deleteVerifiedEmailAddress' smart constructor.
newtype DeleteVerifiedEmailAddress = DeleteVerifiedEmailAddress'
    { _dveaEmailAddress :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeleteVerifiedEmailAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dveaEmailAddress'
deleteVerifiedEmailAddress
    :: Text -- ^ 'dveaEmailAddress'
    -> DeleteVerifiedEmailAddress
deleteVerifiedEmailAddress pEmailAddress_ =
    DeleteVerifiedEmailAddress'
    { _dveaEmailAddress = pEmailAddress_
    }

-- | An email address to be removed from the list of verified addresses.
dveaEmailAddress :: Lens' DeleteVerifiedEmailAddress Text
dveaEmailAddress = lens _dveaEmailAddress (\ s a -> s{_dveaEmailAddress = a});

instance AWSRequest DeleteVerifiedEmailAddress where
        type Sv DeleteVerifiedEmailAddress = SES
        type Rs DeleteVerifiedEmailAddress =
             DeleteVerifiedEmailAddressResponse
        request = postQuery
        response
          = receiveNull DeleteVerifiedEmailAddressResponse'

instance ToHeaders DeleteVerifiedEmailAddress where
        toHeaders = const mempty

instance ToPath DeleteVerifiedEmailAddress where
        toPath = const "/"

instance ToQuery DeleteVerifiedEmailAddress where
        toQuery DeleteVerifiedEmailAddress'{..}
          = mconcat
              ["Action" =:
                 ("DeleteVerifiedEmailAddress" :: ByteString),
               "Version" =: ("2010-12-01" :: ByteString),
               "EmailAddress" =: _dveaEmailAddress]

-- | /See:/ 'deleteVerifiedEmailAddressResponse' smart constructor.
data DeleteVerifiedEmailAddressResponse =
    DeleteVerifiedEmailAddressResponse'
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeleteVerifiedEmailAddressResponse' with the minimum fields required to make a request.
--
deleteVerifiedEmailAddressResponse
    :: DeleteVerifiedEmailAddressResponse
deleteVerifiedEmailAddressResponse = DeleteVerifiedEmailAddressResponse'
