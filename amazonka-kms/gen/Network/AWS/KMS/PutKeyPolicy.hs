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
-- Module      : Network.AWS.KMS.PutKeyPolicy
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attaches a policy to the specified key.
--
-- /See:/ <http://docs.aws.amazon.com/kms/latest/APIReference/API_PutKeyPolicy.html AWS API Reference> for PutKeyPolicy.
module Network.AWS.KMS.PutKeyPolicy
    (
    -- * Creating a Request
      putKeyPolicy
    , PutKeyPolicy
    -- * Request Lenses
    , pkpKeyId
    , pkpPolicyName
    , pkpPolicy

    -- * Destructuring the Response
    , putKeyPolicyResponse
    , PutKeyPolicyResponse
    ) where

import           Network.AWS.KMS.Types
import           Network.AWS.KMS.Types.Product
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'putKeyPolicy' smart constructor.
data PutKeyPolicy = PutKeyPolicy'
    { _pkpKeyId      :: !Text
    , _pkpPolicyName :: !Text
    , _pkpPolicy     :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PutKeyPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pkpKeyId'
--
-- * 'pkpPolicyName'
--
-- * 'pkpPolicy'
putKeyPolicy
    :: Text -- ^ 'pkpKeyId'
    -> Text -- ^ 'pkpPolicyName'
    -> Text -- ^ 'pkpPolicy'
    -> PutKeyPolicy
putKeyPolicy pKeyId_ pPolicyName_ pPolicy_ =
    PutKeyPolicy'
    { _pkpKeyId = pKeyId_
    , _pkpPolicyName = pPolicyName_
    , _pkpPolicy = pPolicy_
    }

-- | A unique identifier for the customer master key. This value can be a
-- globally unique identifier or the fully specified ARN to a key.
--
-- -   Key ARN Example -
--     arn:aws:kms:us-east-1:123456789012:key\/12345678-1234-1234-1234-123456789012
-- -   Globally Unique Key ID Example -
--     12345678-1234-1234-1234-123456789012
pkpKeyId :: Lens' PutKeyPolicy Text
pkpKeyId = lens _pkpKeyId (\ s a -> s{_pkpKeyId = a});

-- | Name of the policy to be attached. Currently, the only supported name is
-- \"default\".
pkpPolicyName :: Lens' PutKeyPolicy Text
pkpPolicyName = lens _pkpPolicyName (\ s a -> s{_pkpPolicyName = a});

-- | The policy, in JSON format, to be attached to the key.
pkpPolicy :: Lens' PutKeyPolicy Text
pkpPolicy = lens _pkpPolicy (\ s a -> s{_pkpPolicy = a});

instance AWSRequest PutKeyPolicy where
        type Sv PutKeyPolicy = KMS
        type Rs PutKeyPolicy = PutKeyPolicyResponse
        request = postJSON
        response = receiveNull PutKeyPolicyResponse'

instance ToHeaders PutKeyPolicy where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("TrentService.PutKeyPolicy" :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON PutKeyPolicy where
        toJSON PutKeyPolicy'{..}
          = object
              ["KeyId" .= _pkpKeyId,
               "PolicyName" .= _pkpPolicyName,
               "Policy" .= _pkpPolicy]

instance ToPath PutKeyPolicy where
        toPath = const "/"

instance ToQuery PutKeyPolicy where
        toQuery = const mempty

-- | /See:/ 'putKeyPolicyResponse' smart constructor.
data PutKeyPolicyResponse =
    PutKeyPolicyResponse'
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PutKeyPolicyResponse' with the minimum fields required to make a request.
--
putKeyPolicyResponse
    :: PutKeyPolicyResponse
putKeyPolicyResponse = PutKeyPolicyResponse'
