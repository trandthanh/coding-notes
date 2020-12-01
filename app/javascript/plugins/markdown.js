import MarkdownIt from 'markdown-it';
import taskLists from 'markdown-it-task-lists';

const initMarkdown = () => {
  const content = document.querySelector(".markdown-content");
  const markdown = new MarkdownIt();
  const html = markdown.use(taskLists, {enabled: true}).render(content.dataset.content);
  content.innerHTML = html;
};

export { initMarkdown };

