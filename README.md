# Pad 
[![Build Status](https://travis-ci.org/petercunha/Pad.svg?branch=master)](https://travis-ci.org/petercunha/Pad)

Pad is an extremely lightweight, low-latency, collaborative notepad built with [WebSockets](https://en.wikipedia.org/wiki/WebSocket) and [NodeJS](https://nodejs.org/)!

-----------------------

1). **Requirements**

    * Node 6.x or later
    * Required Node packages
    * Open port, if you want a public site

As long as you have Node 6 installed, you can just `git clone` and `npm install` and you'll be ready to roll!

-----------------------

2). **Run your own server!**

    git clone https://github.com/GrewalHimanshu/Assignment1.git

    cd pad
    npm install && npm start

![Pad Screenshot](https://github.com/GrewalHimanshu/Assignment1/blob/main/Screenshots/Pad.JPG?raw=true)

-----------------------

3). **Assessment task :**

 ![Assessment Tasks Screenshot](https://github.com/GrewalHimanshu/Assignment1/blob/main/Screenshots/AssessmentTasks.JPG?raw=true)

-----------------------


**Note:** 


**The given repository lacked specific files for separate frontend and backend Dockerfiles and Integration Tests. Therefore, only a single Dockerfile was created and placeholder steps for integration tests were skipped. Adjustments should be made based on the actual project structure when available.**



-----------------------

4). **Documentation:**

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

**Note :**

Secrets Management:

         Go to your GitHub repository settings and add the following secrets add these as name and edit the data as require in the next section: 

         "DOCKER_USERNAME"
         "DOCKER_PASSWORD"

------------------------------
 
5). **Command to run Prometheus:**

      docker run -d -p 9090:9090 -v /path/to/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus

In my case this file was located on the root directory, therefore:

      docker run -d -p 9090:9090 -v $(pwd)/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus

---------------

6). **Final Steps**

     1. Commit and Push Code.
     2. Commit all changes and push them to the main branch of your repository.

**Verify Pipeline:**

    1. Create a pull request to trigger the CI/CD pipeline.
    2. Check GitHub Actions to see the pipeline in action.
    3. Monitor Application:
   **Access Prometheus at http://localhost:9090 to monitor your application.**

![Prometheus Screenshot](https://github.com/GrewalHimanshu/Assignment1/blob/main/Screenshots/Prometheus.JPG?raw=true)
