# Smoke Test

## Definition
A smoke test is a shallow, fast verification run against a build or deployment to confirm that its most critical functions work at all, before committing time to deeper testing.

## Key Idea
The name comes from hardware testing: power on a device and check that it doesn't literally smoke before running detailed diagnostics. In software, a smoke test answers "is this build even worth testing further?" rather than "is this build correct."

## Details

### Characteristics
- **Shallow** - covers a small set of critical paths (e.g., app starts, login works, homepage loads), not edge cases.
- **Fast** - designed to run in seconds to minutes, so it can gate every build without slowing the pipeline.
- **Pass/Fail Gate** - a failure blocks further testing or deployment entirely, since deeper tests are pointless against a fundamentally broken build.

### Typical Placement
- Run immediately after a build completes, before regression or full test suites.
- Often the first automated stage in a continuous integration pipeline.
- Can be manual (a short checklist) or automated (a small script hitting key endpoints or flows).

## Significance
- Catches catastrophic failures early, saving the cost of running a full test suite against a broken build.
- A standard early gate within [[programming|Programming]] workflows, sitting between build and full verification.
- Cheap enough to run on every commit or deployment, unlike exhaustive test suites.

## Limitations

### Criticisms
- Its shallowness is also its weakness - passing a smoke test says nothing about correctness beyond the paths it touches.
- Can create false confidence if treated as a substitute for thorough testing rather than a quick gate before it.

## Related Concepts
- [[programming|Programming]] treats testing as part of its core process; a smoke test is the fastest, shallowest stage of that testing.
- [[continuous-integration|Continuous Integration]] typically runs a smoke test as its first automated gate after a build, before slower test stages.
- [[regression-testing|Regression Testing]] picks up where a smoke test stops, checking that existing behavior still holds in depth once the build is confirmed basically functional.
