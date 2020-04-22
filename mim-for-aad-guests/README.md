---
title: Installing MIM for Azure AD Guest accounts and Kerberos applications
description: 
author: RZomerman
ms.date: 04/15/2020
layout: LandingPage
ms.topic: landing-page
ms.service: 
ms.subservice:
---
# Installing MIM for Azure AD Guest accounts and Kerberos applications

You can invite anyone to collaborate with your organization by adding them to your directory as a guest user. Then you can either send an invitation email that contains a redemption link or send a direct link to an app you want to share. Guest users can sign in with their own work, school, or social identities. You can also publish your internal Kerberos based applications to those guest users using Kerberos Constraint Delegation functions available in Azure AD App Proxy and many 3rd party reverse-proxy services.

In this quickstart, you'll add a new guest user to Azure AD, which will then be replicated to your on-premises AD for Kerberos Constraint Delegation to work.

If you don’t have an Azure subscription, create a [free account](https://azure.microsoft.com/free/?WT.mc_id=A261C142F) before you begin.

## Scenario
The initial scenario is external user AD account lifecycle management in combination with Secure Hybrid Access. In this scenario, an organization has invited guests into their Azure AD directory, and wishes to give those guests access to on-premises Kerberos-based applications, via the Azure AD application proxy or other reverse-proxy mechanisms. The Azure AD application proxy requires each user to have their own Active Directory Domain Services (ADDS) account, for identification and delegation purposes.

## Prerequisites
To complete this tutorial, you will need:
* a virtual machine for the domain controller
* a virtual machine for the MIM server
* an Azure Active Directory with P1 or P2 licenses

## Overview
The following components are part of the total solution described in this step-by-step guide.

![MIMB2BGuestKCDComponentsOverview](./images/1.Solution-Components.PNG)

-	An Azure AD with users and B2B guest users
-	A MIM server that synchronizes the B2B users to a local AD
-	A local Active Directory
-	A web server hosting a web page with Kerberos authentication enabled
-	An Azure AD proxy connector server
> [!TIP]
The MIM server installation is specifically for usage on a single server without MIM password portals and registration pages. This installation described here is suitable for non-highly available environments and low-object usage scenarios.

## First: Prepare Azure AD Graph API Access
- [Azure AD Graph API Access](prepare-azure-ad-for-GraphAPI.md)

## Next: Prepare a domain
MIM works with Active Directory (AD), so follow these steps to configure your AD domain controller.
- [Domain setup](preparedomain.md)

## Next: Install Microsoft Identity Manager 2016 components
Once your domain is in place and configured, prepare your corporate identity management server. This includes setting up:

- [Windows Server 2019](prepare-server-ws-2019.md)
- [SQL Server 2016/2017](install-SQL-server.md)
- [MIM Synchronization Service](install-mim-sync.md)
- [SharePoint](prepare-server-sharepoint.md)
- [MIM Service and Portal](install-mim-service-portal.md)
- [The MIM synchronization MA](installing-MimMa.md)
- [The Active Directory MA](installing-ADMA.md)
- [The Graph API MA](installing-AADMA.md)

## Finally: Configure the synchonization rules
Once you have set up the domain and server, you're ready to install the MIM components and configure them to sync with AD.



