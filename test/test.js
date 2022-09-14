const treeData = {
  bar: ['bar1', 'bar2', 'bar3'],
  root: ['foo', 'bar', 'baz'],
  baz: ['baz0', 'baz1', 'baz2'],
  foo: ['foo0', 'foo1', 'foo2'],
  baz1: ['baz10', 'baz11']
}

function printTree(k,treeData,prefix='*'){
  const v = treeData[k]
  console.log(prefix + k)
  if(v instanceof Array){
    v.forEach(k2 => {
      printTree(k2,treeData,prefix+'*')
    })
  }
}
printTree('root',treeData)