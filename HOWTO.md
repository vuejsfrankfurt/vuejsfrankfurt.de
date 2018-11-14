# HowTos 

## How to post a link on Twitter

Situation: if you setup a simple page in Vuepress, it will not have any meta information that is needed for a proper preview on twitter.

You'll need to add the following header using frontmatter (example):

    ---
    meta:
      - name: twitter:title
        content: Vue.js Beginner's Training
      - name: twitter:description
        content: Join us for a biweekly evening class starting on November 9th!
      - name: twitter:image
        content: https://www.vuejsfrankfurt.de/images/frank_learning_vue_twitter.jpg
    ---

Tips for the preview image: 

* create a separate image for the post (don't use the image in the post as it needs to be landscape).

* Recommended size: 600x314

* Recommended format: JPEG
 
Then deploy to the live site (or to a branch). 
Use the twitter developer tools to get a preview. Enter the URL here: https://cards-dev.twitter.com/validator

Known problems: Vuepress 0.14.4 will add the headers, not replace the existing headers.
This works for Twitter, but not for Facebook. 

On Facebook the `og:url` header will kick in and will redirect the Facebook to the main page.
Due to this only the details on the main page will be scraped, never the details on the post.
Therefore the `og:url` is no longer set.
