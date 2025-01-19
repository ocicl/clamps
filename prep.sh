#!/bin/sh

set -x

# The clamps build only works if ironclad is built first.  If ironclad
# is built as part of the clamps build, there will be an error.

sbcl --eval "(asdf:load-system :ironclad)" --eval "(quit)"

# Apply this patch....

(cd clamps-*;
 patch -p1 < ../420a19ec737d2641bf6db458da70ac03efaba557.patch)
