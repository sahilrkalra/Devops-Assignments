
def parseIP(logFilePath):
    ips=list()
    metadata = dict()
    with open(logFilePath,'r') as f:
        for line in f.readlines():
            ips.append(line.split(' ')[0])
        unique_ip = set(ips)
        for ip in unique_ip:
            print(f'{ip} - {ips.count(ip)}')

    return

def main():
    logFilePath = "logfile"
    parseIP(logFilePath)
    return

if __name__ == "__main__":
    main()