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
  #link("https://cv.williams.it.com")[cv.williams.it.com] |
  #link("https://www.linkedin.com/in/david-williams-b786331aa/")[LinkedIn] |
  #link("https://github.com/dbw16")[GitHub]
]

#section("Profile")
Senior Platform Engineer with a background across platform, SRE, and DevOps teams at Westpac,
IBM, and Coinbase, now Delivery Lead of Westpac's 12-engineer Software Factory SRE team. Takes
messy, org-wide problems such as CI/CD estates, secrets management, and datacentre migrations,
and returns them as production software that runs itself. Theoretical Physics graduate of
Trinity College Dublin, equally comfortable deep in Kubernetes and Terraform or explaining the
result to management.

#section("Employment Experience")

#entry("Westpac - Senior Platform Engineer / Delivery Lead - New Zealand (Remote)", "April 2023 - Present")[
  Delivery Lead since March 2026 of the 12-engineer team running the bank's Vault, Terraform
  Enterprise, Artifactory, CloudBees, Snyk, SonarQube, and Chef estates: guiding technical
  design and mentoring engineers from ops backgrounds into modern dev practices. Fully remote
  from Queenstown.
  - Re-platformed the CloudBees CI/CD control plane from 30 large VMs onto on-prem Kubernetes
    with Helm, including cross-datacentre volume replication for backups; deploys dropped from
    20 minutes to 2, and Jenkins's spiky load now bin-packs into pods instead of dedicated VMs.
  - Rewrote the bank's Vault estate (7 clusters) end to end: new IaC and deploy pipelines,
    Consul to Raft storage migration, and snapshots to on-prem S3, taking deploys from an
    outage each to weekly and zero-downtime; found and fixed privilege-escalation issues in
    namespace policies.
  - Drove GitHub Copilot adoption across a 500-engineer org: led the evaluation, set up SSO
    integrations, and helped teams onboard; built MCP servers for CloudBees and SonarQube and
    agent skills standardising how pipelines are written.
  - Built the org-wide GitOps workflow for Jenkins pipelines: teams raise PRs of JobDSL
    definitions, CI validates them, and webhooks sync them onto controllers. Adopted by 50+
    teams, with 1000+ PRs merged and tens of thousands of pipelines deployed.
  - Central to the bank's datacentre migration: single-handedly moved CloudBees, Snyk, and
    SonarQube onto the new OpenShift platform in 4 months against a hard deadline, then
    seconded to the Cards SRE team to migrate three payment-critical infrastructure stacks.
  - Built a supply-chain hardening service that watches containerd events on every build agent
    and forwards each pipeline's exact container-image inventory (SHA, tag) to Splunk, giving
    the bank org-wide visibility of images in use.
  - Consolidated the bank's scattered SonarQube instances into a single Kubernetes-hosted
    instance backed by self-run clustered Postgres, then re-architected Snyk active-active
    across two datacentres to meet a bank DR mandate.
  - Originally contracted into the 10-engineer team standing up the enterprise CloudBees
    platform replacing 20+ team-run Jenkins servers: centralised provisioning into Terragrunt
    (team onboarding went from a sprint of engineering work to a two-line config change) and
    moved VMs to immutable Packer images, cutting per-VM deploys from 30 minutes to 5.
  *Skills*: Kubernetes, OpenShift, Helm, Vault, Terraform, Terragrunt, Packer, Python,
  Jenkins, CloudBees, GitOps, Postgres, Prometheus, Grafana, Dynatrace, Splunk, F5 GSLB, MCP,
  CI/CD
]

#v(0.5em)
#career-break("Career break - relocation from Ireland to New Zealand and travel", "January 2023 - April 2023")

#v(0.5em)
#entry("Contractor - IBM - Automation Developer VPC - Dublin, Ireland", "July 2022 - January 2023")[
  - Led a team building Python CLI tooling that centralised and automated Virtual Private
    Cloud (VPC) system operations, adopted by both the VPC and advanced customer support teams.
  - Built a Customer Impacting Event (CIE) Slack bot integrating GitHub, ServiceNow, IBM internal
    email, and PagerDuty into a single interface for incident coordination.
  *Skills*: Golang, Python, Bash, Linux, VPC, Networking, Docker, Slack bots
]

#v(0.5em)
#entry("Coinbase - Software Engineer Custody Team - Dublin, Ireland", "April 2022 - June 2022")[
  - Contributed to the design and early implementation of decomposing Coinbase Custody's
    legacy Ruby on Rails monolith, securing hundreds of billions of dollars in institutional
    assets, into Golang microservices built on Kafka, Temporal, and MongoDB.
  *Skills*: Golang, Ruby, RSpec, Kafka, Temporal, MongoDB, AWS, GitHub
]

#v(0.5em)
#career-break("Career break - kayaking expedition", "October 2021 - April 2022")

#v(0.5em)
#entry("IBM - SRE IBM Kubernetes Service - Dublin, Ireland", "May 2020 - October 2021")[
  - Led the move to role-based access control for cloud accounts, defining all access as Terraform
    code.
  - Wrote Golang services that managed VM patching and Kubernetes upgrade rollouts across a
    control plane spanning hundreds of thousands of machines in 20+ regions, including a bot
    giving engineers a shell on any VM in the fleet.
  - Built tooling into the Ansible-based bootstrap process to meet SOC 3 and FedRAMP compliance
    requirements.
  *Skills*: Golang, Python, Bash, Linux, Ansible, Kubernetes, Terraform, CI/CD, Compliance
  (SOC 3, FedRAMP), Prometheus, Jenkins, Travis CI, GitHub Apps, IBM Cloud, LogDNA
]

#v(0.5em)
#entry("Contractor - IBM - Site Reliability Engineer - Dublin, Ireland", "September 2019 - May 2020")[
  - Built a Kubernetes-hosted config-as-code system for New Relic alert configuration, reducing
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
