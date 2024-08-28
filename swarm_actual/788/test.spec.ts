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
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array0 = new Float32Array([-0.75, 1.0, -0.25, -0.75, -0.75, 0.5, 0.5, 0.0, 0.0, 1.0, -1.0, -0.75, 1.0, 0.25, 1.0, -0.5, -0.75, 0.25, 0.25, 0.5, -0.5, 0.75, 0.5, -0.25, 0.75, 0.75, 0.25, 0.75, 0.5, 1.0, 1.0, 0.75, -0.75, 1.0, 0.0, 0.25, -0.75, 0.75, 0.0, -0.75, 0.75, -0.5, -0.75, -1.0, -0.5, 0.0, -0.75, -0.25, -0.25, -0.25, -1.0, 0.25, 0.0, 0.75, 0.75, 1.0, 0.75, -1.0, 0.75, 0.75, 0.5, 1.0, 0.0, 0.0, 0.0, -0.5, -0.5, 0.5, 0.25, 0.25, -0.75, 1.0, 0.75, -0.25, -1.0, -1.0, 0.75, 0.75, -0.75, -0.5, 0.0, 0.0, -0.25, 0.5, -0.5, 0.75, -1.0, -0.75, 0.0, -1.0, 1.0, -0.75, 0.5, 0.0, -0.25, 0.75, 0.5, -0.75, 1.0, 0.75, ]);
    const array1 = new Float32Array([0.75, 0.5, -0.75, 1.0, -1.0, 0.25, 0.25, 0.75, -0.5, 0.0, 0.75, 0.25, -0.25, -1.0, 0.25, 0.75, -0.5, 0.25, -0.75, 0.5, 0.25, -1.0, 0.5, -0.5, -0.75, -0.5, -1.0, 1.0, -0.5, -0.5, 0.75, -0.25, -1.0, 0.5, 1.0, 0.75, 0.25, -1.0, 1.0, 0.5, 0.0, 0.0, 1.0, 0.0, 0.25, -1.0, -0.75, 0.0, -1.0, -0.75, -1.0, 0.25, -0.25, -0.5, 0.75, 0.5, -0.5, -0.75, 0.25, 0.5, -0.5, 1.0, 1.0, 0.0, 0.5, 0.75, -0.75, 0.5, -0.25, 0.5, 1.0, -0.75, -0.75, 0.0, -0.25, 0.75, -1.0, -1.0, -0.5, 0.0, 0.5, 0.25, -1.0, 0.5, -0.5, -1.0, -0.75, -0.5, 0.25, -1.0, -0.25, -0.25, -1.0, 0.25, -0.25, -0.75, 0.25, 0.25, -1.0, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array2 = new Float32Array([-0.25, 0.75, -0.25, 0.5, 0.75, 0.25, -0.5, 0.0, -1.0, 0.75, -0.25, -1.0, -0.75, -0.25, -0.25, 0.75, -0.25, 0.0, 1.0, 1.0, -0.25, 0.25, -0.25, -0.5, 0.75, -0.75, 1.0, 0.25, -1.0, -1.0, -0.5, 0.75, -0.25, 1.0, 0.5, 0.0, -0.25, -0.5, -1.0, -0.75, 0.5, 0.75, 0.75, 0.5, 0.5, -0.25, -1.0, -0.25, 0.5, -0.75, 1.0, -1.0, -0.25, 0.25, -0.5, 0.0, 0.5, -0.75, 0.5, -0.25, 0.5, -1.0, 0.0, -0.25, 0.75, -0.5, 0.75, 0.75, -0.25, 0.0, -0.75, 0.5, 0.0, -0.75, -0.25, -1.0, -1.0, 0.75, -0.25, 0.25, -0.25, 0.5, -1.0, 0.75, 0.5, 0.5, -0.5, -1.0, -0.75, 0.5, 1.0, 1.0, -1.0, -1.0, 0.0, 0.75, 0.75, 0.25, 0.5, 0.0, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer000.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([1.0, -1.0, 0.5, 0.5, 0.75, -1.0, -1.0, 0.0, -0.5, -1.0, 0.0, -0.25, -1.0, 0.0, 1.0, 1.0, -1.0, 0.5, 0.5, 0.5, -0.75, -0.25, 0.75, 0.75, -0.25, 1.0, -0.5, -0.5, 0.0, 0.0, -1.0, -0.5, 1.0, 0.5, 0.5, -0.5, -1.0, 0.75, 0.75, 0.75, -0.75, 0.75, 0.25, -0.75, 1.0, 0.75, -0.25, -0.75, -0.5, -0.5, -0.75, -0.25, 0.5, 0.0, 0.75, -0.5, -0.5, 0.75, -0.25, -0.5, 0.75, 0.5, 0.25, 1.0, -0.75, 0.25, -0.25, -0.75, 0.5, -0.5, -0.75, 1.0, -1.0, -0.25, 0.75, 0.75, -0.5, 1.0, 0.75, 0.5, -1.0, 0.75, 1.0, -0.25, -0.75, -0.5, 1.0, -0.75, 1.0, -1.0, 0.75, 1.0, -0.25, -0.75, -0.25, -0.5, 0.0, -0.25, -1.0, -0.25, ]);
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    buffer100.destroy()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    buffer001.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer200.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    buffer400.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeBuffer(buffer304, 0, array1, 0, array1.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.queue.writeBuffer(buffer304, 0, array1, 0, array1.length);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    device30.queue.writeBuffer(buffer304, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    buffer002.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    buffer201.destroy()
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer300.destroy()
    
    
    
    device30.queue.writeBuffer(buffer304, 0, array3, 0, array3.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer303.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer304.destroy()
    buffer003.destroy()
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const array4 = new Float32Array([-1.0, 0.5, 0.0, 0.75, 0.0, -0.25, 0.75, 0.0, 1.0, 0.5, 0.25, 0.0, -1.0, -1.0, 1.0, 0.0, 0.5, -0.5, -0.25, -0.75, 0.25, 0.25, -0.75, 1.0, 0.0, 0.25, 0.5, -0.5, 0.25, 1.0, 0.5, 0.25, 1.0, -0.25, 0.75, 0.25, 0.5, 1.0, -0.75, -0.25, 0.0, 0.25, -0.25, 1.0, 0.5, 0.0, 1.0, 0.0, 0.5, -0.75, -0.5, 0.25, -1.0, -0.25, -1.0, 0.0, 0.5, -0.5, -0.5, -0.5, 0.0, -0.75, 1.0, 0.75, -1.0, 0.0, -0.75, -0.25, 0.5, -0.75, 0.25, 0.25, -1.0, -1.0, 0.0, 0.0, -0.5, 0.0, -0.5, 0.25, 1.0, 0.0, -0.75, 1.0, 0.25, 1.0, 0.0, 0.0, 0.75, -1.0, 1.0, 0.75, 0.5, -0.25, -0.75, 0.0, 0.0, -0.5, 1.0, 0.5, ]);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    const array5 = new Float32Array([1.0, 0.0, 0.75, -1.0, -0.75, -1.0, -0.25, 1.0, -0.75, 0.75, 0.0, 0.75, 1.0, 0.0, 0.75, -0.75, -0.75, -0.25, 0.25, 0.25, 1.0, 0.75, -0.75, 0.0, -0.75, 0.75, -0.25, -1.0, 1.0, 0.5, 1.0, -0.25, 0.0, 0.0, -1.0, 1.0, -1.0, 0.25, 0.25, -0.75, 0.5, 0.5, 0.0, -0.5, 0.25, 0.75, 0.75, 1.0, -0.5, -0.25, -1.0, 1.0, -0.5, 0.75, -0.75, 1.0, -0.25, 1.0, 0.25, 0.25, -0.5, 0.0, -0.75, -0.5, 0.5, -1.0, 1.0, -0.25, 0.5, 0.5, -0.25, 0.0, 1.0, -1.0, -0.75, -0.75, 0.5, 0.75, 0.0, 0.25, 0.0, -0.25, 0.5, -0.5, 0.0, 0.75, -1.0, -0.5, 0.75, 0.75, 0.25, 1.0, 0.75, -0.75, -1.0, 1.0, -0.5, -1.0, -1.0, 1.0, ]);
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const array6 = new Float32Array([-1.0, 0.5, 0.5, 0.75, -0.5, 0.5, 0.0, -1.0, -1.0, -0.75, -0.75, -0.5, -0.75, -0.75, -0.25, -0.25, -0.5, 0.75, -0.75, 0.75, 0.5, 0.25, -0.75, 0.75, 0.0, 0.25, 0.75, -0.25, 0.75, -1.0, -0.5, -1.0, -0.25, -0.5, 0.5, -1.0, -0.25, 0.5, 0.75, 0.5, 0.75, 1.0, 0.0, 0.75, 0.5, -0.5, -0.75, 0.5, 0.5, 0.25, -0.25, 0.0, 0.0, 0.25, -0.75, -0.75, -0.5, 0.5, 0.5, 0.0, 0.0, -0.25, 1.0, 1.0, 0.5, -0.25, -0.75, -1.0, 0.0, -0.25, -0.75, 1.0, 0.75, -0.5, -0.25, 1.0, -0.25, -1.0, 0.25, -0.75, -0.5, 0.25, -0.75, 1.0, 0.0, 0.75, 0.5, 0.25, 0.25, 0.75, 0.25, -0.75, 0.25, 0.0, 0.5, -0.25, 1.0, 0.25, -0.25, -0.25, ]);
    
    
    
    
    buffer402.destroy()
    buffer302.destroy()
    
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const array7 = new Float32Array([-0.25, 0.0, 1.0, 0.25, 0.0, -0.25, -1.0, 0.25, 1.0, 1.0, -1.0, -0.5, 0.5, 0.25, 1.0, -0.75, -0.25, -0.75, 0.75, 0.5, 0.0, -0.75, 0.5, 0.25, -0.75, 0.0, 0.0, -1.0, -0.25, -0.5, 0.25, 0.0, -0.75, 0.25, 0.5, -0.75, 0.25, -0.5, 1.0, -1.0, 0.25, -0.25, 0.75, -0.75, 0.0, 0.25, 0.25, 0.0, -0.5, -0.25, -0.25, -0.75, -1.0, 0.5, 0.5, -1.0, -0.75, -1.0, 1.0, 0.5, -1.0, 0.25, 1.0, -0.25, 0.25, 0.25, 0.25, -1.0, -0.5, 1.0, 0.25, -0.25, -0.75, -1.0, 1.0, 0.25, 0.75, 0.75, 0.75, 0.75, 1.0, -0.75, -0.75, -0.25, 0.75, -0.25, 0.75, -0.25, 0.0, 1.0, 0.5, -0.25, -0.5, -0.5, 1.0, -0.5, 0.75, -0.25, 0.25, -1.0, ]);
    buffer203.destroy()
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    
    buffer004.destroy()
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    const array8 = new Float32Array([-0.25, -0.25, 1.0, 1.0, 1.0, 0.75, 0.5, -0.25, 1.0, 0.5, 1.0, -0.25, 0.25, 0.25, -0.25, 0.75, -0.5, 1.0, -0.75, 0.5, 0.75, -0.5, 0.5, -0.75, 0.75, -0.25, 0.0, 0.75, 0.0, 0.0, 0.5, -0.5, 0.25, -0.5, 1.0, -1.0, -0.75, 1.0, 0.75, 0.0, -1.0, 0.75, -0.5, 0.25, -1.0, -1.0, 0.0, -0.5, 0.5, 0.25, 0.5, 0.0, 0.25, 0.5, 0.75, 0.25, 0.25, 0.75, 0.5, 0.5, 1.0, -0.75, -0.75, 0.25, -0.25, 0.25, 0.75, -0.25, 0.5, -0.5, 0.0, 0.5, 0.5, -0.75, -0.5, 0.75, 1.0, 1.0, -0.25, 1.0, -0.5, -0.75, 0.25, -1.0, 0.75, 0.25, 0.0, 0.5, 0.0, -0.5, 0.5, -1.0, -1.0, -0.25, 1.0, -0.75, 0.25, 0.0, 0.25, 0.75, ]);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer401.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    buffer101.destroy()
    
    
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    
    
    
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    buffer301.destroy()
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    buffer005.destroy()
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    buffer202.destroy()
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    buffer204.destroy()
    buffer600.destroy()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    buffer102.destroy()
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    buffer305.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device60.queue.writeBuffer(buffer602, 0, array2, 0, array2.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    buffer205.destroy()
    device60.queue.writeBuffer(buffer602, 0, array1, 0, array1.length);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer602, 0, array8, 0, array8.length);
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device60.queue.writeBuffer(buffer602, 0, array2, 0, array2.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    
    device60.queue.writeBuffer(buffer602, 0, array3, 0, array3.length);
    
    
    device60.queue.writeBuffer(buffer602, 0, array6, 0, array6.length);
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device60.queue.writeBuffer(buffer602, 0, array5, 0, array5.length);
    buffer403.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    
    buffer601.destroy()
    
    device60.queue.writeBuffer(buffer602, 0, array1, 0, array1.length);
    
    
    buffer602.destroy()
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    buffer006.destroy()
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    buffer206.destroy()
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    device50.queue.writeBuffer(buffer501, 0, array7, 0, array7.length);
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    buffer500.destroy()
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    buffer008.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    buffer306.destroy()
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder602.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device60.queue.writeBuffer(buffer603, 0, array8, 0, array8.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer603, 0, array0, 0, array0.length);
    
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder401.insertDebugMarker("marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer603, 0, array6, 0, array6.length);
    buffer207.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    const array9 = new Float32Array([0.75, 0.0, 1.0, -1.0, 1.0, 0.75, -0.25, -0.75, -0.75, 0.25, -0.25, -1.0, 0.25, -0.75, 1.0, -0.5, -1.0, -0.5, -0.25, 0.75, 0.0, 0.0, -1.0, -0.5, 0.0, -0.75, 0.75, 0.75, 0.0, -1.0, 0.5, 1.0, -0.25, -0.5, 0.75, -0.75, 0.0, 1.0, -1.0, -0.5, 0.0, -1.0, -0.25, 0.25, 0.5, -0.75, -0.75, 1.0, 0.5, 0.25, 0.75, -0.5, 0.0, 1.0, -1.0, 0.0, 0.75, -0.25, -0.25, -1.0, -0.5, 0.75, 0.5, 0.0, -1.0, -0.5, 0.5, -0.5, 0.75, 0.0, 0.5, 0.75, -1.0, -0.75, -0.25, -0.75, 0.25, 0.5, 0.75, 0.25, -0.5, -0.5, 1.0, -0.75, 1.0, -0.5, 1.0, -1.0, -0.5, 0.5, -1.0, 0.75, 1.0, -0.5, 0.5, -0.5, 1.0, -0.75, -0.75, -0.5, ]);
    
    
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    device60.queue.writeBuffer(buffer603, 0, array4, 0, array4.length);
    render_bundle_encoder401.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
    
    device60.queue.writeBuffer(buffer603, 0, array8, 0, array8.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    
    
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
    
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer501, 0, array7, 0, array7.length);
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    buffer103.destroy()
    
    
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer604, 0, array1, 0, array1.length);
    device60.queue.writeBuffer(buffer604, 0, array4, 0, array4.length);
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device60.queue.writeBuffer(buffer604, 0, array1, 0, array1.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    buffer604.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder502.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device60.queue.writeBuffer(buffer603, 0, array2, 0, array2.length);
    render_bundle_encoder602.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    
    device60.queue.writeBuffer(buffer603, 0, array0, 0, array0.length);
    
    const array10 = new Float32Array([0.25, 0.0, 0.75, 1.0, 1.0, 0.5, -0.5, -0.25, -0.75, -0.5, 0.25, 1.0, 0.0, 0.25, -1.0, 1.0, 0.25, 0.25, -0.25, 0.5, 0.5, 0.0, 0.0, 0.5, -0.75, -0.5, 0.5, 0.5, -0.5, -0.25, 0.75, 0.75, -1.0, -0.75, 1.0, 0.5, -0.75, -0.75, 0.75, -0.5, 0.25, -0.75, -1.0, -0.25, 0.5, -0.5, -0.25, -0.75, -0.75, -1.0, 0.75, -0.75, 0.0, 0.25, 0.5, 0.0, 0.75, 0.75, 0.0, 0.5, 0.25, 0.75, 0.75, 0.25, 0.0, -0.75, -1.0, -0.25, 0.25, -0.5, -0.5, -0.75, -0.75, 1.0, 1.0, -0.25, 1.0, 0.25, -0.5, -1.0, 0.5, -0.5, -0.25, 0.25, -0.75, -0.25, -0.75, -0.5, -0.75, 0.0, -0.25, 1.0, -0.5, 0.0, 0.0, 1.0, -1.0, 0.25, -0.75, -0.25, ]);
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device60.queue.writeBuffer(buffer603, 0, array2, 0, array2.length);
    render_bundle_encoder602.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    buffer208.destroy()
    buffer007.destroy()
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    const array11 = new Float32Array([-0.25, -1.0, 0.25, 0.5, 0.5, 0.25, 0.5, 0.5, 0.25, 1.0, 0.0, 0.5, -0.25, 0.25, -0.75, 0.25, 0.75, 0.5, -1.0, 1.0, -0.5, 0.5, 0.5, 0.75, 0.75, 0.75, -1.0, -0.25, 0.5, -0.75, -0.25, -0.25, 0.5, 0.0, -0.25, -0.75, -0.25, -0.75, 0.5, -0.5, -0.25, 0.0, 0.75, 0.25, -0.5, -0.75, 0.75, 0.25, -0.25, -0.75, 1.0, -0.25, 0.5, -0.5, 0.75, -0.5, 0.5, -0.75, -0.75, -0.25, -0.25, 1.0, 0.5, -0.25, -0.25, 0.0, 0.75, 0.5, 0.75, -0.75, 0.5, -1.0, 1.0, 1.0, -0.25, -1.0, 0.5, 0.75, -0.75, 0.25, -1.0, -1.0, -1.0, -0.25, -0.75, -0.75, -0.75, 1.0, -0.5, -0.25, 1.0, 0.25, 0.75, -0.75, -0.5, -0.25, -0.25, -1.0, -1.0, -0.25, ]);
}