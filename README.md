# SplitterScope-fp
Windows batch file oscilloscope tool. Extremely hacky, so there's a few bugs.

# Current Features:
- 96000Hz Sample Rate
- Configurable Export Length
- GUI Open File Dialog

# Usage
Requires that it must be in the same folder as sidplayfp.exe. When running, select the .SID file, configure the length, and when it's outputting, don't touch any keys, (as this is more of a sidplayfp bug). Successful output for each channel is done using the default Windows warning sound. 

Each channel is exported with the "ch" prefix, for example, Channel 1 is exported as "ch1.wav". Master file is exported as "master.wav".
