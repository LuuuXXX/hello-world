import yaml
import json

from pathlib import Path
from typing import List, Dict, Any

Job = Dict[str, Any]

JOBS_YAML_PATH = Path(__file__).absolute().parent / "jobs.yml"

def name_jobs(jobs: List[Dict], prefix: str) -> List[Job]:
    for job in jobs:
        job["name"] = f"{prefix} - {job['image']}"
    return jobs

def calculate_jobs(job_data: Dict[str, Any]) -> List[Job]:
    return name_jobs(job_data["release"], "Job")

if __name__ == "__main__":
    with open(JOBS_YAML_PATH) as f:
        data = yaml.safe_load(f)
    
    jobs = []
    jobs = calculate_jobs(data)

    if not jobs:
        raise Exception("Error: scheduled job list is empty!")
    
    print(f"jobs={json.dumps(jobs)}")