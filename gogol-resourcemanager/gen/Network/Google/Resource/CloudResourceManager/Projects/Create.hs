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
-- Module      : Network.Google.Resource.CloudResourceManager.Projects.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request that a new Project be created. The result is an Operation which
-- can be used to track the creation process. It is automatically deleted
-- after a few hours, so there is no need to call DeleteOperation. Our SLO
-- permits Project creation to take up to 30 seconds at the 90th
-- percentile. As of 2016-08-29, we are observing 6 seconds 50th percentile
-- latency. 95th percentile latency is around 11 seconds. We recommend
-- polling at the 5th second with an exponential backoff.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.create@.
module Network.Google.Resource.CloudResourceManager.Projects.Create
    (
    -- * REST Resource
      ProjectsCreateResource

    -- * Creating a Request
    , projectsCreate
    , ProjectsCreate

    -- * Request Lenses
    , pcXgafv
    , pcUploadProtocol
    , pcPp
    , pcAccessToken
    , pcUploadType
    , pcPayload
    , pcBearerToken
    , pcCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.create@ method which the
-- 'ProjectsCreate' request conforms to.
type ProjectsCreateResource =
     "v1" :>
       "projects" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Project :> Post '[JSON] Operation

-- | Request that a new Project be created. The result is an Operation which
-- can be used to track the creation process. It is automatically deleted
-- after a few hours, so there is no need to call DeleteOperation. Our SLO
-- permits Project creation to take up to 30 seconds at the 90th
-- percentile. As of 2016-08-29, we are observing 6 seconds 50th percentile
-- latency. 95th percentile latency is around 11 seconds. We recommend
-- polling at the 5th second with an exponential backoff.
--
-- /See:/ 'projectsCreate' smart constructor.
data ProjectsCreate = ProjectsCreate'
    { _pcXgafv          :: !(Maybe Xgafv)
    , _pcUploadProtocol :: !(Maybe Text)
    , _pcPp             :: !Bool
    , _pcAccessToken    :: !(Maybe Text)
    , _pcUploadType     :: !(Maybe Text)
    , _pcPayload        :: !Project
    , _pcBearerToken    :: !(Maybe Text)
    , _pcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcXgafv'
--
-- * 'pcUploadProtocol'
--
-- * 'pcPp'
--
-- * 'pcAccessToken'
--
-- * 'pcUploadType'
--
-- * 'pcPayload'
--
-- * 'pcBearerToken'
--
-- * 'pcCallback'
projectsCreate
    :: Project -- ^ 'pcPayload'
    -> ProjectsCreate
projectsCreate pPcPayload_ =
    ProjectsCreate'
    { _pcXgafv = Nothing
    , _pcUploadProtocol = Nothing
    , _pcPp = True
    , _pcAccessToken = Nothing
    , _pcUploadType = Nothing
    , _pcPayload = pPcPayload_
    , _pcBearerToken = Nothing
    , _pcCallback = Nothing
    }

-- | V1 error format.
pcXgafv :: Lens' ProjectsCreate (Maybe Xgafv)
pcXgafv = lens _pcXgafv (\ s a -> s{_pcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcUploadProtocol :: Lens' ProjectsCreate (Maybe Text)
pcUploadProtocol
  = lens _pcUploadProtocol
      (\ s a -> s{_pcUploadProtocol = a})

-- | Pretty-print response.
pcPp :: Lens' ProjectsCreate Bool
pcPp = lens _pcPp (\ s a -> s{_pcPp = a})

-- | OAuth access token.
pcAccessToken :: Lens' ProjectsCreate (Maybe Text)
pcAccessToken
  = lens _pcAccessToken
      (\ s a -> s{_pcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcUploadType :: Lens' ProjectsCreate (Maybe Text)
pcUploadType
  = lens _pcUploadType (\ s a -> s{_pcUploadType = a})

-- | Multipart request metadata.
pcPayload :: Lens' ProjectsCreate Project
pcPayload
  = lens _pcPayload (\ s a -> s{_pcPayload = a})

-- | OAuth bearer token.
pcBearerToken :: Lens' ProjectsCreate (Maybe Text)
pcBearerToken
  = lens _pcBearerToken
      (\ s a -> s{_pcBearerToken = a})

-- | JSONP
pcCallback :: Lens' ProjectsCreate (Maybe Text)
pcCallback
  = lens _pcCallback (\ s a -> s{_pcCallback = a})

instance GoogleRequest ProjectsCreate where
        type Rs ProjectsCreate = Operation
        type Scopes ProjectsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsCreate'{..}
          = go _pcXgafv _pcUploadProtocol (Just _pcPp)
              _pcAccessToken
              _pcUploadType
              _pcBearerToken
              _pcCallback
              (Just AltJSON)
              _pcPayload
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy ProjectsCreateResource)
                      mempty
