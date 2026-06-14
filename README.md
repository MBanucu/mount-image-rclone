# mount-image-rclone

Disk image mounting via rclone (cross-platform FUSE).

[![PyPI version](https://img.shields.io/pypi/v/mount-image-rclone)](https://pypi.org/project/mount-image-rclone/)
[![Python](https://img.shields.io/badge/python-3.10%20%7C%203.11%20%7C%203.12%20%7C%203.13%20%7C%203.14-blue)](https://www.python.org/)
[![License](https://img.shields.io/github/license/MBanucu/mount-image-rclone)](LICENSE)
[![OS](https://img.shields.io/badge/OS-Linux%20%7C%20macOS-blue)](https://github.com/MBanucu/mount-image-rclone)

[![CI](https://img.shields.io/github/actions/workflow/status/MBanucu/mount-image-rclone/test.yml?branch=main)](https://github.com/MBanucu/mount-image-rclone/actions/workflows/test.yml)
[![codecov](https://codecov.io/gh/MBanucu/mount-image-rclone/branch/main/graph/badge.svg)](https://codecov.io/gh/MBanucu/mount-image-rclone)

[![Downloads total](https://pepy.tech/badge/mount-image-rclone)](https://pepy.tech/project/mount-image-rclone)
[![Downloads/month](https://pepy.tech/badge/mount-image-rclone/month)](https://pepy.tech/project/mount-image-rclone)
[![Downloads/week](https://pepy.tech/badge/mount-image-rclone/week)](https://pepy.tech/project/mount-image-rclone)

## Quick start

```python
from mount_image_rclone import mount_image, umount_image

mount_point, _ = mount_image('gdrive:')
print(f'Mounted at {mount_point}')
umount_image(mount_point, mount_point)
```

## API

- `mount_image(source, fstype=None, options=None)` → `(mount_point, mount_point)`
- `umount_image(mount_point, mount_point=None)`
- `attach_image(path)` — raises `NotImplementedError`
- `detach_image(device)` — raises `NotImplementedError`

Requires `rclone` installed on the host.

## License

GPL-3.0-only
