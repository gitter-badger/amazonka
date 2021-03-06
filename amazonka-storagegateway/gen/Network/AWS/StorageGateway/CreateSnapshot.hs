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
-- Module      : Network.AWS.StorageGateway.CreateSnapshot
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation initiates a snapshot of a volume.
--
-- AWS Storage Gateway provides the ability to back up point-in-time
-- snapshots of your data to Amazon Simple Storage (S3) for durable
-- off-site recovery, as well as import the data to an Amazon Elastic Block
-- Store (EBS) volume in Amazon Elastic Compute Cloud (EC2). You can take
-- snapshots of your gateway volume on a scheduled or ad-hoc basis. This
-- API enables you to take ad-hoc snapshot. For more information, see
-- <http://docs.aws.amazon.com/storagegateway/latest/userguide/WorkingWithSnapshots.html Working With Snapshots in the AWS Storage Gateway Console>.
--
-- In the CreateSnapshot request you identify the volume by providing its
-- Amazon Resource Name (ARN). You must also provide description for the
-- snapshot. When AWS Storage Gateway takes the snapshot of specified
-- volume, the snapshot and description appears in the AWS Storage Gateway
-- Console. In response, AWS Storage Gateway returns you a snapshot ID. You
-- can use this snapshot ID to check the snapshot progress or later use it
-- when you want to create a volume from a snapshot.
--
-- To list or delete a snapshot, you must use the Amazon EC2 API. For more
-- information, see DescribeSnapshots or DeleteSnapshot in the
-- <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Operations.html EC2 API reference>.
--
-- /See:/ <http://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateSnapshot.html AWS API Reference> for CreateSnapshot.
module Network.AWS.StorageGateway.CreateSnapshot
    (
    -- * Creating a Request
      createSnapshot
    , CreateSnapshot
    -- * Request Lenses
    , csVolumeARN
    , csSnapshotDescription

    -- * Destructuring the Response
    , createSnapshotResponse
    , CreateSnapshotResponse
    -- * Response Lenses
    , csrsVolumeARN
    , csrsSnapshotId
    , csrsStatus
    ) where

import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response
import           Network.AWS.StorageGateway.Types
import           Network.AWS.StorageGateway.Types.Product

-- | A JSON object containing one or more of the following fields:
--
-- -   CreateSnapshotInput$SnapshotDescription
-- -   CreateSnapshotInput$VolumeARN
--
-- /See:/ 'createSnapshot' smart constructor.
data CreateSnapshot = CreateSnapshot'
    { _csVolumeARN           :: !Text
    , _csSnapshotDescription :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csVolumeARN'
--
-- * 'csSnapshotDescription'
createSnapshot
    :: Text -- ^ 'csVolumeARN'
    -> Text -- ^ 'csSnapshotDescription'
    -> CreateSnapshot
createSnapshot pVolumeARN_ pSnapshotDescription_ =
    CreateSnapshot'
    { _csVolumeARN = pVolumeARN_
    , _csSnapshotDescription = pSnapshotDescription_
    }

-- | The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
-- operation to return a list of gateway volumes.
csVolumeARN :: Lens' CreateSnapshot Text
csVolumeARN = lens _csVolumeARN (\ s a -> s{_csVolumeARN = a});

-- | Textual description of the snapshot that appears in the Amazon EC2
-- console, Elastic Block Store snapshots panel in the __Description__
-- field, and in the AWS Storage Gateway snapshot __Details__ pane,
-- __Description__ field
csSnapshotDescription :: Lens' CreateSnapshot Text
csSnapshotDescription = lens _csSnapshotDescription (\ s a -> s{_csSnapshotDescription = a});

instance AWSRequest CreateSnapshot where
        type Sv CreateSnapshot = StorageGateway
        type Rs CreateSnapshot = CreateSnapshotResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 CreateSnapshotResponse' <$>
                   (x .?> "VolumeARN") <*> (x .?> "SnapshotId") <*>
                     (pure (fromEnum s)))

instance ToHeaders CreateSnapshot where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("StorageGateway_20130630.CreateSnapshot" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON CreateSnapshot where
        toJSON CreateSnapshot'{..}
          = object
              ["VolumeARN" .= _csVolumeARN,
               "SnapshotDescription" .= _csSnapshotDescription]

instance ToPath CreateSnapshot where
        toPath = const "/"

instance ToQuery CreateSnapshot where
        toQuery = const mempty

-- | A JSON object containing the following fields:
--
-- /See:/ 'createSnapshotResponse' smart constructor.
data CreateSnapshotResponse = CreateSnapshotResponse'
    { _csrsVolumeARN  :: !(Maybe Text)
    , _csrsSnapshotId :: !(Maybe Text)
    , _csrsStatus     :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateSnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrsVolumeARN'
--
-- * 'csrsSnapshotId'
--
-- * 'csrsStatus'
createSnapshotResponse
    :: Int -- ^ 'csrsStatus'
    -> CreateSnapshotResponse
createSnapshotResponse pStatus_ =
    CreateSnapshotResponse'
    { _csrsVolumeARN = Nothing
    , _csrsSnapshotId = Nothing
    , _csrsStatus = pStatus_
    }

-- | The Amazon Resource Name (ARN) of the volume of which the snapshot was
-- taken.
csrsVolumeARN :: Lens' CreateSnapshotResponse (Maybe Text)
csrsVolumeARN = lens _csrsVolumeARN (\ s a -> s{_csrsVolumeARN = a});

-- | The snapshot ID that is used to refer to the snapshot in future
-- operations such as describing snapshots (Amazon Elastic Compute Cloud
-- API 'DescribeSnapshots') or creating a volume from a snapshot
-- (CreateStorediSCSIVolume).
csrsSnapshotId :: Lens' CreateSnapshotResponse (Maybe Text)
csrsSnapshotId = lens _csrsSnapshotId (\ s a -> s{_csrsSnapshotId = a});

-- | The response status code.
csrsStatus :: Lens' CreateSnapshotResponse Int
csrsStatus = lens _csrsStatus (\ s a -> s{_csrsStatus = a});
