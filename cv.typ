#set document(title: "David Williams CV", author: "David Williams")
#set page(numbering: "1", margin: 2cm)
#set text(lang: "en", size: 10.5pt)
#set par(justify: true)

#let section(title) = [
  #v(0.3em)
  #text(weight: "bold", size: 12pt)[#upper(title)]
  #line(length: 100%, stroke: 0.5pt)
]

#let entry(title, dates, body) = [
  #grid(
    columns: (1fr, auto),
    text(weight: "bold")[#title], text(weight: "bold")[#dates]
  )
  #body
]

#align(center)[
  #text(size: 20pt)[David Williams] \
  Queenstown, New Zealand \
  david\@williams.it.com
]

#section("Profile")
An experienced software engineer with a background in Cloud, DevOps, and SRE with a proven track
record of delivering high-quality solutions to complex technical challenges. A graduate of Theoretical
Physics from Trinity College Dublin who possesses strong programming and mathematical skills as
well as a natural aptitude for problem-solving. An outgoing person with excellent communication and
interpersonal skills who thrives in fast-paced, dynamic environments.

#section("Employment Experience")

#entry("Westpac - Platform Engineer - Auckland Nz", "October 2023 - Present")[
  - Migrated the organisation's Jenkins pipeline platform from VM to Kubernetes.
  - Rolled out the SNYK platform for code scanning and acted as a development advocate for how
    to best integrate the tooling into the org's wider workflows.
  - Migrated Jenkins worker agents from RHEL 7 to RHEL 8, including a rewrite of Chef cookbooks and
    incorporating immutable infrastructure practices via Packer to minimise changes post production.
  *Skills*: Python, Groovy, Jenkins, Terraform, Chef, Redhat, Terragrunt, VMware, Docker
]

#v(0.5em)
#entry("Contractor - Westpac - Platform Engineer - Auckland Nz", "April 2023 - October 2023")[
  - Developed Python and Jenkins automation workflows that reduced team onboarding time
    from days to minutes.
  - Refactored legacy Terraform codebase using Terragrunt, achieving 40% code reduction
    through DRY principles.
  - Enhanced Chef deployment reliability by implementing comprehensive retry mechanisms,
    decreasing deployment failures by 60%.
  - Streamlined platform operations through custom automation tools and self-service capabilities.
  *Skills*: Python, Groovy, Jenkins, Terraform, Chef, Linux, Terragrunt, VMware, Docker
]

#v(0.5em)
#entry("Contractor - IBM - Automation Developer VPC - Dublin", "July 2022 - January 2023")[
  - Led a team building automation tooling for Virtual Private Cloud (VPC) operations, adopted by
    both the VPC and advanced customer support teams.
  - Built a Customer Impacting Event (CIE) Slack bot integrating GitHub, ServiceNow, IBM internal
    email, and PagerDuty into a single interface for incident coordination.
  - Built a CI/CD pipeline with Travis CI, pre-commit hooks, and Jenkins, standardising code
    quality checks across all team projects.
  - Wrote a Python CLI to centralise, standardise, and automate common VPC system-operations
    tasks for the team.
  *Skills*: Golang, Python, Bash, Linux, VPC, Networking, Slack Automations, Containerization, Docker
]

#v(0.5em)
#entry("Coinbase - Software Engineer Custody Team - Dublin", "April 2022 - June 2022")[
  - Contributed to a Ruby on Rails crypto custody service securing trillions of dollars in
    cryptocurrency transactions.
  - Refactored a legacy Ruby monolith into a Golang microservice built on Kafka, Temporal, and
    MongoDB, improving scalability.
  *Skills*: Golang, MongoDB, Kafka, Ruby, Rspec, AWS, Github, Temporal
]

#v(0.5em)
#entry("IBM - SRE IBM Kubernetes Service - Dublin", "May 2020 - October 2021")[
  - Led the move to role-based access control for cloud accounts, defining all access as Terraform
    code.
  - Built and expanded Golang automation enabling the team to operate a service spanning hundreds
    of thousands of machines across 20+ regions.
  - Built tooling into the Ansible-based bootstrap process to meet SOC 3 and FedRAMP compliance
    requirements.
  - Automated operations and compliance workflows using Python- and Bash-based Jenkins pipelines.
  *Skills*: Golang, Python, Bash, Linux, Ansible, Kubernetes, CI/CD pipelines, Cyber Security,
  Compliance, Prometheus, Jenkins, Travis, Github Apps, IBM cloud, logDNA, Terraform, Slack bots
]

#v(0.5em)
#entry("Contractor - IBM - Site Reliability Engineer - Dublin", "Sep 2019 - May 2020")[
  - Automated operational workflows with Python, building CLI tools and Slack bots for the team.
  - Built a Kubernetes-based version-control system for New Relic alert configuration, reducing
    configuration drift.
  *Skills*: Linux, Bash, Python, Ansible, New Relic, Kubernetes, Helm, IBM cloud, Git, Travis, Slack
]

#section("Education")

#entry("Trinity College Dublin", "2014 - 2018")[
  - B.A. (Mod.) in Theoretical Physics, Upper Second Class Honours.
  - Final year project in the area of soft sphere packings, simulated and analysed using Python.
]

#entry("Wesley College Dublin", "2008 - 2014")[
  - Leaving Certificate: Achieved 595 points (99th Percentile).
]

#section("Publications")
- Theory of Rotational Columnar Structures of Soft Spheres - Physical Review E volume 99 2019
