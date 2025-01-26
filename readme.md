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

## Current Version State

Current version hierarchy demonstrates our versioning strategy:

```
Applications:
- app1: 1.0.1
- app2: 1.0.1

App Modules:
- app1_module: 0.0.2
- app2_module: 0.0.2

Components:
- component1: 0.1.0 (Recently updated through feature branch)
- component2: 0.0.2

Base Modules:
- module1: 0.0.2
- module2: 0.0.2
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
   - Can be updated independently (as demonstrated with component1)

3. **App-Specific Modules (app1_module, app2_module)**
   - Have independent versions
   - Show their version and versions of used components/modules
   - Can mix different versions of components

4. **Applications (app1, app2)**
   - Display a comprehensive version tree
   - Show versions of all used components and modules
   - Can use different versions of components and modules

## Development Workflow

Our workflow demonstrates effective version management:

1. **Feature Development**
   - Create feature branches for component updates (e.g., `component1feature1`)
   - Update component versions independently
   - Test changes in isolation
   - Merge back to main when ready

2. **Version Updates**
   - Components can be versioned independently
   - Version numbers reflect the nature of changes:
     - 0.0.x for patches
     - 0.x.0 for features
     - x.0.0 for major changes
   - All version changes are visible in the UI

3. **Integration**
   - Components automatically display their versions
   - Dependencies show their versions in a hierarchical structure
   - Version conflicts are immediately visible in the UI

## Best Practices Demonstrated

1. **Independent Versioning**
   - Each component manages its own version
   - Version updates don't force updates in dependent components
   - Clear version display in UI for debugging

2. **Feature Branching**
   - Feature branches for component updates
   - Clean merge history
   - Isolated testing of changes

3. **Version Visibility**
   - All versions visible in runtime UI
   - Clear dependency hierarchies
   - Easy tracking of version combinations

## Getting Started

1. Clone the repository:
```bash
git clone https://github.com/Alienjob/flutter_monorepo.git
```

2. Run either application:
```bash
cd repo/app1 # or app2
flutter run -d macos
```

The apps will display the complete version hierarchy of all components and modules in use.

## Purpose

This demo project illustrates:
1. Clear separation between build configuration and business logic
2. Modular architecture with well-defined dependencies
3. Effective version management in a monorepo
4. Visual version tracking system
5. Feature branch workflow
6. Independent component versioning

The repository structure supports a workflow where each component can evolve independently while maintaining clear version visibility and dependency tracking.

## Challenges and Limitations

While this monorepo approach with visual version tracking provides many benefits, there are several challenges to consider:

1. **Version Management Complexity**
   - Manual version updates across multiple files (pubspec.yaml and main widget files)
   - Risk of version mismatches if not all files are updated
   - Need for careful coordination when updating interdependent components
   - Complex dependency graphs can make updates risky

2. **Local Development Dependencies**
   - Using `path` dependencies in pubspec.yaml files works well for monorepo but complicates publishing to pub.dev
   - Need to maintain separate dependency configurations for local development vs. production
   - Potential issues when trying to use specific versions from pub.dev
   - May require custom pub hosting solution for internal packages

3. **Testing Challenges**
   - Need to test multiple version combinations
   - Complex integration testing scenarios
   - Difficulty in maintaining test environments for different version combinations
   - Risk of missing edge cases in version interactions

4. **CI/CD Considerations**
   - Need for sophisticated build pipelines to handle component interdependencies
   - Complex versioning in automated deployment processes
   - Challenge in determining which components need rebuilding when changes occur
   - Increased build times with multiple package compilations

5. **Scalability Issues**
   - As the number of components grows, version management becomes more complex
   - Increased build times when many components are interdependent
   - Potential memory issues in IDE when working with many Flutter projects simultaneously
   - Repository size growth can slow down cloning and operations

6. **Source Control Challenges**
   - Large repository size with multiple Flutter projects
   - Complex merge scenarios when multiple components are updated
   - Branch management complexity with feature branches across components
   - Potential for conflicts in shared configuration files

7. **Developer Experience**
   - Longer initial setup time
   - Learning curve for understanding version dependencies
   - Need for clear documentation and conventions
   - IDE performance impact with multiple Flutter projects
   - Increased cognitive load in tracking version relationships

## Mitigation Strategies

1. **Automation Tools**
   - Create scripts for version updates across files
   - Implement automated version checking in CI/CD
   - Use tools for dependency graph visualization
   - Automated testing of version combinations

2. **Development Practices**
   - Strict versioning guidelines
   - Regular dependency audits
   - Clear documentation of version changes
   - Feature flags for managing component variations
   - Regular cleanup of unused versions

3. **Infrastructure**
   - Implement efficient caching in CI/CD
   - Use build system optimizations
   - Consider splitting very large monorepos if necessary
   - Set up dedicated build servers for larger projects

4. **Team Organization**
   - Clear ownership of components
   - Coordination protocols for version updates
   - Regular sync meetings for version planning
   - Training on monorepo workflows
   - Designated maintainers for critical components

Consider these challenges and limitations when deciding whether to adopt this approach for your project. The success of this approach depends on:
- Team size and coordination capabilities
- Project complexity and number of components
- Available tooling and infrastructure
- Clear processes and documentation
- Regular maintenance and version management

Alternative approaches might include:
- Using separate repositories with traditional package management
- Implementing a microservices architecture
- Using a hybrid approach with selective component isolation
- Implementing feature toggles instead of version management

The key is to evaluate these trade-offs against your specific project needs and team capabilities.
