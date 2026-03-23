module.exports = function(eleventyConfig) {
  eleventyConfig.addPassthroughCopy("style.css");
  eleventyConfig.addPassthroughCopy("shared.js");
  eleventyConfig.addPassthroughCopy("admin");

  eleventyConfig.addCollection("partenaires", function(collectionApi) {
    return collectionApi.getFilteredByGlob("_posts/partenaires/*.md");
  });

  return {
    dir: {
      input: ".",
      output: "_site",
      includes: "_includes"
    }
  };
};