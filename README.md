# Recipe API

## Description

A robust Recipe API built using Django, designed for efficient recipe management. This API supports user authentication and provides functionality for managing recipes, tags, ingredients, and recipe images. Users can filter recipes based on tags and ingredients, enabling personalized and efficient recipe discovery. The project documentation follows the OpenAPI specification and is accessible via Swagger.

## Why?

This project aims to address the need for a user-friendly API that simplifies recipe management for developers building food-related applications. By including features like user authentication, comprehensive filtering, and image handling, this API solves common challenges faced in recipe-related projects and provides a solid foundation for developers to build upon.

## Quick Start

To set up and run the Recipe API on your local machine:

1. **Clone the Repository:**
   ```bash
   git clone <repository_url>
   cd <project_directory>
   ```
2. **Build the image**
   ```bash
   docker compose build
   ```
3. **Start the server**
   ```bash
   docker compose up
   ```
4. **Swagger Docs**
   Go to the url `http://localhost:8000/api/docs/`

For running any Django tests and other commands

```bash
docker compose run --rm app sh -c "python manage.py test"
```
