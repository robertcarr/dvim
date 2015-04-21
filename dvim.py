#!/usr/bin/env python
"""
Start vim container with host file mounted
"""

import sys
import os
import subprocess


class Dcmd(object):
    d_temp_dir = '/tmp/dcmd'
    container_name = 'ws'

    """ Run docker container with cmd """
    def __init__(self, filename, **kwargs):
        self.d_temp_dir = kwargs.get('d_temp_dir', Dcmd.d_temp_dir)
        self.container_name = kwargs.get('container_name', Dcmd.container_name)
        self.filename = os.path.abspath(filename)
        self.d_temp_file = os.sep.join([self.d_temp_dir, self.filename])

    def _run(self):
        """ Launch the container """
        if not os.path.exists(self.filename):
                with open(self.filename, 'a'):
                     pass
        cmd = ['docker', 'run', '-v', "{}:{}".format(self.filename, self.d_temp_file),
                '-it', self.container_name, self.d_temp_file]
        p = subprocess.call(cmd)


if __name__ == '__main__':
    if len(sys.argv) > 0:
            a = Dcmd(filename=sys.argv[1])
            a._run()
