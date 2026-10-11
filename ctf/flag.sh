#!/bin/sh
# Places the player's flag (CTF_FLAG_MAIN, given by the launcher) in a flags table of the lab's
# SQLite database (/home/app/SQLI-blind/config/Database.db, on a volume shared with the app), where the SQL injection reaches it;
# without one (CI, a run by hand) the development flag. Runs as the image's user (app).
dev='FLAG{dev-skf-sqli-blind}'
FLAG="${CTF_FLAG_MAIN:-$dev}" python3 - <<'PY'
import os, sqlite3
con = sqlite3.connect('/home/app/SQLI-blind/config/Database.db')
con.execute('DROP TABLE IF EXISTS flags')
con.execute('CREATE TABLE flags(flag TEXT)')
con.execute('INSERT INTO flags VALUES (?)', (os.environ['FLAG'],))
con.commit()
PY
