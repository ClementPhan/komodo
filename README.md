# Komodo Setup

## Before first launch

### Set up 1Password CLI

1. Get your secret token for a service account with access to the **docker**
vault. If you are part of the family vault, it is contained in the item named :
**Service Account Auth Token: docker-home**.

1. Check 1Password CLI recognizes you by running ```docker run -i -e OP_SERVICE_ACCOUNT_TOKEN=[YOUR_TOKEN_HERE] 1password/op op user get --me```,
replacing ```[YOUR_TOKEN_HERE]``` with your token. 

If you have an error, you should [create a service account](https://developer.1password.com/docs/service-accounts/get-started/)
with the correct permissions.

### Populate the secrets to the config files

Run ```./get_secrets [YOUR_TOKEN_HERE]```. It should create the files:

- syncs/secrets/secrets.toml
- .env

## Launch

Run ```docker compose up -d```

## After Launch

### Log In to the web interface

Create an account through the web interface, any username and password will
create the account on first launch.

### Rename the server to ```server-prod```

In the sidebar, select **Servers**, select the available server, then scroll all
the way down. In the **Danger Zone**, enter the new name ```server-prod```.

### Create the syncs

In the sidebar, select **Syncs**, then **New Resource Sync**. Name it
```basesync```. This name  must be entered exactly as noted. Chose the mode as
**Files on Server**, writing ```basesync.toml``` in the dialog. Save and Execute.

This will create more sync objects in the top-level Sync menu. Select them all,
refresh and execute in the group actions.

### Deploy the docker stacks

In the sidebar, select **Stacks**, select them all and deploy them in the group
actions.
