# Auto-Archiver

The **Auto-Archiver** is a shell script program designed to automatically archive large files stored in the current directory on Daily basis


## Components
1. **`logfile.txt`**  
   - Contains detailed logs of the archiving process, including timestamps and file details.
   - Useful for monitoring and debugging.

2. **`run_script.bat`**  
   - A batch file containing the command to execute the archiving script.
   - Designed for integration with Windows Task Scheduler for automation.

3. **`archive.sh`**
   - contains shell commands

## Usage
1. Place the `archive.sh` script in the desired directory and change the directory location accordingly.
2. Configure the `run_script.bat` file with the appropriate directory location.
3. Use Windows Task Scheduler to schedule the execution of `run_script.bat` at your preferred intervals.
