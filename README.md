# Serverless Infrastructure as Code (IaC)

This project demonstrates a multi-cloud serverless architecture using the Serverless Framework for AWS, Azure, and GCP.

## Project Structure

```
serverless-iac/
├── src/
│   └── handlers/
│       ├── awsHandler.js
│       ├── azureHandler.js
│       └── gcpHandler.js
├── aws/
│   └── serverless.yml
├── azure/
│   └── serverless.yml
├── gcp/
│   └── serverless.yml
├── .github/
│   └── workflows/
│       └── deploy.yml
├── serverless.yml
├── package.json
├── deploy.sh
├── .gitignore
├── .env
├── .env.example
└── README.md
```

## Setup

1. Clone this repository
2. Install dependencies: `npm install`
3. Copy `.env.example` to `.env` and fill in your credentials and configuration
4. Deploy to a specific cloud provider: `./deploy.sh [aws|azure|gcp]`

## Configuration

- `serverless.yml`: Main configuration file
- `aws/serverless.yml`, `azure/serverless.yml`, `gcp/serverless.yml`: Cloud-specific configurations
- `.env`: Environment variables (do not commit this file)
- `.env.example`: Example environment variables file

## Deployment

Use the `deploy.sh` script to deploy to a specific cloud provider:

```
./deploy.sh aws    # Deploy to AWS
./deploy.sh azure  # Deploy to Azure
./deploy.sh gcp    # Deploy to GCP
```

## CI/CD

This project includes a GitHub Actions workflow (`.github/workflows/deploy.yml`) that automatically deploys to all configured cloud providers on push to the main branch.

## Best Practices

- Keep sensitive information in `.env` file and never commit it
- Use environment variables for configuration
- Implement proper error handling and logging in your functions
- Regularly update dependencies and apply security patches
- Monitor your applications using cloud-native monitoring tools

## Contributing

1. Fork the repository
2. Create your feature branch: `git checkout -b feature/my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin feature/my-new-feature`
5. Submit a pull request

## License

This project is licensed under the MIT License.
