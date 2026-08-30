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
  91 A Williamson Avenue, Grey Lynn, Auckland \
  +64 27 200 5990 | dawillia\@tcd.ie
]

#section("Profile")
An experienced software engineer with a background in Cloud, DevOps, and SRE with a proven track
record of delivering high-quality solutions to complex technical challenges. A graduate of Theoretical
Physics from Trinity College Dublin who possesses strong programming and mathematical skills as
well as a natural aptitude for problem-solving. An outgoing person with excellent communication and
interpersonal skills who thrives in fast-paced, dynamic environments.

#section("Objectives")
To work in a dynamic and stimulating environment that presents interesting challenges. Eager to
apply existing knowledge and experience to further enhance skills and to collaborate with and learn
from other talented engineers with the goal of creating software and services that are widely used and
considered best-in-class.

#section("Employment Experience")

#entry("Westpac - Platform Engineer - Auckland Nz", "October 2023 - Present")[
  - Migrated the organisation's Jenkins pipeline platform from vm to kubernetes.
  - Rolled out SNYK platform for code scanning and worked as a devermeplet advoccagre for how
    to best intergartine the tooling into the orgs wider workflows.
  - Migration jenkins worker agents from rhel 7 to rhel 8 including a re write of chef cookbooks and
    incopraiting imultable infractusre practises via packer to minimise changes post production.
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
  - Led a team in the design and implementation of automation tools for Virtual Private Cloud
    (VPC) operations, enhancing support for both VPC and advanced customer support teams.
  - Spearheaded the creation of a Customer Impacting Event (CIE) Slack Bot, streamlining incident
    management by integrating multiple platforms, including GitHub, ServiceNow, IBM internal
    email services, and PagerDuty, into a single, easy-to-use location for support teams.
  - Developed and established a robust CI/CD pipeline leveraging Travis CI, pre-commit hooks, and
    Jenkins, ensuring consistent code quality and enforcing best practices across all team projects.
  - Wrote a command-line interface (CLI) in Python to centralize, standardize, and automate
    common system operations tasks, improving team efficiency and reducing manual errors.
  *Skills*: Golang, Python, Bash, Linux, VPC, Networking, Slack Automations, Containerization, Docker
]

#v(0.5em)
#entry("Coinbase - Software Engineer Custody Team - Dublin", "April 2022 - June 2022")[
  - Contributed to the development of a Ruby on Rails crypto custody service, enabling secure and
    efficient handling of trillions of dollars in cryptocurrency transactions.
  - Played a key role in modernizing the codebase by refactoring a legacy Ruby monolith into a
    Golang-based microservice, leveraging technologies such as Kafka, Temporal, and MongoDB
    for improved scalability and performance.
  *Skills*: Golang, MongoDB, Kafka, Ruby, Rspec, AWS, Github, Temporal
]

#v(0.5em)
#entry("IBM - SRE IBM Kubernetes Service - Dublin", "May 2020 - October 2021")[
  - Supported the rollout of IBM Kubernetes Service across new data centers and regions.
  - Led the transition to a role-based user access model for cloud accounts using Terraform to define
    all access in code.
  - Developed and expanded Golang based automation which allowed the team to operate a service
    that runs across hundreds of thousands of machines in 20+ regions.
  - Enhanced compliance by introducing tools to an Ansible-based bootstrap process, aligning with
    SOC 3 and FedRAMP standards.
  - Automated operations and compliance workflows with Jenkins pipelines (Python and Bash).
  - Monitored and managed production environments, ensuring system health and rapid issue
    resolution.
  *Skills*: Golang, Python, Bash, Linux, Ansible, Kubernetes, CI/CD pipelines, Cyber Security,
  Compliance, Prometheus, Jenkins, Travis, Github Apps, IBM cloud, logDNA, Terraform, Slack bots
]

#v(0.5em)
#entry("Contractor - IBM - Site Reliability Engineer - Dublin", "Sep 2019 - May 2020")[
  - Automated operational workflows with Python, creating CLI tools and Slack bots to improve
    efficiency.
  - Developed a Kubernetes-based version-control system for New Relic alerts, enhancing
    reliability and reducing configuration risks.
  - Streamlined manual processes by automating runbooks with Ansible, improving consistency and
    reducing errors.
  - Supported IBM Connections and IBM Notes operations, ensuring system health and availability.
  *Skills*: Linux, Bash, Python, Ansible, New Relic, Kubernetes, Helm, IBM cloud, Git, Travis, Slack
]

#section("Education")

#entry("Trinity College Dublin", "2014 - 2018")[
  - B.A. (Mod.) in Theoretical Physics, Upper Second Class Honours.
  - Relevant modules include; Linear Algebra, Advanced Calculus, Statistical Physics,
    Programming in C/C++, Topics in Advanced Programming, Practical Numerical Simulations.
  - Final year project in the area of soft sphere packings, simulated and analysed using Python.
]

#entry("Wesley College Dublin", "2008 - 2014")[
  - Leaving Certificate: Achieved 595 points (99th Percentile).
]

#section("Publications")
- Theory of Rotational Columnar Structures of Soft Spheres - Physical Review E volume 99 2019
