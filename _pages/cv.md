---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
---

{% include base_path %}

Education
---
* B.S. in Computer Science, University of Washington (Expected June 2028), GPA 3.93, Dean's List

Skills
---
**Languages:** Python, Java, C/C++, JavaScript, TypeScript, HTML/CSS, Verilog

**AI/ML:** Deep Learning, CNNs, Transformers, Reinforcement Learning, PyTorch, TensorFlow, OpenCV, Scikit-Learn

**Frameworks & Tools:** React, Node.js, MongoDB, SQL, Firebase, Git, Tableau, LaTeX, Verilator

**Other:** Atlassian, Microsoft Office

Experience
---
* **Machine Learning Research Intern, Alitheon** (Summers 2024 and 2026)
  * Computer vision research for visual-fingerprint authentication: recognizing individual physical objects across industrial cameras and smartphones
  * Automated camera-station calibration in C++, removing about 95% of a manual setup workflow so new installations go live faster
  * Cut per-item storage in the identification pipeline by about 95% (roughly 200 KB to 9.2 KB per item) while improving identification rates, and ported research models to C++ for the production matching library
  * Built label-free checks that catch incorrect product-database records, removing about 99% of a manual review workload
  * Reflections: [My summer at Alitheon]({{ base_path }}/posts/summer-at-alitheon/)
* **Full-Stack Software Development Intern, OpenEXA** (July 2023 – July 2024)
  * Owned the core interface for an asset-backed credit platform; documented the architecture and mentored 5+ interns, improving onboarding efficiency by about 30%

Teaching
---
* Undergraduate Teaching Assistant, CSE 421 (Algorithms), University of Washington (Autumn 2026)

Languages
---
* English (Native)
* Marathi (Native)
* Hindi (Native)
* French (Conversational)

Service and Leadership
---
* President & Lead Instructor, Interlake Computer Vision Club
  * Taught weekly Data Science and ML lessons
  * Grew membership from 25 to 40 students
  * Introduced students to Kaggle competitions
* Volunteer, 300 Trees
  * Helped plant and water trees through Sammamish High School's watering program

Publications
---
  <ul>{% for post in site.publications reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>

Projects
---
* **Multi-Agent Tanks** — One attention-based network controlling entire tank armies, trained by self-play PPO on a single GPU  
  [GitHub](https://github.com/EliteCoder21/Multi-Agent-Tanks)

* **StratTank** — C++/SFML strategy tank game with commandable allies and wave-based progression  
  [GitHub](https://github.com/EliteCoder21/StratTank)

* **CFish-Engine** — High-performance chess engine in C++ with Alpha-Beta search and transposition tables  
  [GitHub](https://github.com/EliteCoder21/CFish-Engine)

* **ChessCaptioning** — Explainable chess RL with attention mechanisms  
  [GitHub](https://github.com/EliteCoder21/ChessCaptioning)

* **PipelinedCPU** — 5-stage pipelined RISC-V processor (RV32I)  
  [GitHub](https://github.com/EliteCoder21/PipelinedCPU)

* **SpaceInvaders** — FPGA implementation on DE1-SoC  
  [GitHub](https://github.com/EliteCoder21/SpaceInvaders)

* **Obstacle Avoiding RC Rover** — ESP32-based autonomous rover with wireless control  
  [GitHub](https://github.com/EliteCoder21/Obstacle_Avoiding_RC_Rover)
