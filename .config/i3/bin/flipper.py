#!/usr/bin/python2.7
import i3
import sys
import time

workspaces = i3.get_workspaces()

def add_to_queue(workspace, queue):
    move_command = "workspace {0}; move workspace to {1}".format(
            workspace['name'],
            get_target_output(workspace)
            )

    if(workspace['visible']):
        queue.append(move_command)
    else:
        queue.insert(0, move_command)

    return queue

def get_target_output(workspace):
    current_output = xinerama_number(workspace)
    target_output = (current_output + 2) % 4
    return "xinerama-{0}".format(target_output)

def xinerama_number(workspace):
    return int(workspace['output'][-1:])

def get_focused_workspace():
    return next(w for w in workspaces if w['focused'])

def flip(single_column=False):
    focused_workspace = get_focused_workspace()
    focused_output = xinerama_number(focused_workspace)
    queue = []

    for workspace in workspaces:
        workspace_output = xinerama_number(workspace)

        should_flip = (
                not single_column 
                or focused_output % 2 == workspace_output % 2)

        if(should_flip):
            add_to_queue(workspace, queue)

    for command in queue:
        i3.command(command)

    # Restore focus to originally focused workspace
    # Race conditions apply where focus is lost on movement, so sleep!
    time.sleep(0.25)
    i3.focus("output " + get_target_output(focused_workspace));

single_column_only = (len(sys.argv) > 1 and sys.argv[1] == '--single-column')
flip(single_column_only);

