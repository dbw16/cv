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
A platform engineer who solves everything in code: seven years across SRE, DevOps, and platform
teams at Westpac, IBM, and Coinbase, most recently designated a lead in Westpac's Software Factory
SRE team. Takes messy, org-wide problems such as CI/CD estates, secrets management, and datacentre
migrations, and returns them as automated systems that run themselves. A Theoretical Physics
graduate of Trinity College Dublin, equally comfortable deep in Kubernetes and Terraform or
explaining the result to management.

#section("Employment Experience")

#entry("Westpac - Platform Engineer - Auckland Nz", "October 2023 - Present")[
  // TODO: add the date of the Software Factory SRE lead designation
  Designated a lead within the 12-engineer Software Factory SRE team, mentoring engineers from
  ops backgrounds into modern dev practices.
  - Re-platformed the CloudBees CI/CD control plane from around 30 large VMs onto on-prem
    Kubernetes with Helm, including a cross-datacentre volume replication system for backups,
    cutting deploy times to 2 minutes and saving significant infrastructure cost; wrote a CLI
    tool for CloudBees Configuration as Code with a plugin dependency resolver.
  - Built the org-wide GitOps workflow for Jenkins pipelines: teams raise PRs of JobDSL
    definitions against a central repo, CI validates them, and webhooks sync them onto
    controllers. Used by 50+ teams; 1000+ PRs merged and tens of thousands of pipelines deployed.
  - Updated the bank-wide Chef cookbooks to support RHEL 8, migrated the team's own estate from
    RHEL 7, then was seconded out to help other teams across the line before end of support.
  - Rewrote the org-wide Terraform VM module from external-exec provisioning to cloud-init,
    the groundwork that enabled the bank's rollout of Terraform Enterprise.
  - Consolidated the bank's scattered SonarQube instances into a single Kubernetes-hosted
    instance backed by self-run clustered Postgres, migrating all teams onto it with tooling and
    docs for Java, npm, and Python builds; rolled out Snyk on the same platform patterns.
  - Single-handedly migrated CloudBees, Snyk, and SonarQube onto the bank's new OpenShift
    platform in 4 months against a compressing deadline; seconded to the Cards SRE team to move
    three payment-related infrastructure stacks to the new datacentres.
  - Rewrote the bank's Vault estate (7 clusters) end to end: new IaC and deploy pipelines,
    Consul to Raft storage migration, snapshots to on-prem S3, and a rollout process taking
    deploys from an outage each to weekly and zero-downtime; identified and fixed
    privilege-escalation issues in namespace policies.
  - Re-architected Snyk to run active-active across two datacentres behind F5 GSLB
    health-checked load balancing, meeting a bank DR mandate.
  - Built a standardised uv-based Python build system and Jenkins shared library for building
    and deploying Python apps to containers; 10 teams migrated so far.
  - Worked with the ServiceNow team to deliver an API and pipeline shared library that raises
    change records automatically, replacing manual change-raising in the UI; adopted org-wide.
  - Drove GitHub Copilot adoption across a 500-engineer org: led the evaluation, set up SSO
    integrations, and helped teams onboard; built MCP servers for CloudBees and SonarQube and
    agent skills standardising how pipelines are written.
  - Built the Python (FastAPI) backend and OpenShift deployment for an internal career-ladder
    app tracking skills across the company, with CI on ruff, mypy, and uv.
  *Skills*: Kubernetes, OpenShift, Helm, Vault, Terraform, Ansible, Chef, Python, uv, FastAPI,
  Jenkins, CloudBees, GitOps, Postgres, F5 GSLB, MCP, CI/CD
]

#v(0.5em)
#entry("Contractor - Westpac - Platform Engineer - Auckland Nz", "April 2023 - October 2023")[
  - Joined a 10-engineer team standing up an enterprise CloudBees (Jenkins) instance to replace
    20+ team-run Jenkins servers across the bank.
  - Made the case for refactoring provisioning into a central Terragrunt configuration:
    onboarding a team went from a full, error-prone sprint of engineering work to adding a
    couple of lines to a JSON config file.
  - Moved VM deployment to an immutable-image pattern with Packer, cutting deploy time per VM
    from 30 minutes to 5.
  *Skills*: Terraform, Terragrunt, Packer, Chef, Jenkins, CloudBees, vSphere, Linux, Python, Bash
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
