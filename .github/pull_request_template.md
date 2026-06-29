## Summary
- 

## Jira
- 
- https://ncarb.atlassian.net/browse/

## API contract changes
### New endpoint
`METHOD /path/{param}`

Request body:
```json
{
  "field": "description"
}
```

Response:
- `2xx` description
- `4xx` description

### Behavior notes for frontend
- 