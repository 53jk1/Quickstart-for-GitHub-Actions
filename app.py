#!/usr/bin/python3
# -*- coding: utf-8 -*-

import os
import time
import sys
import subprocess
import shutil
import json
import argparse
import logging
import logging.handlers
import re
import datetime
import hashlib
import base64
import random
import string
import socket
import platform
import getpass
import pwd
import grp
import signal
import traceback
import glob
import tarfile
import zipfile

from flask import Flask

app = Flask(__name__)

START = time.time()


def elapsed():
    running = time.time() - START
    minutes, seconds = divmod(running, 60)
    hours, minutes = divmod(minutes, 60)
    return "%d:%02d:%02d" % (hours, minutes, seconds)


@app.route('/')
def index():
    return 'Hello World! uptime: %s' % elapsed()


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
