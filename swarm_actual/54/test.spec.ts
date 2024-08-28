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
    const array0 = new Float32Array([0.5, 1.0, 0.5, -0.75, -0.75, 0.5, -0.75, 0.25, 0.25, -0.25, -0.25, -1.0, 0.75, 0.75, 0.25, -0.25, 0.0, 0.0, 0.5, -0.25, -0.25, -0.75, 0.0, 0.5, 1.0, -0.75, -0.75, -0.5, 0.0, 0.5, -0.75, -0.5, -1.0, -0.5, 1.0, -0.75, 0.0, -0.5, 0.0, 0.0, 0.5, -1.0, 0.75, 0.75, 0.75, -1.0, 0.5, -0.5, -0.75, -1.0, -0.25, -1.0, -0.5, -0.5, 0.75, 0.0, 0.0, 0.75, -0.25, 0.25, -0.5, 0.5, 1.0, -0.75, 0.0, -1.0, -1.0, 1.0, 1.0, 0.25, -1.0, -1.0, 0.75, 0.0, 1.0, -0.5, 0.0, 0.5, 0.0, 0.75, 0.0, -0.5, -1.0, 0.5, 0.0, -1.0, -1.0, 0.0, -1.0, 0.0, 0.5, -0.5, -0.5, -0.5, -0.25, 0.25, 0.75, 0.75, -0.25, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const array1 = new Float32Array([-0.75, -0.75, -0.25, 0.25, -1.0, 0.0, 1.0, 0.0, 0.25, 0.25, 1.0, -1.0, -1.0, 1.0, -0.5, -0.5, -0.5, 1.0, 0.75, 0.5, 1.0, -1.0, 0.0, 1.0, 0.0, 0.5, 0.75, -1.0, -0.5, 0.5, -0.75, -0.75, -1.0, 0.0, -0.75, 0.0, 0.25, -0.25, -0.25, -0.75, 0.75, 0.75, 0.75, 0.25, 0.5, 0.5, 0.5, 0.75, 0.5, 0.5, -0.25, 0.25, 1.0, 0.0, 1.0, -1.0, 1.0, 0.25, 1.0, 0.25, -1.0, -0.75, -0.75, 1.0, -1.0, -0.25, -1.0, -0.25, -0.25, -0.75, 1.0, 0.25, -1.0, -1.0, 0.0, 0.25, 0.75, 1.0, -0.5, 0.0, -0.25, -0.5, 0.75, 0.75, 0.25, -0.25, -0.25, 1.0, 0.25, 1.0, 0.75, 0.25, -0.5, 1.0, 1.0, 0.25, 1.0, 0.25, 0.75, 0.75, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("internal");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const array2 = new Float32Array([0.75, -0.75, 0.25, 0.75, 0.5, -1.0, -1.0, 0.0, 0.5, -1.0, 1.0, -0.25, -0.5, -0.5, 0.5, 0.25, 0.0, 0.25, 0.5, -0.75, -0.5, -0.25, -0.5, 1.0, 1.0, -0.25, -1.0, 0.25, -0.5, -1.0, -0.75, -0.75, -0.75, -1.0, 1.0, 0.25, 0.5, 0.5, 0.75, 0.75, 0.0, 0.0, -0.5, -1.0, 0.75, 1.0, 1.0, 0.75, -0.25, -0.5, -1.0, -0.75, 0.75, -1.0, 1.0, -1.0, -0.25, -0.75, 1.0, -1.0, 0.5, -0.75, -0.25, 0.5, -0.75, 1.0, -0.25, -0.5, 0.75, 0.0, 0.25, -0.25, -0.75, 0.5, -0.25, -0.5, -1.0, -0.75, 0.25, 1.0, 0.0, 0.5, 1.0, 0.25, 0.75, -1.0, -0.25, -1.0, 0.5, 0.0, 0.5, -1.0, -0.75, 0.5, -0.5, 0.25, 0.5, -0.25, 0.25, 0.0, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query001.destroy()
    query100.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder000.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    query000.destroy()
    const array3 = new Float32Array([0.25, -0.5, -1.0, 0.0, -0.25, 1.0, 0.75, 0.25, 0.5, -0.5, 0.5, 0.0, 1.0, 0.5, 0.75, -1.0, 1.0, 0.5, -1.0, 0.0, 0.75, -0.5, 0.25, 0.5, 0.5, -0.5, 0.25, 0.0, -0.25, 0.25, 0.75, 0.0, 0.5, 0.0, 0.0, 0.0, -0.75, 1.0, -0.75, 0.75, -0.5, -0.75, 0.25, 1.0, -1.0, -0.5, -1.0, -0.75, 0.25, 0.75, 1.0, 0.5, -0.75, -1.0, -0.5, 0.0, 1.0, -0.75, 1.0, -0.25, -0.75, 0.0, -0.5, -1.0, -0.5, -0.5, 0.5, -0.25, 1.0, -0.75, -0.75, -1.0, -0.25, 1.0, 1.0, -1.0, 0.75, -1.0, -0.5, -0.75, -0.5, 1.0, 0.75, 0.5, -1.0, 1.0, 0.75, 0.25, -1.0, 0.0, 0.0, 1.0, 0.5, 0.75, 0.25, -1.0, 0.5, 0.25, 0.5, 0.5, ]);
    
    query000.destroy()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    command_encoder000.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    query001.destroy()
    command_encoder001.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    query101.destroy()
    query101.destroy()
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    command_encoder000.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    command_encoder000.clearBuffer(buffer002);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    command_encoder001.clearBuffer(buffer002);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    command_encoder003.clearBuffer(buffer002);
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder003.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    command_encoder000.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    query103.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    query000.destroy()
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    render_bundle_encoder101.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    query101.destroy()
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query104.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder002.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const array4 = new Float32Array([0.0, -0.75, -0.75, -0.5, 0.0, 1.0, -0.5, 0.5, -1.0, 0.75, -0.5, 0.5, 0.0, -1.0, -1.0, 0.5, 0.75, -0.25, 0.0, -1.0, -1.0, 0.0, 0.5, -0.25, -0.75, -0.75, 0.0, -0.25, -0.25, 0.75, 0.0, 0.0, -0.75, -0.75, -0.75, 0.0, 0.5, -0.25, 0.75, -0.5, -1.0, 0.5, 1.0, 1.0, -0.5, 0.75, 0.75, 0.0, 0.75, 0.75, 0.25, 0.75, -0.25, -0.5, -1.0, -1.0, 1.0, -0.75, 0.5, -0.5, 0.25, -0.25, 1.0, -0.5, -1.0, -1.0, 1.0, 0.5, 0.0, 0.0, 0.5, 1.0, 0.25, 0.5, 0.75, -0.75, 1.0, 0.25, -1.0, 0.25, 0.25, -1.0, -0.75, 0.0, 0.75, 0.75, 0.0, -1.0, -1.0, 0.75, -0.5, -0.25, 0.0, -0.25, -0.25, 1.0, 0.25, -0.75, -0.25, -1.0, ]);
    command_encoder002.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query103.destroy()
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    
    device20.pushErrorScope("out-of-memory");
    query001.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    query001.destroy()
    command_encoder001.clearBuffer(buffer002);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder003.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    command_encoder001.clearBuffer(buffer002);
    command_encoder003.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    command_encoder005.clearBuffer(buffer002);
    query101.destroy()
    query100.destroy()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    query002.destroy()
    query002.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.clearBuffer(buffer002);
    command_encoder005.clearBuffer(buffer002);
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query002.destroy()
    const array5 = new Float32Array([0.75, 0.75, 0.5, -0.25, -0.25, -0.5, 0.75, 0.75, 0.5, -1.0, -0.5, 1.0, 0.0, -1.0, 0.25, 0.0, 0.5, -1.0, -0.5, 0.25, 1.0, 0.5, -0.25, 0.75, 0.0, 0.0, 0.25, 0.25, -0.5, 0.0, -1.0, 0.0, 0.75, -1.0, 1.0, 0.25, 0.0, 0.25, 0.75, 1.0, 0.75, 0.25, -1.0, 0.25, 0.75, -0.75, 1.0, -0.75, -1.0, -1.0, 0.75, -0.5, -0.25, 0.75, -0.5, -0.25, 0.75, 1.0, -0.25, 0.75, 0.25, 0.0, -0.5, 0.5, -0.75, 0.5, 0.75, -0.75, 0.0, 0.75, -0.75, 0.75, -0.5, 1.0, 0.25, 0.25, -0.75, -0.5, 0.0, 1.0, -0.75, 0.75, 0.5, 0.5, -1.0, 1.0, 0.25, -0.75, 0.5, -0.25, 0.0, -0.5, 0.75, -0.25, -0.5, 1.0, 1.0, 0.75, -0.5, 0.5, ]);
    command_encoder002.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    query100.destroy()
    command_encoder005.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    query100.destroy()
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query103.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const array6 = new Float32Array([1.0, 1.0, 0.25, 0.25, -0.5, 0.5, 1.0, 1.0, -1.0, -0.25, 0.5, -1.0, 1.0, -0.5, -0.25, -0.5, 1.0, 0.5, 0.5, 0.25, 1.0, 0.25, -1.0, -0.5, -0.75, 1.0, 0.0, 1.0, 0.5, 0.5, -0.75, -0.5, 0.0, 1.0, 0.5, -1.0, -0.75, -0.75, 0.25, 0.25, 0.5, 1.0, 0.75, -1.0, -1.0, 0.5, -0.25, 0.75, 0.75, -0.5, -1.0, 0.5, -0.75, -0.5, 0.0, -0.5, -1.0, -1.0, 0.0, 0.75, -0.25, 0.5, -0.5, 0.75, 0.0, -1.0, 1.0, -0.5, 0.75, 0.75, 0.5, 0.5, 0.5, -0.75, -0.5, 1.0, 0.25, -0.25, -0.5, 1.0, -0.75, -0.5, -0.75, -0.75, -0.5, 0.5, 1.0, -0.25, -0.5, -0.5, 0.5, -1.0, 0.0, 0.25, 0.0, -0.75, -0.75, 0.0, 0.5, 1.0, ]);
    command_encoder000.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder005.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    command_encoder001.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    command_encoder000.clearBuffer(buffer002);
    command_encoder004.clearBuffer(buffer002);
    const array7 = new Float32Array([0.5, -0.25, -1.0, -0.25, 0.75, -0.75, 0.25, -0.25, 1.0, -0.5, 0.25, 0.75, -1.0, 0.0, 1.0, -0.75, -0.25, -0.5, 0.0, -0.25, -0.5, 0.0, 0.5, -0.5, -0.25, 0.75, -1.0, 0.5, -0.5, 0.75, -0.75, 0.0, -0.75, -0.5, -1.0, 0.75, -1.0, 0.25, -0.75, 0.75, -1.0, 0.25, 1.0, 0.5, 0.0, 1.0, -1.0, -0.25, -1.0, 0.25, -0.25, 1.0, -0.75, 0.5, 0.75, -0.25, 1.0, 1.0, 0.0, -0.5, 0.0, 0.25, -0.25, 0.0, 0.25, -0.5, 0.5, -0.5, -0.5, 0.5, 1.0, -0.75, -0.25, -0.5, -1.0, 0.0, 0.25, 0.0, 0.5, -1.0, 0.5, 0.5, 0.25, -0.5, -0.5, -1.0, -1.0, 0.5, 0.25, 0.25, 0.75, 0.0, 0.0, -0.25, -0.25, 0.25, 0.25, -0.75, 0.75, -1.0, ]);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    query100.destroy()
    query001.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder004.clearBuffer(buffer002);
    
    command_encoder007.clearBuffer(buffer002);
    render_bundle_encoder000.insertDebugMarker("marker");
    query001.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder004.clearBuffer(buffer002);
    
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    command_encoder000.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    command_encoder002.clearBuffer(buffer002);
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder006.clearBuffer(buffer002);
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder006.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    command_encoder005.clearBuffer(buffer002);
    command_encoder002.clearBuffer(buffer002);
    command_encoder002.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    query104.destroy()
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    command_encoder006.clearBuffer(buffer002);
    
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query100.destroy()
    command_encoder001.clearBuffer(buffer002);
    query002.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    query002.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query003.destroy()
    
    command_encoder001.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    command_encoder007.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    query105.destroy()
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_bundle_encoder201.insertDebugMarker("marker");
    query200.destroy()
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    device30.pushErrorScope("out-of-memory");
    query101.destroy()
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    command_encoder002.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder003.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    command_encoder005.clearBuffer(buffer002);
    query001.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    
    command_encoder005.clearBuffer(buffer002);
    command_encoder007.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder101.insertDebugMarker("marker");
    query002.destroy()
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query004.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder003.clearBuffer(buffer002);
    command_encoder006.clearBuffer(buffer002);
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    command_encoder003.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder008.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    
    query001.destroy()
    query101.destroy()
    command_encoder008.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    query003.destroy()
    command_encoder004.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    command_encoder008.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    render_bundle_encoder101.insertDebugMarker("marker");
    const array8 = new Float32Array([1.0, 0.75, -0.75, 0.5, 0.75, 1.0, 0.0, 0.5, 0.0, -0.5, 0.5, 0.5, 0.5, 0.5, -1.0, -0.5, -1.0, 0.75, -0.75, 0.25, -0.25, -0.75, 1.0, -0.25, 1.0, 0.75, -0.5, 0.75, 1.0, 0.0, -0.5, -1.0, -0.5, 1.0, -1.0, -1.0, 1.0, -0.75, -0.75, 0.25, 0.5, -0.5, -1.0, -0.5, -0.25, 0.75, 1.0, -0.5, 0.75, -0.25, -0.5, -0.5, -0.25, -1.0, -0.5, -0.5, 0.0, 0.25, 0.0, 1.0, 0.5, -0.25, 1.0, -0.25, 0.0, -0.5, -1.0, 0.0, -0.5, 1.0, -1.0, 0.75, 0.5, -0.25, 1.0, 1.0, -0.75, -0.25, 0.0, -1.0, -0.75, 0.75, 1.0, -0.25, -0.5, -0.5, 0.5, -0.25, -1.0, -0.25, -1.0, 1.0, -0.5, 0.25, 1.0, -1.0, 0.0, -0.75, -1.0, -0.25, ]);
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    command_encoder001.clearBuffer(buffer002);
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    query106.destroy()
    query101.destroy()
    query003.destroy()
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    command_encoder003.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    command_encoder004.clearBuffer(buffer002);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder006.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    device40.destroy();
    query000.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder005.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder001.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    
    command_encoder006.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    command_encoder003.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    command_encoder003.clearBuffer(buffer002);
    query100.destroy()
    query002.destroy()
    query103.destroy()
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    command_encoder007.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    query303.destroy()
    query101.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder006.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder004.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    
    command_encoder006.clearBuffer(buffer002);
    query302.destroy()
    command_encoder202.clearBuffer(buffer200);
    const array9 = new Float32Array([-0.25, 0.75, 0.25, -1.0, 0.75, -0.5, 0.0, 1.0, -0.75, 0.0, -1.0, -1.0, 0.75, 0.5, -1.0, -1.0, -0.5, 1.0, 0.25, -0.75, -0.5, 0.25, -0.75, 0.5, 0.0, 0.5, -0.75, 1.0, 0.75, 0.5, 0.5, 0.25, 0.5, -0.25, -1.0, -1.0, -0.75, 0.25, -0.75, -1.0, 0.0, 0.0, -0.5, 1.0, 1.0, 1.0, -0.5, 1.0, -0.5, 0.5, 0.5, 0.0, 0.75, 0.25, 0.5, -0.5, -0.5, 1.0, 0.25, -0.75, -1.0, -1.0, 0.5, 0.25, 1.0, -0.25, -0.5, -0.5, 0.0, 0.5, 0.0, 0.75, 0.0, -1.0, -0.25, 1.0, 0.25, 1.0, 0.75, 0.5, 0.5, 0.0, -1.0, -0.25, 1.0, -0.5, -0.75, -0.5, 1.0, -0.25, -0.5, 0.5, 0.5, -0.75, 0.25, -0.75, 0.5, 0.25, -1.0, -0.75, ]);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    device00.queue.writeBuffer(buffer002, 0, array9, 0, array9.length);
    query004.destroy()
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    command_encoder007.clearBuffer(buffer002);
    query001.destroy()
    command_encoder201.clearBuffer(buffer200);
    render_bundle_encoder002.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    render_bundle_encoder202.insertDebugMarker("marker");
    
    query305.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    query200.destroy()
    command_encoder202.clearBuffer(buffer200);
    query002.destroy()
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    command_encoder002.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder002.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    device00.queue.writeBuffer(buffer002, 0, array9, 0, array9.length);
    query101.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array10 = new Float32Array([-1.0, 0.5, 1.0, 0.0, 0.75, -0.25, 0.0, 0.75, 0.75, 0.25, 0.75, 0.5, 0.5, 0.5, -0.75, 0.5, 0.75, 0.0, 0.0, -0.75, -1.0, -1.0, 0.25, -0.5, -0.75, 0.5, 1.0, -1.0, -0.75, 0.5, -0.25, -0.25, 1.0, 1.0, -0.75, 0.75, 0.75, -0.75, -0.75, 1.0, 0.75, -1.0, 0.25, -0.75, -1.0, 1.0, -0.5, 0.0, 1.0, 0.0, 1.0, -0.75, 0.5, -0.75, 1.0, 0.25, -0.75, 0.0, -0.25, 0.75, -0.25, -0.75, 0.25, 0.0, -1.0, -0.25, 0.0, -0.5, -1.0, -1.0, -1.0, 0.25, -0.5, 0.75, -1.0, 1.0, 0.75, 0.25, 0.0, 0.75, 0.25, -0.75, 0.0, 1.0, 0.0, -0.75, 0.0, 1.0, -0.25, -1.0, 1.0, -0.5, -0.25, 0.75, -0.75, -0.75, -0.25, 0.25, -1.0, -0.5, ]);
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    query304.destroy()
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    render_bundle_encoder101.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array11 = new Float32Array([0.0, 0.5, 0.25, -1.0, -0.25, -0.5, 1.0, -0.25, 0.75, -0.25, -1.0, -0.75, -0.75, 0.5, 0.25, 0.75, -0.25, -1.0, 0.5, -0.75, 0.5, -1.0, 0.75, 0.75, 1.0, 0.25, 1.0, 0.5, 1.0, 0.25, 0.5, 0.25, -0.5, -0.5, 1.0, 0.0, -0.75, 0.0, 0.75, 0.0, -0.5, -0.75, -0.75, 0.25, -0.25, -0.25, -0.25, -0.5, 1.0, 0.0, 0.75, 0.75, 0.5, 0.75, 0.5, 0.0, 1.0, -0.25, 0.25, -0.75, -1.0, 0.75, 0.75, -0.25, -1.0, 0.75, 0.5, 0.25, 0.0, -1.0, 1.0, 0.25, 0.75, 0.25, -0.75, 0.5, 1.0, -0.25, -0.25, -0.75, 0.0, 0.75, 0.25, -0.25, -1.0, 0.0, 0.0, 0.5, 0.5, -0.25, -0.75, -1.0, 1.0, 1.0, -0.25, 0.5, -1.0, 0.0, -0.5, 0.75, ]);
    device00.queue.writeBuffer(buffer002, 0, array11, 0, array11.length);
    query303.destroy()
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    command_encoder006.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    query004.destroy()
    query300.destroy()
    query002.destroy()
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    command_encoder006.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    command_encoder009.clearBuffer(buffer002);
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    command_encoder003.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    command_encoder007.copyBufferToBuffer(
        buffer009,
        0,
        buffer002,
        0,
        400
    );
    command_encoder008.copyBufferToBuffer(
        buffer009,
        0,
        buffer002,
        0,
        400
    );
    query103.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    command_encoder009.clearBuffer(buffer002);
    query107.destroy()
    device20.queue.writeBuffer(buffer200, 0, array11, 0, array11.length);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder001.clearBuffer(buffer002);
    device00.queue.writeBuffer(buffer002, 0, array11, 0, array11.length);
    query102.destroy()
    query303.destroy()
    command_encoder202.clearBuffer(buffer200);
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    query302.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder005.clearBuffer(buffer002);
    command_encoder000.clearBuffer(buffer002);
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder006.copyBufferToBuffer(
        buffer009,
        0,
        buffer002,
        0,
        400
    );
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    command_encoder202.clearBuffer(buffer200);
    query101.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    query103.destroy()
    
    query300.destroy()
    command_encoder007.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query005.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    command_encoder009.copyBufferToBuffer(
        buffer009,
        0,
        buffer002,
        0,
        400
    );
    query001.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    query200.destroy()
    query103.destroy()
    command_encoder201.clearBuffer(buffer200);
    
    command_encoder008.copyBufferToBuffer(
        buffer009,
        0,
        buffer002,
        0,
        400
    );
    query302.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder004.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    query301.destroy()
    query301.destroy()
    command_encoder008.clearBuffer(buffer002);
    device20.queue.writeBuffer(buffer200, 0, array11, 0, array11.length);
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    command_encoder006.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    query201.destroy()
    query300.destroy()
    query101.destroy()
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder000.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query105.destroy()
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    query105.destroy()
    command_encoder007.copyBufferToBuffer(
        buffer009,
        0,
        buffer002,
        0,
        400
    );
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    query107.destroy()
    query302.destroy()
    query600.destroy()
    query006.destroy()
    device00.queue.writeBuffer(buffer002, 0, array10, 0, array10.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    command_encoder001.copyBufferToBuffer(
        buffer009,
        0,
        buffer002,
        0,
        400
    );
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    command_encoder001.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    command_encoder009.copyBufferToBuffer(
        buffer009,
        0,
        buffer002,
        0,
        400
    );
    device70.pushErrorScope("out-of-memory");
}