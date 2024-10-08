# Dockerfile for Stable Diffusion Web UI Forge

This repository contains the Dockerfile for the Stable Diffusion Web UI Forge. Follow the instructions below to launch the application.

## Launch Instructions

1. **Run the Docker Container**:
   Use the following command to start the container with GPU support:

   ```bash
   docker run --gpus all -it --rm -p 8888:8888 vdsukhov/sd-forge:latest
   ```

2. **Access the Web UI**:
   Once inside the Docker container, navigate to the web UI directory and start the application:

   ```bash
   cd /sd/webui/
   python webui.py --listen --port 8888
   ```

3. **Accessing the Interface**:
   Open your web browser and go to `http://localhost:8888` to access the Stable Diffusion Web UI.

## Adding Local Models (Optional)

To add models from your local machine, use the `-v` argument to mount your local directory. 

## Notes

- Ensure that you have Docker installed and configured to use GPU.
- Adjust the port if `8888` is already in use.

For any issues or questions, please refer to the repository's issue tracker.