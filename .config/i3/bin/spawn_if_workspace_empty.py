#!/usr/bin/python2.7
import i3
import sys

# This replaces `workspace` in many cases in config. If the target workspace
# already exists (read: has a client) it does nothing. Otherwise it spawns an
# application defined by a CLI arg.

target_workspace_name = sys.argv[1]
run_if_empty = sys.argv[2]

target_workspace_exists = False

workspaces = i3.get_workspaces()
for workspace in workspaces:
    if target_workspace_name == workspace['name']:
        target_workspace_exists = True
        break

i3.command('workspace', target_workspace_name)

if not(target_workspace_exists):
    i3.command('exec', run_if_empty)
