import MarkdownIt from 'markdown-it';

const initMarkdown = () => {
  const content = document.querySelector(".markdown-content");
  const markdown = new MarkdownIt();
  const html = markdown.render(content.dataset.content);
  content.innerHTML = html;
};

export { initMarkdown };


