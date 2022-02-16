# Docker Cucumber Reporting



### Run Docker Container
```sh
docker container run -d --env "OUTPUT_DIRECTORY=/cucumber-json" -v $PWD/jsonReports:/cucumber-json cucumber-reporting:5.6.2
```

### Build Docker Image
```sh
docker image build --force-rm --build-arg "VERSION=5.6.2" -t cucumber-reporting:5.6.2 .
```

### Reposiitories
- [cucumber-reporting](https://github.com/damianszczepanik/cucumber-reporting)
- [maven-cucumber-reporting](https://github.com/damianszczepanik/maven-cucumber-reporting)
