FROM maven:3.8.4-eclipse-temurin-8

ARG VERSION=5.6.2
ENV MAVEN_CUCUMBER_REPORTING_VERSION ${VERSION}

ENV PROJECT_NAME "Default Cucumber Reporting"
ENV CUCUMBER_REPORTING_HOME "/cucumber-reporting"
ENV OUTPUT_DIRECTORY "${CUCUMBER_REPORTING_HOME}"
ENV CUCUMBER_HTML "${CUCUMBER_REPORTING_HOME}/cucumber-html-reports"
ENV INPUT_DIRECTORY "${CUCUMBER_REPORTING_HOME}"

WORKDIR ${CUCUMBER_REPORTING_HOME}

COPY pom.xml .
COPY jsonReports jsonReports

RUN /usr/bin/mvn install
RUN rm -rf target & \
    rm -rf jsonReports & \
    rm -rf cucumber-html-reports

VOLUME [ "${CUCUMBER_HTML}" ]

ENTRYPOINT [ "/usr/bin/mvn" ]
CMD [ "verify" ]
