#!/bin/bash
# --- thought mainnet: 59472ee4 (db = 0) ---
python -u crawl.py conf/crawl.59472ee4.conf master > log/crawl.59472ee4.master.out 2>&1 &
python -u crawl.py conf/crawl.59472ee4.conf slave > log/crawl.59472ee4.slave.1.out 2>&1 &

python -u ping.py conf/ping.59472ee4.conf master > log/ping.59472ee4.master.out 2>&1 &
python -u ping.py conf/ping.59472ee4.conf slave > log/ping.59472ee4.slave.1.out 2>&1 &
python -u ping.py conf/ping.59472ee4.conf slave > log/ping.59472ee4.slave.2.out 2>&1 &
python -u ping.py conf/ping.59472ee4.conf slave > log/ping.59472ee4.slave.3.out 2>&1 &
python -u ping.py conf/ping.59472ee4.conf slave > log/ping.59472ee4.slave.4.out 2>&1 &
python -u ping.py conf/ping.59472ee4.conf slave > log/ping.59472ee4.slave.5.out 2>&1 &
python -u ping.py conf/ping.59472ee4.conf slave > log/ping.59472ee4.slave.6.out 2>&1 &

python -u resolve.py conf/resolve.59472ee4.conf > log/resolve.59472ee4.out 2>&1 &

python -u export.py conf/export.59472ee4.conf > log/export.59472ee4.out 2>&1 &

python -u seeder.py conf/seeder.59472ee4.conf > log/seeder.59472ee4.out 2>&1 &

python -u pcap.py conf/pcap.59472ee4.conf > log/pcap.59472ee4.1.out 2>&1 &
python -u pcap.py conf/pcap.59472ee4.conf > log/pcap.59472ee4.2.out 2>&1 &
python -u pcap.py conf/pcap.59472ee4.conf > log/pcap.59472ee4.3.out 2>&1 &
