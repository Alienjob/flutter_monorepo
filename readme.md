# Repository Reorganization Demo Project

This project demonstrates the reorganization of a large monolithic repository into a more manageable structure with version control. The project simulates a real-world scenario where a large codebase needs to be restructured for better maintainability and scalability, with a focus on component versioning and dependency management.

## Project Structure

The repository is organized as follows:

```
repo/
├── app1/                    # First application (shows versions of used components)
├── app2/                    # Second application (shows versions of used components)
└── components/             # Shared components and modules (each with own version)
    ├── app1_module/        # Business logic for app1 (shows used module versions)
    ├── app2_module/        # Business logic for app2 (shows used module versions)
    ├── component1/         # Shared component 1 (shows used module versions)
    ├── component2/         # Shared component 2 (shows used module versions)
    ├── module1/           # Shared module 1 (displays its version)
    └── module2/           # Shared module 2 (displays its version)
```

## Version Management

Each component in the repository has its own version:

1. **Base Modules (module1, module2)**
   - Have their own versions
   - Display version information in their UI widget
   - Serve as foundation for other components

2. **Components (component1, component2)**
   - Maintain their own version numbers
   - Display their version and versions of used modules
   - Can use different versions of modules

3. **App-Specific Modules (app1_module, app2_module)**
   - Have independent versions
   - Show their version and versions of used components/modules
   - Can mix different versions of components

4. **Applications (app1, app2)**
   - Display a comprehensive version tree
   - Show versions of all used components and modules
   - Can use different versions of components and modules

## Version Display System

Each Flutter widget in the system displays:
- Its own version
- Versions of its dependencies
- Clear hierarchy of version dependencies

This allows for:
- Easy tracking of component versions in use
- Visual representation of dependency relationships
- Quick identification of version mismatches
- Understanding of version compatibility

## Architecture Overview

The repository follows a hierarchical dependency structure:

1. **Applications (app1, app2)**
   - Contain build configurations
   - Can include functionality from their respective modules
   - Depend on components and modules
   - Display version tree of all dependencies

2. **Business Logic Modules (app1_module, app2_module)**
   - Contain core business logic for respective applications
   - Located in the components directory for better reusability
   - Display versions of used modules
   - App1 can include parts of app2 functionality through module dependencies

3. **Components and Modules**
   - Components depend on modules
   - Both are shared resources that can be used across applications
   - Each maintains its own version
   - Promotes code reuse and maintainability

## Purpose

This demo project illustrates:
1. Clear separation between build configuration and business logic
2. Modular architecture with well-defined dependencies
3. Shared component and module management
4. Best practices for organizing large codebases
5. Version control and dependency management in a monorepo
6. Visual representation of component versions and dependencies

## Goals

- Demonstrate clear separation between build configuration and business logic
- Show how shared components and modules can be managed within a monorepo structure
- Provide examples of dependency management in a hierarchical structure
- Support flexible integration of functionality between applications
- Enable efficient code sharing and reuse through the components directory
- Visualize version dependencies and relationships

## Development Workflow

The repository structure supports a workflow where:
- Applications (app1, app2) focus on build and deployment configuration
- Business logic is developed in respective modules (app1_module, app2_module)
- Shared functionality is developed in components and modules
- Dependencies flow from apps → components → modules
- Version changes are tracked and displayed in the UI
- Different version combinations can be tested and deployed
