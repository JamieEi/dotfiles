#!/usr/bin/env python3

import json
import logging
import os
import sys
import traceback

from datetime import date, datetime, timezone
from dateutil.parser import parse

try:
    log = False
    logging.basicConfig(
        format="%(levelname)s %(filename)s: %(message)s",
        level=logging.DEBUG if log else logging.CRITICAL,
        stream=sys.stderr,
    )

    logger = logging.getLogger(__file__)

    today = date.today()
    logger.debug("today = %s", today)

    lines = sys.stdin.readlines()
    logger.debug("lines = %s", lines)

    tasks = [json.loads(line) for line in lines]
    ids = set([task["uuid"] for task in tasks])
    n_tasks = len(tasks)
    n_ids = len(ids)
    logger.debug("Found %d tasks with %d distinct IDs", n_tasks, n_ids)

    final_tasks = tasks
    if n_ids < n_tasks:
        logger.debug("Detected modify hook. Discarding initial tasks")
        final_tasks = tasks[1::2]

    for task in final_tasks:
        planned = task.get("planned")
        logger.debug("planned = %s", planned)

        if planned:
            planned_datetime = parse(planned)
            logger.debug("planned_datetime = %s", planned_datetime)

            planned_date = planned_datetime.astimezone().date()
            logger.debug("planned_date = %s", planned_date)

            delta = (planned_date - today).days
            logger.debug("delta = %s", delta)

            if delta < 1:
                task["eta"] = "day"
            elif delta < 7:
                task["eta"] = "week"
            elif delta < 31:
                task["eta"] = "month"
            else:
                del task["eta"]

        print(json.dumps(task))
    sys.exit
except BaseException as e:
    if log:
        traceback.print_exception(e)
    typename = type(e).__name__
    basename = os.path.basename(__file__)
    line = e.__traceback__.tb_lineno
    print(f"{basename}, line {line} - {typename}: {e}")
    sys.exit(1)

