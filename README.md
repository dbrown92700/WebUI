# WebUI

These batch files are used to set up a Windows computer to use the WebUI on a Cisco Router.

The Cisco Router WebUI can be used for day0 provisioning.  It will allow a local user to get a DHCP address from a switchport and log into the server at https://192.168.1.1.  The requirement to get DHCP from the router is that the host DHCP Client Identifier must be set to "webui".  In Windows that requires settings in the registry.

## Usage
Run the batch files on the command prompt.  Be sure to start the command prompt using Run as Administrator.  Run set_webui before using the webui and remove_webui when you are done.
- set_webui.bat: Sets the DhcpClientIndentifier to webui on all network interfaces in the registry
- remove_webui.bat: Remove the DhcpClientIdentifier value from all of the network interfaces in the registry.
