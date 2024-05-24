This images follows the pg_repack releases + compatibility with PostgreSQL.

| postgres | pg_repack |
|----------|-----------|
| 16       | 1.5.0     |
| 15       | 1.4.8     |
| 14       | 1.4.7     |
| 13       | 1.4.6     |
| 12       | 1.4.5     |
| 11       | 1.4.4     |
| 10       | 1.4.3     |

To build:
`docker build . -t pg-repack-docker`

To run:
`docker run -e POSTGRES_PASSWORD=1234 --name pg16 -d pg-repack-docker`

