import wikipediaapi

def extract_wikipedia_entry(actor_name, filename):
    # Specify a user agent
    user_agent = 'MyWikipediaBot/1.0 (https://en.wikipedia.org/wiki/Tom_Cruise; bpreethampaul369@gmail.com)'  # Replace with your own URL and email
    wiki_wiki = wikipediaapi.Wikipedia( user_agent=user_agent)
    
    # Fetch Wikipedia page for the actor
    page = wiki_wiki.page(actor_name)
    
    if page.exists():
        content = page.text
        
        # Save content to a text file
        with open(filename, 'w', encoding='utf-8') as file:
            file.write(content)
        print(f"Saved Wikipedia article for {actor_name} to {filename}")
    else:
        print(f"Page not found for {actor_name}")

if __name__ == "__main__":
    actor_name = "Tom Cruise"  # Specified actor name
    extract_wikipedia_entry(actor_name, "wikipedia.txt")
