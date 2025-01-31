# challenge

### First: Review Existing Unstructured Data and Diagram a New Structured Relational Data Model



## How to run
Pull the data by running this:
```bash
chmod +x ./fetch_data.sh 
./fetch_data.sh
```
The `users.json` file was corrupted when using `wget`, so I retrieved it manually.

Run `docker compose up` to start the service

## Other Notes
In `users.json`, `signUpSource` is a key in the JSON object, but not defined in the instructions
