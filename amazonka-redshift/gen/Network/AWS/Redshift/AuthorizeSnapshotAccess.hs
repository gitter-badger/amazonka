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
-- Module      : Network.AWS.Redshift.AuthorizeSnapshotAccess
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Authorizes the specified AWS customer account to restore the specified
-- snapshot.
--
-- For more information about working with snapshots, go to
-- <http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html Amazon Redshift Snapshots>
-- in the /Amazon Redshift Cluster Management Guide/.
--
-- /See:/ <http://docs.aws.amazon.com/redshift/latest/APIReference/API_AuthorizeSnapshotAccess.html AWS API Reference> for AuthorizeSnapshotAccess.
module Network.AWS.Redshift.AuthorizeSnapshotAccess
    (
    -- * Creating a Request
      authorizeSnapshotAccess
    , AuthorizeSnapshotAccess
    -- * Request Lenses
    , asaSnapshotClusterIdentifier
    , asaSnapshotIdentifier
    , asaAccountWithRestoreAccess

    -- * Destructuring the Response
    , authorizeSnapshotAccessResponse
    , AuthorizeSnapshotAccessResponse
    -- * Response Lenses
    , asarsSnapshot
    , asarsStatus
    ) where

import           Network.AWS.Prelude
import           Network.AWS.Redshift.Types
import           Network.AWS.Redshift.Types.Product
import           Network.AWS.Request
import           Network.AWS.Response

-- |
--
-- /See:/ 'authorizeSnapshotAccess' smart constructor.
data AuthorizeSnapshotAccess = AuthorizeSnapshotAccess'
    { _asaSnapshotClusterIdentifier :: !(Maybe Text)
    , _asaSnapshotIdentifier        :: !Text
    , _asaAccountWithRestoreAccess  :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AuthorizeSnapshotAccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asaSnapshotClusterIdentifier'
--
-- * 'asaSnapshotIdentifier'
--
-- * 'asaAccountWithRestoreAccess'
authorizeSnapshotAccess
    :: Text -- ^ 'asaSnapshotIdentifier'
    -> Text -- ^ 'asaAccountWithRestoreAccess'
    -> AuthorizeSnapshotAccess
authorizeSnapshotAccess pSnapshotIdentifier_ pAccountWithRestoreAccess_ =
    AuthorizeSnapshotAccess'
    { _asaSnapshotClusterIdentifier = Nothing
    , _asaSnapshotIdentifier = pSnapshotIdentifier_
    , _asaAccountWithRestoreAccess = pAccountWithRestoreAccess_
    }

-- | The identifier of the cluster the snapshot was created from. This
-- parameter is required if your IAM user has a policy containing a
-- snapshot resource element that specifies anything other than * for the
-- cluster name.
asaSnapshotClusterIdentifier :: Lens' AuthorizeSnapshotAccess (Maybe Text)
asaSnapshotClusterIdentifier = lens _asaSnapshotClusterIdentifier (\ s a -> s{_asaSnapshotClusterIdentifier = a});

-- | The identifier of the snapshot the account is authorized to restore.
asaSnapshotIdentifier :: Lens' AuthorizeSnapshotAccess Text
asaSnapshotIdentifier = lens _asaSnapshotIdentifier (\ s a -> s{_asaSnapshotIdentifier = a});

-- | The identifier of the AWS customer account authorized to restore the
-- specified snapshot.
asaAccountWithRestoreAccess :: Lens' AuthorizeSnapshotAccess Text
asaAccountWithRestoreAccess = lens _asaAccountWithRestoreAccess (\ s a -> s{_asaAccountWithRestoreAccess = a});

instance AWSRequest AuthorizeSnapshotAccess where
        type Sv AuthorizeSnapshotAccess = Redshift
        type Rs AuthorizeSnapshotAccess =
             AuthorizeSnapshotAccessResponse
        request = postQuery
        response
          = receiveXMLWrapper "AuthorizeSnapshotAccessResult"
              (\ s h x ->
                 AuthorizeSnapshotAccessResponse' <$>
                   (x .@? "Snapshot") <*> (pure (fromEnum s)))

instance ToHeaders AuthorizeSnapshotAccess where
        toHeaders = const mempty

instance ToPath AuthorizeSnapshotAccess where
        toPath = const "/"

instance ToQuery AuthorizeSnapshotAccess where
        toQuery AuthorizeSnapshotAccess'{..}
          = mconcat
              ["Action" =:
                 ("AuthorizeSnapshotAccess" :: ByteString),
               "Version" =: ("2012-12-01" :: ByteString),
               "SnapshotClusterIdentifier" =:
                 _asaSnapshotClusterIdentifier,
               "SnapshotIdentifier" =: _asaSnapshotIdentifier,
               "AccountWithRestoreAccess" =:
                 _asaAccountWithRestoreAccess]

-- | /See:/ 'authorizeSnapshotAccessResponse' smart constructor.
data AuthorizeSnapshotAccessResponse = AuthorizeSnapshotAccessResponse'
    { _asarsSnapshot :: !(Maybe Snapshot)
    , _asarsStatus   :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AuthorizeSnapshotAccessResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asarsSnapshot'
--
-- * 'asarsStatus'
authorizeSnapshotAccessResponse
    :: Int -- ^ 'asarsStatus'
    -> AuthorizeSnapshotAccessResponse
authorizeSnapshotAccessResponse pStatus_ =
    AuthorizeSnapshotAccessResponse'
    { _asarsSnapshot = Nothing
    , _asarsStatus = pStatus_
    }

-- | Undocumented member.
asarsSnapshot :: Lens' AuthorizeSnapshotAccessResponse (Maybe Snapshot)
asarsSnapshot = lens _asarsSnapshot (\ s a -> s{_asarsSnapshot = a});

-- | The response status code.
asarsStatus :: Lens' AuthorizeSnapshotAccessResponse Int
asarsStatus = lens _asarsStatus (\ s a -> s{_asarsStatus = a});
