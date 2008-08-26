// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

Element.observe(window, "load", function() {
  $$('.flash').each(function(el) {
    Effect.Fade(el, {delay: 2});
  })
})