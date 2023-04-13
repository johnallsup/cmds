#!/usr/bin/env python
import socket

def netcat(hostname, port, content):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect((hostname, port))
    s.sendall(content)
    s.shutdown(socket.SHUT_WR)
    s.close()

import sys
args = sys.argv[1:]
def print_usage():
  print(f"cli.py hostname port content")
if len(args) != 3:
  print_usage()
  exit(1)
try:
  hostname, port, content = args
  port = int(port)
  netcat(hostname,port,content.encode())
except Exception as e:
  print_usage()
  print(f"Exception {e}")
  exit(1)
