npm i -g @shepai/cli

cd repo/

# New feature from current dir
shep feat new "Cool dashboards"

# worktree
# branch
# in ~/.shep/repos/HASH/features/FEAT/wt
# Runs agent in bg....

# Other dir
shep feat new --repo /tmp/repo2 "Cool dashboards"

# ask questionts
shep feat new --interactive --allow-prd --allow-plan
# Agent: What user flow yada yda?
#    Option1: [ ]
#    Option2: [v]
#    Option3: [ ]
#    Option4: [ ]

# Full autonomous mode
shep feat new "Fix PR-933 jira bug" --allow-all

# Full autonomous mode using jira tool
shep feat new "Fix it!" --tool-jira-ticket PR-933 --allow-all

# Full autonomous mode using github tool
shep feat new "Fix it!" --tool-github-issue "#24" --allow-all

# List all repos features
shep feat ls
# ┌───────────────────────────────────────────────────────────────────────────┐
# │ Features                                                                  │
# ├──────┬─────────────────────────────────────────────┬──────────────────────┤
# │ ID   │ Name                                        │ Status               │
# ├──────┼─────────────────────────────────────────────┼──────────────────────┤
# │ #001 │ user-authentication                         │ ✓ Deployed           │
# │ #002 │ api-rate-limiting                           │ In Progress          │
# │ #003 │ dashboard-redesign                          │ In Progress          │
# │ #004 │ export-to-pdf                               │ ⚠️  Needs Approval   │
# │ #005 │ real-time-notifications                     │ Code Review          │
# │ #006 │ database-migration                          │ 🚫 Blocked (deps)    │
# │ #007 │ dark-mode-support                           │ Tests Failing        │
# │ #008 │ search-optimization                         │ ⚠️  Plan Review      │
# └──────┴─────────────────────────────────────────────┴──────────────────────┘

shep feat ls --repo /tmp/repo2

# Show details
shep feat show <id>
