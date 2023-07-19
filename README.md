# Axeleration HTTPSer

Axeleration HTTPSer is a project designed to simplify the process of setting up HTTPS for local projects in the Axeleration Privy acceleration class.

## Installation

Before starting the installation, please ensure that you have Docker installed. If you haven't installed Docker yet, you can use Orbstack (https://orbstack.dev/) to install it.

Once Docker is installed, follow the steps below to set up Axeleration HTTPSer:

1. Run the following command to generate SSL certificates:
   ```
   ./generate-cert.sh
   ```

   When prompted, enter the name of your team for the Axeleration program, and then press Enter.

2. Open the `docker-compose.yml` file and locate the `environment` section.

3. Modify the value of `AXELERATION_TEAM` to match your team name:
   ```
   environment:
     - AXELERATION_TEAM=<team_name>
   ```

   Replace `<team_name>` with the name of your team in lowercase letters.

4. Save the changes to the `docker-compose.yml` file.

5. Add the following entry to your `/etc/hosts` file:
   ```
   127.0.0.1 app.<team_name>.axeleration.id
   ```

   Replace `<team_name>` with the name of your team in lowercase letters.

## Usage

To start Axeleration HTTPSer, run the following command:
```
docker-compose up
```

This will start the HTTPSer service and set up HTTPS for your local project.

Please note that you may need to adjust other configuration settings in the `docker-compose.yml` file or other related files based on your project requirements.

## License

This project is licensed under the [MIT License](LICENSE).