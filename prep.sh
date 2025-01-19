#!/bin/sh

# The clamps build only works if ironclad is built first.  If ironclad
# is built as part of the clamps build, there will be an error.

sbcl --eval "(asdf:load-system :ironclad)" --eval "(quit)"
