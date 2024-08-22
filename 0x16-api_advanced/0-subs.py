#!/usr/bin/python3
"""
Get number of users from Reddit
"""

import requests

def get_subreddit_subscribers(subreddit):
    # Define the URL for the subreddit
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    
    # Set the User-Agent to avoid request being blocked by Reddit
    headers = {
        'User-Agent': 'YourAppName/1.0 (by u/YourRedditUsername)',
        'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
        'Accept-Language': 'en-US,en;q=0.5',
        'Connection': 'keep-alive',
        'DNT': '1',  # Do Not Track request header
        'Upgrade-Insecure-Requests': '1',
    }
    
    try:
        # Make the request to Reddit API
        response = requests.get(url, headers=headers)
        
        # Check if the response status code is 200 (OK)
        if response.status_code == 200:
            data = response.json()
            # Extract the number of subscribers
            subscribers = data['data']['subscribers']
            return subscribers
        else:
            # If the subreddit is invalid, return 0
            return 0
    except Exception as e:
        # In case of any other error, return 0
        return 0
