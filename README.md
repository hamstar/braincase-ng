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
* **god**
 * to manage daemons
* **git**
 * for wiki backends
 * for data versatility
* **debian** - operating system

## Wikis

### Admin wiki

A gollum wiki is mounted at [https://server/admin]() and contains configuration files for the system.  Access is controlled via HTTP Authentication. This is where things like wiki mount points are specified. A git hook runs on every commit and configures the system as needed.

### User wikis

Smeagol wikis will serve static content and be mounted at [https://server/user]() and will hide pages that don't have @public in them.

### User admin wikis

Gollum wikis will be mounted at [https://server/user/admin]() and allow the users to edit their wiki.  They are protected by HTTP Authentication. As a consequence of this layout, everything under admin/ in the wiki will be hidden unless the user can get to [https://server.com/user/admin/admin]().
