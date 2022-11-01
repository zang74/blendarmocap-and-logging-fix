For the life of me, I could not get [https://github.com/cgtinker/BlendArMocap](BlendArMocap) running on my Mac. For some reason it would crash the second I clicked "Start Detection".

Ironically, the add-on would work fine if I started direct from the command line. This was not an admin-privileges problem either, but Blender's logging on the Mac is sent to Console and is terrible. No CrashReports were generated, so it was near-impossible to know what the actual problem was.

So I threw together something quick that would launch Blender and put the log somewhere useful. On launching, this script will delete any old logs and start a new one.

Edit paths as needed.
