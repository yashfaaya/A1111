#!/bin/bash

echo "Worker Initiated"

echo "Starting WebUI API"
python /workspace/A1111/webui.py --port 3000 --api --nowebui &

echo "Starting RunPod Handler"
python -u /workspace/A1111/handler.py