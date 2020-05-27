## echo-server.py
## 서버측 코드
## ref: https://soooprmx.com/archives/8762

import zmq, time

## 컨텍스트를 생성한다.
ctx = zmq.Context()

def run_server():
  ## zmq 소켓을 만들고 포트에 바인딩한다.
  sock = ctx.socket(zmq.REP)
  sock.bind('tcp://*:5555')
  while True:
    ## 소켓을 읽고 그 내용을 출력한 후 다시 되돌려 준다.
    msg = sock.recv()
    print(f'Recieved: {msg.decode()}')
    time.sleep(1)
    sock.send(msg)

run_server()
