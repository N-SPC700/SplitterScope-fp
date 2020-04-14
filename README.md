# SplitterScope-fp
Windows batch file oscilloscope tool. A bit hacky, but it works.

# Current Features:
- 96000Hz Sample Rate
- Configurable Export Length
- GUI Open File Dialog

# Usage
Requires that it must be in the same folder as sidplayfp.exe. When running, select the .SID file, configure the length, and wait. Successful output for each channel is done using the default Windows warning sound. 

Each channel is exported with the "ch" prefix, for example, Channel 1 is exported as "ch1.wav". Master file is exported as "master.wav".
