module.exports.handler = async function (context, blob) {
  context.log('+++++++++++++>> Context:', JSON.stringify(context));
  context.log('+++++++++++++>> Blob name:', context.bindingData.name);
  context.log('+++++++++++++>> Blob:', JSON.stringify(blob));
  context.done();
};