#!/usr/bin/env bash

cleanup () {
  unset $(compgen -v | grep '^toptout_')
}

trap cleanup RETURN EXIT

toptout_name="$(basename "${BASH_SOURCE[0]}")"

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]
then
  toptout_sourced='False'
else
  toptout_sourced='True'
fi

toptout_usage="
Usage:

  . './${toptout_name}' -exvdh

Arguments:

  -e : set environment variables.
       You must source script for this to work: . './${toptout_name}' -e
  -x : execute commands
  -v : verbose
  -d : dry run
  -h : this help"

toptout_warn=$'
WARNING:
  -e specified, but script is not sourced!
  Environment variables wouldn\'t be exported to your shell session.'

toptout_env='False'
toptout_exec='False'
toptout_dry='False'
toptout_verbose='False'

OPTIND=1

while getopts ":exdvh" opt
do
  case $opt in
  e)
    toptout_env='True'
    [[ "${toptout_sourced}" != 'True' ]] && echo "${toptout_warn}"
  ;;
  x)
    toptout_exec='True'
  ;;
  d)
    toptout_dry='True'
  ;;
  v)
    toptout_verbose='True'
  ;;
  h|\?)
    toptout_help='True'
    >&2 echo "${toptout_usage}"
  ;;
  esac
done

if [[ -n "${toptout_help}" ]]
then
  [[ "${toptout_sourced}" == 'True' ]] && return || exit
fi

if [[ "${toptout_env}" == 'False' && "${toptout_exec}" == 'False' ]]
then
  echo "${toptout_usage}"
  [[ "${toptout_sourced}" == 'True' ]] && return || exit
fi

[[ "${toptout_verbose}" == 'True' ]] && echo "
Current settings:

  Set environment variables: ${toptout_env}
  Execute commands         : ${toptout_exec}
  Verbose                  : ${toptout_verbose}
  Dry run                  : ${toptout_dry}
"

run_cmd () {
  if command -v "${1}" > /dev/null 2>&1
  then
    [[ "${toptout_verbose}" == 'True' ]] && echo "Executing command: ${1} ${2}"
    [[ "${toptout_dry}" == 'False' ]] && "${1}" ${2}
  fi
}

set_env () {
  [[ "${toptout_verbose}" == 'True' ]] && echo "Setting environment variable: ${1}=${2}"
  [[ "${toptout_dry}" == 'False' ]] && export "${1}"="${2}"
}


# Firefox
# https://www.mozilla.org/firefox/

# Enable policies (macOS)
# https://github.com/mozilla/policy-templates/tree/master/mac
case "$OSTYPE" in
  darwin*)
    [[ "${toptout_exec}" == 'True' ]] && run_cmd 'defaults' 'write /Library/Preferences/org.mozilla.firefox EnterprisePoliciesEnabled -bool TRUE'
  ;;
esac

# Firefox
# https://www.mozilla.org/firefox/

# Usage data
# https://github.com/mozilla/policy-templates/blob/master/README.md
case "$OSTYPE" in
  darwin*)
    [[ "${toptout_exec}" == 'True' ]] && run_cmd 'defaults' 'write /Library/Preferences/org.mozilla.firefox DisableTelemetry -bool TRUE'
  ;;
esac

# Homebrew
# https://brew.sh

# Usage data
[[ "${toptout_env}" == 'True' ]] && set_env 'HOMEBREW_NO_ANALYTICS' '1'

# Microsoft 365 | Enterprise
# https://www.microsoft.com/en-us/microsoft-365/enterprise

# Diagnostic data
# https://docs.microsoft.com/en-us/deployoffice/privacy/overview-privacy-controls#diagnostic-data-sent-from-microsoft-365-apps-for-enterprise-to-microsoftd
case "$OSTYPE" in
  darwin*)
    [[ "${toptout_exec}" == 'True' ]] && run_cmd 'defaults' 'write com.microsoft.office DiagnosticDataTypePreference -string ZeroDiagnosticData'
  ;;
esac

# AWS SAM CLI
# https://aws.amazon.com/serverless/sam/

# Usage data
[[ "${toptout_env}" == 'True' ]] && set_env 'SAM_CLI_TELEMETRY' '0'

# Azure CLI
# https://docs.microsoft.com/en-us/cli/azure

# Usage data
[[ "${toptout_env}" == 'True' ]] && set_env 'AZURE_CORE_COLLECT_TELEMETRY' '0'

# Google Cloud SDK
# https://cloud.google.com/sdk

# Usage data
[[ "${toptout_exec}" == 'True' ]] && run_cmd 'gcloud' 'config set disable_usage_reporting true'

# Netdata
# https://www.netdata.cloud

# Usage data
[[ "${toptout_env}" == 'True' ]] && set_env 'DO_NOT_TRACK' '1'

# Netlify CLI
# https://netlify.com

# Usage data
[[ "${toptout_exec}" == 'True' ]] && run_cmd 'netlify' '--telemetry-disable'

# Stripe CLI
# https://stripe.com/docs/stripe-cli

# Usage data
[[ "${toptout_env}" == 'True' ]] && set_env 'STRIPE_CLI_TELEMETRY_OPTOUT' '1'

# Tilt
# https://tilt.dev

# Usage data
[[ "${toptout_env}" == 'True' ]] && set_env 'DO_NOT_TRACK' '1'

# TimescaleDB 
# https://www.timescale.com/

# Usage data
[[ "${toptout_exec}" == 'True' ]] && run_cmd 'psql' '-c "ALTER SYSTEM SET timescaledb.telemetry_level=off"'

# Apache Cordova CLI
# https://cordova.apache.org

# Usage data
[[ "${toptout_env}" == 'True' ]] && set_env 'CI' 'ANY_VALUE'

# Gatsby
# https://www.gatsbyjs.org

# Usage data
[[ "${toptout_env}" == 'True' ]] && set_env 'GATSBY_TELEMETRY_DISABLED' '1'

# Hasura GraphQL engine
# https://hasura.io

# Usage data (CLI and Console)
[[ "${toptout_env}" == 'True' ]] && set_env 'HASURA_GRAPHQL_ENABLE_TELEMETRY' 'false'

# .NET Core SDK
# https://docs.microsoft.com/en-us/dotnet/core/tools/index

# Usage data
[[ "${toptout_env}" == 'True' ]] && set_env 'DOTNET_CLI_TELEMETRY_OPTOUT' 'true'

# Next.js
# https://nextjs.org

# Usage data
[[ "${toptout_env}" == 'True' ]] && set_env 'NEXT_TELEMETRY_DISABLED' '1'

# Nuxt.js
# https://nuxtjs.org/

# Usage data
[[ "${toptout_env}" == 'True' ]] && set_env 'NUXT_TELEMETRY_DISABLED' '1'

# Prisma
# https://www.prisma.io/

# Usage data
# https://www.prisma.io/docs/concepts/more/telemetry#usage-data
[[ "${toptout_env}" == 'True' ]] && set_env 'CHECKPOINT_DISABLE' '1'

# Rasa
# https://rasa.com/

# Usage data
[[ "${toptout_env}" == 'True' ]] && set_env 'RASA_TELEMETRY_ENABLED' 'false'

# AutomatedLab
# https://github.com/AutomatedLab/AutomatedLab

# Usage data
[[ "${toptout_env}" == 'True' ]] && set_env 'AUTOMATEDLAB_TELEMETRY_OPTOUT' '1'

# Consul
# https://www.consul.io/

# Update check
# https://www.consul.io/docs/agent/options#disable_update_check
[[ "${toptout_env}" == 'True' ]] && set_env 'CHECKPOINT_DISABLE' 'ANY_VALUE'

# Packer
# https://www.packer.io/

# Update check
[[ "${toptout_env}" == 'True' ]] && set_env 'CHECKPOINT_DISABLE' '1'

# Terraform
# https://www.terraform.io/

# Update check
# https://www.terraform.io/docs/commands/index.html#disable_checkpoint
[[ "${toptout_env}" == 'True' ]] && set_env 'CHECKPOINT_DISABLE' 'ANY_VALUE'

# Cloud Development Kit for Terraform
# https://github.com/hashicorp/terraform-cdk

# Usage data
[[ "${toptout_env}" == 'True' ]] && set_env 'CHECKPOINT_DISABLE' 'ANY_VALUE'

# Vagrant
# https://www.vagrantup.com/

# Vagrant update check
# https://www.vagrantup.com/docs/other/environmental-variables#vagrant_checkpoint_disable
[[ "${toptout_env}" == 'True' ]] && set_env 'VAGRANT_CHECKPOINT_DISABLE' 'ANY_VALUE'

# Vagrant
# https://www.vagrantup.com/

# Vagrant box update check
# https://www.vagrantup.com/docs/other/environmental-variables#vagrant_box_update_check_disable
[[ "${toptout_env}" == 'True' ]] && set_env 'VAGRANT_BOX_UPDATE_CHECK_DISABLE' 'ANY_VALUE'

# Weave Net
# https://www.weave.works/

# Update check
[[ "${toptout_env}" == 'True' ]] && set_env 'CHECKPOINT_DISABLE' '1'

# WKSctl
# https://www.weave.works/oss/wksctl/

# Update check
[[ "${toptout_env}" == 'True' ]] && set_env 'CHECKPOINT_DISABLE' '1'

# PowerShell Core
# https://github.com/powershell/powershell

# Usage data
[[ "${toptout_env}" == 'True' ]] && set_env 'POWERSHELL_TELEMETRY_OPTOUT' '1'
