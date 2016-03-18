CONFIG = {
    'mode': 'wsgi',
    'working_dir': '/home/box/stepic-task2',
    # 'python': '/usr/bin/python',
    'args': (
        '--bind=0.0.0.0:8080',
        '--workers=1',
        '--timeout=60',
        'hello:app',
    ),
}
