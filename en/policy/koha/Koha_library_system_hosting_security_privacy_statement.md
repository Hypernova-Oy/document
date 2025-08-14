# Koha Hosting Service – Security and Privacy Statement (SPS)

**Version:** 1.0.1 (2025-08-14)  
**Effective:** From 2025-09-14  
**Previous version:** 1.0.0 (2021-03-22)  
**Responsible person:** Lari Taskula, CEO  
**Distribution:** All customers receive notification of updates 30 days in advance  
**Archiving:** All versions are permanently stored in Hypernova Oy’s document archive. At the time of update, the document is made publicly available on GitHub. 

<!-- vscode-markdown-toc -->
* 1. [Required Security and Privacy Practices from the System Provider](#required-security-and-privacy-practices-from-the-system-provider)
	* 1.1. [Security Principles](#security-principles)
		* 1.1.1. [Processing of Personal Data (incl. pseudonymization and encryption)](#processing-of-personal-data-incl-pseudonymization-and-encryption)
		* 1.1.2. [Confidentiality, Availability, Fault Tolerance](#confidentiality-availability-fault-tolerance)
		* 1.1.3. [Risk Management](#risk-management)
		* 1.1.4. [Recovery](#recovery)
		* 1.1.5. [Regular Evaluation of Security Practices](#regular-evaluation-of-security-practices)
		* 1.1.6. [Staff Training and Guidelines](#staff-training-and-guidelines)
	* 1.2. [Application Development Principles](#application-development-principles)
		* 1.2.1. [Consideration of Privacy and Security Requirements](#consideration-of-privacy-and-security-requirements)
		* 1.2.2. [Test Data Without Real Personal Data](#test-data-without-real-personal-data)
		* 1.2.3. [Development Environment Security](#development-environment-security)
	* 1.3. [Access Management Principles](#access-management-principles)
		* 1.3.1. [User Account Lifecycle](#user-account-lifecycle)
		* 1.3.2. [Review of Access Rights](#review-of-access-rights)
* 2. [System/Service Security and Privacy Features](#systemservice-security-and-privacy-features)
	* 2.1. [System Monitoring, Maintenance, and Support](#system-monitoring-maintenance-and-support)
	* 2.2. [System Risk Analysis](#system-risk-analysis)
	* 2.3. [System Testing Process](#system-testing-process)
	* 2.4. [System Data (incl. special data groups) and Integrations](#system-data-incl-special-data-groups-and-integrations)
	* 2.5. [Implementation of Data Subject Rights in the System](#implementation-of-data-subject-rights-in-the-system)
		* 2.5.1. [Inspection of Data Subject Information](#inspection-of-data-subject-information)
		* 2.5.2. [Deletion and Correction of Data Subject Information](#deletion-and-correction-of-data-subject-information)
		* 2.5.3. [Data Subject Data Export](#data-subject-data-export)
		* 2.5.4. [Consent and Restrictions Management](#consent-and-restrictions-management)
		* 2.5.5. [Minimization of Personal Data Processing (incl. removal of outdated data)](#minimization-of-personal-data-processing-incl-removal-of-outdated-data)
		* 2.5.6. [Anonymization/Pseudonymization of Personal Data](#anonymizationpseudonymization-of-personal-data)
	* 2.6. [System Access Management Principles](#system-access-management-principles)
		* 2.6.1. [Personal User Accounts](#personal-user-accounts)
		* 2.6.2. [Password Requirements](#password-requirements)
	* 2.7. [Logs](#logs)
		* 2.7.1. [Login Logs, Admin Usage Logs](#login-logs-admin-usage-logs)
		* 2.7.2. [Logging of Personal Data Processing (Usage Logs)](#logging-of-personal-data-processing-usage-logs)
		* 2.7.3. [Log Reports](#log-reports)
		* 2.7.4. [Log Protection](#log-protection)
	* 2.8. [Backups](#backups)
	* 2.9. [Recovery Plan](#recovery-plan)
	* 2.10. [Security Updates](#security-updates)
	* 2.11. [Security Description](#security-description)
		* 2.11.1. [Encryptions](#encryptions)
		* 2.11.2. [Password Protection](#password-protection)
		* 2.11.3. [Connection/Network Security](#connectionnetwork-security)
		* 2.11.4. [Data Protection](#data-protection)
		* 2.11.5. [Data Entry Protection](#data-entry-protection)
		* 2.11.6. [Data Model Security](#data-model-security)

## 1. <a name='required-security-and-privacy-practices-from-the-system-provider'></a>Required Security and Privacy Practices from the System Provider

### 1.1. <a name='security-principles'></a>Security Principles

Our security is based on:

* Security updates at the operating system and server application levels
* Use of modern and up-to-date ciphers (EECDH+AESGCM:EDH+AESGCM) and protocols (TLS1.3, HTTP/3)
* Replacement of username+password combinations with password-protected private-public encryption keys
* Isolation of services and virtual servers using container technologies
* “Zero trust” and “drop by default” principles
* Avoiding plaintext protocols (FTP, SIP2) or tunneling them using stunnel4 or ssh tools

#### 1.1.1. <a name='processing-of-personal-data-incl-pseudonymization-and-encryption'></a>Processing of Personal Data (incl. pseudonymization and encryption)

The system stores personal data of end users and staff (see separate personal data processing agreement).  
We recommend not storing personal identification numbers, but the client may choose to override this recommendation at their own responsibility.  
System logs retain records of accessed pages and metadata of client sessions.  
Loan history storage is optional for end users. The last two borrowers of an item are always retained to allow necessary follow-up actions in case of material damage.  
End users receive reminders and notifications. Clients may choose the templates used and are recommended to use templates containing minimal personal data.  
Clients manage their own end-user registers and are responsible for the accuracy of end-user data.

##### Anonymization

Test environments use anonymized test data derived from real customer databases.  
Anonymization is performed using various filters depending on the case.  
Existing names, addresses, birth dates, phone numbers, and other personal data are replaced either by:

* Characters from the same class (e.g., a number replaced with a randomly generated number), preserving structure but rendering content irrelevant and unrecoverable.
* Dummy word generators that remove old values and replace them with completely new human-readable words. This preserves structure but makes content irrelevant and unrecoverable.

#### 1.1.2. <a name='confidentiality-availability-fault-tolerance'></a>Confidentiality, Availability, Fault Tolerance

The server software we use is widely used and proven secure and reliable. We always use free and open-source software.  
Depending on the service agreement, services can be distributed and fault tolerance increased through duplication.

#### 1.1.3. <a name='risk-management'></a>Risk Management

We assess risks in at least weekly risk assessment meetings. Hypernova Oy has a self-protective interest in minimizing risks for itself and its clients.  
Various international user communities anticipate and manage risks related to the software we use.  
Hypernova Oy actively participates in user communities and monitors current and future threat models.

#### 1.1.4. <a name='recovery'></a>Recovery

Our system services restart automatically in case of faults.  
Monitoring tools supervise services around the clock and notify of threats or deficiencies.  
Systems can be automatically rebuilt from scratch and restored using the latest backup if necessary.

#### 1.1.5. <a name='regular-evaluation-of-security-practices'></a>Regular Evaluation of Security Practices

We actively follow global threats via mailing lists, discussion forums, channels, and both social and traditional media.  
We rely on update packages released by our software vendors.

#### 1.1.6. <a name='staff-training-and-guidelines'></a>Staff Training and Guidelines

Only personnel who pass rigorous mental and physical competence and motivation tests are selected as Hypernova Oy IT specialists.  
Tests assess comprehensive skills in providing system services and suitability of personality for both the work community and tasks.  
Staff are responsible for their own professional development and continuously learn from the global talent community.  
Junior and Trainee staff are actively guided and monitored.

### 1.2. <a name='application-development-principles'></a>Application Development Principles

#### 1.2.1. <a name='consideration-of-privacy-and-security-requirements'></a>Consideration of Privacy and Security Requirements

Authentication and authorization are always considered. OWASP is a solid foundation for secure software design.

#### 1.2.2. <a name='test-data-without-real-personal-data'></a>Test Data Without Real Personal Data

See above.

#### 1.2.3. <a name='development-environment-security'></a>Development Environment Security

Development environments are built using the same automated server provisioning tools as production environments, ensuring identical security configurations.  
They do not contain real customer data but are often publicly accessible for acceptance testing.  
Development environments are isolated from other server environments and run on separate host servers from production.

### 1.3. <a name='access-management-principles'></a>Access Management Principles

#### 1.3.1. <a name='user-account-lifecycle'></a>User Account Lifecycle

Clients set default validity periods for library system end-user accounts. Accounts are regularly checked and renewed.  
Maintenance accounts on servers are automatically rotated, and server automation transparently handles authentication for maintenance connections.

#### 1.3.2. <a name='review-of-access-rights'></a>Review of Access Rights

Koha library system can generate reports detailing access rights.

## 2. <a name='systemservice-security-and-privacy-features'></a>System/Service Security and Privacy Features

### 2.1. <a name='system-monitoring-maintenance-and-support'></a>System Monitoring, Maintenance, and Support

Systems are monitored with automated tools for typical faults.  
Performance metrics are collected for server capacity planning.  
Manual checks and malware scans are also conducted.  
Support is offered via email and phone, aiming to respond as soon as possible, within 24 hours at most.

### 2.2. <a name='system-risk-analysis'></a>System Risk Analysis

See above.

### 2.3. <a name='system-testing-process'></a>System Testing Process

In addition to community-developed quality pipelines, we conduct lightweight functional tests to ensure server infrastructure.  
All installations, updates, and maintenance are executed via a central server with predefined configurations.  
Configuration is first tested on a test server, then on a general demo server, and finally applied to production via automation.  
This ensures no undesired side effects and that updates function automatically. Issues are addressed using expertise and community connections, following an agreed co-development buffer with clients.

### 2.4. <a name='system-data-incl-special-data-groups-and-integrations'></a>System Data (incl. Special Data Groups) and Integrations

Integrations are client-specific and agreed separately.

### 2.5. <a name='implementation-of-data-subject-rights-in-the-system'></a>Implementation of Data Subject Rights in the System

#### 2.5.1. <a name='inspection-of-data-subject-information'></a>Inspection of Data Subject Information

End users can access their data in accordance with EU privacy requirements via the web library.  
Clients can access various reports based on end-user data.

#### 2.5.2. <a name='deletion-and-correction-of-data-subject-information'></a>Deletion and Correction of Data Subject Information

We follow EU GDPR requirements for deletion and correction.  
Clients are responsible for handling end-user requests regarding their data. Depending on system settings, end users can either directly update their data or via client staff confirmation. Client staff can remove end-user data from the system. Incorrect data can also be manually corrected on request.

#### 2.5.3. <a name='data-subject-data-export'></a>Data Subject Data Export

Client data can be exported in batches. Multiple formats are supported, including CSV, JSON, and HTML.

#### 2.5.4. <a name='consent-and-restrictions-management'></a>Consent and Restrictions Management

End users agree to library rules to use services. Clients may apply restrictions or limit access to specific functions, such as borrowing or self-service library use at certain locations. Clients are responsible for setting and maintaining these correctly.

#### 2.5.5. <a name='minimization-of-personal-data-processing-incl-removal-of-outdated-data'></a>Minimization of Personal Data Processing (incl. removal of outdated data)

Maintaining the register is the client’s responsibility.  
Any handling of client data is logged.  
The system allows identifying outdated or inactive end users to help clean the client registry.

#### 2.5.6. <a name='anonymizationpseudonymization-of-personal-data'></a>Anonymization/Pseudonymization of Personal Data

See above.

### 2.6. <a name='system-access-management-principles'></a>System Access Management Principles

#### 2.6.1. <a name='personal-user-accounts'></a>Personal User Accounts

Clients are always recommended to use personal accounts for employees. Accounts expire after a set period, with updates to credentials.  
System administrators have personal accounts for maintenance tasks.

#### 2.6.2. <a name='password-requirements'></a>Password Requirements

Password requirements can be set in system settings.  
Passwords are stored encrypted in the database using Blowfish:  
[Koha AuthUtils.pm](https://github.com/Koha-Community/Koha/blob/master/Koha/AuthUtils.pm#L68)

### 2.7. <a name='logs'></a>Logs

#### 2.7.1. <a name='login-logs-admin-usage-logs'></a>Login Logs, Admin Usage Logs

Stored in `koha.sessions` table.

#### 2.7.2. <a name='logging-of-personal-data-processing-usage-logs'></a>Logging of Personal Data Processing (Usage Logs)

Stored in `koha.action_logs` table.

#### 2.7.3. <a name='log-reports'></a>Log Reports

No reports are generated from logs.

#### 2.7.4. <a name='log-protection'></a>Log Protection

An external logging server may be used according to service agreements to consolidate logs from multiple environments, protecting against STRIDE threats.

### 2.8. <a name='backups'></a>Backups

Backups include logs and database contents – all client-generated data.  
We retain backups for 5 years or for the contract duration + 6 months.  
Real-time backup and restoration can be provided under the agreement.  
Backups are `.tar.gz` files; incremental backups are not currently needed due to small data size.

### 2.9. <a name='recovery-plan'></a>Recovery Plan

All environments can be restored and rebuilt from version-controlled configurations and backup servers.  
Central server can be restored from backups and version control.  
Idempotent scripts are used for updates, installation, and maintenance to maintain confidence in automation.  
If the infrastructure provider cannot deliver reliable service, Hypernova Oy may change providers.

### 2.10. <a name='security-updates'></a>Security Updates

See above.

### 2.11. <a name='security-description'></a>Security Description

We use ciphers and protocols to achieve perfect scores in SSL Labs tests.  
Clients are instructed to guide end users to keep browsers updated.

#### 2.11.1. <a name='encryptions'></a>Encryptions

RSA, EECDH+AESGCM:EDH+AESGCM

#### 2.11.2. <a name='password-protection'></a>Password Protection

Blowfish

#### 2.11.3. <a name='connectionnetwork-security'></a>Connection/Network Security

TLS1.3

#### 2.11.4. <a name='data-protection'></a>Data Protection

- Backups encrypted with AES-512  
- Network traffic always encrypted with TLS 1.3

#### 2.11.5. <a name='data-entry-protection'></a>Data Entry Protection

SSL

#### 2.11.6. <a name='data-model-security'></a>Data Model Security

-