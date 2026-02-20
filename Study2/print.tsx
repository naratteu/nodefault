import rds from 'react-dom/server'

const [_bun, _print, page] = process.argv

const Page = await import(page);
console.log(rds.renderToStaticMarkup(<Page.default />))