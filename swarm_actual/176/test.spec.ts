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
    const array0 = new Float32Array([0.25, -0.25, 0.25, -0.75, 1.0, -0.25, 0.5, -0.5, 1.0, 0.5, 0.5, -1.0, -0.5, 0.75, -0.25, 0.5, 0.5, -0.75, 0.75, 0.75, 0.5, 1.0, 0.5, 0.25, -0.5, 0.5, 1.0, 0.0, 0.0, 0.5, 0.5, 1.0, 1.0, 0.75, -0.25, -0.75, 0.25, -0.5, 1.0, -1.0, 0.25, -1.0, 0.25, -0.75, 0.25, 0.5, -1.0, -1.0, 0.0, -1.0, 1.0, 0.0, -1.0, 0.25, -0.5, 0.75, 0.75, 0.25, -1.0, -1.0, 0.25, -0.5, 1.0, 0.5, -1.0, -0.75, 0.25, 0.0, -0.25, -0.25, 0.25, -1.0, 0.0, -0.5, 0.75, -0.25, -1.0, 1.0, 1.0, -1.0, -1.0, 0.0, 0.75, 0.75, 1.0, -0.5, -0.75, -0.25, -0.5, 1.0, 1.0, 0.0, 0.25, -0.5, -0.75, -0.5, 1.0, 0.5, 0.0, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array1 = new Float32Array([-0.5, 0.75, 1.0, 1.0, -0.5, 0.75, 0.75, -1.0, 0.25, 0.75, -0.5, 1.0, -0.25, -0.5, 0.0, 0.0, -1.0, -0.75, 0.5, -0.5, -1.0, 1.0, -0.5, 0.0, 0.75, -0.5, 0.5, -1.0, -0.5, 0.0, 0.0, -0.5, 0.75, -0.75, -0.5, 0.5, 0.5, 0.5, -0.75, 0.0, -0.5, 0.75, 1.0, 0.25, 0.25, -0.25, -1.0, -0.5, -0.25, 0.0, -0.5, -0.75, 0.0, 0.25, 0.75, -1.0, -1.0, 0.0, -1.0, -1.0, -0.25, 0.75, 0.5, 0.75, 1.0, 0.75, 1.0, 0.25, -1.0, 1.0, 0.0, 0.5, 0.0, 0.25, 0.25, -0.75, 1.0, 1.0, 0.75, 0.25, -0.75, -1.0, -0.25, -0.25, -0.75, -1.0, -0.5, -1.0, 0.25, -0.75, -1.0, 0.5, 0.75, 0.5, 0.0, 0.5, 0.25, 0.75, 0.0, 0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer000.destroy()
    device00.destroy();
    const array2 = new Float32Array([1.0, 0.25, -0.75, 0.25, 1.0, 1.0, 0.25, -0.5, -0.5, 0.5, -0.5, 0.0, -0.25, 0.5, -0.5, 0.75, -0.75, 0.5, 0.0, -0.25, 1.0, -1.0, 0.0, -0.75, 0.5, -0.75, -0.5, -0.5, 0.75, -0.25, -0.75, 0.5, 1.0, 0.5, -0.25, 0.25, 0.25, 1.0, -1.0, 0.5, 0.5, 0.75, 1.0, -0.5, -1.0, -0.75, 0.25, 0.25, -1.0, 0.0, 0.0, 0.5, 0.75, 0.0, 1.0, 0.0, -0.75, 0.75, 0.25, -1.0, -1.0, -1.0, 1.0, 1.0, 0.75, 0.5, -0.25, -0.75, -0.25, 0.75, 1.0, -1.0, 0.75, -0.5, 0.75, -0.75, 0.5, -0.5, -0.75, 1.0, -0.5, 0.5, 0.75, 0.75, -0.75, 0.0, 0.25, 0.0, 0.0, 0.25, -0.75, -0.5, 0.0, -0.25, 0.75, -1.0, 0.5, -0.75, 0.0, -0.25, ]);
    
    const array3 = new Float32Array([-0.5, -0.5, 0.75, -0.75, 1.0, 0.75, 0.25, 1.0, 0.5, 0.75, -0.75, -1.0, 0.5, -0.75, -1.0, 0.5, -0.75, 0.25, 0.25, 0.25, 0.75, 0.75, 0.5, 0.5, 0.5, 0.25, -0.5, 1.0, 0.25, 0.5, 0.25, 1.0, -0.5, -0.75, -1.0, 0.25, -0.25, 0.25, -0.5, -0.25, -0.5, 0.75, -1.0, 0.5, 0.0, 0.0, 1.0, 0.5, -0.5, -1.0, -0.25, 0.0, -0.5, 0.0, -0.5, 0.0, 0.5, 0.75, 0.25, -1.0, -0.75, 1.0, 0.0, -0.75, 0.0, 0.25, 0.5, 0.75, 0.75, 0.75, -0.75, 0.75, 0.75, -1.0, 0.25, -1.0, -0.5, 0.0, -0.25, 0.0, 0.75, -0.75, -1.0, -1.0, 1.0, 0.0, 0.75, 0.75, 0.0, -0.75, -0.5, -0.25, 1.0, -1.0, -0.25, -1.0, -1.0, -0.75, -0.25, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device10.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const array4 = new Float32Array([-0.75, 1.0, -0.75, 0.75, 0.25, -0.25, 0.25, 0.25, 0.5, 0.5, 0.25, -1.0, 0.75, 0.25, -0.5, 0.75, 0.0, -0.75, -1.0, 0.0, 1.0, 0.0, -0.75, 0.25, -1.0, -0.75, 0.25, -1.0, -0.25, 1.0, 0.25, 1.0, -0.75, 1.0, 0.75, -0.5, -1.0, -1.0, 0.75, 0.25, 0.25, -0.75, 0.0, -0.25, 1.0, -1.0, -1.0, 0.75, 0.25, 0.5, 1.0, 0.5, 0.0, -1.0, -0.25, 0.25, 0.75, -0.75, -0.5, 0.5, 0.25, 0.0, -0.25, 0.25, 1.0, 0.25, 0.25, 0.5, 0.0, 0.25, -0.5, -0.5, 1.0, -1.0, 0.5, -0.75, 0.75, 0.0, -0.25, 1.0, 0.0, 0.75, 0.75, -0.25, 0.75, -0.5, -1.0, -0.25, -1.0, 0.5, -0.5, 0.75, -0.75, -0.75, -0.25, -0.5, 0.5, 1.0, 0.5, -1.0, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device20.destroy();
    
    
    const array5 = new Float32Array([-1.0, 0.0, 0.25, -0.5, 0.5, 0.75, -0.5, 1.0, -0.25, -0.5, -0.75, 0.0, -0.25, -1.0, -0.25, 0.5, 1.0, 0.75, 0.0, 0.5, -0.25, -1.0, -0.5, 0.25, -1.0, -0.5, 0.5, 0.0, -1.0, 0.0, 0.5, 1.0, -1.0, 0.25, 0.0, 1.0, 0.25, 0.0, -0.5, 1.0, -1.0, -0.5, 1.0, -0.5, -1.0, -0.25, 1.0, -0.75, 0.75, 0.0, -0.5, -1.0, -0.25, 0.0, -0.25, 0.5, 0.5, -0.25, 1.0, -1.0, 0.5, 0.5, 1.0, -0.75, 0.25, 0.75, 0.75, -0.25, 0.5, -1.0, -0.5, 1.0, -0.5, 0.5, 0.5, 0.5, -1.0, 0.25, 0.0, -0.5, -0.5, -0.25, 0.75, -0.25, 0.0, 0.5, -0.75, 0.75, 0.25, 0.0, 1.0, 0.25, -0.5, -0.25, 0.25, -0.25, 0.0, 0.75, 0.75, -0.75, ]);
    
    const array6 = new Float32Array([-1.0, 0.5, -0.5, -0.5, 0.75, 0.75, 0.75, 0.5, -0.25, 0.75, 1.0, 0.5, 0.75, 0.75, -0.5, 0.5, -0.75, -1.0, -0.5, -1.0, 0.25, -1.0, 0.0, 0.5, 0.25, 0.5, 0.5, 0.75, 0.25, 0.5, 0.5, 0.5, 1.0, -1.0, -1.0, 0.5, -0.5, -0.5, 0.25, 0.0, 0.25, -0.25, 0.75, 0.5, 0.5, 0.0, -0.5, -0.5, -0.25, -0.5, -1.0, -0.25, -1.0, 0.0, 0.25, -1.0, -0.25, -0.25, -0.25, -0.75, 0.5, -0.5, -0.25, 0.0, 0.0, -1.0, 0.25, 0.25, -0.5, -0.25, -0.75, 0.75, 0.5, -0.5, -0.25, 0.75, -1.0, 1.0, 0.0, 0.5, 0.25, 0.5, 1.0, 0.75, 0.75, -1.0, 0.5, -0.75, 0.25, -1.0, -0.25, 0.25, -1.0, 0.5, -0.25, 1.0, -0.25, -0.25, 0.25, -0.75, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.pushErrorScope("internal");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const array7 = new Float32Array([0.25, 0.5, 0.5, -1.0, 0.75, -1.0, 0.25, -0.75, -0.5, 0.25, -0.25, 0.0, 0.0, -0.5, -0.25, -0.75, -1.0, 0.0, -0.5, 0.0, 0.25, 0.25, -0.5, 1.0, -0.5, 0.0, -0.25, 0.5, 0.25, 1.0, 0.5, -0.25, 1.0, 0.5, 1.0, 0.0, -0.25, 0.0, 0.5, 1.0, 0.25, 0.75, -1.0, 0.5, -0.75, 0.25, -0.75, 0.0, -0.5, -0.25, -1.0, -0.75, 0.25, -0.25, 0.75, -0.5, 0.75, -0.75, -0.25, -0.5, 0.5, 0.25, -0.5, 1.0, 0.5, -0.75, -0.25, 1.0, -1.0, -1.0, 0.0, 0.75, -0.25, 0.25, 0.75, 0.75, -0.5, -0.75, -0.25, -0.25, 0.5, -0.5, -0.75, 1.0, -0.5, 0.5, 1.0, -0.5, 0.75, -0.25, 0.5, 0.5, 0.5, 0.0, 0.25, -0.75, -0.25, -1.0, 0.0, 0.25, ]);
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const array8 = new Float32Array([-0.5, 0.5, -1.0, 0.75, 1.0, -0.75, -0.5, -1.0, 0.5, -1.0, 0.5, 0.0, 0.0, -0.25, -0.25, 0.25, 1.0, 0.0, -1.0, -0.75, -1.0, 0.75, 0.25, -0.5, -1.0, -0.75, 0.5, -1.0, -0.75, -0.25, -0.25, -1.0, 0.0, -0.5, -0.75, 0.0, 0.75, -0.5, 0.0, 0.5, -0.5, 1.0, 1.0, 1.0, 0.5, -1.0, 0.75, -0.5, -0.25, -0.75, 0.0, 0.75, 0.5, 1.0, -1.0, 0.0, 1.0, 0.5, 1.0, -0.5, -1.0, 0.0, -1.0, -0.5, -1.0, -0.5, 0.5, -0.25, -0.5, 0.25, 0.5, -0.75, -1.0, -0.75, 0.0, 0.25, -0.75, 0.75, -0.25, 0.5, 0.25, -0.25, 0.5, 0.25, 0.0, 0.75, 0.25, -0.75, 0.75, 0.0, -0.25, 0.75, 0.25, 0.25, 0.0, 0.25, -1.0, -0.5, 0.75, 0.5, ]);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device60.destroy();
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer300.destroy()
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer302.destroy()
    
    buffer700.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device70.pushErrorScope("out-of-memory");
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    
    buffer301.destroy()
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32uint",
        dimension: "2d"
    });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device90.destroy();
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    device70.pushErrorScope("internal");
    buffer303.destroy()
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array9 = new Float32Array([-0.5, -0.5, 1.0, 0.75, -1.0, 0.5, 0.5, 0.0, 1.0, 0.0, -0.75, 1.0, 0.25, 0.25, 1.0, -0.75, -0.75, -1.0, 0.75, 0.75, -0.5, 0.75, -0.5, 0.0, -0.25, 0.75, -0.75, 0.75, -0.25, -0.5, 1.0, 0.0, 0.75, 0.0, -1.0, -0.25, -0.5, -0.5, 0.25, 0.75, 0.5, 1.0, 0.0, 0.25, -0.5, -1.0, 1.0, 0.75, 0.75, -0.25, -1.0, -0.75, -0.5, -1.0, 0.5, -0.75, 1.0, -0.75, -1.0, -0.5, -0.5, 0.5, 1.0, -0.25, -0.5, 0.0, 0.25, 0.75, -0.25, -1.0, -0.25, 0.5, -1.0, 0.75, 0.25, -0.75, 0.75, 1.0, 0.5, 0.0, 1.0, 0.0, -0.25, 0.0, -1.0, -1.0, 0.5, -0.5, 1.0, -1.0, 0.5, 0.0, 1.0, 0.0, -0.75, 0.75, -1.0, 0.5, 0.75, 0.25, ]);
    
    render_bundle_encoder702.insertDebugMarker("marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device70.queue.writeBuffer(buffer702, 0, array4, 0, array4.length);
    
    buffer701.destroy()
    
    device80.destroy();
    
    device70.queue.writeBuffer(buffer702, 0, array1, 0, array1.length);
    render_bundle_encoder702.insertDebugMarker("marker");
    device70.queue.writeBuffer(buffer702, 0, array7, 0, array7.length);
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    device70.queue.writeBuffer(buffer702, 0, array8, 0, array8.length);
    render_bundle_encoder701.insertDebugMarker("marker");
    
    device70.queue.writeBuffer(buffer703, 0, array3, 0, array3.length);
    device70.queue.writeBuffer(buffer702, 0, array2, 0, array2.length);
    device70.queue.writeBuffer(buffer702, 0, array6, 0, array6.length);
    device70.queue.writeBuffer(buffer703, 0, array5, 0, array5.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    device70.queue.writeBuffer(buffer702, 0, array3, 0, array3.length);
    buffer703.destroy()
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder701.insertDebugMarker("marker");
    
    device70.queue.writeBuffer(buffer702, 0, array5, 0, array5.length);
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder701.insertDebugMarker("marker");
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    
    buffer702.destroy()
    render_bundle_encoder701.insertDebugMarker("marker");
    
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    buffer704.destroy()
    const array10 = new Float32Array([-0.75, -1.0, -1.0, 0.75, 0.25, -0.75, 1.0, 0.25, 1.0, -0.75, -0.75, 0.75, -1.0, 0.5, -0.75, -0.75, 0.75, -0.5, -0.25, -0.25, 0.5, 0.5, -1.0, 0.5, -1.0, 0.5, 0.75, 0.5, -0.5, -0.5, 0.5, -1.0, 0.0, 0.25, 1.0, -0.5, -0.75, 1.0, 1.0, 0.0, 0.5, -0.5, -0.25, 0.75, -0.5, 0.5, 0.5, 1.0, 0.5, -0.5, -0.25, -0.5, 0.5, -0.25, 0.0, 0.75, 0.75, -0.5, -0.5, -0.25, 0.5, 0.75, -0.75, 0.75, 1.0, 1.0, -0.75, -0.5, 0.0, 0.25, -1.0, 0.25, -0.5, -0.75, 0.75, 0.0, -0.25, -1.0, 0.25, 0.25, -0.5, 0.75, -1.0, -0.25, 0.75, 0.5, -0.75, 1.0, -0.75, -0.5, -1.0, 1.0, -0.75, -0.75, -0.25, 1.0, -0.75, 0.75, -0.75, 0.0, ]);
    render_bundle_encoder700.insertDebugMarker("marker");
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.pushErrorScope("internal");
    
    
    
    
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder700.insertDebugMarker("marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeBuffer(buffer304, 0, array6, 0, array6.length);
    
    device40.destroy();
    
    device30.queue.writeBuffer(buffer304, 0, array10, 0, array10.length);
    device30.queue.writeBuffer(buffer304, 0, array5, 0, array5.length);
    render_bundle_encoder700.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer304, 0, array7, 0, array7.length);
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder702.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer304, 0, array0, 0, array0.length);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer304, 0, array7, 0, array7.length);
    render_bundle_encoder302.insertDebugMarker("marker");
    buffer304.destroy()
    
    render_bundle_encoder702.pushDebugGroup("group_marker");
    const query705 = device70.createQuerySet({
        label: "query705",
        type: "occlusion",
        count: 32,
    });
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const query706 = device70.createQuerySet({
        label: "query706",
        type: "occlusion",
        count: 32,
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("validation");
    render_bundle_encoder301.insertDebugMarker("marker");
    buffer305.destroy()
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const array11 = new Float32Array([0.0, -0.25, -0.75, 0.25, -0.25, 0.5, 0.5, -1.0, 0.5, 0.5, 0.75, 0.0, 0.25, 0.0, -0.75, -0.25, -0.75, -0.25, -0.25, -0.5, -0.75, -0.75, 0.5, -1.0, -0.75, -0.75, -1.0, -0.75, 0.25, -0.25, -0.5, -0.5, 1.0, 0.0, -0.75, 1.0, -0.75, -1.0, 0.5, -0.5, 0.0, 0.0, 0.5, -0.25, 0.75, -0.25, -0.5, 0.0, -0.75, 0.75, 0.25, -0.75, -1.0, 1.0, -0.25, -0.25, 0.5, -0.5, 0.75, 0.5, -0.25, -0.5, -0.5, 1.0, 0.25, -1.0, 0.5, 0.75, -0.75, 0.5, 0.0, 0.5, -0.75, 1.0, 0.0, -0.25, 0.0, 0.75, 0.75, 0.0, -0.75, -0.25, -0.25, 0.5, 0.5, -0.5, 1.0, 0.5, -1.0, 0.0, 0.0, 0.0, -0.25, -0.75, -1.0, 1.0, -0.25, 0.75, 0.25, 1.0, ]);
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder702.insertDebugMarker("marker");
    
    render_bundle_encoder700.insertDebugMarker("marker");
    const texture_view7002 = texture700.createView({ label: "texture_view7002" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture302 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device30.queue.writeBuffer(buffer306, 0, array4, 0, array4.length);
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer306, 0, array6, 0, array6.length);
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device30.queue.writeTexture({ texture: texture302 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    device30.queue.writeBuffer(buffer306, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer306, 0, array5, 0, array5.length);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array12 = new Float32Array([1.0, -0.25, 0.5, 0.5, -0.75, 0.25, -0.75, 0.0, 0.75, 0.25, -0.75, 1.0, 0.5, 0.75, 1.0, -0.75, -1.0, 0.75, -1.0, -0.25, 1.0, -0.25, 0.5, -0.25, -1.0, -0.75, -0.25, -0.5, 0.25, 1.0, -1.0, -1.0, 0.5, 0.0, -0.5, -0.5, 1.0, 0.25, 0.0, -0.5, -0.5, -0.5, 0.0, 0.0, -1.0, -0.75, -0.25, -1.0, 1.0, -0.25, 1.0, 0.5, 0.0, 0.75, 0.25, -0.75, 0.25, 0.5, -1.0, -0.5, -0.5, 1.0, 0.0, -0.75, -0.25, -0.5, 0.25, 0.5, -1.0, 0.0, 0.25, 0.75, -1.0, -0.5, 0.0, 0.0, -0.5, -0.75, -0.5, -0.75, 0.0, -0.75, 1.0, 0.5, -0.75, -0.75, -0.25, 0.0, -0.5, -0.5, -1.0, -0.25, -0.25, 0.0, 0.5, 0.75, 0.75, 0.25, 0.0, 0.75, ]);
    
    device30.queue.writeBuffer(buffer306, 0, array12, 0, array12.length);
    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer307.destroy()
    
    
    device70.destroy();
    
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeBuffer(buffer306, 0, array12, 0, array12.length);
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    device30.queue.writeTexture({ texture: texture302 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    
    
    device30.queue.writeTexture({ texture: texture301 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("internal");
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer306, 0, array9, 0, array9.length);
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer306.destroy()
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture302 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device30.queue.writeTexture({ texture: texture302 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    device30.queue.writeTexture({ texture: texture302 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture302 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const texture_view3041 = texture304.createView({ label: "texture_view3041" });
    device30.queue.writeTexture({ texture: texture302 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3051 = texture305.createView({ label: "texture_view3051" });
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    device30.queue.writeTexture({ texture: texture302 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device30.pushErrorScope("validation");
    
    
    buffer308.destroy()
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array13 = new Float32Array([0.0, -1.0, -0.5, -0.25, 0.0, -0.5, 0.5, -0.75, 0.25, -0.75, 0.25, -1.0, 0.0, 0.0, -0.5, 0.75, -0.25, 0.75, 0.0, 0.75, 0.5, 0.0, 0.5, -0.25, -0.5, -0.5, 1.0, 1.0, -1.0, 0.5, 1.0, 0.5, -0.5, 0.0, 0.75, 1.0, -1.0, 0.75, 0.5, -0.25, -0.75, 0.75, -1.0, -0.25, -0.75, 0.0, 0.75, -0.5, -0.25, -0.25, -0.75, 1.0, 0.75, 0.0, -0.25, -0.75, 0.5, 1.0, 1.0, -0.5, -1.0, -0.5, 0.5, 0.75, 0.5, -0.5, -1.0, 1.0, 0.0, 0.25, 0.75, 0.75, -0.25, -0.75, 0.25, -0.75, -1.0, 0.5, -0.5, 1.0, -0.25, 1.0, -0.25, 0.5, 0.0, -0.75, -0.25, 0.75, 0.0, -1.0, 0.5, 0.25, 0.25, -0.25, -0.75, 0.25, 0.25, 0.75, -0.25, 0.75, ]);
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.queue.writeTexture({ texture: texture302 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3013 = texture301.createView({ label: "texture_view3013" });
    
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("out-of-memory");
    
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder302.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture302 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture302 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3032 = texture303.createView({ label: "texture_view3032" });
    render_bundle_encoder302.insertDebugMarker("marker");
    const texture_view3052 = texture305.createView({ label: "texture_view3052" });
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture302 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture301 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("validation");
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture_view3023 = texture302.createView({ label: "texture_view3023" });
    
    
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.queue.writeTexture({ texture: texture302 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture307 = device30.createTexture({
        label: "texture307",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view3060 = texture306.createView({ label: "texture_view3060" });
    const texture_view3014 = texture301.createView({ label: "texture_view3014" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3024 = texture302.createView({ label: "texture_view3024" });
    device30.queue.writeTexture({ texture: texture302 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3070 = texture307.createView({ label: "texture_view3070" });
    device30.queue.writeTexture({ texture: texture301 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
}