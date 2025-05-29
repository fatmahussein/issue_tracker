<a name="readme-top"></a>
<div align="center">

  <h3><b>Issue Tracker Application</b></h3>

</div>

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [Issue Tracker ](#-issue-tracker-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Run tests](#run-tests)
    - [Usage](#usage)
  - [👥 Author ](#-author-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

# Issue Tracker <a name="issue-tracker"></a>

**Issue Tracker** is a Rails app for tracking issues (or tasks), displaying a graphical report, and allowing users to download reports in Excel and PDF formats. 

<img width="808" alt="issues per project" src="https://github.com/user-attachments/assets/226f99ad-01c2-4982-bd09-676b3b9cd167" />
<img width="470" alt="issues" src="https://github.com/user-attachments/assets/1532545b-2ad8-49fb-b61a-8ce3482d6dfb" />




## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

- **[Ruby](https://www.ruby-lang.org/en/)**
- **[Ruby on Rails](https://rubyonrails.org/)**
- **[PostgreSQL](https://www.postgresql.org/)**

### Key Features <a name="key-features"></a>

- Create, view, edit, and delete projects
- Create, view, edit, and delete issues
- Assign issues to projects
- Export reports as PDF and Excel files
- Graphical representation of issues by project/status

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

To run this project you need:

- Install [Ruby](https://www.ruby-lang.org/en/)
- Install [Ruby on Rails](https://rubyonrails.org/)
- Install [PostgreSQL](https://www.postgresql.org/)

### Setup

Clone this repository to your desired folder:

`git clone https://github.com/fatmahussein/issue_tracker.git`

### Install

Install the required gems
`bundle install`

Precompile  app assets
`rails assets: precompile`

Create the database by running the command
`rails db:create`

Migrate the tables to the database
`rails db:migrate`

Seed data to the database
`rails db:seed`


### Run tests

Run the tests using
`rspec`

### Usage

Then run the rails server

`rails s`

And now you should be able to see the project running on `localhost:3000`

Visit `http://localhost:3000/exports` to download issues as PDF or Excel.


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👥 Author <a name="authors"></a>

👤 **Fatuma Hussein**

- GitHub: [@fatmahussein](https://github.com/fatmahussein)
- LinkedIn: [Fatuma Hussein](https://www.linkedin.com/in/fatmahusseinhassan/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- Filtering issues by status or priority
- Adding due dates and assignment to users
- Graphical dashboard of issue trends

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

Leave a ⭐️ if you like this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- Inspired by Craft Silicon technical interview

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
