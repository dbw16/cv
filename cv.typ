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

#let career-break(title, dates) = [
  #grid(
    columns: (1fr, auto),
    text(style: "italic")[#title], text(style: "italic")[#dates]
  )
]

#align(center)[
  #text(size: 20pt)[David Williams] \
  Queenstown, New Zealand \
  david\@williams.it.com |
  #link("https://www.linkedin.com/in/david-williams-b786331aa/")[LinkedIn] |
  #link("https://github.com/dbw16")[GitHub]
]

#section("Profile")
Senior Platform Engineer with seven years across platform, SRE, and DevOps teams at Westpac,
IBM, and Coinbase, now Delivery Lead of Westpac's 12-engineer Software Factory SRE team. Takes
messy, org-wide problems such as CI/CD estates, secrets management, and datacentre migrations,
and returns them as automated systems that run themselves. Theoretical Physics graduate of
Trinity College Dublin, equally comfortable deep in Kubernetes and Terraform or explaining the
result to management.

#section("Employment Experience")

#entry("Westpac - Senior Platform Engineer - New Zealand (Remote)", "April 2023 - Present")[
  Joined as a contractor, converted to permanent in October 2023, and now fully remote from
  Queenstown. Delivery Lead of the 12-engineer Software Factory SRE team since March 2026:
  steering designs across the delivery workstream (including re-platforming Terraform
  Enterprise onto OpenShift), representing the team in the weekly Scrum of Scrums, and
  mentoring engineers from ops backgrounds into modern dev practices.
  - Re-platformed the CloudBees CI/CD control plane from around 30 large VMs onto on-prem
    Kubernetes with Helm, including a cross-datacentre volume replication system for backups,
    cutting deploy times to 2 minutes and saving significant infrastructure cost; wrote a CLI
    tool for CloudBees Configuration as Code with a plugin dependency resolver.
  - Built the org-wide GitOps workflow for Jenkins pipelines: teams raise PRs of JobDSL
    definitions against a central repo, CI validates them, and webhooks sync them onto
    controllers. Used by 50+ teams; 1000+ PRs merged and tens of thousands of pipelines deployed.
  - Rewrote the bank's Vault estate (7 clusters) end to end: new IaC and deploy pipelines,
    Consul to Raft storage migration, snapshots to on-prem S3, and a rollout process taking
    deploys from an outage each to weekly and zero-downtime; identified and fixed
    privilege-escalation issues in namespace policies.
  - Single-handedly migrated CloudBees, Snyk, and SonarQube onto the bank's new OpenShift
    platform in 4 months against a compressing deadline; seconded to the Cards SRE team to move
    three payment-related infrastructure stacks to the new datacentres.
  - Built a supply-chain hardening service that watches containerd events on every build
    agent, extracts exactly which container images (SHA, tag) each pipeline runs, and forwards
    the inventory to Splunk, giving the bank org-wide visibility of images in use.
  - Defined the platform's monitoring as code: Dynatrace configuration managed with Terraform
    across Vault, CloudBees, Snyk, and SonarQube, plus Prometheus and Grafana dashboards for
    the CloudBees estate.
  - Consolidated the bank's scattered SonarQube instances into a single Kubernetes-hosted
    instance backed by self-run clustered Postgres, migrating all teams onto it with tooling
    and docs; rolled out Snyk on the same patterns and re-architected it active-active across
    two datacentres behind F5 GSLB health-checked load balancing, meeting a bank DR mandate.
  - Drove GitHub Copilot adoption across a 500-engineer org: led the evaluation, set up SSO
    integrations, and helped teams onboard; built MCP servers for CloudBees and SonarQube and
    agent skills standardising how pipelines are written.
  Contracted initially into a 10-engineer team standing up the enterprise CloudBees platform
  to replace 20+ team-run Jenkins servers across the bank:
  - Made the case for refactoring provisioning into a central Terragrunt configuration:
    onboarding a team went from a full, error-prone sprint of engineering work to adding a
    couple of lines to a JSON config file.
  - Moved VM deployment to an immutable-image pattern with Packer, cutting deploy time per VM
    from 30 minutes to 5.
  *Skills*: Kubernetes, OpenShift, Helm, Vault, Terraform, Terragrunt, Packer, Python,
  Jenkins, CloudBees, GitOps, Postgres, Prometheus, Grafana, Dynatrace, Splunk, F5 GSLB, MCP,
  CI/CD
]

#v(0.5em)
#career-break("Career break - relocation from Ireland to New Zealand and travel", "January 2023 - April 2023")

#v(0.5em)
#entry("Contractor - IBM - Automation Developer VPC - Dublin, Ireland", "July 2022 - January 2023")[
  - Led a team building automation tooling for Virtual Private Cloud (VPC) operations, adopted by
    both the VPC and advanced customer support teams.
  - Built a Customer Impacting Event (CIE) Slack bot integrating GitHub, ServiceNow, IBM internal
    email, and PagerDuty into a single interface for incident coordination.
  - Built a CI/CD pipeline with Travis CI, pre-commit hooks, and Jenkins, standardising code
    quality checks across all team projects.
  - Wrote a Python CLI to centralise, standardise, and automate common VPC system-operations
    tasks for the team.
  *Skills*: Golang, Python, Bash, Linux, VPC, Networking, Docker, Slack bots
]

#v(0.5em)
#entry("Coinbase - Software Engineer Custody Team - Dublin, Ireland", "April 2022 - June 2022")[
  - Worked on Coinbase Custody's Ruby on Rails service, one of the largest institutional
    crypto custodians, securing hundreds of billions of dollars in assets.
  - Contributed to the design and early implementation of decomposing the legacy Ruby monolith
    into Golang microservices built on Kafka, Temporal, and MongoDB.
  *Skills*: Golang, Ruby, RSpec, Kafka, Temporal, MongoDB, AWS, GitHub
]

#v(0.5em)
#career-break("Career break - kayaking expedition", "October 2021 - April 2022")

#v(0.5em)
#entry("IBM - SRE IBM Kubernetes Service - Dublin, Ireland", "May 2020 - October 2021")[
  - Led the move to role-based access control for cloud accounts, defining all access as Terraform
    code.
  - Built and expanded Golang automation enabling the team to operate a service spanning hundreds
    of thousands of machines across 20+ regions.
  - Built tooling into the Ansible-based bootstrap process to meet SOC 3 and FedRAMP compliance
    requirements.
  - Automated operations and compliance workflows using Python- and Bash-based Jenkins pipelines.
  *Skills*: Golang, Python, Bash, Linux, Ansible, Kubernetes, Terraform, CI/CD, Compliance
  (SOC 3, FedRAMP), Prometheus, Jenkins, Travis CI, GitHub Apps, IBM Cloud, LogDNA
]

#v(0.5em)
#entry("Contractor - IBM - Site Reliability Engineer - Dublin, Ireland", "September 2019 - May 2020")[
  - Automated operational workflows with Python, building CLI tools and Slack bots for the team.
  - Built a Kubernetes-based version-control system for New Relic alert configuration, reducing
    configuration drift.
  *Skills*: Linux, Bash, Python, Ansible, New Relic, Kubernetes, Helm, IBM Cloud, Git, Travis CI
]

#section("Education")

#entry("Trinity College Dublin", "2014 - 2018")[
  - B.A. (Mod.) in Theoretical Physics, Upper Second Class Honours.
  - Final year project in the area of soft sphere packings, simulated and analysed using Python.
]

#section("Publications")
- J. Winkelmann, A. Mughal, D. B. Williams, D. Weaire, and S. Hutzler, "Theory of rotational
  columnar structures of soft spheres", Physical Review E 99, 020602(R) (2019).
  #link("https://doi.org/10.1103/PhysRevE.99.020602")[doi:10.1103/PhysRevE.99.020602]
