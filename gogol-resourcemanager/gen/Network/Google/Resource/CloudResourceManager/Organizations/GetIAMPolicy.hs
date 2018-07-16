{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.CloudResourceManager.Organizations.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for an Organization resource. May be
-- empty if no such policy or resource exists. The \`resource\` field
-- should be the organization\'s resource name, e.g.
-- \"organizations\/123\".
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @cloudresourcemanager.organizations.getIamPolicy@.
module Network.Google.Resource.CloudResourceManager.Organizations.GetIAMPolicy
    (
    -- * REST Resource
      OrganizationsGetIAMPolicyResource

    -- * Creating a Request
    , organizationsGetIAMPolicy
    , OrganizationsGetIAMPolicy

    -- * Request Lenses
    , ogipXgafv
    , ogipUploadProtocol
    , ogipPp
    , ogipAccessToken
    , ogipUploadType
    , ogipPayload
    , ogipBearerToken
    , ogipResource
    , ogipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.organizations.getIamPolicy@ method which the
-- 'OrganizationsGetIAMPolicy' request conforms to.
type OrganizationsGetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] GetIAMPolicyRequest :>
                           Post '[JSON] Policy

-- | Gets the access control policy for an Organization resource. May be
-- empty if no such policy or resource exists. The \`resource\` field
-- should be the organization\'s resource name, e.g.
-- \"organizations\/123\".
--
-- /See:/ 'organizationsGetIAMPolicy' smart constructor.
data OrganizationsGetIAMPolicy = OrganizationsGetIAMPolicy'
    { _ogipXgafv          :: !(Maybe Xgafv)
    , _ogipUploadProtocol :: !(Maybe Text)
    , _ogipPp             :: !Bool
    , _ogipAccessToken    :: !(Maybe Text)
    , _ogipUploadType     :: !(Maybe Text)
    , _ogipPayload        :: !GetIAMPolicyRequest
    , _ogipBearerToken    :: !(Maybe Text)
    , _ogipResource       :: !Text
    , _ogipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogipXgafv'
--
-- * 'ogipUploadProtocol'
--
-- * 'ogipPp'
--
-- * 'ogipAccessToken'
--
-- * 'ogipUploadType'
--
-- * 'ogipPayload'
--
-- * 'ogipBearerToken'
--
-- * 'ogipResource'
--
-- * 'ogipCallback'
organizationsGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'ogipPayload'
    -> Text -- ^ 'ogipResource'
    -> OrganizationsGetIAMPolicy
organizationsGetIAMPolicy pOgipPayload_ pOgipResource_ =
    OrganizationsGetIAMPolicy'
    { _ogipXgafv = Nothing
    , _ogipUploadProtocol = Nothing
    , _ogipPp = True
    , _ogipAccessToken = Nothing
    , _ogipUploadType = Nothing
    , _ogipPayload = pOgipPayload_
    , _ogipBearerToken = Nothing
    , _ogipResource = pOgipResource_
    , _ogipCallback = Nothing
    }

-- | V1 error format.
ogipXgafv :: Lens' OrganizationsGetIAMPolicy (Maybe Xgafv)
ogipXgafv
  = lens _ogipXgafv (\ s a -> s{_ogipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ogipUploadProtocol :: Lens' OrganizationsGetIAMPolicy (Maybe Text)
ogipUploadProtocol
  = lens _ogipUploadProtocol
      (\ s a -> s{_ogipUploadProtocol = a})

-- | Pretty-print response.
ogipPp :: Lens' OrganizationsGetIAMPolicy Bool
ogipPp = lens _ogipPp (\ s a -> s{_ogipPp = a})

-- | OAuth access token.
ogipAccessToken :: Lens' OrganizationsGetIAMPolicy (Maybe Text)
ogipAccessToken
  = lens _ogipAccessToken
      (\ s a -> s{_ogipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ogipUploadType :: Lens' OrganizationsGetIAMPolicy (Maybe Text)
ogipUploadType
  = lens _ogipUploadType
      (\ s a -> s{_ogipUploadType = a})

-- | Multipart request metadata.
ogipPayload :: Lens' OrganizationsGetIAMPolicy GetIAMPolicyRequest
ogipPayload
  = lens _ogipPayload (\ s a -> s{_ogipPayload = a})

-- | OAuth bearer token.
ogipBearerToken :: Lens' OrganizationsGetIAMPolicy (Maybe Text)
ogipBearerToken
  = lens _ogipBearerToken
      (\ s a -> s{_ogipBearerToken = a})

-- | REQUIRED: The resource for which the policy is being requested.
-- \`resource\` is usually specified as a path. For example, a Project
-- resource is specified as \`projects\/{project}\`.
ogipResource :: Lens' OrganizationsGetIAMPolicy Text
ogipResource
  = lens _ogipResource (\ s a -> s{_ogipResource = a})

-- | JSONP
ogipCallback :: Lens' OrganizationsGetIAMPolicy (Maybe Text)
ogipCallback
  = lens _ogipCallback (\ s a -> s{_ogipCallback = a})

instance GoogleRequest OrganizationsGetIAMPolicy
         where
        type Rs OrganizationsGetIAMPolicy = Policy
        type Scopes OrganizationsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient OrganizationsGetIAMPolicy'{..}
          = go _ogipResource _ogipXgafv _ogipUploadProtocol
              (Just _ogipPp)
              _ogipAccessToken
              _ogipUploadType
              _ogipBearerToken
              _ogipCallback
              (Just AltJSON)
              _ogipPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsGetIAMPolicyResource)
                      mempty
