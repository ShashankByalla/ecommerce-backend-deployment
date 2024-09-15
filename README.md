# ecommerce-backend-deployment

# E-commerce Backend Deployment

This project demonstrates the deployment of an e-commerce backend using Docker, with MySQL as the database. The frontend is served through Docker containers, and the backend interacts with a MySQL database. The project also includes performance monitoring, network security groups (NSGs) configuration, and Azure resource utilization tracking.

## Project Structure

ecommerce-backend-deployment/
│
├── backend/
│   ├── docker-compose.yml  # Docker setup for backend
│   ├── schema.sql          # MySQL database schema
│   ├── src/                # Backend source code
│
├── frontend/
│   ├── docker-compose.yml  # Docker setup for frontend
│   ├── html/
│       └── index.html      # Frontend web page
│
├── scripts/
│   ├── setup-vm.sh         # Script to set up virtual machine
│   └── setup-mysql.sh      # Script to set up MySQL database
│
├── config-docs/
│   ├── nsg-screenshots/     # Screenshots of Network Security Groups (NSGs)
│       ├── nsg1.png         # NSG screenshot example 1
│       └── nsg2.png         # NSG screenshot example 2
│   ├── load-balancer.png    # Load balancer configuration screenshot
│   ├── azure-security.png   # Azure Security Center configuration screenshot
│   └── performance-metrics/ # Performance and resource usage logs
│
└── README.md               # Project documentation

## Features

	•	Backend API: The backend API is containerized using Docker, ensuring portability and consistent behavior across environments.
	•	MySQL Database: Backend API interacts with a MySQL database for data storage.
	•	Frontend Application: A basic frontend interface to interact with the backend.
	•	VM Setup Scripts: Automated scripts for setting up the virtual machine (VM) and MySQL environment.
	•	NSG & Load Balancer: Network Security Groups (NSG) and load balancer configurations for security and traffic distribution.
	•	Azure Monitoring: Logs and screenshots showcasing Azure Security Center, performance metrics, and VM resource utilization.

 ## Prerequisites

	•	Docker
	•	Docker Compose
	•	Virtual Machine (for deployment)
	•	Azure (for NSG and load balancer setup)

# Setup Instructions

## 1. Clone the Repository

git clone https://github.com/your-username/ecommerce-backend-deployment.git
cd ecommerce-backend-deployment

## 2. Build and Run Docker Containers

Navigate to the backend and frontend directories to build and run the Docker containers:
# For backend
cd backend/
docker-compose up --build

# For frontend
cd frontend/
docker-compose up --build

## 3. Set Up MySQL Database

Initialize the MySQL database using the provided SQL schema:
# Inside the backend directory
docker exec -i backend-mysql mysql -u root -p < schema.sql

## 4. Set Up Virtual Machine (VM)

Run the provided script to set up your VM environment:
cd scripts/
bash setup-vm.sh

## 5. API Endpoints

| Endpoint         | Method | Description                |
| ---------------- | ------ | -------------------------- |
| `/products`       | GET    | Retrieve list of products   |
| `/products/:id`   | GET    | Retrieve a specific product |
| `/products`       | POST   | Add a new product           |
| `/customers`      | GET    | Retrieve list of customers  |
| `/customers/:id`  | GET    | Retrieve a specific customer|

## 6. NSG and Load Balancer Configuration

Screenshots for NSG and load balancer configurations are located in the config-docs/nsg-screenshots/ and config-docs/ directories. These include:

	•	NSG Screenshots: Visuals of Network Security Group settings.
	•	Load Balancer: Screenshot showcasing load balancer configuration.
	•	Azure Security Center: Screenshot of security setup in Azure.

## 7. Performance Monitoring

The performance logs and metrics are located in the config-docs/performance-metrics/ directory. These logs show:

	•	VM Resource Utilization: CPU, memory, and disk usage metrics.
	•	Docker Container Logs: Performance data from Docker containers.
	•	Cron Job Output: If scheduled tasks are running, their output is included.

# Screenshots

The following screenshots have been included in the config-docs/ directory:

	•	NSG Configuration: Screenshots showing the configuration of NSGs to secure your VM instances.
	•	Load Balancer: Configuration screenshots showing load balancing setup.
	•	Azure Security Center: Configuration screenshots related to security best practices.
	•	Performance Metrics: Screenshots showing resource utilization metrics.

## Logs and Metrics

Logs for the performance of VM instances, containers, and database interactions can be found in the performance-metrics/ directory.

# Contributing

	1.	Fork the project.
	2.	Create a feature branch (git checkout -b feature/new-feature).
	3.	Commit your changes (git commit -am 'Add new feature').
	4.	Push to the branch (git push origin feature/new-feature).
	5.	Create a new Pull Request.

# License

This project is licensed under the MIT License.

This README.md provides a clear overview of your project, and it incorporates the NSG configuration screenshots and performance logs. You can modify this further to meet your specific needs.
