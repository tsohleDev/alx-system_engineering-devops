#!/usr/bin/python3
"""
Get number of users from Reddit
"""

import requests

def number_of_subscribers(subreddit):
    """Returns the number of subscribers to a given subreddit.

    Args:
        subreddit (str): The name of the subreddit.

    Returns:
        int: The number of subscribers if the subreddit is valid, otherwise 0.
    """
    url = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)
    headers = {'user-agent': 'Mozilla/5.0'}
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code != 200:
         return 0
    data = response.json()
    if not data:
         return 0
    return data['data']['subscribers']
        
