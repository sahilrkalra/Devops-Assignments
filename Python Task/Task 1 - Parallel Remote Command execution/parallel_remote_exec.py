import sys, os, json, threading
import paramiko

outlock = threading.Lock()

def execute_commands(host, username, password, cmd):
  print(f'Establishing the connection to host: {host}')
  client = paramiko.SSHClient()
  client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
  client.connect(host, username=username, password=password)
  print(f'Connection established successfully.')
  stdin, stdout, stderr = client.exec_command(cmd)

  with outlock:
        print('=========================')
        print(f'STDOUT from host: {host}')
        print(stdout.readlines())
        print(f'STDERR from host: {host}')
        print(stderr.readlines())


def read_json(filepath):
    with open(filepath, 'r') as f:
        return json.load(f)


def main(args):
    if len(args) < 1:
       print('Error! One parameter is required to run this script. The path of the server_details.json file should be passed.')
       print('Example: python parallel_remote_exec.py server_details.json')
       exit(1)
    json = args[0]
    print(f'Reading Server details from: {json}')
    server_details = read_json(json)

    while True:
      cmd = input("Enter the command to execute - \n")
      threads = []
      for server in server_details:
        t = threading.Thread(target=execute_commands, args=(server['host'],server['username'],server['password'],cmd))
        t.start()
        threads.append(t)
      for t in threads:
        t.join()


if __name__ == "__main__":
   main(sys.argv[1:])