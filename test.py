#!/usr/bin/python3 

import gi
gi.require_version("BasicGObj", "1.0")
from gi.repository import BasicGObj

t = BasicGObj.Thing()

print(t.add(5, 60))
