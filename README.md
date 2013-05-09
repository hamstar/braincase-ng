braincase-ng
============

An ecosystem of ruby gems providing a next generation personal knowledge base server. 

Designed to be deployed to a netinst Debian installation inside a virtual machine for local use, or VPS for distributed use.

## Architecture

* **gollum**
 * editable wiki
* **smeagol**
 * static wiki
 * modified to hide pages without "@public" in them
* **backup**
 * for backing up to remote servers
* **thin**
 * tiny web server for running wikis on dedicated ports
* **apache** (or nginx?)
 * main web server
 * reverse proxies to thin servers
* **git**
 * for wiki backends
 * for data versatility
* **debian** - operating system

## Configuration

ALl the wiki's are bare git repositories located in `/home/git`.

A gollum wiki is mounted at https://server/admin and contains configuration files for the system.  Access is controlled via HTTP Authentication. This is where things like wiki mount points are specified. A git hook runs on every commit and configures the system as needed.

In the admin wiki a page called **users** has a code block containing a list of users and emails.

For users of the system their static wiki (smeagol) will be mounted at https://server/user and will hide pages that don't have @public in them.  Editable wiki's (gollum) will be mounted at https://server/user/admin and are protected by HTTP Authentication.
