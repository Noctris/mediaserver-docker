# mediaserver-samba container

Share your configuration over the network using Windows file sharing.

![Supports aarch64 Architecture][aarch64-shield] ![Supports amd64 Architecture][amd64-shield] ![Supports armhf Architecture][armhf-shield] ![Supports armv7 Architecture][armv7-shield] ![Supports i386 Architecture][i386-shield]

## About

This Add-on allows you to enable file sharing across different operating systems over a network.
It lets you access your config files with Windows and macOS devices.

## Installation

Follow these steps to get the add-on installed on your system:

1. Navigate in your Home Assistant frontend to **Supervisor** -> **Add-on Store**.
2. Find the "Samba share" add-on and click it.
3. Click on the "INSTALL" button.

## How to use

1. In the configuration section, set a username and password.
2. Save the configuration.
3. Start the add-on.
4. Check the add-on log output to see the result.

## Configuration

Add-on configuration:

```yaml
workgroup: WORKGROUP
username: homeassistant
password: YOUR_PASSWORD
interface: ''
allow_hosts:
  - 10.0.0.0/8
  - 172.16.0.0/12
  - 192.168.0.0/16
veto_files:
  - "._*"
  - ".DS_Store"
  - Thumbs.db
```

### Option: `workgroup` (required)

Change WORKGROUP to reflect your network needs.

### Option: `username` (required)

The username you would like to use to authenticate with the Samba server.

### Option: `password` (required)

The password that goes with the username configured for authentication.

### Option: `interface` (required)

The network interface Samba should listen on for incoming connections.
This option should only be used in advanced cases. In general, setting this
option is not needed.

### Option: `allow_hosts` (required)

List of hosts/networks allowed to access the shared folders.

### Option: `veto_files` (optional)

List of files that are neither visible nor accessible. Useful to stop clients
from littering the share with temporary hidden files
(e.g., macOS `.DS_Store` or Windows `Thumbs.db` files)