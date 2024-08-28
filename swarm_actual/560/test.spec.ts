export const description = `
Template test for tests created via fuzzing.
`;
import { makeTestGroup } from '../../../../../common/framework/test_group.js';
import { GPUTest } from '../../../../gpu_test.js';
import { getGPU } from '../../../../../common/util/navigator_gpu.js';

export const g = makeTestGroup(GPUTest);

g.test('example_test').fn(async t => {
    const gpu = getGPU(t.rec);
    await main(gpu);
});
const fs = require('node:fs/promises');

async function main(gpu: GPU) {
    
    
    const array0 = new Float32Array([0.25, 0.25, 1.0, 0.25, 0.5, -1.0, 1.0, -0.75, -0.5, 0.75, -1.0, -0.75, -0.25, -1.0, 0.0, -0.25, -0.5, 0.5, -0.75, -0.5, 1.0, 0.75, 0.75, -0.25, 1.0, 0.0, -1.0, 1.0, -1.0, -1.0, 0.75, 0.75, -0.75, 0.75, -0.25, 0.5, 0.75, -1.0, -0.25, 0.5, -1.0, 0.25, 0.75, 0.25, -0.25, 0.5, -1.0, -0.25, 0.75, -0.5, 0.5, -1.0, 0.5, 0.25, 1.0, 0.75, 0.5, 0.25, 0.25, 0.0, 0.0, 0.25, -0.5, 0.25, -0.75, -0.75, -0.5, -0.25, -0.5, -1.0, 0.25, -0.25, 1.0, 0.75, -0.75, 1.0, -0.25, -0.25, -0.25, 0.25, -0.25, 0.0, 0.5, 0.5, 0.5, 0.25, -0.5, 0.5, 1.0, 1.0, 0.25, -0.5, -0.25, 0.5, 1.0, -0.5, 0.75, 0.5, 0.5, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.pushErrorScope("internal");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const array1 = new Float32Array([1.0, -0.5, -0.25, 0.0, 0.25, -1.0, 0.0, -0.25, -0.25, 0.25, 1.0, 1.0, -0.5, 0.0, -1.0, -0.25, 0.25, 1.0, 0.75, -0.25, -0.25, 1.0, -0.5, -0.75, 1.0, 0.0, -0.75, -0.5, 0.75, 1.0, 0.5, -0.5, 0.5, 0.5, -0.5, -0.25, 0.5, -1.0, 0.5, -0.75, 0.75, -0.75, 1.0, -0.25, -0.5, -1.0, 0.0, 0.0, 0.25, -0.5, 0.75, -0.5, 0.25, 1.0, 0.75, -0.25, 0.5, 0.25, -0.5, -0.5, 0.0, 0.25, 0.5, -0.75, -0.25, 0.25, -0.25, -1.0, 0.0, 0.75, 1.0, 1.0, 0.0, 1.0, 0.75, 0.5, 0.5, -1.0, -0.25, 1.0, -0.75, 0.5, -0.25, 1.0, -0.75, 1.0, 0.25, -1.0, 1.0, 0.0, -0.75, -0.5, 0.0, -0.25, -0.5, -0.5, -1.0, -0.25, -1.0, -1.0, ]);
    const array2 = new Float32Array([-0.75, 1.0, 0.0, -0.75, 1.0, -1.0, 0.0, 0.0, 0.0, 1.0, 1.0, 0.75, 1.0, -1.0, 0.0, 1.0, -1.0, 0.5, 0.5, -0.5, 1.0, 0.5, -0.5, 1.0, -0.5, 0.25, -0.5, 1.0, -0.25, -1.0, -0.5, 0.0, 0.75, 0.75, 0.5, 0.5, -1.0, 0.5, 0.5, 0.75, 0.75, 0.25, -0.5, 0.25, 0.0, 0.0, 1.0, 0.75, 1.0, 0.5, -0.75, -1.0, 0.5, -0.25, 0.25, 1.0, 1.0, 1.0, 0.75, -0.25, 0.0, -0.25, -0.25, -0.25, -0.25, 0.75, -1.0, -0.5, -0.75, 0.5, -1.0, -0.25, 0.25, 0.25, -0.75, -1.0, 0.5, 0.0, -0.25, 0.5, -1.0, -0.5, 0.5, 0.0, -0.5, 0.25, 0.75, 0.25, 0.25, -0.75, -1.0, -1.0, 0.75, -0.25, 0.75, -0.25, 0.75, -1.0, -1.0, -0.25, ]);
    device00.pushErrorScope("validation");
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const array3 = new Float32Array([0.0, 0.25, 0.75, 0.0, -0.75, -0.5, 0.25, -0.75, 0.0, 0.5, -0.25, -0.25, -1.0, 0.75, -1.0, 0.0, -1.0, -0.75, 0.75, -1.0, 0.25, 0.5, 0.75, -0.75, -0.75, 0.25, -0.5, -0.5, 0.25, 0.0, 0.5, 0.0, 0.75, 0.0, 0.75, 0.5, 0.75, 0.75, 0.0, 1.0, 0.0, -1.0, 0.75, 0.5, 1.0, 0.25, 0.75, 0.75, 0.75, 0.25, -0.5, 0.5, 0.0, -0.5, 0.5, -0.75, -0.75, -0.25, 0.0, 0.5, -0.25, 1.0, 0.75, 0.25, 0.0, -1.0, 0.0, 1.0, 1.0, -1.0, 0.75, -0.25, -0.25, -1.0, 0.25, -1.0, 0.25, -0.5, 0.75, -0.25, 1.0, 0.0, 0.5, 0.25, 0.75, -1.0, -0.5, -0.75, 1.0, 0.75, -0.25, 1.0, -0.75, 0.25, 0.5, -0.5, -1.0, 0.75, 0.5, 0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.pushErrorScope("validation");
    
    const array4 = new Float32Array([1.0, 1.0, -0.5, 0.25, 0.5, 0.0, -0.75, -0.75, 0.5, -0.75, -0.25, 0.25, 0.75, 1.0, 0.0, -0.75, 1.0, 0.5, 1.0, 0.0, -0.75, -0.5, -0.25, -0.75, 1.0, 0.25, -0.75, 0.5, 0.75, 0.0, 0.5, -1.0, -0.25, -0.25, 1.0, -0.5, -0.25, 0.25, 0.5, -0.5, 0.0, 0.0, 0.5, -1.0, -0.25, -1.0, 0.0, 0.0, 0.5, -0.5, 0.25, 0.25, -0.75, 0.5, -1.0, 0.0, -0.25, 1.0, -0.5, 0.75, -0.75, 0.0, 0.5, 0.0, 0.75, -1.0, 0.5, 1.0, -1.0, 0.25, -0.25, 0.5, -0.75, 0.75, -0.75, 1.0, 1.0, 0.75, -1.0, -1.0, -0.25, -0.25, 0.25, -0.5, -0.75, 0.5, 0.25, 0.75, -0.5, 0.25, 0.75, -1.0, -0.5, 0.5, 1.0, -0.25, -0.25, 0.25, 0.25, 0.25, ]);
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.pushErrorScope("internal");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.pushErrorScope("internal");
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device90.pushErrorScope("internal");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    const array5 = new Float32Array([0.25, 0.5, -0.5, 0.75, 0.0, -0.25, 1.0, 0.75, -0.5, 0.25, 0.5, 0.25, 0.75, 0.25, 1.0, 0.75, -0.5, -0.5, 1.0, 0.5, 0.5, 0.0, -0.75, 1.0, 0.0, 0.5, -0.25, -0.75, -1.0, 0.0, 0.5, -0.5, 0.75, -0.5, -1.0, 1.0, 0.0, -1.0, -1.0, 0.0, 0.0, -0.75, -0.75, -0.5, 0.75, 1.0, 0.0, 0.5, -0.25, -0.75, -1.0, 0.0, 0.75, -1.0, 0.0, -1.0, -1.0, 1.0, 0.0, 0.25, 0.25, -0.25, 0.5, -1.0, -0.75, -1.0, -0.25, -0.25, 1.0, 1.0, 0.75, -0.25, -1.0, 0.25, 0.5, 0.25, -0.75, 0.5, -0.5, -0.25, 0.5, 0.25, -0.75, -0.25, 1.0, -1.0, -0.25, 1.0, -1.0, -0.75, 0.75, 0.5, -0.25, -0.75, -0.25, 1.0, -0.5, 0.0, -0.25, -1.0, ]);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.pushErrorScope("validation");
    
    device10.destroy();
    device80.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.pushErrorScope("internal");
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    device30.pushErrorScope("out-of-memory");
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.destroy();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device60.destroy();
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device90.destroy();
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device30.pushErrorScope("validation");
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    const array6 = new Float32Array([-0.75, 1.0, -0.75, -0.25, 0.0, -1.0, -0.5, 0.75, 1.0, -0.5, -0.5, -0.75, -0.75, 0.75, -1.0, 0.25, 1.0, 0.5, 0.75, 0.5, -1.0, -0.75, -0.25, 0.75, 0.0, 1.0, 0.25, 0.75, 1.0, 1.0, -0.75, 0.5, -0.25, -0.75, 0.25, 1.0, -0.25, 0.5, -0.25, 0.25, -0.5, 0.0, -0.25, 0.25, 0.5, 0.25, 0.25, 0.5, 1.0, -0.5, -0.5, -1.0, 0.0, 0.5, 0.25, 1.0, 1.0, 0.0, -0.75, 0.0, -0.75, 0.75, -0.75, 0.75, 1.0, 0.25, -1.0, 1.0, -0.25, 0.75, -0.25, -0.25, 1.0, 0.25, -1.0, 0.75, -0.75, -0.25, -0.5, -0.5, -0.75, -0.5, 0.5, -0.25, -0.5, 0.5, 0.5, 0.25, 0.5, 0.75, -1.0, 0.25, -1.0, -1.0, 0.0, 0.5, -1.0, -1.0, -1.0, 0.0, ]);
    
    device100.destroy();
    const array7 = new Float32Array([-1.0, -0.25, -0.75, -0.25, 0.0, 0.25, -1.0, -0.25, -1.0, -0.75, -0.75, 1.0, -1.0, -0.75, 0.25, 0.75, -0.5, 1.0, 1.0, 0.25, -0.25, 0.5, -0.5, -0.5, 0.25, 1.0, -0.5, -0.25, -1.0, -0.25, 1.0, 0.75, -1.0, 0.0, -0.75, -0.5, -0.75, 0.0, 1.0, 0.5, 0.75, -1.0, -1.0, -1.0, -0.75, -0.5, 1.0, 1.0, 0.5, -0.75, -0.75, 0.25, -0.25, -0.25, -1.0, 1.0, -0.25, -1.0, 1.0, -0.25, -0.25, -0.5, -1.0, 1.0, 0.75, 0.25, 0.0, 1.0, 0.75, 0.5, 1.0, -0.75, 0.75, -0.25, 0.75, 1.0, -1.0, 0.5, -0.75, -0.25, -0.25, 1.0, 0.5, -0.25, 1.0, -1.0, -0.75, 0.75, 0.25, 1.0, -0.75, 0.5, 0.5, -0.75, -1.0, -0.75, 0.0, 0.0, 1.0, 0.5, ]);
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    
    device30.pushErrorScope("validation");
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    device20.pushErrorScope("out-of-memory");
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
    device30.destroy();
    const array8 = new Float32Array([0.75, 0.5, 0.5, -0.25, 0.25, -0.25, -0.75, 0.5, 0.25, 0.25, 0.0, 1.0, 0.5, -1.0, 0.75, 0.5, 0.5, -1.0, -1.0, 0.0, -0.75, -0.5, -1.0, -0.75, 0.25, -0.75, -0.75, 0.25, -1.0, -0.75, 0.5, -0.75, -0.25, -0.25, 1.0, 0.75, -1.0, -1.0, 0.5, 0.75, 0.25, 0.25, -1.0, 0.5, 0.25, 0.75, 0.5, 0.0, -0.75, -0.75, 1.0, 0.75, -0.75, 0.5, -0.75, 0.5, 0.75, -0.5, 1.0, 0.5, 0.75, -0.25, -0.75, -1.0, -0.25, 1.0, 0.5, -0.25, -0.75, 0.0, 0.25, -0.25, 0.5, 1.0, -0.5, 1.0, 1.0, -0.75, 0.25, -0.75, -0.75, 0.75, 0.0, 0.5, -1.0, 0.75, -1.0, -0.25, 0.0, 0.75, -0.5, -0.75, -1.0, -0.75, -0.5, -0.5, -0.25, -0.75, -1.0, 0.0, ]);
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    
    
    
    
    
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    
    const array9 = new Float32Array([-0.25, 0.75, -0.75, -0.75, 1.0, -0.5, 0.25, 0.25, 1.0, -0.25, -0.5, 0.75, -1.0, 1.0, 0.0, 0.75, -0.75, 1.0, 0.5, 0.5, 0.0, -1.0, -0.75, -0.75, -0.5, 0.5, 0.75, -0.5, -1.0, -0.25, -1.0, -0.25, 0.0, -0.25, -0.25, 0.0, -0.75, 0.5, 0.0, -0.75, -0.5, 0.75, 0.25, 0.75, -1.0, 0.25, 0.25, -0.75, -1.0, 0.5, 0.25, -0.25, 1.0, 0.75, -0.5, 1.0, -0.25, 1.0, -0.25, -0.25, 0.75, -0.25, 0.0, -0.25, 0.5, -0.5, 0.75, -0.25, 0.5, 0.75, 0.25, 1.0, -0.25, -0.5, 0.75, 0.5, 0.5, 1.0, 0.0, -0.75, 0.75, 0.5, 1.0, -0.25, 0.5, 0.25, 1.0, 0.75, -0.75, -0.25, 1.0, -1.0, -1.0, -1.0, -1.0, 0.5, -0.75, -0.25, -0.75, 1.0, ]);
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    device20.pushErrorScope("out-of-memory");
    
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device70.destroy();
    device110.pushErrorScope("internal");
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    const array10 = new Float32Array([1.0, -0.25, -0.5, 0.75, 0.0, -1.0, 0.5, 0.25, -0.75, 0.5, -1.0, 0.25, 0.75, -0.25, -0.25, 0.0, -0.75, 0.5, 0.75, -1.0, 0.0, 0.5, 0.25, 0.75, -0.25, -0.75, -1.0, -0.75, -0.25, 0.5, -0.25, -0.25, 0.75, 0.5, 0.5, -1.0, 0.75, -0.75, -0.25, -0.5, -0.75, -0.5, -0.75, 0.25, 0.75, 0.0, -0.25, -1.0, 0.25, 0.75, 0.25, -1.0, 1.0, 0.5, -1.0, 1.0, 0.75, -0.25, -0.5, 1.0, 0.25, 0.0, -0.25, 0.5, 0.25, 0.5, -0.25, -0.75, 1.0, -0.25, 0.75, 0.5, 0.25, 1.0, 1.0, 0.25, -0.5, -0.5, -0.75, -0.25, -0.5, -0.5, -0.5, 0.75, 1.0, 0.25, 0.75, -0.75, 1.0, -1.0, 0.75, -0.25, 0.0, -0.75, 0.0, 1.0, -0.25, 0.0, -0.5, 0.75, ]);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    
    
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("validation");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.destroy();
    device110.destroy();
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    device130.pushErrorScope("validation");
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    device140.destroy();
    device50.pushErrorScope("validation");
    
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device150.destroy();
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.destroy();
    const array11 = new Float32Array([0.25, -1.0, 0.75, -0.25, -0.75, 0.75, -1.0, 0.5, 0.75, -0.75, 1.0, 0.5, 0.0, -1.0, 0.75, -1.0, 0.0, -0.75, 0.0, 0.5, -0.75, -0.5, -0.5, 0.25, 0.25, 0.75, -0.5, -1.0, -0.5, 0.25, 0.0, 1.0, -0.5, 0.25, 1.0, 0.75, -0.5, -0.25, -0.75, -1.0, 1.0, 0.5, 1.0, 0.75, 0.0, 0.5, 0.25, 0.75, -1.0, -0.25, 0.25, -0.25, 0.0, 1.0, -0.25, -0.5, 0.0, 0.25, -0.25, 1.0, -1.0, -0.5, -1.0, 1.0, -0.75, -0.25, -0.5, 0.0, -0.75, -0.75, -1.0, -0.5, -0.5, 0.5, 0.75, -0.25, 0.0, 0.25, 0.0, -0.75, -1.0, 0.0, -1.0, -0.25, -0.25, 0.25, 0.75, -0.75, 1.0, 0.25, 1.0, 1.0, -0.75, -1.0, -0.75, -0.25, -0.25, -0.25, 0.5, -0.25, ]);
    const array12 = new Float32Array([0.0, 0.5, 0.75, -0.75, -0.75, 0.0, 0.25, 1.0, -0.5, -0.5, 0.25, -0.25, 0.0, 0.25, 1.0, -0.5, 0.0, 0.0, 1.0, 0.75, 0.5, 0.5, -0.5, 0.25, 0.25, 1.0, 0.0, 0.75, 1.0, 0.5, -0.5, 0.0, 0.0, 0.0, -1.0, 0.5, 0.25, 1.0, 0.0, 0.5, -0.25, -0.75, 0.75, 0.75, 0.75, -1.0, 0.0, 1.0, 0.0, -1.0, -0.25, 0.25, 1.0, -1.0, 0.0, -0.25, -0.25, 1.0, -0.25, -0.25, 0.75, 0.5, -0.75, -1.0, 0.25, 1.0, 1.0, -0.5, -1.0, -0.75, 0.25, -0.25, -1.0, 0.25, 0.25, -1.0, 1.0, -0.5, -0.75, -0.5, 1.0, 1.0, 0.5, -1.0, -0.5, -0.5, -0.75, -0.25, 1.0, -0.75, -0.25, -0.25, -1.0, 1.0, 0.75, 0.0, 0.5, -1.0, 0.0, -1.0, ]);
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    device130.pushErrorScope("validation");
    device160.destroy();
    
    
    
    const array13 = new Float32Array([-0.75, 0.75, -0.75, -0.75, 0.5, -0.5, -0.25, 1.0, 0.0, 0.75, -0.5, -0.25, -1.0, 1.0, -0.25, 0.5, -0.25, 0.25, -0.25, -0.25, 0.75, -0.5, 0.25, -0.5, 0.75, 0.0, 0.75, 0.75, 1.0, -1.0, 0.0, 0.25, 0.25, 0.5, 1.0, -0.5, -0.75, -0.75, -0.75, -0.75, -0.25, 0.5, 0.0, 0.0, -1.0, 0.5, -1.0, 0.0, 0.25, 0.5, 0.25, -0.75, 0.25, -0.5, 1.0, 0.0, 0.75, 0.0, 0.0, -1.0, -1.0, -0.25, 0.25, 1.0, -0.5, 0.0, 0.5, 1.0, 1.0, 0.5, 0.75, -1.0, 0.5, 1.0, -0.25, 0.25, 0.25, 0.0, 0.0, 0.75, -0.25, 1.0, 0.5, 0.5, -0.25, 0.0, -0.75, -0.25, -0.75, -0.25, -0.25, -0.75, 0.75, 0.75, 0.25, -1.0, -0.5, 0.0, 0.75, 0.25, ]);
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array14 = new Float32Array([1.0, -0.75, -0.25, -0.75, 1.0, 0.75, 1.0, -0.5, -0.75, 0.0, -0.5, -0.25, 1.0, -0.25, 0.75, -1.0, 0.0, -0.5, -0.75, 0.25, 0.25, 0.5, -0.75, 0.5, 0.0, -0.25, 0.0, 0.75, 0.75, -1.0, -0.25, 1.0, 0.25, -0.75, 0.5, 0.5, -0.25, -0.75, -0.25, 0.25, 1.0, 1.0, 0.0, 0.25, -1.0, -0.5, 0.0, -1.0, 1.0, -1.0, -1.0, 0.5, -0.75, -0.75, 0.75, -0.25, -0.75, -0.5, -0.25, -0.25, -1.0, -1.0, 0.75, -1.0, -0.75, 0.5, 0.0, 0.75, 0.25, -0.5, 1.0, 1.0, -0.75, -1.0, -0.75, -1.0, -1.0, 1.0, -1.0, 0.0, 0.0, 0.5, -0.5, -0.25, 0.5, -0.75, 1.0, 0.5, 1.0, -0.25, 0.0, -1.0, -0.25, -0.75, -0.25, 1.0, -0.25, 0.0, 0.75, -0.5, ]);
    
    device130.destroy();
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device120.destroy();
    device180.pushErrorScope("validation");
    
    const array15 = new Float32Array([-0.25, -0.75, 0.0, 1.0, 0.5, 0.0, -0.25, 0.5, 0.0, 0.25, 0.5, 0.25, 0.5, -0.75, -0.25, -0.5, 0.75, 0.75, 1.0, -0.25, -0.5, 1.0, 0.75, 0.5, 0.75, -1.0, -0.75, -1.0, -0.25, 0.5, -1.0, 0.5, -0.25, -1.0, 0.5, -0.75, 0.75, 0.25, -0.5, 1.0, 0.75, 0.25, 0.5, -1.0, 0.75, 1.0, 0.75, -1.0, 0.0, 0.5, -0.75, 0.75, -0.75, -0.25, 0.0, 1.0, -0.75, -1.0, 0.75, 0.25, 0.5, -1.0, 0.0, -1.0, 0.0, -0.5, 0.25, 1.0, 0.75, 0.25, 0.25, -0.25, -0.25, 1.0, 1.0, -1.0, -1.0, -0.25, -0.25, -1.0, 0.25, -0.5, 0.75, -1.0, -1.0, 0.0, -0.25, -0.5, 1.0, 0.5, -0.5, -0.5, -1.0, -0.75, -0.5, -0.75, -0.25, 0.0, -0.25, 0.0, ]);
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer1700 = device170.createBuffer({
        label: "buffer1700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array16 = new Float32Array([0.75, 0.25, 0.75, -0.75, 0.0, -0.5, 0.5, 0.0, 1.0, 0.25, 0.5, 0.75, 0.75, 0.5, -1.0, 0.5, 0.5, -1.0, 0.25, -1.0, 0.0, -0.25, 0.0, 0.0, -1.0, -1.0, -0.25, 0.25, -0.5, -0.75, 1.0, 0.75, -1.0, -0.5, -0.5, 0.75, 1.0, -0.75, 0.5, 0.75, 0.5, -1.0, -0.75, -0.25, 0.25, -0.25, 0.25, 1.0, 0.75, 0.0, 0.5, 0.75, 0.75, -0.25, 0.75, 0.5, -0.75, 0.0, -0.25, 1.0, 1.0, -1.0, -1.0, 0.0, -1.0, -0.5, -0.25, 0.5, -0.75, 1.0, -0.25, -1.0, -0.75, 0.25, -0.75, 0.0, 1.0, 0.25, 1.0, 0.0, -1.0, -0.25, -0.75, 0.0, -1.0, -1.0, 0.25, 1.0, 0.25, -0.5, 0.25, -0.75, 0.0, 0.25, 0.25, -0.25, -0.25, -0.75, 1.0, 0.25, ]);
    device170.destroy();
    
    
    
    
    
    
    device180.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1800 = device180.createBuffer({
        label: "buffer1800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    
    
    
    device180.destroy();
    const array17 = new Float32Array([0.0, 0.5, -1.0, -1.0, -1.0, 1.0, -1.0, 1.0, -0.25, 1.0, 0.75, -0.25, -0.25, -1.0, 0.25, -0.25, 0.5, -0.75, 0.5, -0.75, -0.25, 0.0, 0.5, -0.25, -0.25, 0.75, -1.0, -0.25, -0.75, 0.75, -1.0, -0.25, -1.0, -0.75, 0.25, -0.5, -1.0, 0.0, 0.75, 0.5, -0.75, -0.75, 0.75, -0.75, 0.75, -0.75, 0.0, 0.5, 0.0, -0.75, -0.75, 0.25, 0.25, -0.75, 0.0, 0.0, -0.5, 1.0, -0.5, -0.25, 1.0, 1.0, 0.0, -0.75, -0.5, -0.25, 0.5, -0.75, 0.0, 0.75, -0.5, 0.5, 0.75, -1.0, 1.0, -0.25, -1.0, -0.5, 0.75, -0.5, 0.75, 0.5, -0.5, 0.75, 0.5, -0.25, -0.75, 0.0, 1.0, 1.0, 0.75, 0.25, 1.0, -0.75, 0.5, 0.75, -0.5, 0.5, -1.0, 1.0, ]);
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device190.destroy();
    const array18 = new Float32Array([0.25, 0.25, 1.0, 1.0, 0.5, 1.0, -0.25, 0.75, 0.75, -0.5, -0.5, 1.0, 0.5, -0.5, -0.25, 0.25, -1.0, -0.5, -0.25, -0.75, 0.25, -0.5, -0.75, 0.0, -0.25, -0.5, -1.0, 1.0, -0.5, -0.75, 0.0, -0.75, 0.75, -0.75, 0.75, -0.5, 1.0, 0.5, 0.25, 0.0, -0.25, 0.5, -0.5, -0.25, 0.5, -0.25, -0.75, -0.75, 0.0, -1.0, 0.5, 0.75, -0.5, 0.25, -1.0, -0.5, -0.25, -1.0, 0.75, 0.5, -0.5, -0.75, -1.0, -0.25, -0.75, -1.0, -0.75, 0.25, -0.5, 0.5, 0.0, 1.0, 0.5, 1.0, 0.0, 1.0, 0.0, -0.5, 0.75, 1.0, -0.25, -0.75, 0.0, -0.75, 0.75, 0.5, 0.25, -0.25, -0.5, 0.0, 0.0, -1.0, -0.5, 1.0, 1.0, 0.0, -0.5, 0.5, 0.25, 0.25, ]);
    const array19 = new Float32Array([-0.75, -0.25, 1.0, 0.0, 0.5, 0.5, 0.5, -0.75, -0.75, 0.0, 1.0, 0.75, -0.75, 0.5, 0.5, 0.5, 0.25, -0.5, 0.75, 0.0, -0.75, 0.5, 0.0, 0.75, 0.0, 0.5, 0.0, 0.75, -1.0, 0.25, -0.75, 1.0, 0.25, 0.25, -0.25, -0.25, -0.75, -0.25, -0.25, 0.5, 0.25, -0.75, 1.0, 1.0, 0.75, 0.5, 0.0, 0.25, 0.75, -0.5, -0.75, -1.0, 0.25, 0.25, -0.5, 0.0, -0.25, 0.5, 1.0, -1.0, 0.25, 0.0, 0.75, -0.25, 0.5, -0.5, -0.75, -0.75, -0.5, -1.0, 0.75, -0.75, -0.5, 0.5, -0.75, -0.75, -0.75, -1.0, 0.75, 0.25, 0.75, -0.25, 1.0, 0.0, -0.25, -0.5, 1.0, -0.75, 0.5, -1.0, -1.0, 0.75, 0.0, 1.0, -0.25, -0.25, -1.0, 1.0, -0.75, 0.25, ]);
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    const adapter21 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array20 = new Float32Array([-0.75, -0.75, -0.5, -1.0, -0.25, 0.5, 1.0, -1.0, 0.5, 1.0, -0.5, 0.5, 0.25, -0.25, -0.75, -0.75, 1.0, 0.5, -1.0, 0.25, -1.0, 0.25, -0.25, 0.75, 0.75, 0.5, -0.75, -0.75, -1.0, 0.5, 0.25, 0.25, -0.75, 0.25, -0.5, 0.25, 1.0, -1.0, -1.0, -0.5, -0.25, -1.0, 0.75, 1.0, -0.75, 0.0, 0.5, 0.0, 1.0, -1.0, -0.5, -0.5, -0.25, 1.0, -1.0, 0.25, 0.75, 0.0, -1.0, 0.25, 0.75, 0.75, -0.5, 0.25, -0.5, -0.25, 0.75, -0.75, 0.25, -0.5, 0.25, -1.0, 0.0, 0.25, 0.5, -0.75, -1.0, 0.0, 0.0, 0.0, 0.75, -0.5, -0.5, -0.5, -0.25, 0.5, 0.5, 0.25, 0.75, -0.25, -0.25, 0.0, 0.0, 0.75, -0.75, -0.75, 1.0, -1.0, -0.25, 0.5, ]);
    const array21 = new Float32Array([-0.5, 1.0, 1.0, -0.5, -0.25, -0.5, 0.75, -0.75, -0.75, 0.25, -0.75, -0.25, 0.25, 0.25, -0.25, 0.5, 0.25, 0.5, -0.75, -0.25, -0.25, 0.75, 0.25, -0.75, -0.25, -0.75, 0.0, -0.75, 0.75, -0.5, -0.75, -1.0, -0.5, 0.75, 0.5, -1.0, -0.75, 0.75, -0.5, -1.0, -0.5, -0.75, 0.75, -0.5, -1.0, 1.0, 0.75, -0.25, 0.75, 0.5, -0.75, -0.5, 0.5, -0.75, -0.5, 0.5, 1.0, 0.5, 0.0, 0.25, 0.0, 0.25, -0.25, 0.25, -0.5, -0.25, 1.0, 0.75, -0.25, 0.75, 0.0, 1.0, 1.0, 0.75, 0.5, -0.25, -0.5, 0.0, -1.0, -1.0, -0.5, -1.0, 0.5, -0.5, 0.5, 0.25, 0.25, 0.75, 0.0, 0.75, 1.0, 0.5, 0.5, 0.0, 0.75, 0.25, 0.5, 0.25, 0.0, -1.0, ]);
    
    const array22 = new Float32Array([-1.0, 0.75, 0.75, 0.25, 0.75, -0.5, 0.0, 0.0, -1.0, -1.0, -0.75, -0.5, -0.5, 0.0, 0.5, -0.5, -0.5, 0.0, -0.5, 1.0, 1.0, 0.75, 0.75, 0.5, 0.25, -0.25, 0.5, -0.25, -1.0, 0.5, 0.25, 1.0, 0.0, -0.25, -0.5, 1.0, 1.0, -0.75, 0.0, -0.5, -1.0, 0.25, 0.75, 0.25, -0.25, -0.5, -1.0, 1.0, 0.0, 0.5, 1.0, 0.0, 0.25, 1.0, -0.25, 1.0, 0.75, -0.5, 0.75, 0.25, -0.5, 1.0, -0.75, 0.25, -0.25, 0.75, 0.0, 0.75, 0.5, 1.0, 0.5, -1.0, 0.25, -0.75, -0.5, -0.25, -1.0, 1.0, -1.0, 0.5, 0.5, -1.0, 0.75, 0.25, 0.75, -1.0, -0.5, 0.0, 1.0, 0.75, 1.0, -0.75, -0.25, 0.5, -0.25, -0.5, 0.5, -0.5, -0.75, -0.5, ]);
    const adapter22 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter23 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device200.destroy();
    const device230 = await adapter23!.requestDevice({ label: "device230" });
    const buffer2300 = device230.createBuffer({
        label: "buffer2300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device220 = await adapter22!.requestDevice({ label: "device220" });
    device230.pushErrorScope("internal");
    
    device220.pushErrorScope("validation");
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    
    
    const buffer2100 = device210.createBuffer({
        label: "buffer2100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array23 = new Float32Array([0.0, 0.5, 1.0, 0.25, -0.25, -0.25, -0.25, -1.0, 1.0, -0.5, 0.5, -1.0, 0.75, -1.0, 0.75, -0.75, 0.75, 0.75, 0.5, -1.0, -0.75, -1.0, 0.25, -0.25, -1.0, -0.75, 1.0, 0.0, 0.25, 0.5, 0.25, -1.0, 0.75, 0.75, -0.5, -1.0, 0.75, -0.75, 0.0, -0.5, 0.0, -0.75, -0.25, 1.0, -0.75, -0.75, 0.5, 0.0, 1.0, -0.25, -0.5, 0.75, -0.5, -0.25, -0.25, 0.5, 0.5, -0.5, 1.0, 0.75, -0.5, -1.0, -0.5, -0.25, 1.0, 0.25, 0.75, -0.25, 0.5, -0.25, 0.5, -0.25, -0.25, 0.25, 0.5, 0.5, 0.25, -0.25, -0.75, -0.25, 0.25, -1.0, 0.75, -0.25, -0.75, -1.0, -1.0, -0.5, 0.0, -0.25, 1.0, 0.25, 0.75, -0.75, -0.5, -0.75, -0.75, 0.25, 0.25, 0.0, ]);
    device230.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer2200 = device220.createBuffer({
        label: "buffer2200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device220.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const adapter24 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device220.destroy();
    
    
    
    
    
    device230.destroy();
    
    const array24 = new Float32Array([-0.5, -0.25, -1.0, 0.75, -0.5, -0.5, 0.5, 0.0, -0.75, -0.75, 0.25, -0.25, 0.0, -0.75, -1.0, 1.0, 0.0, 1.0, 0.5, 0.75, 0.75, 1.0, -1.0, 1.0, 0.5, -0.5, -0.25, -1.0, -0.75, 0.25, 0.0, 0.75, -0.25, -0.25, 0.75, 0.25, -0.5, 0.5, 0.75, 1.0, 1.0, -0.25, 1.0, -0.25, 0.0, 0.25, 0.0, 0.75, -0.75, -1.0, 1.0, 1.0, 1.0, 0.5, 0.75, -0.75, -1.0, 0.25, -0.75, 0.75, -0.5, -0.25, -0.5, -0.75, -0.5, 0.75, -0.75, -0.25, -0.25, -1.0, -0.25, -0.75, 1.0, -0.75, -0.5, 0.25, 0.75, 0.75, 0.0, -0.75, -0.5, -1.0, 0.75, 0.0, 0.75, -0.25, 1.0, -0.5, 1.0, 0.75, 0.5, 0.75, -0.25, -1.0, 1.0, 0.5, -0.5, -0.25, -0.25, -1.0, ]);
    const adapter25 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device250 = await adapter25!.requestDevice({ label: "device250" });
    device210.destroy();
    const adapter26 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device250.destroy();
    const device260 = await adapter26!.requestDevice({ label: "device260" });
    const buffer2600 = device260.createBuffer({
        label: "buffer2600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer2601 = device260.createBuffer({
        label: "buffer2601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    device260.destroy();
    
    const array25 = new Float32Array([-1.0, -1.0, 0.5, 0.0, 0.0, -0.25, -1.0, 0.75, -0.25, 0.0, 0.75, -0.75, -0.75, -0.25, 0.75, -1.0, 1.0, 0.0, 0.5, -0.25, 0.75, 0.5, 1.0, -0.5, 0.0, 0.25, 0.25, -0.5, 1.0, 0.25, 0.0, 0.5, -0.75, -1.0, -1.0, 0.25, -0.75, -0.5, 1.0, 0.5, 0.0, 0.75, -0.5, 0.25, 0.75, 0.0, 0.75, -0.25, -0.5, -1.0, -0.25, -0.75, -0.25, -0.5, 0.0, -0.25, 0.0, 0.5, -0.75, -0.5, -0.25, 0.25, -1.0, 0.5, 0.75, -0.5, -0.25, -0.75, -0.75, 0.0, -0.75, 1.0, 0.5, 1.0, 0.5, 0.75, 0.0, -1.0, 1.0, 0.0, -1.0, -0.75, 0.5, 0.0, 0.0, -0.5, -0.5, 1.0, -0.25, 0.5, -0.25, -1.0, -0.5, -0.25, -0.25, 0.25, -0.75, 0.75, 0.0, -0.25, ]);
    
    const adapter27 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device240 = await adapter24!.requestDevice({ label: "device240" });
    
    
    
    const adapter28 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device270 = await adapter27!.requestDevice({ label: "device270" });
    device240.destroy();
    
    device270.pushErrorScope("validation");
    const array26 = new Float32Array([-1.0, 0.75, 0.5, 1.0, -0.75, 0.75, -0.25, 0.0, 0.25, 1.0, -0.25, -0.25, -0.5, -1.0, -0.75, 0.75, 0.75, 0.75, 0.25, -1.0, 0.5, 0.5, 0.25, 1.0, 0.0, 0.25, 0.0, -1.0, 1.0, 0.75, -0.75, -1.0, 0.5, 0.25, 0.25, 0.5, -1.0, 0.5, 0.0, -0.25, -1.0, 0.75, 0.5, -0.5, -1.0, 0.0, 0.75, 1.0, 0.0, 0.75, 0.25, -1.0, 0.75, 0.5, -0.5, -1.0, 1.0, 0.5, -0.5, 0.75, 0.25, 1.0, -0.5, -0.5, -1.0, 0.5, 0.0, 1.0, -0.25, 0.5, -1.0, 0.0, 0.75, -0.25, 0.25, 0.5, 0.5, -1.0, 0.75, 0.25, 0.75, 0.0, -0.5, 0.0, 0.25, 1.0, 1.0, 0.0, -0.5, 0.75, 0.0, -1.0, 0.75, 0.0, 0.75, 0.0, 0.5, 0.25, 0.5, -0.75, ]);
    const buffer2700 = device270.createBuffer({
        label: "buffer2700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer2701 = device270.createBuffer({
        label: "buffer2701",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    const device280 = await adapter28!.requestDevice({ label: "device280" });
    const buffer2800 = device280.createBuffer({
        label: "buffer2800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device280.queue.writeBuffer(buffer2800, 0, array12, 0, array12.length);
    
    device280.queue.writeBuffer(buffer2800, 0, array10, 0, array10.length);
    device280.pushErrorScope("internal");
    const buffer2801 = device280.createBuffer({
        label: "buffer2801",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer2802 = device280.createBuffer({
        label: "buffer2802",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device280.queue.writeBuffer(buffer2800, 0, array11, 0, array11.length);
    device280.queue.writeBuffer(buffer2800, 0, array1, 0, array1.length);
    device280.queue.writeBuffer(buffer2800, 0, array3, 0, array3.length);
    device280.queue.writeBuffer(buffer2802, 0, array2, 0, array2.length);
    device280.queue.writeBuffer(buffer2800, 0, array21, 0, array21.length);
    device280.queue.writeBuffer(buffer2800, 0, array9, 0, array9.length);
    device280.queue.writeBuffer(buffer2800, 0, array23, 0, array23.length);
    device280.queue.writeBuffer(buffer2802, 0, array17, 0, array17.length);
    device280.queue.writeBuffer(buffer2802, 0, array17, 0, array17.length);
    device280.queue.writeBuffer(buffer2802, 0, array11, 0, array11.length);
    device280.queue.writeBuffer(buffer2802, 0, array9, 0, array9.length);
    device280.queue.writeBuffer(buffer2800, 0, array12, 0, array12.length);
    device280.queue.writeBuffer(buffer2802, 0, array12, 0, array12.length);
    device280.queue.writeBuffer(buffer2800, 0, array3, 0, array3.length);
    device280.queue.writeBuffer(buffer2802, 0, array21, 0, array21.length);
    device280.queue.writeBuffer(buffer2802, 0, array21, 0, array21.length);
    device280.queue.writeBuffer(buffer2800, 0, array15, 0, array15.length);
    device280.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device280.queue.writeBuffer(buffer2800, 0, array17, 0, array17.length);
    device280.queue.writeBuffer(buffer2802, 0, array4, 0, array4.length);
    device280.queue.writeBuffer(buffer2800, 0, array25, 0, array25.length);
    device280.queue.writeBuffer(buffer2800, 0, array19, 0, array19.length);
    device280.queue.writeBuffer(buffer2800, 0, array19, 0, array19.length);
    device280.queue.writeBuffer(buffer2802, 0, array24, 0, array24.length);
    device280.queue.writeBuffer(buffer2800, 0, array0, 0, array0.length);
    
    device280.queue.writeBuffer(buffer2802, 0, array11, 0, array11.length);
    device280.queue.writeBuffer(buffer2800, 0, array18, 0, array18.length);
    device280.queue.writeBuffer(buffer2802, 0, array10, 0, array10.length);
    device280.queue.writeBuffer(buffer2800, 0, array24, 0, array24.length);
    
    device280.queue.writeBuffer(buffer2802, 0, array17, 0, array17.length);
    device280.queue.writeBuffer(buffer2800, 0, array7, 0, array7.length);
    device280.queue.writeBuffer(buffer2800, 0, array15, 0, array15.length);
    device280.queue.writeBuffer(buffer2802, 0, array13, 0, array13.length);
    device280.queue.writeBuffer(buffer2800, 0, array6, 0, array6.length);
    device280.queue.writeBuffer(buffer2800, 0, array21, 0, array21.length);
    device280.queue.writeBuffer(buffer2800, 0, array10, 0, array10.length);
    device280.queue.writeBuffer(buffer2802, 0, array8, 0, array8.length);
    device280.queue.writeBuffer(buffer2802, 0, array23, 0, array23.length);
    device280.queue.writeBuffer(buffer2800, 0, array15, 0, array15.length);
    device280.queue.writeBuffer(buffer2800, 0, array5, 0, array5.length);
    device280.queue.writeBuffer(buffer2800, 0, array15, 0, array15.length);
    
    device280.queue.writeBuffer(buffer2802, 0, array0, 0, array0.length);
    device280.queue.writeBuffer(buffer2800, 0, array5, 0, array5.length);
    device280.queue.writeBuffer(buffer2802, 0, array21, 0, array21.length);
    
    device280.queue.writeBuffer(buffer2800, 0, array19, 0, array19.length);
    device280.queue.writeBuffer(buffer2800, 0, array22, 0, array22.length);
    const array27 = new Float32Array([-0.25, 0.0, 0.5, 0.75, 1.0, -0.5, 0.5, -0.25, 1.0, -0.5, -1.0, -0.5, 0.75, -0.75, -0.25, -1.0, -0.5, 0.75, -0.5, -0.25, 1.0, 0.5, 0.5, 0.25, -1.0, 0.0, 1.0, -0.5, 0.75, -0.5, 0.75, 1.0, 0.0, -0.25, 1.0, 0.25, 0.75, 0.25, -1.0, 0.75, -0.25, -0.25, -0.25, -0.75, 1.0, -0.75, 1.0, -1.0, 0.5, -0.5, -0.25, -0.75, 1.0, 0.0, 0.0, 0.75, -1.0, 1.0, 0.25, -0.5, -0.5, 0.5, 0.0, -0.75, 0.75, 0.75, -0.25, -0.5, -1.0, -1.0, 0.5, -0.75, 0.75, 0.5, 1.0, 0.25, -0.75, 1.0, -0.25, -1.0, -1.0, 1.0, -0.25, 1.0, 0.25, -0.75, 0.75, 1.0, -0.75, 0.25, 1.0, 0.0, 0.75, 0.0, 0.0, -0.5, -1.0, 1.0, 0.25, -0.5, ]);
    device280.queue.writeBuffer(buffer2800, 0, array2, 0, array2.length);
    device280.queue.writeBuffer(buffer2800, 0, array5, 0, array5.length);
    
    device280.queue.writeBuffer(buffer2802, 0, array1, 0, array1.length);
    device280.pushErrorScope("validation");
    device280.queue.writeBuffer(buffer2802, 0, array4, 0, array4.length);
    device280.queue.writeBuffer(buffer2800, 0, array0, 0, array0.length);
    device280.queue.writeBuffer(buffer2802, 0, array13, 0, array13.length);
    device280.queue.writeBuffer(buffer2802, 0, array3, 0, array3.length);
    
    device280.queue.writeBuffer(buffer2802, 0, array6, 0, array6.length);
    device280.queue.writeBuffer(buffer2802, 0, array4, 0, array4.length);
    device280.queue.writeBuffer(buffer2802, 0, array25, 0, array25.length);
    device280.queue.writeBuffer(buffer2802, 0, array17, 0, array17.length);
    device280.queue.writeBuffer(buffer2802, 0, array25, 0, array25.length);
    const buffer2803 = device280.createBuffer({
        label: "buffer2803",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device280.queue.writeBuffer(buffer2800, 0, array21, 0, array21.length);
    
    device280.queue.writeBuffer(buffer2802, 0, array17, 0, array17.length);
    device280.queue.writeBuffer(buffer2802, 0, array0, 0, array0.length);
    device280.queue.writeBuffer(buffer2802, 0, array20, 0, array20.length);
    device280.queue.writeBuffer(buffer2802, 0, array2, 0, array2.length);
    device280.queue.writeBuffer(buffer2800, 0, array9, 0, array9.length);
    
    device280.queue.writeBuffer(buffer2800, 0, array7, 0, array7.length);
    
    device280.queue.writeBuffer(buffer2800, 0, array17, 0, array17.length);
    device280.queue.writeBuffer(buffer2800, 0, array3, 0, array3.length);
    device280.queue.writeBuffer(buffer2800, 0, array7, 0, array7.length);
    device280.queue.writeBuffer(buffer2802, 0, array2, 0, array2.length);
    device280.queue.writeBuffer(buffer2802, 0, array13, 0, array13.length);
    device280.queue.writeBuffer(buffer2800, 0, array12, 0, array12.length);
    device280.queue.writeBuffer(buffer2800, 0, array14, 0, array14.length);
    device280.queue.writeBuffer(buffer2800, 0, array9, 0, array9.length);
    device280.queue.writeBuffer(buffer2802, 0, array18, 0, array18.length);
    device280.queue.writeBuffer(buffer2802, 0, array23, 0, array23.length);
    device280.queue.writeBuffer(buffer2800, 0, array22, 0, array22.length);
    device280.queue.writeBuffer(buffer2802, 0, array10, 0, array10.length);
    device280.queue.writeBuffer(buffer2800, 0, array9, 0, array9.length);
    device280.queue.writeBuffer(buffer2802, 0, array4, 0, array4.length);
    const buffer2702 = device270.createBuffer({
        label: "buffer2702",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device280.queue.writeBuffer(buffer2802, 0, array17, 0, array17.length);
    device280.queue.writeBuffer(buffer2800, 0, array11, 0, array11.length);
    device280.queue.writeBuffer(buffer2802, 0, array22, 0, array22.length);
    device280.queue.writeBuffer(buffer2800, 0, array22, 0, array22.length);
    device280.queue.writeBuffer(buffer2800, 0, array9, 0, array9.length);
    device280.queue.writeBuffer(buffer2802, 0, array8, 0, array8.length);
    device280.queue.writeBuffer(buffer2802, 0, array19, 0, array19.length);
    device280.queue.writeBuffer(buffer2800, 0, array25, 0, array25.length);
    device280.queue.writeBuffer(buffer2800, 0, array4, 0, array4.length);
    device280.queue.writeBuffer(buffer2802, 0, array26, 0, array26.length);
    
    device280.queue.writeBuffer(buffer2802, 0, array8, 0, array8.length);
    device280.queue.writeBuffer(buffer2802, 0, array25, 0, array25.length);
    device280.queue.writeBuffer(buffer2802, 0, array7, 0, array7.length);
    device280.queue.writeBuffer(buffer2802, 0, array13, 0, array13.length);
    device280.queue.writeBuffer(buffer2802, 0, array13, 0, array13.length);
    const adapter29 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device280.queue.writeBuffer(buffer2802, 0, array21, 0, array21.length);
    device280.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device280.queue.writeBuffer(buffer2800, 0, array3, 0, array3.length);
    device280.queue.writeBuffer(buffer2800, 0, array0, 0, array0.length);
    device280.queue.writeBuffer(buffer2800, 0, array22, 0, array22.length);
    
    device280.queue.writeBuffer(buffer2800, 0, array7, 0, array7.length);
    device280.queue.writeBuffer(buffer2802, 0, array10, 0, array10.length);
    device280.queue.writeBuffer(buffer2800, 0, array7, 0, array7.length);
    device280.queue.writeBuffer(buffer2802, 0, array4, 0, array4.length);
    device280.queue.writeBuffer(buffer2800, 0, array19, 0, array19.length);
    
    device280.queue.writeBuffer(buffer2802, 0, array22, 0, array22.length);
    device280.queue.writeBuffer(buffer2802, 0, array16, 0, array16.length);
    
    device280.queue.writeBuffer(buffer2802, 0, array24, 0, array24.length);
    device280.queue.writeBuffer(buffer2802, 0, array20, 0, array20.length);
    device280.queue.writeBuffer(buffer2802, 0, array15, 0, array15.length);
    device280.queue.writeBuffer(buffer2800, 0, array21, 0, array21.length);
    device280.queue.writeBuffer(buffer2802, 0, array1, 0, array1.length);
    device280.queue.writeBuffer(buffer2800, 0, array27, 0, array27.length);
    
    
    
    device280.queue.writeBuffer(buffer2802, 0, array3, 0, array3.length);
    
    device280.queue.writeBuffer(buffer2800, 0, array14, 0, array14.length);
    
    device280.queue.writeBuffer(buffer2800, 0, array11, 0, array11.length);
    device280.queue.writeBuffer(buffer2800, 0, array18, 0, array18.length);
    const array28 = new Float32Array([-0.5, 0.75, -0.75, -0.25, 0.5, 0.25, 0.5, 0.0, -0.5, 0.25, 0.0, 0.25, -0.25, -1.0, 0.5, -1.0, -0.5, 0.75, -0.5, 0.75, -0.5, 0.25, 0.75, -1.0, 0.5, -0.75, -0.25, 0.5, 0.75, 0.75, 0.25, -0.25, 0.75, -1.0, -0.5, -0.25, 0.75, 0.25, 0.25, 0.25, 0.0, -0.75, 0.5, -0.5, 1.0, 1.0, 1.0, 1.0, 0.25, 0.0, 0.5, 1.0, -0.25, 0.5, -0.75, 0.25, 1.0, 0.25, 0.25, -0.75, 1.0, 1.0, 0.25, 0.75, 0.25, 1.0, -1.0, -0.5, -0.75, 0.0, 0.0, -0.75, -0.5, -1.0, -0.75, 1.0, -1.0, -0.75, 0.75, 0.25, 0.0, -0.5, -1.0, -0.25, -0.25, 0.75, 0.75, -0.5, 0.5, 1.0, 0.0, 0.0, 0.5, -1.0, 0.0, -0.25, 1.0, 0.75, 0.0, -0.75, ]);
    device280.queue.writeBuffer(buffer2800, 0, array8, 0, array8.length);
    device280.queue.writeBuffer(buffer2800, 0, array14, 0, array14.length);
    device280.queue.writeBuffer(buffer2800, 0, array2, 0, array2.length);
    device280.queue.writeBuffer(buffer2800, 0, array15, 0, array15.length);
    device280.queue.writeBuffer(buffer2802, 0, array10, 0, array10.length);
    
    device280.queue.writeBuffer(buffer2800, 0, array6, 0, array6.length);
    device280.queue.writeBuffer(buffer2800, 0, array13, 0, array13.length);
    device280.queue.writeBuffer(buffer2800, 0, array18, 0, array18.length);
    device280.queue.writeBuffer(buffer2800, 0, array8, 0, array8.length);
    device280.queue.writeBuffer(buffer2800, 0, array20, 0, array20.length);
    device280.queue.writeBuffer(buffer2802, 0, array28, 0, array28.length);
    device280.queue.writeBuffer(buffer2800, 0, array4, 0, array4.length);
    
    device270.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}