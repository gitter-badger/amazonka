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
-- Module      : Network.AWS.CognitoIdentity.GetCredentialsForIdentity
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns credentials for the the provided identity ID. Any provided
-- logins will be validated against supported login providers. If the token
-- is for cognito-identity.amazonaws.com, it will be passed through to AWS
-- Security Token Service with the appropriate role for the token.
--
-- This is a public API. You do not need any credentials to call this API.
--
-- /See:/ <http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html AWS API Reference> for GetCredentialsForIdentity.
module Network.AWS.CognitoIdentity.GetCredentialsForIdentity
    (
    -- * Creating a Request
      getCredentialsForIdentity
    , GetCredentialsForIdentity
    -- * Request Lenses
    , gcfiLogins
    , gcfiIdentityId

    -- * Destructuring the Response
    , getCredentialsForIdentityResponse
    , GetCredentialsForIdentityResponse
    -- * Response Lenses
    , gcfirsCredentials
    , gcfirsIdentityId
    , gcfirsStatus
    ) where

import           Network.AWS.CognitoIdentity.Types
import           Network.AWS.CognitoIdentity.Types.Product
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | Input to the 'GetCredentialsForIdentity' action.
--
-- /See:/ 'getCredentialsForIdentity' smart constructor.
data GetCredentialsForIdentity = GetCredentialsForIdentity'
    { _gcfiLogins     :: !(Maybe (Map Text Text))
    , _gcfiIdentityId :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetCredentialsForIdentity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcfiLogins'
--
-- * 'gcfiIdentityId'
getCredentialsForIdentity
    :: Text -- ^ 'gcfiIdentityId'
    -> GetCredentialsForIdentity
getCredentialsForIdentity pIdentityId_ =
    GetCredentialsForIdentity'
    { _gcfiLogins = Nothing
    , _gcfiIdentityId = pIdentityId_
    }

-- | A set of optional name-value pairs that map provider names to provider
-- tokens.
gcfiLogins :: Lens' GetCredentialsForIdentity (HashMap Text Text)
gcfiLogins = lens _gcfiLogins (\ s a -> s{_gcfiLogins = a}) . _Default . _Map;

-- | A unique identifier in the format REGION:GUID.
gcfiIdentityId :: Lens' GetCredentialsForIdentity Text
gcfiIdentityId = lens _gcfiIdentityId (\ s a -> s{_gcfiIdentityId = a});

instance AWSRequest GetCredentialsForIdentity where
        type Sv GetCredentialsForIdentity = CognitoIdentity
        type Rs GetCredentialsForIdentity =
             GetCredentialsForIdentityResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 GetCredentialsForIdentityResponse' <$>
                   (x .?> "Credentials") <*> (x .?> "IdentityId") <*>
                     (pure (fromEnum s)))

instance ToHeaders GetCredentialsForIdentity where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AWSCognitoIdentityService.GetCredentialsForIdentity"
                       :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON GetCredentialsForIdentity where
        toJSON GetCredentialsForIdentity'{..}
          = object
              ["Logins" .= _gcfiLogins,
               "IdentityId" .= _gcfiIdentityId]

instance ToPath GetCredentialsForIdentity where
        toPath = const "/"

instance ToQuery GetCredentialsForIdentity where
        toQuery = const mempty

-- | Returned in response to a successful 'GetCredentialsForIdentity'
-- operation.
--
-- /See:/ 'getCredentialsForIdentityResponse' smart constructor.
data GetCredentialsForIdentityResponse = GetCredentialsForIdentityResponse'
    { _gcfirsCredentials :: !(Maybe Credentials)
    , _gcfirsIdentityId  :: !(Maybe Text)
    , _gcfirsStatus      :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetCredentialsForIdentityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcfirsCredentials'
--
-- * 'gcfirsIdentityId'
--
-- * 'gcfirsStatus'
getCredentialsForIdentityResponse
    :: Int -- ^ 'gcfirsStatus'
    -> GetCredentialsForIdentityResponse
getCredentialsForIdentityResponse pStatus_ =
    GetCredentialsForIdentityResponse'
    { _gcfirsCredentials = Nothing
    , _gcfirsIdentityId = Nothing
    , _gcfirsStatus = pStatus_
    }

-- | Credentials for the the provided identity ID.
gcfirsCredentials :: Lens' GetCredentialsForIdentityResponse (Maybe Credentials)
gcfirsCredentials = lens _gcfirsCredentials (\ s a -> s{_gcfirsCredentials = a});

-- | A unique identifier in the format REGION:GUID.
gcfirsIdentityId :: Lens' GetCredentialsForIdentityResponse (Maybe Text)
gcfirsIdentityId = lens _gcfirsIdentityId (\ s a -> s{_gcfirsIdentityId = a});

-- | The response status code.
gcfirsStatus :: Lens' GetCredentialsForIdentityResponse Int
gcfirsStatus = lens _gcfirsStatus (\ s a -> s{_gcfirsStatus = a});
