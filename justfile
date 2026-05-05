default: serve

serve port="8000":
    python3 -m http.server {{port}}

open:
    open http://localhost:8000
