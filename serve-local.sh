#!/usr/bin/env bash
# Start the website locally in Docker, wait until it answers, and open it.
# Usage (from this folder):  bash serve-local.sh
# Stop it later with:        docker compose down
set -u
cd "$(dirname "$0")"

echo "== Stopping any old containers"
docker compose down --remove-orphans

echo "== Building and starting in the background"
docker compose up -d --build || { echo "docker compose up failed (see error above)"; exit 1; }

echo "== Waiting for Jekyll to answer on port 4000"
for i in $(seq 1 90); do
  if curl -fsS -o /dev/null http://localhost:4000/; then
    echo
    echo "Site is up:  http://localhost:4000/"
    echo "Live logs:   docker compose logs -f"
    echo "Stop:        docker compose down"
    command -v xdg-open >/dev/null && (xdg-open http://localhost:4000/ >/dev/null 2>&1 &)
    exit 0
  fi
  state=$(docker compose ps -a --format '{{.State}}' 2>/dev/null | head -1)
  [ "$state" = "exited" ] && break
  printf '.'
  sleep 2
done

echo
echo "== The site did not come up. Diagnostics (send these to Claude):"
docker compose ps -a
cid=$(docker compose ps -a -q | head -1)
[ -n "$cid" ] && docker inspect "$cid" --format 'exit={{.State.ExitCode}} oom={{.State.OOMKilled}} error={{.State.Error}}'
docker compose logs --tail 40
(ss -ltnp 2>/dev/null || netstat -ltnp 2>/dev/null) | grep ':4000' || echo "nothing is listening on port 4000"
exit 1
