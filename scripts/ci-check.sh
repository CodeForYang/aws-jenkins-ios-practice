```bash
#!/usr/bin/env bash
set -u

mkdir -p reports

if [ ! -f src/App.swift ]; then
  printf '{"status":"FAIL","message":"src/App.swift not found"}\n' > reports/review-summary.json
  echo "ERROR: src/App.swift not found"
  exit 1
fi

if grep -nE 'TODO|FIXME|print\(' src/App.swift; then
  printf '{"status":"FAIL","message":"TODO/FIXME/debug print found"}\n' > reports/review-summary.json
  echo "ERROR: remove TODO/FIXME/debug print before merging"
  exit 1
fi

printf '{"status":"PASS","message":"basic checks passed"}\n' > reports/review-summary.json
echo "Basic checks passed"
```