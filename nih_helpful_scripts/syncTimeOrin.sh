#!/bin/bash
ssh -t orin511@ubuntu.local "sudo date -s '$(date)'"
