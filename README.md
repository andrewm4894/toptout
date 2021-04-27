<p align="center">
  <img id="logo" src="https://raw.githubusercontent.com/beatcracker/toptout/master/media/toptout.png">
</p>

<p align="center">
  <a href="https://github.com/beatcracker/toptout/actions?query=workflow%3ATests"><img alt="GitHub Actions status" src="https://github.com/beatcracker/toptout/workflows/Tests/badge.svg"></a>
</p>

# Easily opt-out from telemetry collection

Telemetry in software projects is a polarized issue: on the one hand it allows developers to improve their work by collecting various metrics, on the other hand - nobody likes to be spied on.
The goal of this project is to put you in control. See what data is collected by the tools you use and decide if you want to share it. Then use methods provided here to opt-in or opt-out.

## Usage

The core of this project is a [set of JSON files](/data/) which describe what telemetry is collected and what can be done to enable or disable it.
What you can do with it is only limited by your imagination. Here are several examples to get you started:

### 📜 Awesome list

The page you see has an [awesome-list of telemetry channels](#telemetry-channels) in various apps.

### 🧯 Scripts

[Scripts](/examples/) to disable all known telemetry channels in your shell session.

<p align="center">
  <img id="script" src="https://raw.githubusercontent.com/beatcracker/toptout/master/media/script.png">
</p>

### 🚧 API

Get telemetry configuration data via API! See [openapi.yaml](https://github.com/beatcracker/toptout/blob/master/docs/swagger/openapi.yaml) definition and try it online using [Swagger-UI](https://toptout.me/swagger).

Or try it in your shell! ⬇️

```shell
curl -X GET 'https://toptout.me/api/telemetry/id/powershell-core/' -H 'accept: application/json'
```

### 🤔 Future plans

- Automated tool that can ingest the data from the API. You could run it on your machine to detect and configure telemetry in all suported products.
  - 🚧 [nikvoronin/toptout-cli](https://github.com/nikvoronin/toptout-cli)
- ???

## Details

### JSON data format

JSON telemetry data format decscription: [data/README](/data/)

### Contributing

If the tool you're using is not here you can easily add it by creating a new JSON file describing its telemetry data channels. Pull requests are welcome!

See [CONTRIBUTING](/.github/CONTRIBUTING.md) for details on adding new telemetry data and running tests.

## Related projects

- [Console Do Not Track (DNT)](https://consoledonottrack.com)

  A proposed unified standard for opting out of telemetry for TUI/console apps: `export DO_NOT_TRACK=1`

  Git: [git.eeqj.de/sneak/consoledonottrack.com](https://git.eeqj.de/sneak/consoledonottrack.com)

- [privacy.sexy](https://privacy.sexy/)

  Web tool to enforce privacy & security best-practices on Windows, because privacy is sexy 🍑🍆

  GitHub: [undergroundwires/privacy.sexy](https://github.com/undergroundwires/privacy.sexy)

- [rljacobson/OptOutEnv](https://github.com/rljacobson/OptOutEnv)

  A lot of software enables telemetry by default unless an environment variable is set. This repository collects telemetry opt-out environment variables from across the web.

- [herrbischoff/telemetry](https://github.com/herrbischoff/telemetry)

  How to disable most data collection happening in your software and on your devices.

## Telemetry channels

Below is automatically generated list of known telemetry channels for various applications.

- [Applications](#applications)
  - [Atom](#atom)
  - [Firefox](#firefox)
  - [Homebrew](#homebrew)
  - [Lens](#lens)
  - [Microsoft 365 | Enterprise](#microsoft-365--enterprise)
  - [Microsoft calculator](#microsoft-calculator)
  - [VSCode](#vscode)
  - [Windows Terminal](#windows-terminal)
  - [winget](#winget)
- [Cloud](#cloud)
  - [AWS SAM CLI](#aws-sam-cli)
  - [Azure CLI](#azure-cli)
  - [Google Cloud SDK](#google-cloud-sdk)
  - [Netdata](#netdata)
  - [Netlify CLI](#netlify-cli)
  - [Stripe CLI](#stripe-cli)
  - [Tilt](#tilt)
- [Communications](#communications)
  - [Mattermost Server](#mattermost-server)
- [Database](#database)
  - [Feast](#feast)
  - [InfluxDB](#influxdb)
  - [Quilt](#quilt)
  - [TimescaleDB ](#timescaledb-)
- [Development](#development)
  - [Angular](#angular)
  - [Appc Daemon](#appc-daemon)
  - [Arduino CLI](#arduino-cli)
  - [Bot Framework CLI](#bot-framework-cli)
  - [Carbon Design System](#carbon-design-system)
  - [choosenim](#choosenim)
  - [Apache Cordova CLI](#apache-cordova-cli)
  - [Cube.js](#cubejs)
  - [Dagster](#dagster)
  - [.NET Interactive](#net-interactive)
  - [dotnet-svcutil](#dotnet-svcutil)
  - [DVC](#dvc)
  - [Ember CLI](#ember-cli)
  - [Flutter](#flutter)
  - [Gatsby](#gatsby)
  - [Hasura GraphQL engine](#hasura-graphql-engine)
  - [Ionic CLI](#ionic-cli)
  - [MeiliSearch](#meilisearch)
  - [ML.NET CLI](#mlnet-cli)
  - [mssql-cli](#mssql-cli)
  - [.NET Core SDK](#net-core-sdk)
  - [Next.js](#nextjs)
  - [Nuxt.js](#nuxtjs)
  - [Prisma](#prisma)
  - [REST API Fuzz Testing (RAFT)](#rest-api-fuzz-testing-raft)
  - [Rasa](#rasa)
  - [RESTler](#restler)
  - [Salto CLI](#salto-cli)
  - [Serverless Framework](#serverless-framework)
  - [Salesforce CLI](#salesforce-cli)
  - [Strapi](#strapi)
  - [webhint](#webhint)
  - [Yarn 2](#yarn-2)
- [DevOps](#devops)
  - [AutomatedLab](#automatedlab)
  - [Batect](#batect)
  - [Chef Automate](#chef-automate)
  - [Chef Workstation](#chef-workstation)
  - [Consul](#consul)
  - [Infracost](#infracost)
  - [k0s](#k0s)
  - [Packer](#packer)
  - [Skaffold](#skaffold)
  - [Telepresence](#telepresence)
  - [Terraform](#terraform)
  - [Cloud Development Kit for Terraform](#cloud-development-kit-for-terraform)
  - [Vagrant](#vagrant)
  - [Weave Net](#weave-net)
  - [WKSctl](#wksctl)
- [Drivers](#drivers)
  - [Nvidia drivers](#nvidia-drivers)
- [Operating systems](#operating-systems)
  - [Windows 10](#windows-10)
- [Shells](#shells)
  - [PowerShell Core](#powershell-core)

## Applications

### [Atom](https://atom.io)

> Help improve Atom by sending usage statistics, exceptions and deprecations to the team.

- [Telemetry details](https://github.com/atom/metrics)
- [Privacy policy](https://help.github.com/articles/github-privacy-policy/)

List of known telemetry channels:

#### Usage data

Official: ✔

> The user's decision is stored at core.telemetryConsent. The three possible values are undecided, no and limited. The intent is that consent is given if and only if limited is chosen.

Use methods described below to opt-out of this telemetry channel.

##### 1. Edit config file (plaintext)

###### Scope: 👤 User

| OS      | Path                              |
|---------|-----------------------------------|
| Linux   | `$HOME/.atom/init.coffee`         |
| macOS   | `$HOME/.atom/init.coffee`         |
| Windows | `%USERPROFILE%\.atom\init.coffee` |

###### Content

```none
atom.config.set('core.telemetryConsent', 'no')
```

### [Firefox](https://www.mozilla.org/firefox/)

> Telemetry collects information about your Firefox browsing experience to improve Firefox features, browser performance and stability.

- [Telemetry details](https://wiki.allizom.org/Telemetry/FAQ)
- [Privacy policy](https://www.mozilla.org/privacy/firefox/)

List of known telemetry channels:

#### [Enable policies (macOS)](https://github.com/mozilla/policy-templates/tree/master/mac)

Official: ✔

> Enable Firefox policies so the telemetry can be configured.

Use methods described below to opt-out of this telemetry channel.

##### 1. Run command

###### Scope: 💻 Machine

| OS    | Command                                                                                        |
|-------|------------------------------------------------------------------------------------------------|
| macOS | `defaults write /Library/Preferences/org.mozilla.firefox EnterprisePoliciesEnabled -bool TRUE` |

#### [Usage data](https://github.com/mozilla/policy-templates/blob/master/README.md)

Official: ✔

> Examples of the kind of data Telemetry sends to Mozilla includes start-up time, time between cycle collector runs, memory heap used, whether hardware graphics acceleration or Java is enabled, and more.
Telemetry does not collect any bookmarks or passwords. It may collect anonymized site visit information in some circumstances, such as when a secure browsing connection fails to connect, or for some experiments.

Use methods described below to opt-out of this telemetry channel.

##### 1. Run command

###### Scope: 💻 Machine

| OS    | Command                                                                               |
|-------|---------------------------------------------------------------------------------------|
| macOS | `defaults write /Library/Preferences/org.mozilla.firefox DisableTelemetry -bool TRUE` |

##### 2. Edit config file (JSON)

###### Scope: 💻 Machine

| OS      | Path                                                                      |
|---------|---------------------------------------------------------------------------|
| Linux   | `distribution/policies.json`                                              |
| macOS   | `/Applications/Firefox.app/Contents/Resources/distribution/policies.json` |
| Windows | `distribution\policies.json`                                              |

###### Content

```json
{
  "policies": {
    "DisableTelemetry": true
  }
}
```

##### 3. Set registry key

###### Scope: 💻 Machine

- Path: `HKEY_LOCAL_MACHINE\Software\Policies\Mozilla\Firefox\DisableTelemetry`
- Type: `REG_DWORD`
- Value: `1`

###### Scope: 👤 User

- Path: `HKEY_CURRENT_USER\Software\Policies\Mozilla\Firefox\DisableTelemetry`
- Type: `REG_DWORD`
- Value: `1`

### [Homebrew](https://brew.sh)

> Homebrew has begun gathering anonymous aggregate user behaviour analytics and reporting these to Google Analytics.

- [Telemetry details](https://docs.brew.sh/Analytics)
- Privacy policy: ❌

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
HOMEBREW_NO_ANALYTICS=1
```

##### 2. Run command

###### Scope: 👤 User

```shell
brew analytics off
```

### [Lens](https://k8slens.dev/)

> Lens collects telemetry data, which is used to help us understand how to improve the product. For example, this usage data helps us to debug issues and to prioritize new features.

- [Telemetry details](https://docs.k8slens.dev/getting-started/preferences)
- [Privacy policy](https://www.mirantis.com/company/privacy-policy/)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Visit link(s) for more details

1. [Disable usage data reporting](https://docs.k8slens.dev/v4.1.2/getting-started/preferences/#disable-telemetry-reporting)

    > If you don't wish to send usage data to Mirantis, you can disable the "Telemetry & Usage Tracking" in the Lens preferences.

### [Microsoft 365 | Enterprise](https://www.microsoft.com/en-us/microsoft-365/enterprise)

> Microsoft is committed to providing you with the information and controls you need to make choices about how your data is collected and used when you’re using Microsoft 365 Apps for enterprise (previously named Office 365 ProPlus).

- [Telemetry details](https://docs.microsoft.com/en-us/deployoffice/privacy/manage-privacy-controls)
- [Privacy policy](https://privacy.microsoft.com/en-us/privacystatement)

List of known telemetry channels:

#### [Diagnostic data](https://docs.microsoft.com/en-us/deployoffice/privacy/overview-privacy-controls#diagnostic-data-sent-from-microsoft-365-apps-for-enterprise-to-microsoftd)

Official: ✔

> Configure the level of client software diagnostic data sent by Office to Microsoft.

Use methods described below to opt-out of this telemetry channel.

##### 1. Run command

###### Scope: 💻 Machine

| OS    | Command                                                                                       |
|-------|-----------------------------------------------------------------------------------------------|
| macOS | `defaults write com.microsoft.office DiagnosticDataTypePreference -string ZeroDiagnosticData` |

##### 2. Set registry key

###### Scope: 👤 User

- Path: `HKEY_CURRENT_USER\Software\Policies\Microsoft\office\16.0\common\privacy\SendTelemetry`
- Type: `REG_DWORD`
- Value: `3`

### [Microsoft calculator](https://github.com/Microsoft/calculator)

> This project collects usage data and sends it to Microsoft to help improve our products and services.

- [Telemetry details](https://github.com/microsoft/calculator#diagnostic-data)
- [Privacy policy](https://go.microsoft.com/fwlink/?LinkId=521839)

List of known telemetry channels:

#### Diagnostic data

Official: ✔

> Diagnostic data is disabled in development builds by default, and can be enabled with the SEND_DIAGNOSTICS build flag.

### [VSCode](https://code.visualstudio.com/)

> Visual Studio Code collects telemetry data, which is used to help understand how to improve the product.

- [Telemetry details](https://code.visualstudio.com/docs/getstarted/telemetry)
- [Privacy policy](https://go.microsoft.com/fwlink/?LinkID=528096)

List of known telemetry channels:

#### Usage data

Official: ✔

> VS Code collects usage data that helps to debug issues, such as slow start-up times, and to prioritize new features.

Use methods described below to opt-out of this telemetry channel.

##### 1. Edit config file (JSON)

###### Scope: 👤 User

| OS      | Path                                                        |
|---------|-------------------------------------------------------------|
| Linux   | `$HOME/.config/Code/User/settings.json`                     |
| macOS   | `$HOME/Library/Application Support/Code/User/settings.json` |
| Windows | `%APPDATA%\Code\User\settings.json`                         |

###### Content

```json
{
  "telemetry.enableTelemetry": false
}
```

#### Crash data

Official: ✔

> VS Code collects data about any crashes that occur and sends it to Microsoft to help improve our products and services.

Use methods described below to opt-out of this telemetry channel.

##### 1. Edit config file (JSON)

###### Scope: 👤 User

| OS      | Path                                                        |
|---------|-------------------------------------------------------------|
| Linux   | `$HOME/.config/Code/User/settings.json`                     |
| macOS   | `$HOME/Library/Application Support/Code/User/settings.json` |
| Windows | `%APPDATA%\Code\User\settings.json`                         |

###### Content

```json
{
  "telemetry.enableCrashReporter": false
}
```

### [Windows Terminal](https://github.com/microsoft/terminal)

> The Windows Terminal client is instrumented to collect usage and diagnostic (error) data and sends it to Microsoft to help improve the product.

- [Telemetry details](https://github.com/microsoft/terminal/issues/5331)
- Privacy policy: ❌

List of known telemetry channels:

#### [Usage and Diagnostic data](https://support.microsoft.com/en-us/help/4468236/diagnostics-feedback-and-privacy-in-windows-10-microsoft-privacy)

Official: ✔

> The Windows Terminal client respects machine wide privacy settings and users can opt-out on their device, as documented in the Microsoft Windows privacy statement.

Use methods described below to opt-out of this telemetry channel.

##### 1. Visit link(s) for more details

1. [support.microsoft.com | Diagnostics, feedback, and privacy in Windows 10](https://support.microsoft.com/en-us/windows/diagnostics-feedback-and-privacy-in-windows-10-28808a2b-a31b-dd73-dcd3-4559a5199319)

    > To opt-out, go to 'Start', then select 'Settings' > 'Privacy' > 'Diagnostics & feedback', and select 'Basic'.

##### 2. Set registry key

###### Scope: 💻 Machine

- Path: `HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DataCollection\AllowTelemetry`
- Type: `REG_DWORD`
- Value: `1`

### [winget](https://github.com/microsoft/winget-cli)

> The winget.exe client is instrumented to collect usage and diagnostic (error) data and sends it to Microsoft to help improve the product.

- [Telemetry details](https://github.com/microsoft/winget-cli#datatelemetry)
- [Privacy policy](https://github.com/microsoft/winget-cli/blob/master/privacy.md)

List of known telemetry channels:

#### [Usage and Diagnostic data](https://support.microsoft.com/en-us/help/4468236/diagnostics-feedback-and-privacy-in-windows-10-microsoft-privacy)

Official: ✔

> The winget.exe client respects machine wide privacy settings and users can opt-out on their device, as documented in the Microsoft Windows privacy statement.

Use methods described below to opt-out of this telemetry channel.

##### 1. Visit link(s) for more details

1. [support.microsoft.com | Diagnostics, feedback, and privacy in Windows 10](https://support.microsoft.com/en-us/windows/diagnostics-feedback-and-privacy-in-windows-10-28808a2b-a31b-dd73-dcd3-4559a5199319)

    > To opt-out, go to 'Start', then select 'Settings' > 'Privacy' > 'Diagnostics & feedback', and select 'Basic'.

##### 2. Set registry key

###### Scope: 💻 Machine

- Path: `HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DataCollection\AllowTelemetry`
- Type: `REG_DWORD`
- Value: `1`

## Cloud

### [AWS SAM CLI](https://aws.amazon.com/serverless/sam/)

> At AWS, we develop and launch services based on what we learn from interactions with customers. We use customer feedback to iterate on our product. Telemetry is additional information that helps us to better understand our customers’ needs, diagnose issues, and deliver features that improve the customer experience. The AWS SAM CLI collects telemetry, such as generic usage metrics, system and environment information, and errors.

- [Telemetry details](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-telemetry.html)
- [Privacy policy](https://aws.amazon.com/compliance/data-privacy-faq/)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
SAM_CLI_TELEMETRY=0
```

### [Azure CLI](https://docs.microsoft.com/en-us/cli/azure)

> Allow Microsoft to collect anonymous data on the usage of the CLI.

- [Telemetry details](https://docs.microsoft.com/en-us/cli/azure/azure-cli-configuration)
- [Privacy policy](https://aka.ms/AzureCliLegal)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
AZURE_CORE_COLLECT_TELEMETRY=0
```

##### 2. Run command

###### Scope: 👤 User

```shell
az configure -d collect_telemetry=0
```

### [Google Cloud SDK](https://cloud.google.com/sdk)

> Unless you opt-in during Google Cloud SDK installation, Cloud SDK software does not collect usage statistics. You can help Google to prioritize Google Cloud SDK features and improvements by permitting Cloud SDK to send command-line command usage statistics to Google.

- [Telemetry details](https://cloud.google.com/sdk/usage-statistics)
- [Privacy policy](https://policies.google.com/privacy)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Run command

###### Scope: 👤 User

```shell
gcloud config set disable_usage_reporting true
```

### [Netdata](https://www.netdata.cloud)

> Starting with v1.12, Netdata collects anonymous usage information by default and sends it to Google Analytics.

- [Telemetry details](https://learn.netdata.cloud/docs/agent/anonymous-statistics)
- [Privacy policy](https://learn.netdata.cloud/docs/agent/privacy-policy/)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
DO_NOT_TRACK=1
```

### [Netlify CLI](https://netlify.com)

> By default, Netlify collects data on usage of Netlify CLI commands. We do this to improve the reliability and performance of Netlify CLI, and to help drive new features and improvements.

- [Telemetry details](https://docs.netlify.com/cli/get-started/#usage-data-collection)
- [Privacy policy](https://www.netlify.com/privacy/)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Run command

###### Scope: 👤 User

```shell
netlify --telemetry-disable
```

##### 2. Edit config file (JSON)

###### Scope: 👤 User

| OS      | Path                                 |
|---------|--------------------------------------|
| Linux   | `$HOME/.netlify/config.json`         |
| macOS   | `$HOME/.netlify/config.json`         |
| Windows | `%USERPROFILE%\.netlify\config.json` |

###### Content

```json
{
  "telemetryDisabled": true
}
```

### [Stripe CLI](https://stripe.com/docs/stripe-cli)

> The Stripe CLI includes a telemetry feature that collects some usage data. This feature is enabled by default.

- [Telemetry details](https://github.com/stripe/stripe-cli/wiki/telemetry)
- [Privacy policy](https://stripe.com/privacy)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
STRIPE_CLI_TELEMETRY_OPTOUT=1
```

### [Tilt](https://tilt.dev)

> Tilt sends anonymized data about how you use it.

- [Telemetry details](https://docs.tilt.dev/telemetry_faq.html)
- Privacy policy: ❌

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
DO_NOT_TRACK=1
```

## Communications

### [Mattermost Server](https://mattermost.com/)

> As described in the privacy policy in each Mattermost server, telemetry data optionally shared from your Mattermost servers is used to identify security and reliability issues, to analyze and fix software problems, to help improve the quality of Mattermost software and related services, and to make design decisions for future releases.

- [Telemetry details](https://docs.mattermost.com/administration/telemetry.html)
- [Privacy policy](https://about.mattermost.com/default-privacy-policy/)

List of known telemetry channels:

#### [Diagnostic data](https://docs.mattermost.com/administration/telemetry.html#error-and-diagnostics-reporting-feature)

Official: ❌

- [Telemetry details](https://github.com/mattermost/mattermost-server/issues/9466)

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
MM_LOGSETTINGS_ENABLEDIAGNOSTICS=false
```

#### [Security Update Check](https://docs.mattermost.com/administration/telemetry.html#security-update-check-feature)

Official: ❌

- [Telemetry details](https://github.com/mattermost/mattermost-server/issues/9466)

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
MM_SERVICESETTINGS_ENABLESECURITYFIXALERT=false
```

## Database

### [Feast](https://feast.dev/)

> The Feast maintainers use anonymous usage statistics to help shape the Feast roadmap.

- [Telemetry details](https://docs.feast.dev/feast-on-kubernetes/advanced-1/telemetry)
- Privacy policy: ❌

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
FEAST_TELEMETRY=False
```

### [InfluxDB](https://www.influxdata.com/)

> InfluxData collects information about the usage of InfluxDB. This “phone home” capability is intended to provide us with information about the broader user community and an understanding of how the platform is being used.

- [Telemetry details](https://www.influxdata.com/telemetry/)
- [Privacy policy](https://www.influxdata.com/legal/privacy-policy/)

List of known telemetry channels:

#### [Usage data](https://docs.influxdata.com/influxdb/v2.0/reference/config-options/)

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
INFLUXD_REPORTING_DISABLED=true
```

##### 2. Visit link(s) for more details

1. [Disable usage data reporting](https://docs.influxdata.com/influxdb/v2.0/get-started/#influxdb-phone-home)

    > Telemetry reporting is enabled by default. However, we’ve made it as easy as possible to ‘opt-out’ of the reporting. Simply start the InfluxDB process with the --reporting-disabled flag

##### 3. Edit config file (plaintext)

###### Scope: 👤 User

| OS      | Path                                |
|---------|-------------------------------------|
| Linux   | `$INFLUXD_CONFIG_PATH/config.yaml`  |
| macOS   | `$INFLUXD_CONFIG_PATH/config.yaml`  |
| Windows | `%INFLUXD_CONFIG_PATH%\config.yaml` |

###### Content

```none
[telemetry]
enabled: false
```

### [Quilt](https://quiltdata.com/)

> Quilt collect anonymous usage statistics to find bugs and prioritize features.

- [Telemetry details](https://docs.quiltdata.com/more/faq#does-quilt3-collect-anonymous-usage-statistics)
- Privacy policy: ❌

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
QUILT_DISABLE_USAGE_METRICS=True
```

##### 2. Run command

###### Scope: 👤 User

```shell
quilt3 disable-telemetry
```

### [TimescaleDB ](https://www.timescale.com/)

> We enable anonymous usage sharing to help us better understand and assist TimescaleDB users, as well as provide automated version checks.

- [Telemetry details](https://docs.timescale.com/latest/using-timescaledb/telemetry)
- [Privacy policy](https://www.timescale.com/legal/privacy)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Run command

###### Scope: 💻 Machine

```shell
psql -c "ALTER SYSTEM SET timescaledb.telemetry_level=off"
```

##### 2. Edit config file (plaintext)

###### Scope: 👤 User

| OS      | Path                                                                       |
|---------|----------------------------------------------------------------------------|
| Linux   | `/usr/local/var/postgres/postgresql.conf`                                  |
| macOS   | `./Library/PostgreSQL/{postgres_version}/share/postgresql/postgresql.conf` |
| Windows | `%ProgramFiles%\PostgreSQL\{postgres_version}\postgresql.conf`             |

###### Content

```none
timescaledb.telemetry_level=off
```

## Development

### [Angular](https://angular.io)

> When installing the Angular CLI or upgrading an existing version, you are prompted to allow global collection of usage statistics. If you say no or skip the prompt, no data is collected.

- [Telemetry details](https://angular.io/cli/analytics)
- Privacy policy: ❌

List of known telemetry channels:

#### [Usage data](https://angular.io/analytics)

Official: ✔

- [Telemetry details](https://github.com/angular/angular-cli/blob/master/docs/design/analytics.md#disabling-usage-analytics)

> Share usage data with Angular team.

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
NG_CLI_ANALYTICS=false
```

##### 2. Run command

###### Scope: 👤 User

```shell
ng analytics off
```

#### [Usage data (custom)](https://angular.io/cli/usage-analytics-gathering)

Official: ✔

- [Telemetry details](https://angular.io/cli/usage-analytics-gathering)

> Gather usage data in your own Google Analytics. This configuration option is separate from and in addition to other usage analytics that your users may be sharing with Google.

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
NG_CLI_ANALYTICS_SHARE=false
```

##### 2. Run command

###### Scope: 👤 User

```shell
ng config --global --remove cli.analyticsSharing
```

##### 3. Edit config file (JSON)

###### Scope: 👤 User

| OS      | Path                                 |
|---------|--------------------------------------|
| Linux   | `$HOME/.angular-config.json`         |
| macOS   | `$HOME/.angular-config.json`         |
| Windows | `%USERPROFILE%\.angular-config.json` |

###### Content

```json
{
  "cli": {
    "analyticsSharing": ""
  }
}
```

### [Appc Daemon](https://github.com/appcelerator/appc-daemon)

> The telemetry system is implemented in the appcd-telemetry pacakge and provides a service for collecting time and counter-based information and sending it to the Appc cloud for processing.

- [Telemetry details](https://github.com/appcelerator/appc-daemon/blob/master/docs/Development/appcd/Architecture/Telemetry.md)
- [Privacy policy](https://www.axway.com/en/privacy-statement)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
APPCD_TELEMETRY=0
```

##### 2. Run command

###### Scope: 👤 User

```shell
appcd config set telemetry.enabled false --force
```

### [Arduino CLI](https://arduino.github.io/arduino-cli/latest/)

> No data is currently gathered from users of the CLI. Arduino CLI can be launched as a gRPC server via the daemon command. To provide observability for the gRPC server activities besides logs, the daemon mode activates and exposes by default a Prometheus endpoint (http://localhost:9090/metrics) that can be fetched for metrics data

- [Telemetry details](https://arduino.github.io/arduino-cli/latest/getting-started/#using-the-daemon-mode-and-the-grpc-interface)
- Privacy policy: ❌

List of known telemetry channels:

#### Internal metrics

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
ARDUINO_METRICS_ENABLED=false
```

##### 2. Visit link(s) for more details

1. [Internal metrics (config file)](https://arduino.github.io/arduino-cli/latest/getting-started/#using-the-daemon-mode-and-the-grpc-interface)

    > The metrics settings are exposed via the metrics section in the CLI configuration

### [Bot Framework CLI](https://github.com/microsoft/botframework-cli)

> Privacy is very important to us. BF CLI contains optional instrumentation that is designed to help us improve the tool based on anonymous usage patterns. It is disabled, opted-out by default.

- [Telemetry details](https://github.com/microsoft/botframework-cli#privacy)
- [Privacy policy](https://privacy.microsoft.com/en-us/privacystatement)

List of known telemetry channels:

#### [Usage data](https://github.com/microsoft/botframework-cli/tree/main/packages/cli#bf-configsettelemetry)

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
BF_CLI_TELEMETRY=false
```

##### 2. Run command

###### Scope: 👤 User

```shell
bf config:set:telemetry --disable
```

### [Carbon Design System](https://www.carbondesignsystem.com/)

> Carbon contains a telemetry feature that collects usage information for IBM and Carbon Design System properties.

- [Telemetry details](https://www.carbondesignsystem.com/help/faq/#telemetry)
- [Privacy policy](https://www.ibm.com/privacy)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
CARBON_TELEMETRY_DISABLED=1
```

### [choosenim](https://github.com/dom96/choosenim)

> Starting with version 0.3.0, choosenim has the ability to gather anonymous aggregate user behaviour analytics and to report them to Google Analytics.

- [Telemetry details](https://github.com/dom96/choosenim/blob/master/analytics.md)
- Privacy policy: ❌

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
CHOOSENIM_NO_ANALYTICS=1
```

### [Apache Cordova CLI](https://cordova.apache.org)

> We use the gathered information to help us make our tool more useful and to better understand how it is used. We do not track or collect personally identifiable information or associate gathered data with any personally identifying information from other sources.

- [Telemetry details](https://cordova.apache.org/docs/en/latest/reference/cordova-cli/#global-command-list)
- [Privacy policy](https://cordova.apache.org/privacy/)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
CI=ANY_VALUE
```

##### 2. Run command

###### Scope: 👤 User

```shell
cordova telemetry off
```

### [Cube.js](https://cube.dev/)

> Cube.js collects high-level anonymous usage statistics for servers started in development mode. It doesn't track any credentials, schema contents or queries issued. This statistics is used solely for the purpose of constant cube.js improvement.

- [Telemetry details](https://cube.dev/docs/config#options-reference-telemetry)
- [Privacy policy](https://cube.dev/privacy-policy)

List of known telemetry channels:

#### [Usage data](https://cube.dev/docs/reference/environment-variables#general)

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
CUBEJS_TELEMETRY=false
```

#### Usage data (per-project)

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Visit link(s) for more details

1. [Disable per-project usage data reporting](https://cube.dev/docs/config#options-reference-telemetry)

    > You can opt out by setting telemetry option to false: `module.exports = { telemetry: false, };`

### [Dagster](https://dagster.io/)

> As an open source project, we collect usage statistics to better understand how users engage with Dagster and to inform development priorities.

- [Telemetry details](https://docs.dagster.io/getting-started/telemetry)
- Privacy policy: ❌

List of known telemetry channels:

#### Usage data (config file)

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Edit config file (plaintext)

###### Scope: 👤 User

| OS      | Path                          |
|---------|-------------------------------|
| Linux   | `$DAGSTER_HOME/dagster.yaml`  |
| macOS   | `$DAGSTER_HOME/dagster.yaml`  |
| Windows | `%DAGSTER_HOME%\dagster.yaml` |

###### Content

```none
[telemetry]
enabled: false
```

#### [Usage data (environment variable)](https://github.com/dagster-io/dagster/blob/master/python_modules/dagit/dagit/telemetry.py)

Official: ❌

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
DAGSTER_DISABLE_TELEMETRY=ANY_VALUE
```

### [.NET Interactive](https://github.com/dotnet/interactive)

> Telemetry is collected when .NET Interactive is started. Once .NET Interactive is running, we do not collect telemetry from any further user actions.

- [Telemetry details](https://github.com/dotnet/interactive/blob/main/docs/README.md#telemetry)
- Privacy policy: ❌

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
DOTNET_INTERACTIVE_CLI_TELEMETRY_OPTOUT=1
```

### [dotnet-svcutil](https://docs.microsoft.com/en-us/dotnet/core/additional-tools/dotnet-svcutil-guide)

> Anonymous telemetry information collection.

- [Telemetry details](https://github.com/dotnet/wcf/blob/main/release-notes/dotnet-svcutil-notes.md)
- Privacy policy: ❌

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
DOTNET_SVCUTIL_TELEMETRY_OPTOUT=1
```

### [DVC](https://dvc.org/)

> To help us better understand how DVC is used and improve it, DVC captures and reports anonymized usage statistics.

- [Telemetry details](https://dvc.org/doc/user-guide/analytics)
- [Privacy policy](https://dvc.org/doc/user-guide/privacy)

List of known telemetry channels:

#### Usage Analytics

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Run command

###### Scope: 💻 Machine

```shell
dvc config core.analytics false --system
```

###### Scope: 👤 User

```shell
dvc config core.analytics false --global
```

### [Ember CLI](https://cli.emberjs.com/)

> Ember-cli tracks (only) the following data points: ember-cli version, build/rebuild/live-reload times, how many errors occurred.

- [Telemetry details](https://github.com/ember-cli/ember-cli/blob/master/docs/analytics.md)
- Privacy policy: ❌

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Edit config file (JSON)

###### Scope: 👤 User

| OS      | Path                       |
|---------|----------------------------|
| Linux   | `$HOME/.ember-cli`         |
| macOS   | `$HOME/.ember-cli`         |
| Windows | `%USERPROFILE%\.ember-cli` |

###### Content

```json
{
  "disableAnalytics": true
}
```

##### 2. Visit link(s) for more details

1. [Disable usage data reporting](https://github.com/ember-cli/ember-cli/pull/2923)

    > You can also disable analytics on per-command basis by adding '--disable-analytics' option

### [Flutter](https://flutter.dev/)

> If you have not opted-out of Flutter’s analytics and crash reporting, when a flutter command crashes it attempts to send a crash report to Google in order to help Google contribute improvements to Flutter over time.

- [Telemetry details](https://flutter.dev/docs/reference/crash-reporting)
- [Privacy policy](https://policies.google.com/privacy)

List of known telemetry channels:

#### Crash reporting

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Run command

###### Scope: 👤 User

```shell
flutter config --no-analytics
```

### [Gatsby](https://www.gatsbyjs.org)

> Gatsby contains a telemetry feature that collects anonymous usage information that is used to help improve Gatsby for all users. The Gatsby user base is growing very rapidly. It’s important that our small team and the greater community will better understand the usage patterns, so we can best decide how to design future features and prioritize current work.

- [Telemetry details](https://www.gatsbyjs.org/docs/telemetry/)
- [Privacy policy](https://www.gatsbyjs.com/privacy-policy/)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
GATSBY_TELEMETRY_DISABLED=1
```

##### 2. Run command

###### Scope: 👤 User

```shell
gatsby telemetry --disable
```

### [Hasura GraphQL engine](https://hasura.io)

> The Hasura GraphQL engine collects anonymous telemetry data that helps the Hasura team in understanding how the product is being used and in deciding what to focus on next.

- [Telemetry details](https://docs.hasura.io/1.0/graphql/manual/guides/telemetry.html)
- [Privacy policy](https://hasura.io/legal/hasura-privacy-policy)

List of known telemetry channels:

#### Usage data (CLI and Console)

Official: ✔

> The CLI collects each execution event, along with a randomly generated UUID. The execution event contains the command name, timestamp and whether the execution resulted in an error or not. Error messages, arguments and flags are not recorded. The CLI also collects the server version and UUID that it is talking to. The operating system platform and architecture is also noted along with the CLI version.

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
HASURA_GRAPHQL_ENABLE_TELEMETRY=false
```

##### 2. Edit config file (JSON)

###### Scope: 👤 User

| OS      | Path                                |
|---------|-------------------------------------|
| Linux   | `$HOME/.hasura/config.json`         |
| macOS   | `$HOME/.hasura/config.json`         |
| Windows | `%USERPROFILE%\.hasura\config.json` |

###### Content

```json
{
  "enable_telemetry": false
}
```

### [Ionic CLI](https://ionicframework.com/)

> The CLI sends usage data to Ionic to create a better experience.

- [Telemetry details](https://ionicframework.com/docs/cli/configuration#telemetry)
- [Privacy policy](https://ionicframework.com/privacy)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Run command

###### Scope: 👤 User

```shell
ionic config set --global telemetry false
```

### [MeiliSearch](https://github.com/meilisearch/MeiliSearch)

> MeiliSearch collects anonymous data regarding general usage. This helps us better understand developers' usage of MeiliSearch features. We also use Sentry to make us crash and error reports.

- [Telemetry details](https://github.com/meilisearch/MeiliSearch/blob/main/README.md#telemetry)
- Privacy policy: ❌

List of known telemetry channels:

#### Usage data and crash reports

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
MEILI_NO_ANALYTICS=true
```

### [ML.NET CLI](https://docs.microsoft.com/en-us/dotnet/machine-learning/automate-training-with-cli)

> The ML.NET CLI includes a telemetry feature that collects anonymous usage data that is aggregated for use by Microsoft.

- [Telemetry details](https://docs.microsoft.com/en-us/dotnet/machine-learning/resources/ml-net-cli-telemetry)
- [Privacy policy](https://privacy.microsoft.com/en-us/privacystatement)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
MLDOTNET_CLI_TELEMETRY_OPTOUT=True
```

### [mssql-cli](https://github.com/dbcli/mssql-cli)

> By default, Microsoft collects anonymous usage data in order to improve the user experience. The usage data collected allows the team to prioritize features and bug fixes.

- [Telemetry details](https://github.com/dbcli/mssql-cli/blob/master/doc/telemetry_guide.md)
- [Privacy policy](https://privacy.microsoft.com/en-us/privacystatement)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
MSSQL_CLI_TELEMETRY_OPTOUT=True
```

### [.NET Core SDK](https://docs.microsoft.com/en-us/dotnet/core/tools/index)

> The NET Core SDK includes a telemetry feature that collects usage data and exception information when the .NET Core CLI crashes. The .NET Core CLI comes with the .NET Core SDK and is the set of verbs that enable you to build, test, and publish your .NET Core apps. It's important that the .NET team understands how the tools are used so they can be improved. Information on failures helps the team resolve problems and fix bugs.

- [Telemetry details](https://docs.microsoft.com/en-us/dotnet/core/tools/telemetry)
- [Privacy policy](https://go.microsoft.com/fwlink/?LinkID=528096)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
DOTNET_CLI_TELEMETRY_OPTOUT=true
```

### [Next.js](https://nextjs.org)

> Next.js collects completely anonymous telemetry data about general usage. Participation in this anonymous program is optional, and you may opt-out if you'd not like to share any information.

- [Telemetry details](https://nextjs.org/telemetry)
- [Privacy policy](https://zeit.co/security#policy)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
NEXT_TELEMETRY_DISABLED=1
```

##### 2. Run command

###### Scope: 👤 User

```shell
npx next telemetry disable
```

### [Nuxt.js](https://nuxtjs.org/)

> Nuxt Telemetry collects anonymous telemetry data about general usage. This helps us to accurately gauge feature usage and customization across all our users.

- [Telemetry details](https://nuxtjs.org/docs/2.x/configuration-glossary/configuration-telemetry)
- Privacy policy: ❌

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
NUXT_TELEMETRY_DISABLED=1
```

##### 2. Run command

###### Scope: 👤 User

```shell
npx nuxt telemetry disable --global
```

### [Prisma](https://www.prisma.io/)

> Telemetry helps us better understand how many users are using our products and how often they are using our products.

- [Telemetry details](https://www.prisma.io/docs/concepts/more/telemetry)
- [Privacy policy](https://pris.ly/privacy)

List of known telemetry channels:

#### [Usage data](https://www.prisma.io/docs/concepts/more/telemetry#usage-data)

Official: ✔

> Invocations of the prisma CLI and general usage of Studio results in data being sent to the telemetry server at https://checkpoint.prisma.io.

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
CHECKPOINT_DISABLE=1
```

#### [Error reporting](https://www.prisma.io/docs/concepts/more/telemetry#error-reporting)

Official: ✔

> Before an error report is submitted, there will always be a prompt asking you to confirm or deny the submission of the error report!

Use methods described below to opt-out of this telemetry channel.

##### 1. Visit link(s) for more details

1. [Disable error reporting](https://www.prisma.io/docs/concepts/more/telemetry#error-reporting-1)

    > You can opt-out of data collection by responding to the interactive prompt with no.

### [REST API Fuzz Testing (RAFT)](https://github.com/microsoft/rest-api-fuzz-testing)

> By default, we collect anonymous usage data from your RAFT instance, which helps us understand how users use RAFT and the problems they experience, which in turn, helps us improve the quality of the offering over time.

- [Telemetry details](https://github.com/microsoft/rest-api-fuzz-testing/blob/main/docs/how-to-deploy.md#telemetry)
- [Privacy policy](https://privacy.microsoft.com/en-us/privacystatement)

List of known telemetry channels:

#### [Usage data](https://github.com/microsoft/rest-api-fuzz-testing/blob/main/docs/how-to-deploy.md#telemetry)

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Visit link(s) for more details

1. [Disable metrics in config file](https://github.com/microsoft/rest-api-fuzz-testing/blob/main/docs/how-to-deploy.md#telemetry)

    > The first time you use this command, RAFT will create an empty 'defaults.json' file in the CLI directory on your local machine. Set the 'metricsOptIn' field in this file set to 'false'

### [Rasa](https://rasa.com/)

> Rasa uses telemetry to report anonymous usage information. This information is essential to help improve Rasa Open Source for all users.

- [Telemetry details](https://rasa.com/docs/rasa/telemetry/telemetry)
- [Privacy policy](https://rasa.com/privacy-policy/)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
RASA_TELEMETRY_ENABLED=false
```

##### 2. Run command

###### Scope: 👤 User

```shell
rasa telemetry disable
```

### [RESTler](https://github.com/microsoft/restler-fuzzer)

> RESTler collects telemetry in order to understand usage and prioritize improvements.

- [Telemetry details](https://github.com/microsoft/restler-fuzzer/tree/main#data-collection)
- [Privacy policy](https://privacy.microsoft.com/en-us/privacystatement)

List of known telemetry channels:

#### [Usage data](https://github.com/microsoft/restler-fuzzer/blob/main/docs/user-guide/Telemetry.md)

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
RESTLER_TELEMETRY_OPTOUT=1
```

### [Salto CLI](https://www.salto.io/)

> Telemetry refers to the collection of non personally identifiable data. The data is being used to improve the product's performance, as well as detect bugs and issues.

- [Telemetry details](https://github.com/salto-io/salto/blob/master/docs/telemetry.md)
- [Privacy policy](https://www.salto.io/privacy-policy)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
SALTO_TELEMETRY_DISABLE =1
```

##### 2. Edit config file (plaintext)

###### Scope: 👤 User

| OS      | Path                                            |
|---------|-------------------------------------------------|
| Linux   | `$HOME/.salto/salto.config/config.nacl`         |
| macOS   | `$HOME/.salto/salto.config/config.nacl`         |
| Windows | `%USERPROFILE%\.salto\salto.config\config.nacl` |

###### Content

```none
AppConfig:
    telemetry: false
```

### [Serverless Framework](https://www.serverless.com/)

> Serverless Framework collects anonymous telemetry data in order to better understand the needs of our users and to help drive better prioritization of improvements and more informed decisions.

- [Telemetry details](https://www.serverless.com/framework/docs/telemetry/)
- [Privacy policy](https://app.serverless.com/legal/privacy)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
SLS_TELEMETRY_DISABLED=1
```

##### 2. Run command

###### Scope: 👤 User

```shell
serverless slstats --disable
```

### [Salesforce CLI](https://developer.salesforce.com/tools/sfdxcli)

> Salesforce collects usage data and metrics (telemetry) to help improve Salesforce CLI. We collect anonymous information related to the use of the CLI and plug-ins, such as which commands and parameters were run, and performance and error data.

- [Telemetry details](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_dev_cli_telemetry.htm)
- [Privacy policy](https://www.salesforce.com/company/privacy.jsp)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
SFDX_DISABLE_TELEMETRY=true
```

##### 2. Run command

###### Scope: 👤 User

```shell
sfdx config:set disableTelemetry=true --global
```

### [Strapi](https://strapi.io/)

> Strapi contains a feature in which anonymous and otherwise non-sensitive data is collected. This data is collectively aggregated for all our users, which when taken together give us a better global understanding of how users are interacting and using Strapi.

- [Telemetry details](https://strapi.io/documentation/developer-docs/latest/getting-started/usage-information.html)
- [Privacy policy](https://strapi.io/privacy)

List of known telemetry channels:

#### [Usage data](https://strapi.io/documentation/developer-docs/latest/setup-deployment-guides/configurations.html#environment)

Official: ✔

> Don't send telemetry usage data to Strapi.

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
STRAPI_TELEMETRY_DISABLED=true
```

#### Usage data (per-project)

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Visit link(s) for more details

1. [Disable per-project usage data reporting](https://strapi.io/documentation/developer-docs/latest/getting-started/usage-information.html#opt-out)

    > Should you decide to opt-out, you may do so by removing the 'uuid' property in the 'package.json' file located within the root of your project. This will automatically disable this feature.

#### [Update check](https://strapi.io/documentation/developer-docs/latest/setup-deployment-guides/configurations.html#environment)

Official: ✔

> Don't show the notification message about updating strapi in the terminal.

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
STRAPI_DISABLE_UPDATE_NOTIFICATION=true
```

### [webhint](https://webhint.io/)

> At the end of the second run webhint we will ask if you want to send limited usage information to help us to build a better product.

- [Telemetry details](https://webhint.io/docs/user-guide/telemetry/summary/)
- Privacy policy: ❌

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
HINT_TELEMETRY=off
```

##### 2. Run command

###### Scope: 👤 User

```shell
hint --telemetry=off
```

### [Yarn 2](https://yarnpkg.com/)

> Data are sent via batches, roughly every seven days. This prevents us from tracking your usage with a too high granularity, leaving us only the most useful information to do our job efficiently.

- [Telemetry details](https://yarnpkg.com/advanced/telemetry)
- Privacy policy: ❌

List of known telemetry channels:

#### [Usage data](https://yarnpkg.com/advanced/telemetry)

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Run command

###### Scope: 👤 User

```shell
yarn config set --home enableTelemetry 0
```

#### [Usage data (per-project)](https://yarnpkg.com/advanced/telemetry)

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Visit link(s) for more details

1. [Disable per-project usage data reporting](https://yarnpkg.com/advanced/telemetry#how-can-i-disable-it)

    > To disable it on a project (including for anyone who would clone it), run: yarn config set enableTelemetry 0

## DevOps

### [AutomatedLab](https://github.com/AutomatedLab/AutomatedLab)

> AutomatedLab will start to collect telemetry starting with version 5.0. This is an opt-out collection and you will be asked once to specify whether or not you want to send us telemetry data.

- [Telemetry details](https://github.com/AutomatedLab/AutomatedLab/wiki/Lab-Telemetry)
- Privacy policy: ❌

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
AUTOMATEDLAB_TELEMETRY_OPTOUT=1
```

##### 2. Run command

###### Scope: 👤 User

| OS      | Command                                                                                                                                                                  |
|---------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Other   | `pwsh -NoLogo -NoProfile -NonInteractive -ExecutionPolicy Bypass -Command "Import-Module AutomatedLab -ErrorAction Stop ; Disable-LabTelemetry -ErrorAction Stop"`       |
| Windows | `powershell -NoLogo -NoProfile -NonInteractive -ExecutionPolicy Bypass -Command "Import-Module AutomatedLab -ErrorAction Stop ; Disable-LabTelemetry -ErrorAction Stop"` |

### [Batect](https://batect.dev/)

> No personally identifiable information or telemetry information is sent to the API as part of this process.

- [Telemetry details](https://batect.dev/privacy/#what-data-is-collected-and-how-it-is-used)
- [Privacy policy](https://batect.dev/privacy/)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
BATECT_ENABLE_TELEMETRY=false
```

##### 2. Run command

###### Scope: 👤 User

```shell
batect --permanently-enable-telemetry
```

#### Usage data (per-invocation)

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Visit link(s) for more details

1. [Disable telemetry collection or uploading for a single invocation.](https://batect.dev/docs/reference/cli/#--no-telemetry)

    > If you would like to disable telemetry collection or uploading for a single invocation, pass the --no-telemetry flag, for example: ./batect --no-telemetry the-task

#### [Update check](https://strapi.io/documentation/developer-docs/latest/setup-deployment-guides/configurations.html#environment)

Official: ✔

> Don't show the notification message about updating strapi in the terminal.

Use methods described below to opt-out of this telemetry channel.

##### 1. Visit link(s) for more details

1. [Disable update check](https://batect.dev/docs/reference/cli/#--no-update-notification)

    > Batect automatically checks for updates at most once every 24 hours and displays a notification if a newer version is available. Passing this flag will disable both the update check and notification: --no-update-notification.

### [Chef Automate](https://docs.chef.io/workstation/)

> Users of this Chef Automate server may elect to share user-anonymized usage data with Chef Software, Inc. Chef uses this shared data to improve Chef Automate.

- [Telemetry details](https://docs.chef.io/automate/telemetry/)
- [Privacy policy](https://www.chef.io/privacy-policy/)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Visit link(s) for more details

1. [Server-side configuration](https://docs.chef.io/automate/telemetry/)

    > Admins can opt out of telemetry for the Automate server and all of its users, by editing an existing `configuration.toml` or create a new TOML file.

2. [Individual user configuration](https://docs.chef.io/automate/telemetry/)

    > Individual users can opt out of telemetry by unchecking the telemetry box on the welcome pop-up the first time they log into Automate. To opt out of telemetry at any later point in time, navigate to the profile icon, select “About Chef Automate” from the drop-down, and uncheck the telemetry checkbox.

### [Chef Workstation](https://docs.chef.io/workstation/)

> In order to continually improve Chef Workstation, we collect information to help us identify bugs and understand how people interact with Chef Workstation.

- [Telemetry details](https://docs.chef.io/workstation/privacy/)
- [Privacy policy](https://www.chef.io/privacy-policy/)

List of known telemetry channels:

#### [Usage data](https://docs.chef.io/workstation/privacy/#opting-out)

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
CHEF_TELEMETRY_OPT_OUT=1
```

##### 2. Edit config file (plaintext)

###### Scope: 👤 User

| OS      | Path                                          |
|---------|-----------------------------------------------|
| Linux   | `$HOME/.chef-workstation/config.toml`         |
| macOS   | `$HOME/.chef-workstation/config.toml`         |
| Windows | `%USERPROFILE%\.chef-workstation\config.toml` |

###### Content

```none
[telemetry]
enabled=false
```

### [Consul](https://www.consul.io/)

> Consul makes use of a HashiCorp service called Checkpoint which is used to check for updates and critical security bulletins.

- [Telemetry details](https://www.consul.io/docs/troubleshoot/faq#q-what-is-checkpoint-does-consul-call-home)
- [Privacy policy](https://hashicorp.com/privacy)

List of known telemetry channels:

#### [Update check](https://www.consul.io/docs/agent/options#disable_update_check)

Official: ✔

> Disables automatic checking for security bulletins and new version releases. This is disabled in Consul Enterprise.

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
CHECKPOINT_DISABLE=ANY_VALUE
```

##### 2. Edit config file (JSON)

###### Scope: 👤 User

Path: `some-dir/example.json`

###### Content

```json
{
  "disable_update_check": true
}
```

#### [Update check signature](https://www.consul.io/docs/agent/options#disable_anonymous_signature)

Official: ✔

> Disables providing an anonymous signature for de-duplication with the update check

Use methods described below to opt-out of this telemetry channel.

##### 1. Edit config file (JSON)

###### Scope: 👤 User

Path: `some-dir/example.json`

###### Content

```json
{
  "disable_anonymous_signature": true
}
```

### [Infracost](https://www.infracost.io/)

> When using a self-hosted Cloud Pricing API, Infracost CLI will send telemetry data.

- [Privacy policy](https://www.infracost.io/docs/privacy-policy)

List of known telemetry channels:

#### [Usage data](https://www.infracost.io/docs/integrations/environment_variables/#infracost_self_hosted_telemetry)

Official: ✔

> Opt-out of telemetry when using a self-hosted Cloud Pricing API.

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
INFRACOST_SELF_HOSTED_TELEMETRY=false
```

#### [Update check](https://www.infracost.io/docs/integrations/environment_variables/#infracost_skip_update_check)

Official: ✔

> Skip the Infracost update check.

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
INFRACOST_SKIP_UPDATE_CHECK=true
```

### [k0s](https://k8slens.dev/)

> To build better end user experience we collect and send telemetry data from clusters.

- [Telemetry details](https://docs.k0sproject.io/v0.10.0/configuration/#telemetry)
- [Privacy policy](https://www.mirantis.com/company/privacy-policy/)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Visit link(s) for more details

1. [Disable usage data reporting](https://docs.k8slens.dev/v4.1.2/getting-started/preferences/#disable-telemetry-reporting)

    > It is enabled by default and can be disabled by settings corresponding option as 'false'.

### [Packer](https://www.packer.io/)

> When Packer is invoked it sometimes calls out to checkpoint.hashicorp.com to look for new versions of Packer.

- [Telemetry details](https://www.packer.io/docs/other/environment-variables.html#checkpoint_disable)
- [Privacy policy](https://hashicorp.com/privacy)

List of known telemetry channels:

#### Update check

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
CHECKPOINT_DISABLE=1
```

### [Skaffold](https://skaffold.dev/)

> To help prioritize features and work on improving Skaffold, we collect anonymized Skaffold usage data. Usage data does not include any argument values or personal information.

- [Telemetry details](https://skaffold.dev/docs/resources/telemetry/)
- [Privacy policy](https://policies.google.com/privacy)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Run command

###### Scope: 👤 User

```shell
skaffold config set --global collect-metrics false
```

### [Telepresence](https://www.telepresence.io/)

> Telepresence collects some basic information about its users so it can send important client notices, such as new version availability and security bulletins. We also use the information to aggregate basic usage analytics anonymously.

- [Telemetry details](https://github.com/telepresenceio/telepresence#usage-reporting)
- Privacy policy: ❌

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
SCOUT_DISABLE=1
```

### [Terraform](https://www.terraform.io/)

> The Terraform CLI commands interact with the HashiCorp service Checkpoint to check for the availability of new versions and for critical security bulletins about the current version.

- [Telemetry details](https://www.terraform.io/docs/commands/index.html#upgrade-and-security-bulletin-checks)
- [Privacy policy](https://hashicorp.com/privacy)

List of known telemetry channels:

#### [Update check](https://www.terraform.io/docs/commands/index.html#disable_checkpoint)

Official: ✔

> Disable checkpoint calls entirely.

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
CHECKPOINT_DISABLE=ANY_VALUE
```

##### 2. Edit config file (plaintext)

###### Scope: 👤 User

| OS      | Path                     |
|---------|--------------------------|
| Linux   | `$HOME/.terraformrc`     |
| macOS   | `$HOME/.terraformrc`     |
| Windows | `%APPDATA%\terraform.rc` |

###### Content

```none
disable_checkpoint = true
```

#### [Update check signature](https://www.terraform.io/docs/commands/index.html#disable_checkpoint_signature)

Official: ✔

> Disable the use of an anonymous signature in checkpoint requests. This allows Terraform to check for security bulletins but does not send the anonymous signature in these requests.

Use methods described below to opt-out of this telemetry channel.

##### 1. Edit config file (plaintext)

###### Scope: 👤 User

| OS      | Path                     |
|---------|--------------------------|
| Linux   | `$HOME/.terraformrc`     |
| macOS   | `$HOME/.terraformrc`     |
| Windows | `%APPDATA%\terraform.rc` |

###### Content

```none
disable_checkpoint_signature = true
```

### [Cloud Development Kit for Terraform](https://github.com/hashicorp/terraform-cdk)

> CDK for Terraform CLI (cdktf-cli) interacts with a HashiCorp service called Checkpoint to report project metrics such as cdktf version, project language, provider name, platform name, and other details that help guide the project maintainers with feature and roadmap decisions.

- [Telemetry details](https://github.com/hashicorp/terraform-cdk/blob/master/docs/working-with-cdk-for-terraform/telemetry.md)
- [Privacy policy](https://hashicorp.com/privacy)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
CHECKPOINT_DISABLE=ANY_VALUE
```

### [Vagrant](https://www.vagrantup.com/)

> Vagrant interacts with HashiCorp services to provide update notifications.

- [Telemetry details](https://www.vagrantup.com/docs/other/environmental-variables)
- [Privacy policy](https://hashicorp.com/privacy)

List of known telemetry channels:

#### [Vagrant update check](https://www.vagrantup.com/docs/other/environmental-variables#vagrant_checkpoint_disable)

Official: ✔

> Vagrant does occasional network calls to check whether the version of Vagrant that is running locally is up to date.

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
VAGRANT_CHECKPOINT_DISABLE=ANY_VALUE
```

#### [Vagrant box update check](https://www.vagrantup.com/docs/other/environmental-variables#vagrant_box_update_check_disable)

Official: ✔

> By default, Vagrant will query the metadata API server to see if a newer box version is available for download.

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
VAGRANT_BOX_UPDATE_CHECK_DISABLE=ANY_VALUE
```

### [Weave Net](https://www.weave.works/)

> Weave Net periodically contacts Weaveworks servers for available versions. New versions are announced in the log and in the status summary.

- [Telemetry details](https://www.weave.works/docs/net/latest/install/installing-weave/#checkpoint)
- [Privacy policy](https://www.weave.works/weaveworks-privacy-policy/)

List of known telemetry channels:

#### Update check

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
CHECKPOINT_DISABLE=1
```

### [WKSctl](https://www.weave.works/oss/wksctl/)

> wksctl contacts Weaveworks servers for available versions. When a new version is available, wksctl will print out a message along with a URL to download it.

- [Telemetry details](https://wksctl.readthedocs.io/en/latest/faq/#checkpoint-and-how-to-disable-it)
- [Privacy policy](https://www.weave.works/weaveworks-privacy-policy/)

List of known telemetry channels:

#### Update check

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
CHECKPOINT_DISABLE=1
```

## Drivers

### [Nvidia drivers](https://www.nvidia.com/en-us/geforce/geforce-experience/)

> Details on your device and network configurations, how you are using our products or services (including the software you are using), and details on how your system is performing, so we can optimize hardware and software configurations.

- [Privacy policy](https://www.nvidia.com/en-us/about-nvidia/privacy-policy/)

List of known telemetry channels:

#### [Diagnostic data](https://www.gamersnexus.net/industry/2672-geforce-experience-data-transfer-analysis)

Official: ❌

> Analyzing GeForce Experience Data Transfers with Packet Monitoring

Use methods described below to opt-out of this telemetry channel.

##### 1. Visit link(s) for more details

1. [NVCleanstall](https://www.techpowerup.com/nvcleanstall/)

    > Our free software lets you customize the NVIDIA GeForce Driver package by removing components that you don't need (or want).

2. [Disable Nvidia Telemetry](https://github.com/NateShoffner/Disable-Nvidia-Telemetry)

    > Disable Nvidia Telemetry is a utility that allows you to disable the telemetry services Nvidia bundles with their drivers.

## Operating systems

### [Windows 10](https://www.microsoft.com/windows/)

> Microsoft collects Windows diagnostic data to solve problems and to keep Windows up to date, secure, and operating properly.

- [Telemetry details](https://support.microsoft.com/en-us/help/4468236/diagnostics-feedback-and-privacy-in-windows-10-microsoft-privacy)
- [Privacy policy](https://privacy.microsoft.com/privacystatement)

List of known telemetry channels:

#### [Usage data | Enterpise](https://docs.microsoft.com/en-us/windows/privacy/configure-windows-diagnostic-data-in-your-organization)

Official: ✔

> Applies to: Windows 10 Enterprise/Education, Windows Server 2016 and newer

Use methods described below to opt-out of this telemetry channel.

##### 1. Set registry key

###### Scope: 💻 Machine

- Path: `HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DataCollection\AllowTelemetry`
- Type: `REG_DWORD`
- Value: `0`

#### Usage data

Official: ❌

> There is no official way to disable telemetry in all other Windows editions (Home/Pro/etc...)

Use methods described below to opt-out of this telemetry channel.

##### 1. Visit link(s) for more details

1. [ghacks.net | Comparison of Windows 10 Privacy tools](https://www.ghacks.net/2015/08/14/comparison-of-windows-10-privacy-tools/)

    > We update the listing regularly. Please let us know about any updates that we may have missed, and about new programs that you found that are not on it already.

2. [github.com | Windows 10 Sophia Script](https://github.com/farag2/Windows-10-Sophia-Script)

    > A PowerShell module for Windows 10 fine-tuning and automating the routine tasks 🏆

3. [github.com | crazy-max/WindowsSpyBlocker](https://github.com/crazy-max/WindowsSpyBlocker)

    > 🛡 Block spying and tracking on Windows

4. [github.com | builtbybel/Privatezilla](https://github.com/builtbybel/privatezilla)

    > Privatezilla is the simplest way to perform a quick privacy and security check of your Windows 10 copy.

5. [github.com | builtbybel/SharpApp](https://github.com/builtbybel/sharpapp)

    > 💩⭐️🚀A #app with cutting edge technology to minimize windows-10 telemetry and maximize privacy plus many more

## Shells

### [PowerShell Core](https://github.com/powershell/powershell)

> PowerShell Core sends basic telemetry data to Microsoft when it is launched. The data includes the OS name, OS version, and PowerShell version. This data allows us to better understand the environments where PowerShell is used and enables us to prioritize new features and fixes.

- [Telemetry details](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_telemetry)
- [Privacy policy](https://privacy.microsoft.com/privacystatement)

List of known telemetry channels:

#### Usage data

Official: ✔

Use methods described below to opt-out of this telemetry channel.

##### 1. Set environment variable

###### Scope: ⧉ Process

```none
POWERSHELL_TELEMETRY_OPTOUT=1
```

##### 2. Visit link(s) for more details

1. [Disable telemetry in PowerShell Core 6.0](https://docs.microsoft.com/en-us/powershell/scripting/whats-new/what-s-new-in-powershell-core-61#telemetry-can-only-be-disabled-with-an-environment-variable)

    > You can opt-out from telemetry by creating 'DELETE_ME_TO_DISABLE_CONSOLEHOST_TELEMETRY' file in the directory where 'pwsh' binary is installed.
