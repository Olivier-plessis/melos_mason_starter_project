# 🏗️ Melos Mason bricks starter app

<p align="center">
<img src="https://raw.githubusercontent.com/Olivier-plessis/melos_mason_starter_project/main/.github/assets/melos-logo.webp" height="125" alt="mason logo" />
<img src="https://raw.githubusercontent.com/Olivier-plessis/melos_mason_starter_project/main/.github/assets/mason_full.png" height="125" alt="mason logo" />
</p>
This bricks can generate feature folders and files for
**solid principles**, **clean architecture**  **riverpod generator**  **hooks** and **dartz**.

## Getting Started 🚀

New to Mason? Read [the documentation][mason_doc_link] to learn how to spin up these bricks!

New to Melos? Read [the documentation][melos_doc_link] to learn how to configure Dart projects with multiple packages!

## Bricks ✨

this repo currently contains two bricks that I'm going to develop according to my needs and/or requests.

### **scaffold_riverpod_app**: [documentation](https://github.com/Olivier-plessis/mason_brick_solid_principles_riverpod/blob/main/bricks/scaffold_riverpod_app/README.md)

### **feature_brick**: [documentation](bricks/feature_brick/README.md)

[mason_doc_link]: https://docs.brickhub.dev/category/getting-started
[melos_doc_link]: https://melos.invertase.dev/


## Usage 🕹️

To use the **clean_architecture_feature_riverpod** brick, and generate code. You can run the following command in your terminal:
procede to intialize the melos project
 - in the melos.yaml file, change the name of the project
``` sh
name: starter_app
```

and run

``` sh
melos bs
```



**app configuration 📦**
install mason cli
``` sh
    dart pub global activate mason_cli
 ```

load mason bricks

``` sh
    mason get 
    cd app && mason make scaffold_riverpod_app
 ```

Follow the instructions in the prompt and **VOILA**.

**linter configuration**
in the analysis_options.yaml file add the following line:

``` sh
    import: ../../analysis_options.yaml
        # enable riverpod_lint
        analyzer:
            plugins:
                - custom_lint
 ```
 and delete the rest of the file.


**feature configuration 📦**

``` sh
    mason make feature_brick
 ```

Follow the instructions in the prompt and **VOILA**.

if the new feature contains a page, it is automatically added to the router.