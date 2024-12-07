# Race Condition in Bash Script

This repository demonstrates a race condition bug in a simple bash script.  The script launches two processes concurrently that attempt to write to separate files. Due to the non-deterministic nature of process scheduling, the final content of the files may be incomplete or unexpected.

The `bug.sh` file contains the buggy script, while `bugSolution.sh` provides a corrected version that avoids the race condition using proper locking mechanisms.