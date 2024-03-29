#!/usr/bin/env python3

import os
import sys
import socket
import subprocess

# Script for getting active workspace/window

WORKSPACES = 6
HYPR_INSTANCE = os.getenv('HYPRLAND_INSTANCE_SIGNATURE')
SOCKET_PATH = f'/tmp/hypr/{HYPR_INSTANCE}/.socket2.sock'

def help():
    print("Usage: ./hypr.py [-a | -t]")
    print("-a: Watch active workspace")
    print("-t: Watch window title")
    print("-A: Watch all")
    exit(1)

if len(sys.argv) != 2 or sys.argv[1] not in ['-A', '-a', '-t']:
    help()

def get_window_title(line: str):
    truncate = 40
    if line.find('activewindow>>') == 0:
        _, window_title = line.removeprefix('activewindow>>').split(',') 
        if (len(window_title) > truncate):
            window_title = window_title[:truncate] + '...'
        subprocess.run(['eww', 'update', f'window-title={window_title}'])

def get_active_workspace(line: str):
    if line.find('workspace>>') == 0:
        active_ws = line[-1]
        # Limit workspace
        if int(active_ws) > WORKSPACES:
            active_ws = WORKSPACES
            subprocess.run(['hyprctl', 'dispatch', 'workspace', str(WORKSPACES)])
        subprocess.run(['eww', 'update', f'active-ws={active_ws}'])

with socket.socket(socket.AF_UNIX) as client_socket:
        # Connect to the Unix domain socket
        client_socket.connect(SOCKET_PATH)

        # Receive data from the socket
        while True:
            data = client_socket.recv(1024)  # Adjust the buffer size as needed
            decoded_data = data.decode().strip().split('\n')  # Convert bytes to string and remove leading/trailing whitespace
            for line in decoded_data:
                if sys.argv[1] == '-A':
                    get_active_workspace(line)
                    get_window_title(line)
                elif sys.argv[1] == '-t':
                    get_window_title(line)
                elif sys.argv[1] == '-a':
                    get_active_workspace(line)
