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
    const array0 = new Float32Array([-1.0, 0.5, -0.75, -0.75, -0.75, 0.0, 0.0, 0.25, 1.0, 0.75, 1.0, 1.0, 0.5, 0.5, 0.25, -1.0, 0.25, 0.75, -0.75, 1.0, 1.0, 0.5, 1.0, -1.0, 0.25, -0.5, -0.5, -0.75, 0.0, 0.5, 1.0, 0.0, -1.0, 0.0, 0.0, 0.5, -0.25, 1.0, 0.75, -0.75, 0.75, -1.0, 0.0, 0.25, 1.0, 1.0, -1.0, 1.0, 0.25, 0.75, -1.0, 0.25, 0.25, -0.5, 1.0, -0.75, 1.0, 0.0, 1.0, 0.75, -0.5, 1.0, 1.0, 1.0, 0.25, -0.25, -0.75, -0.75, 0.25, -1.0, 1.0, -0.25, 1.0, 0.5, 0.25, 0.0, 0.5, -0.5, -0.5, -0.5, -0.5, -1.0, 1.0, -0.75, -1.0, -1.0, 0.25, -0.25, 0.5, 0.5, -0.25, 0.0, 0.0, -0.25, -0.25, -0.25, -1.0, 0.0, -0.5, 0.25, ]);
    const array1 = new Float32Array([0.25, -0.75, 0.25, -0.5, -0.5, 0.75, 0.75, 0.25, 0.75, -0.25, 0.0, 0.0, -0.75, 0.75, 0.25, -1.0, 0.25, -0.25, 0.75, 0.5, 1.0, 1.0, 1.0, 0.75, -1.0, -0.75, -0.75, -1.0, 0.75, 0.0, 1.0, -1.0, -0.75, 0.75, -0.5, 0.0, -0.5, -1.0, 0.25, 1.0, 0.0, 1.0, 0.25, 0.5, 0.0, -0.25, 0.5, -0.75, -0.5, 0.0, 0.75, 0.25, 1.0, 0.75, -0.25, 0.75, 0.75, 0.0, 0.25, -1.0, 0.0, 0.75, -1.0, -1.0, 0.0, -0.5, -0.5, 0.25, -1.0, 1.0, 0.0, 1.0, -0.25, -1.0, 0.75, -1.0, 1.0, 0.75, 0.0, 0.5, 1.0, -0.75, -0.5, 1.0, 0.25, 0.75, 0.0, 0.5, -0.25, -0.75, -0.75, 0.25, -1.0, 0.0, -1.0, -0.5, -0.25, -0.75, -0.5, 1.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device00.destroy();
    const array2 = new Float32Array([0.25, -1.0, -0.5, 0.25, 0.25, -1.0, -0.5, 0.25, -0.75, 0.0, 1.0, 0.0, -0.25, -0.25, -0.75, 0.75, 0.25, 0.5, 1.0, -0.25, -1.0, -1.0, -0.25, -0.5, 0.25, -1.0, 0.25, 0.0, -0.75, 0.25, 0.75, -0.25, -0.75, 0.25, 0.0, 0.0, 1.0, 0.0, -0.25, 1.0, 0.5, 1.0, 0.0, -0.25, 0.0, 0.0, -0.75, 1.0, 0.75, -0.75, -1.0, -1.0, -0.5, 1.0, 0.75, -0.75, -0.75, 0.75, 1.0, 0.75, 0.0, -0.75, -0.5, -0.5, -0.25, -0.75, 0.25, 0.0, 0.5, 0.0, 0.0, -1.0, 0.5, 0.75, 0.75, 0.25, -0.5, -0.5, -0.75, 1.0, -0.5, 1.0, 0.75, 0.5, 0.25, -0.75, -1.0, -0.5, 0.0, -1.0, 0.75, 0.75, 0.25, 0.5, -0.5, -1.0, 0.75, -0.25, -0.75, -0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    buffer301.destroy()
    
    
    device30.pushErrorScope("validation");
    
    texture301.destroy();
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device10.pushErrorScope("out-of-memory");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture302.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    texture101.destroy();
    texture102.destroy();
    texture103.destroy();
    buffer300.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    buffer100.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    texture300.destroy();
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    query101.destroy()
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    query101.destroy()
    device10.pushErrorScope("out-of-memory");
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    render_bundle_encoder302.insertDebugMarker("marker");
    device10.destroy();
    
    texture303.destroy();
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query300.destroy()
    
    buffer303.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
    query300.destroy()
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device30.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array3 = new Float32Array([0.25, 0.5, 0.5, 0.5, -0.75, -0.25, 1.0, -0.25, -0.75, 0.5, 0.0, -0.25, -1.0, 0.75, 0.5, 0.5, 1.0, 0.25, 0.25, 0.25, -1.0, -0.5, 0.5, 1.0, 0.0, -0.5, 0.25, -0.75, 0.5, 0.25, -1.0, 1.0, 0.0, 0.75, -0.75, 0.0, 0.75, -0.5, 0.5, 0.25, 0.5, -1.0, 0.0, -0.5, -0.75, -0.5, -0.5, 0.75, -0.25, 0.75, -0.75, 0.25, -0.75, 1.0, 0.5, 0.75, -1.0, 0.0, 0.0, -0.5, -0.75, -0.75, 1.0, -0.75, -0.25, -0.25, 0.0, -1.0, 0.0, 1.0, 0.5, 1.0, 0.0, 0.25, 0.25, 0.5, -0.5, 0.75, 0.75, 0.25, 0.25, 0.25, -1.0, 0.0, 0.0, -0.5, 0.0, 0.5, -0.25, -1.0, -0.25, 0.0, 0.5, 0.25, 0.25, -1.0, 0.0, 0.0, -0.75, -0.5, ]);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32uint",
        dimension: "2d"
    });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    device50.destroy();
    
    device60.pushErrorScope("out-of-memory");
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const array4 = new Float32Array([1.0, 0.25, 0.25, -0.75, -0.75, 1.0, 0.0, -1.0, -0.25, 0.25, -1.0, 0.25, -1.0, -0.75, -1.0, 0.0, -1.0, -0.25, 0.75, -0.5, 0.75, 0.75, 0.5, 0.0, 0.25, -1.0, 0.5, -0.25, -0.25, -0.5, 0.75, -0.5, -0.25, -0.75, 0.75, 0.25, 0.75, 0.75, 0.0, -0.25, 1.0, 0.5, -1.0, -1.0, -1.0, 0.0, 0.0, -0.5, 0.75, 1.0, -1.0, 0.5, -1.0, 0.75, 0.25, 0.25, 0.0, -0.75, 0.0, 1.0, -0.25, -1.0, 0.25, -0.25, 0.0, 0.75, 1.0, -1.0, 0.75, 0.25, 1.0, -0.75, -0.25, 1.0, -0.5, -0.25, -0.75, -0.25, 1.0, 1.0, -0.75, -0.5, -0.75, -0.25, 0.75, 0.75, -0.75, 0.25, 1.0, -0.25, 0.25, -1.0, 0.0, 0.5, 0.5, 1.0, -1.0, 0.75, 1.0, -1.0, ]);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    device60.pushErrorScope("out-of-memory");
    device40.destroy();
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    texture600.destroy();
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    query601.destroy()
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32float",
        dimension: "2d"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    texture601.destroy();
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device80.destroy();
    query600.destroy()
    query600.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    texture602.destroy();
    device70.pushErrorScope("out-of-memory");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query600.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    query600.destroy()
    device70.pushErrorScope("validation");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query700.destroy()
    
    
    buffer700.destroy()
    buffer600.destroy()
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query600.destroy()
    
    
    query601.destroy()
    device60.pushErrorScope("internal");
    query700.destroy()
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query601.destroy()
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    texture900.destroy();
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query601.destroy()
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    texture901.destroy();
    device60.queue.writeTexture({ texture: texture603 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    device100.pushErrorScope("validation");
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeTexture({ texture: texture603 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device60.queue.writeTexture({ texture: texture603 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture603.destroy();
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer601.destroy()
    device60.destroy();
    device90.queue.writeTexture({ texture: texture902 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer701.destroy()
    
    device90.queue.writeTexture({ texture: texture902 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    device90.queue.writeTexture({ texture: texture902 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query700.destroy()
    
    device100.pushErrorScope("validation");
    const texture903 = device90.createTexture({
        label: "texture903",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture902.destroy();
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    device70.destroy();
    
    buffer1000.destroy()
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    
    
    
    
    
    const texture_view9030 = texture903.createView({ label: "texture_view9030" });
    texture903.destroy();
    device90.pushErrorScope("internal");
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query900.destroy()
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer1001.destroy()
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query1000.destroy()
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    
    
    device90.pushErrorScope("out-of-memory");
    query900.destroy()
    const texture904 = device90.createTexture({
        label: "texture904",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device100.queue.writeTexture({ texture: texture1001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture905 = device90.createTexture({
        label: "texture905",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32sint",
        dimension: "2d"
    });
    const texture_view9040 = texture904.createView({ label: "texture_view9040" });
    
    device100.queue.writeTexture({ texture: texture1001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    query902.destroy()
    query901.destroy()
    device100.queue.writeTexture({ texture: texture1001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder1002 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1002",
        colorFormats: ["bgra8unorm"]
    });
    texture1001.destroy();
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture905.destroy();
    const array5 = new Float32Array([1.0, -0.25, -0.25, -0.75, 0.25, 1.0, 0.5, -1.0, -0.5, 1.0, -0.25, -0.5, 0.75, 1.0, 1.0, 0.25, 0.25, 0.25, 1.0, -0.75, -0.75, -1.0, 0.75, 0.5, 0.25, 0.75, -0.75, 0.25, 0.75, -0.5, -1.0, 0.5, 1.0, -0.75, 0.75, -0.5, 0.5, 0.5, 1.0, 0.0, 0.25, -0.5, 0.25, 0.0, -0.25, 0.0, 0.25, 0.5, -0.5, 0.5, 1.0, 0.25, 1.0, 0.75, -0.75, -0.75, -1.0, 0.0, 0.25, -1.0, 0.5, 0.75, -0.75, -0.25, 0.75, 1.0, -0.25, 0.75, 0.25, -0.75, -0.25, 1.0, -0.25, 0.75, 0.75, -1.0, 0.25, -0.25, 0.0, 0.25, 0.5, 0.75, -1.0, -1.0, 1.0, 1.0, 0.0, 0.0, 1.0, 0.0, -0.5, -0.25, 0.0, 0.25, -1.0, -0.5, 0.25, 0.25, 0.75, 0.25, ]);
    render_bundle_encoder900.pushDebugGroup("group_marker");
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1003 = device100.createBuffer({
        label: "buffer1003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder1001.pushDebugGroup("group_marker");
    const texture_view10001 = texture1000.createView({ label: "texture_view10001" });
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    device100.queue.writeBuffer(buffer1003, 0, array3, 0, array3.length);
    render_bundle_encoder900.insertDebugMarker("marker");
    const texture_view9041 = texture904.createView({ label: "texture_view9041" });
    
    device90.destroy();
    buffer1003.destroy()
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture1003 = device100.createTexture({
        label: "texture1003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm",
        dimension: "2d"
    });
    
    
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    const texture_view10002 = texture1000.createView({ label: "texture_view10002" });
    texture1000.destroy();
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    device100.destroy();
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device120.destroy();
    const array6 = new Float32Array([0.0, 0.0, -0.75, -0.5, 0.75, 1.0, 0.0, 0.25, 0.25, 0.5, 0.0, -1.0, 1.0, -0.75, 0.5, 0.75, 0.25, 0.5, 0.25, 0.25, -1.0, -0.5, -0.5, -0.75, -0.5, -1.0, -1.0, 0.5, 0.0, -0.75, 1.0, 0.5, 0.25, -1.0, 0.0, 0.5, -0.75, 0.0, -1.0, 0.5, -0.5, -0.75, -1.0, 0.25, -0.25, -0.75, 0.0, -0.75, 1.0, -0.75, 0.25, 0.75, 0.25, -0.75, -0.75, 0.75, 0.5, 0.5, 0.75, -1.0, 0.5, 0.0, -0.75, 0.25, -0.5, 0.0, -1.0, 1.0, 0.5, -1.0, -0.5, -0.25, -0.75, -0.25, 1.0, 0.75, 0.75, 0.5, 0.25, -0.25, -0.5, 0.0, 0.25, 0.75, -0.75, -0.5, -0.25, -0.5, 0.25, 0.75, -0.5, 1.0, 0.25, -0.75, -0.25, 0.0, 0.5, -1.0, -0.5, 0.25, ]);
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array7 = new Float32Array([1.0, 0.75, 0.75, 0.0, -1.0, 1.0, -0.5, 0.0, -1.0, -0.25, 0.5, 0.75, 0.75, -0.5, -0.25, -0.25, -0.25, -1.0, 0.75, -0.75, 0.75, -1.0, 1.0, 1.0, 0.25, -1.0, -0.5, -0.5, -1.0, 0.0, -1.0, 0.0, -1.0, -1.0, 0.5, 0.75, -1.0, 0.5, 1.0, 0.25, 0.25, -0.75, -0.75, 0.0, -0.75, 0.25, 0.25, -0.75, 1.0, -0.25, -1.0, -0.75, 0.0, -0.5, 0.5, -1.0, 0.0, 0.5, -0.5, -0.25, -0.5, 0.0, 0.75, 1.0, 0.5, -0.75, 0.5, -0.25, -0.25, 0.0, -0.5, -0.5, 0.25, 0.25, 0.5, -0.25, 0.25, -1.0, -0.25, -1.0, 0.75, 1.0, -0.5, -1.0, -0.75, 0.5, 1.0, -1.0, -0.25, 1.0, -0.25, 0.0, -0.5, -0.25, -0.75, -1.0, 0.0, 0.25, 0.0, -0.75, ]);
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    query1100.destroy()
    
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    
    const query1102 = device110.createQuerySet({
        label: "query1102",
        type: "occlusion",
        count: 32,
    });
    
    device110.destroy();
    const array8 = new Float32Array([0.5, 0.75, 1.0, -0.25, -1.0, 1.0, 0.75, 0.0, 0.75, 1.0, 0.0, 1.0, -1.0, 0.5, 1.0, 0.0, -0.25, -1.0, 0.25, 0.25, -0.75, -0.5, 0.5, 1.0, 0.5, -0.75, 0.25, -0.25, -0.25, -0.25, -0.5, 0.5, 0.25, -0.75, -0.5, -0.5, 1.0, 0.5, 1.0, 0.25, -0.75, 0.25, 0.75, 0.0, -0.25, -0.75, 0.75, -0.25, 0.5, 1.0, 0.5, 1.0, 0.5, -0.25, -0.5, 0.75, 1.0, 0.5, 0.5, 0.25, 0.75, 0.75, 0.25, 1.0, -0.75, -0.25, 1.0, 1.0, -1.0, 0.5, -1.0, 1.0, -0.25, -0.75, -0.75, 0.5, -1.0, -1.0, 1.0, -1.0, -0.25, -0.75, -0.5, 0.5, 0.5, -0.5, 1.0, -0.5, -1.0, 0.0, 0.75, 0.25, -0.25, 0.0, 0.75, 1.0, 0.0, -0.5, 0.25, 0.5, ]);
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    device130.destroy();
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const array9 = new Float32Array([0.0, 0.0, 0.5, 0.75, 0.75, 0.5, -1.0, -0.75, 0.75, 0.0, 0.75, 1.0, 1.0, 0.5, 0.75, 1.0, 0.0, 1.0, 1.0, 0.25, 0.25, 0.75, 0.0, -1.0, -0.25, 0.5, 0.25, 0.0, 0.25, -0.5, -0.75, -1.0, 1.0, -0.75, -1.0, -1.0, -1.0, 0.25, 0.5, -0.25, -0.5, 0.0, 0.75, 0.0, 0.0, 0.5, -0.25, -1.0, 0.5, 1.0, 0.75, 1.0, 0.0, -0.5, -0.75, 0.75, -0.5, 1.0, -0.5, -0.5, -1.0, 0.75, 0.0, -0.25, -1.0, -0.25, -1.0, -0.5, -0.25, 1.0, 0.0, 0.5, -0.75, -0.75, 1.0, 0.75, 0.0, -0.5, 0.5, 1.0, -0.5, 0.75, 0.5, -0.75, -0.5, 0.75, -1.0, 0.0, 1.0, 1.0, -0.75, 0.75, 0.25, 0.75, 0.25, 0.25, 0.5, 1.0, 0.0, -0.75, ]);
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    device140.pushErrorScope("internal");
    
    render_bundle_encoder1400.insertDebugMarker("marker");
    
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    
    
    
    device140.destroy();
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device150.pushErrorScope("validation");
    
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query1501 = device150.createQuerySet({
        label: "query1501",
        type: "occlusion",
        count: 32,
    });
    query1501.destroy()
    
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    device150.pushErrorScope("validation");
    device160.destroy();
    buffer1500.destroy()
    query1500.destroy()
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    query1500.destroy()
    render_bundle_encoder1500.pushDebugGroup("group_marker");
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth16unorm",
        dimension: "2d"
    });
    query1500.destroy()
    const array10 = new Float32Array([-1.0, 0.75, 0.25, -1.0, 1.0, -1.0, -0.75, -0.25, 1.0, -0.75, -0.5, -0.5, 0.25, 1.0, 0.25, 0.0, -1.0, 0.75, -0.5, -1.0, 0.25, 0.75, 0.25, 0.75, 0.0, 0.25, -0.25, -1.0, 0.5, 0.5, -0.75, -0.75, -0.25, -0.5, 0.75, 0.0, -0.75, -0.75, 0.25, -0.5, 0.25, 0.25, 0.75, -0.5, 0.25, -1.0, -0.5, 0.25, -0.75, -1.0, -0.75, -0.75, -0.25, 0.0, 0.75, -0.75, 0.25, 0.0, 0.75, 1.0, -0.75, -0.5, -0.25, -0.75, -1.0, 0.0, -1.0, 0.25, -1.0, 0.25, 0.0, 0.75, -0.5, -1.0, 0.0, 0.0, -1.0, -1.0, 1.0, -0.75, 0.75, 0.5, -0.25, 0.0, 0.5, -0.5, 0.0, -0.5, 1.0, 0.25, 0.25, 0.5, -0.25, -0.25, 0.75, 0.0, 0.0, 1.0, -0.5, -0.75, ]);
    const render_bundle_encoder1501 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1501",
        colorFormats: ["bgra8unorm"]
    });
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    device180.destroy();
    const buffer1501 = device150.createBuffer({
        label: "buffer1501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const render_bundle_encoder1502 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1502",
        colorFormats: ["bgra8unorm"]
    });
    query1501.destroy()
    const query1502 = device150.createQuerySet({
        label: "query1502",
        type: "occlusion",
        count: 32,
    });
    const texture_view15000 = texture1500.createView({ label: "texture_view15000" });
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    query1502.destroy()
    const texture1501 = device150.createTexture({
        label: "texture1501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16sint",
        dimension: "2d"
    });
    texture1501.destroy();
    const sampler1700 = device170.createSampler( { label: "sampler1700" } );
    const buffer1502 = device150.createBuffer({
        label: "buffer1502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view15001 = texture1500.createView({ label: "texture_view15001" });
    
    texture1500.destroy();
    const buffer1503 = device150.createBuffer({
        label: "buffer1503",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device170.pushErrorScope("validation");
    const query1700 = device170.createQuerySet({
        label: "query1700",
        type: "occlusion",
        count: 32,
    });
    const buffer1700 = device170.createBuffer({
        label: "buffer1700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer1701 = device170.createBuffer({
        label: "buffer1701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    buffer1501.destroy()
    
    
    buffer1503.destroy()
    buffer1502.destroy()
    buffer1700.destroy()
    
    const buffer1504 = device150.createBuffer({
        label: "buffer1504",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer1504.destroy()
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    device170.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query1701 = device170.createQuerySet({
        label: "query1701",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder1502.pushDebugGroup("group_marker");
    
    const buffer1505 = device150.createBuffer({
        label: "buffer1505",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array11 = new Float32Array([0.0, -0.5, 0.0, -0.25, 1.0, -0.5, 1.0, 0.75, 1.0, 0.5, -0.75, -0.75, -0.25, -1.0, 0.0, 0.75, -0.5, 1.0, 0.75, 0.25, -0.75, 0.0, -1.0, -0.25, -0.5, 0.0, -0.75, -0.5, -0.25, 0.0, 1.0, -1.0, 0.25, 0.75, 0.75, -0.75, 0.0, -0.25, 0.75, -0.5, 0.0, -0.25, 0.25, 0.5, -1.0, 0.5, -0.5, -0.25, 0.5, -0.75, -0.75, 0.75, -1.0, -0.75, 0.5, 1.0, -0.5, 0.0, 0.5, 1.0, 0.25, -0.25, 0.25, 0.75, 0.0, 0.0, -1.0, 0.0, -0.75, 0.75, -0.5, 0.5, 0.0, -0.75, 0.25, 1.0, 0.0, 0.75, 0.25, 1.0, 0.25, 0.75, -0.25, -0.75, 0.5, 0.75, 0.75, -0.25, 1.0, -0.5, 0.5, 0.75, -0.75, 0.5, -0.75, 0.5, -0.5, 0.25, 0.75, -0.75, ]);
    render_bundle_encoder1501.insertDebugMarker("marker");
    query1502.destroy()
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    render_bundle_encoder1501.insertDebugMarker("marker");
    const buffer1506 = device150.createBuffer({
        label: "buffer1506",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query1502.destroy()
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    
    const render_bundle_encoder1900 = device190.createRenderBundleEncoder({
        label: "render_bundle_encoder1900",
        colorFormats: ["bgra8unorm"]
    });
    const texture1502 = device150.createTexture({
        label: "texture1502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device150.queue.writeTexture({ texture: texture1502 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view15020 = texture1502.createView({ label: "texture_view15020" });
    device150.queue.writeTexture({ texture: texture1502 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1501 = device150.createSampler( { label: "sampler1501" } );
    device150.queue.writeTexture({ texture: texture1502 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array12 = new Float32Array([0.0, 0.25, -0.25, -0.25, 0.25, -0.25, -0.75, 0.25, 0.25, -1.0, -0.25, 0.5, 0.25, -1.0, 0.25, 0.5, 0.25, 0.75, 0.75, -0.25, 0.75, 0.0, 0.25, 0.0, 1.0, -1.0, 0.75, 1.0, 0.0, 0.0, -0.5, 0.75, 0.0, 0.0, -0.75, 0.25, -0.25, 0.0, 0.5, -0.25, 0.5, -0.25, -1.0, 0.75, 0.75, 1.0, -0.25, -0.75, -0.5, 0.75, 0.25, 0.5, -0.25, 0.75, 0.5, 0.5, 0.0, -0.75, 0.0, 0.75, 0.0, 0.75, -0.5, 0.25, 0.25, -0.5, 0.5, -0.25, 0.25, -1.0, 0.5, 1.0, -0.5, -0.25, -0.5, -1.0, 0.5, 0.0, 0.25, 1.0, -0.5, -0.75, 1.0, 0.0, 0.5, -0.25, -0.5, 0.25, 0.75, 1.0, -0.5, 0.0, 0.75, -1.0, -0.25, -0.5, 0.0, 0.75, 0.75, -0.75, ]);
    const sampler1900 = device190.createSampler( { label: "sampler1900" } );
    const sampler2000 = device200.createSampler( { label: "sampler2000" } );
    device150.queue.writeTexture({ texture: texture1502 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query2000 = device200.createQuerySet({
        label: "query2000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder1502.insertDebugMarker("marker");
    render_bundle_encoder1900.pushDebugGroup("group_marker");
    const sampler1901 = device190.createSampler( { label: "sampler1901" } );
    const query1503 = device150.createQuerySet({
        label: "query1503",
        type: "occlusion",
        count: 32,
    });
    const adapter21 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array13 = new Float32Array([-0.75, -0.25, 0.5, -0.5, 0.75, 0.75, -0.25, -0.75, 0.75, 1.0, -1.0, 0.5, -1.0, 0.25, 1.0, 0.75, -1.0, 0.75, 0.25, -0.25, 0.0, -0.5, 0.0, 0.5, -0.75, -0.25, 0.0, 1.0, 0.75, -0.25, 0.5, -1.0, 0.75, 0.5, 0.5, -1.0, 0.25, 0.25, 0.25, 0.25, 0.0, -0.75, -0.5, 0.25, -0.75, -0.5, -0.75, -0.25, 0.75, 0.0, -0.5, 0.5, 0.5, 0.0, -1.0, -1.0, -0.5, 1.0, 1.0, 0.5, -0.25, 0.5, 0.0, -0.5, -1.0, -0.25, 0.5, -0.25, -1.0, 1.0, 0.0, 1.0, 0.0, 0.0, 0.5, 0.0, -0.5, 0.5, 0.25, -1.0, 0.5, 0.25, 0.0, 0.5, 0.0, 0.5, -0.75, 0.75, -0.5, -1.0, -1.0, -0.25, -1.0, 1.0, -0.25, -0.5, -0.75, 0.0, 0.75, 0.5, ]);
    device200.destroy();
    const sampler1502 = device150.createSampler( { label: "sampler1502" } );
    
    device150.queue.writeTexture({ texture: texture1502 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer1701.destroy()
    query1700.destroy()
    render_bundle_encoder1900.insertDebugMarker("marker");
    
    buffer1506.destroy()
    device150.queue.writeTexture({ texture: texture1502 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device150.queue.writeTexture({ texture: texture1502 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer1507 = device150.createBuffer({
        label: "buffer1507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device150.queue.writeTexture({ texture: texture1502 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1900.insertDebugMarker("marker");
    buffer1507.destroy()
    device150.queue.writeTexture({ texture: texture1502 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query1701.destroy()
    device150.queue.writeTexture({ texture: texture1502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device170.destroy();
    const texture_view15021 = texture1502.createView({ label: "texture_view15021" });
    device150.queue.writeTexture({ texture: texture1502 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1900.insertDebugMarker("marker");
    
    const query1900 = device190.createQuerySet({
        label: "query1900",
        type: "occlusion",
        count: 32,
    });
    device150.queue.writeTexture({ texture: texture1502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device150.pushErrorScope("internal");
    device150.queue.writeTexture({ texture: texture1502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query1501.destroy()
    const texture_view15022 = texture1502.createView({ label: "texture_view15022" });
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    device150.queue.writeTexture({ texture: texture1502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query2100 = device210.createQuerySet({
        label: "query2100",
        type: "occlusion",
        count: 32,
    });
    const sampler2100 = device210.createSampler( { label: "sampler2100" } );
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}