# Command Execution on Multiple Hosts Parallelly
The script parallel_remote_exec.py would accept the command from the user and would execute that command on multiple hosts in parallel. Once the execution is completed (success/failed doesn't matter) the user can then enter the next command to execute on all the hosts.

To run this script a python module called paramiko needs to be installed to establish parallel connection to multiple hosts.
#### The following is the syntax to install the module -
pip install paramiko

#### Official Documentation of the paramiko module - https://www.paramiko.org/installing.html

To run this script you would need to have a json file created with host ip, username & password information. A sample json file 'server_detail.json' is attached along with the script. It should be of the format list of dictionaries where each node would provide the information about a particular host.

#### Syntax to run the script -
python parallel_remote_exec.py <jsonfilepath>