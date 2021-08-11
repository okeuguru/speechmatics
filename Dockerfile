FROM speechmatics-docker-demo.jfrog.io/batch-asr-transcriber-en-hydra:1.0.0.16 
ADD audiofiles/audio_1.mp3 /input.audio
ADD license.json /license.json