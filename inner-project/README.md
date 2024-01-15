# 파이썬3 플라스크 샘플 프로젝트
> [flask 구축 공식 가이드 보기](https://flask.palletsprojects.com/en/3.0.x/installation/)

## 1. 로컬 구동
> virtualenv 기준

### 1. .venv 생성
```shell
python3 -m venv .venv
```

### 2. venv 활성화
```shell
source .venv/bin/activate
```

### 3. install package -> must contain flask
```shell
pip3 install -r requirements.txt
```

### 4. 실행
```shell
flask run --host=0.0.0.0
```
