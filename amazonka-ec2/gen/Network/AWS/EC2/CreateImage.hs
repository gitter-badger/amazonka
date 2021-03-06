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
-- Module      : Network.AWS.EC2.CreateImage
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance that
-- is either running or stopped.
--
-- If you customized your instance with instance store volumes or EBS
-- volumes in addition to the root device volume, the new AMI contains
-- block device mapping information for those volumes. When you launch an
-- instance from this new AMI, the instance automatically launches with
-- those additional volumes.
--
-- For more information, see
-- <http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html Creating Amazon EBS-Backed Linux AMIs>
-- in the /Amazon Elastic Compute Cloud User Guide/.
--
-- /See:/ <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateImage.html AWS API Reference> for CreateImage.
module Network.AWS.EC2.CreateImage
    (
    -- * Creating a Request
      createImage
    , CreateImage
    -- * Request Lenses
    , ciiNoReboot
    , ciiBlockDeviceMappings
    , ciiDryRun
    , ciiDescription
    , ciiInstanceId
    , ciiName

    -- * Destructuring the Response
    , createImageResponse
    , CreateImageResponse
    -- * Response Lenses
    , cirsImageId
    , cirsStatus
    ) where

import           Network.AWS.EC2.Types
import           Network.AWS.EC2.Types.Product
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'createImage' smart constructor.
data CreateImage = CreateImage'
    { _ciiNoReboot            :: !(Maybe Bool)
    , _ciiBlockDeviceMappings :: !(Maybe [BlockDeviceMapping])
    , _ciiDryRun              :: !(Maybe Bool)
    , _ciiDescription         :: !(Maybe Text)
    , _ciiInstanceId          :: !Text
    , _ciiName                :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciiNoReboot'
--
-- * 'ciiBlockDeviceMappings'
--
-- * 'ciiDryRun'
--
-- * 'ciiDescription'
--
-- * 'ciiInstanceId'
--
-- * 'ciiName'
createImage
    :: Text -- ^ 'ciiInstanceId'
    -> Text -- ^ 'ciiName'
    -> CreateImage
createImage pInstanceId_ pName_ =
    CreateImage'
    { _ciiNoReboot = Nothing
    , _ciiBlockDeviceMappings = Nothing
    , _ciiDryRun = Nothing
    , _ciiDescription = Nothing
    , _ciiInstanceId = pInstanceId_
    , _ciiName = pName_
    }

-- | By default, this parameter is set to 'false', which means Amazon EC2
-- attempts to shut down the instance cleanly before image creation and
-- then reboots the instance. When the parameter is set to 'true', Amazon
-- EC2 doesn\'t shut down the instance before creating the image. When this
-- option is used, file system integrity on the created image can\'t be
-- guaranteed.
ciiNoReboot :: Lens' CreateImage (Maybe Bool)
ciiNoReboot = lens _ciiNoReboot (\ s a -> s{_ciiNoReboot = a});

-- | Information about one or more block device mappings.
ciiBlockDeviceMappings :: Lens' CreateImage [BlockDeviceMapping]
ciiBlockDeviceMappings = lens _ciiBlockDeviceMappings (\ s a -> s{_ciiBlockDeviceMappings = a}) . _Default . _Coerce;

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is 'DryRunOperation'.
-- Otherwise, it is 'UnauthorizedOperation'.
ciiDryRun :: Lens' CreateImage (Maybe Bool)
ciiDryRun = lens _ciiDryRun (\ s a -> s{_ciiDryRun = a});

-- | A description for the new image.
ciiDescription :: Lens' CreateImage (Maybe Text)
ciiDescription = lens _ciiDescription (\ s a -> s{_ciiDescription = a});

-- | The ID of the instance.
ciiInstanceId :: Lens' CreateImage Text
ciiInstanceId = lens _ciiInstanceId (\ s a -> s{_ciiInstanceId = a});

-- | A name for the new image.
--
-- Constraints: 3-128 alphanumeric characters, parentheses (()), square
-- brackets ([]), spaces ( ), periods (.), slashes (\/), dashes (-), single
-- quotes (\'), at-signs (\'), or underscores(_)
ciiName :: Lens' CreateImage Text
ciiName = lens _ciiName (\ s a -> s{_ciiName = a});

instance AWSRequest CreateImage where
        type Sv CreateImage = EC2
        type Rs CreateImage = CreateImageResponse
        request = post
        response
          = receiveXML
              (\ s h x ->
                 CreateImageResponse' <$>
                   (x .@? "imageId") <*> (pure (fromEnum s)))

instance ToHeaders CreateImage where
        toHeaders = const mempty

instance ToPath CreateImage where
        toPath = const "/"

instance ToQuery CreateImage where
        toQuery CreateImage'{..}
          = mconcat
              ["Action" =: ("CreateImage" :: ByteString),
               "Version" =: ("2015-04-15" :: ByteString),
               "NoReboot" =: _ciiNoReboot,
               toQuery
                 (toQueryList "BlockDeviceMapping" <$>
                    _ciiBlockDeviceMappings),
               "DryRun" =: _ciiDryRun,
               "Description" =: _ciiDescription,
               "InstanceId" =: _ciiInstanceId, "Name" =: _ciiName]

-- | /See:/ 'createImageResponse' smart constructor.
data CreateImageResponse = CreateImageResponse'
    { _cirsImageId :: !(Maybe Text)
    , _cirsStatus  :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirsImageId'
--
-- * 'cirsStatus'
createImageResponse
    :: Int -- ^ 'cirsStatus'
    -> CreateImageResponse
createImageResponse pStatus_ =
    CreateImageResponse'
    { _cirsImageId = Nothing
    , _cirsStatus = pStatus_
    }

-- | The ID of the new AMI.
cirsImageId :: Lens' CreateImageResponse (Maybe Text)
cirsImageId = lens _cirsImageId (\ s a -> s{_cirsImageId = a});

-- | The response status code.
cirsStatus :: Lens' CreateImageResponse Int
cirsStatus = lens _cirsStatus (\ s a -> s{_cirsStatus = a});
