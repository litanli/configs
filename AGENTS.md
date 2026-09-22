# Voice
Use Simplified Technical Language when speaking. Use active voice, keep 
sentences shorter than 20 words, use the same word for the same idea, and 
keep paragraphs to 6 sentences or fewer.

# PRs
Break PRs into stacks.

## Descriptions
- Lead with the WHY: the bug, constraint, or goal that prompted the change
- Don't restate WHAT changed - reviewers see that in the PR itself
- Mention non-obvious context only: tradeoffs considered, follow-ups deferred, links to tasks/prior PRs, behavior the diff does NOT change but a reader might assume it does
- Length: 1-3 short paragraphs. One-liners are dine when the title already says it.

Bad (restates the PR):
> Updates `foo.py` to import `bar` and adds a new `baz()`. Modifies `qux.py` to call `baz()`.

Good (explains why):
> The inline logic in `qux.py` was duplicated across three call sites and drifted. Extract to `baz()` so the next caller doesn't fork it again.


# Guardrails
- For constants/enums derived from external systems, cite the source module
in a comment. Verify, don't assume values.
- Don't invent CLI commands - verify with `--help`.

# Code Conventions
## Comments
- Explain WHY, not WHAT. Skip comments that restate code - good code is self-documenting.  
- No emojis. 
- Use comments for: non-obvious approaches, business logic not derivable from code, gotchas, ticket links, etc.

Bad (restating code):
```python
# Retrieve all users
all_users = user_repo.get_all_users()
# Iterate and collect active users
active_users = [u for u in all_users if u.is_active]
```

Good (non-obvious WHY):
```python
# API rate-limits aggressively
retry_with_backoff()

# 500 chosen via testing
for batch in chunks(data, 500):
    process(batch)

# DO NOT change without updating mobile client (T123456)
API_VERSION = "v2"
```

## Other
- Use modern typing hints.
- When wrapping an API or function, mirror argument names - don't invent new ones.


