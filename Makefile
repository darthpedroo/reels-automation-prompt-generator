install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
format:
	black *.py tema/*.py
lint:
	pylint --disable=R,C *.py tema/*.py
test:
	python -m pytest -vv --cov=tema

all: install format lint test



# kafka-topics.bat --create --bootstrap-server localhost:9092 --topic scripts_video
