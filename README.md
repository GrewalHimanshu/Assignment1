# Pad 
[![Build Status](https://travis-ci.org/petercunha/Pad.svg?branch=master)](https://travis-ci.org/petercunha/Pad)

Pad is an extremely lightweight, low-latency, collaborative notepad built with [WebSockets](https://en.wikipedia.org/wiki/WebSocket) and [NodeJS](https://nodejs.org/)!

-----------------------

1). Requirements

    * Node 6.x or later
    * Required Node packages
    * Open port, if you want a public site

As long as you have Node 6 installed, you can just `git clone` and `npm install` and you'll be ready to roll!

-----------------------

2). Run your own server!

    git clone https://github.com/GrewalHimanshu/Assignment1.git

    cd pad
    npm install && npm start

-----------------------

3).

-----------------------

<span style="font-size:30px;">****Note****: **The given repository lacked specific files for separate frontend and backend Dockerfiles and Integration Tests. Therefore, only a single Dockerfile and placeholder steps for integration tests were provided. Adjustments should be made based on the actual project structure when available.**</span>

-----------------------

4). Documentation

  4.1. CI/CD Setup Instructions
  
      1. Place the GitHub Actions workflow file in .github/workflows/deploy.yml.
      2. Set up Docker secrets in your GitHub repository.
      3. Ensure Dockerfile and Docker Compose files are in place.

  4.2. Docker Deployment Guide
  
      1. Build and push Docker images using the GitHub Actions workflow.
      2. Deploy using Docker Compose for staging and production environments.

  4.3. Prometheus Monitoring Configuration
  
      1. Configure Prometheus with the provided prometheus.yml.
      2. Ensure your application exposes metrics for Prometheus.

 -----------------------------
 
5). Command to run Prometheus:

    docker run -d -p 9090:9090 -v $(pwd)/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus

---------------

6). Final Steps

     1. Commit and Push Code:
     2. Commit all changes and push them to the main branch of your repository.

Verify Pipeline:

    1. Create a pull request to trigger the CI/CD pipeline.
    2. Check GitHub Actions to see the pipeline in action.
    3. Monitor Application:
         **Access Prometheus at http://localhost:9090 to monitor your application.**
