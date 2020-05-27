## echo-client.py
## 클라이언트 코드
## ref: https://soooprmx.com/archives/8762

import zmq, sys

## 동일하게 컨텍스트를 만들고 
ctx = zmq.Context()

def run_client(port=5555):
  ## 컨텍스트로부터 소켓을 만들고 서버에 연결한다.
  sock = ctx.socket(zmq.REQ)
  sock.connect(f'tcp://localhost:{port}')
  while True:
    ## 키보드로부터 입력받은 내용을 서버로 전송하고,
    ## 다시 서버의 응답을 출력한다.
    ## bye를 메시지로 보내고 받으면 소켓을 닫는다.
    line = input()
    sock.send(line.encode())
    rep = sock.recv()
    print(f'Reply: {rep.decode()}')
    if rep.decode() == 'bye':
      sock.close()
      break

port = sys.argv[1] if len(sys.argv) > 1 else 5555
run_client(port)
