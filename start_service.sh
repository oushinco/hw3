#!/bin/sh


# Start the model worker
python -m llava.serve.model_worker --host 0.0.0.0 --controller http://localhost:10000 --port 40000 --worker http://localhost:40000 --model-path liuhaotian/llava-v1.5-7b --load-8bit &

# Keep the script running to keep the container alive
tail -f /dev/null
