use namespace HH\Lib\IO;

<<__EntryPoint>>
async function main_async(): Awaitable<void> {
    await IO\request_output()->writeAllAsync("Hello World!\n");
}
