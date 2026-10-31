#!/bin/sh
# Seeds the lab's SQLite database with the player's flag (CTF_FLAG_MAIN, delivered as a file by the
# launcher at /run/lab/flag) in a flags table the blind SQL injection reaches; without the input
# the inert dev placeholder. Replaces the old ctf/flag.sh init: the writable layer keeps the table
# across park/resume, and the DROP/CREATE/INSERT is idempotent if it ever runs again.
set -e
flag=$(cat /run/lab/flag 2>/dev/null || true)
[ -n "$flag" ] || flag='FLAG{dev-skf-sqli-blind}'
FLAG="$flag" python3 - <<'PY'
import os, sqlite3
con = sqlite3.connect('/home/app/SQLI-blind/config/Database.db')
con.execute('DROP TABLE IF EXISTS flags')
con.execute('CREATE TABLE flags(flag TEXT)')
con.execute('INSERT INTO flags VALUES (?)', (os.environ['FLAG'],))
con.commit()
PY
