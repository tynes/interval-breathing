default: serve

# Serve the current directory over HTTP.
# Binds to 0.0.0.0 so it's reachable from other devices on the same network.
serve port="8000":
    @echo "Serving on:"
    @echo "  Local:    http://localhost:{{port}}"
    @printf "  Network:  http://%s:%s   (open from other machines on the same Wi-Fi/LAN)\n" \
        "$(ipconfig getifaddr en0 2>/dev/null || ipconfig getifaddr en1 2>/dev/null || echo 'YOUR_LOCAL_IP')" \
        "{{port}}"
    python3 -m http.server {{port}} --bind 0.0.0.0

open:
    open http://localhost:8000
