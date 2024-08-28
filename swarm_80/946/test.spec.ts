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
    
    const array0 = new Float32Array([0.5, 0.5, 0.75, 0.25, -1.0, -0.25, 1.0, 0.25, 1.0, -0.5, 0.75, 0.0, -1.0, 0.0, 0.5, -1.0, 0.25, -1.0, 0.5, 1.0, 0.0, -0.75, -0.25, -1.0, -0.75, -1.0, -0.75, 0.5, 0.25, -0.5, 1.0, -1.0, -0.75, 0.5, -0.75, -0.5, -0.5, -0.25, 0.25, -1.0, 0.5, -0.5, -0.5, 0.25, -1.0, -0.5, 0.5, -0.25, -0.25, 0.25, 1.0, -0.75, -0.25, 0.0, 0.25, -0.5, -0.25, 1.0, -0.75, -0.5, 0.5, 0.25, 0.25, 1.0, -0.5, 0.0, -0.5, 0.25, 0.25, -0.75, 1.0, -0.5, -0.75, -0.75, -0.25, -0.75, -0.25, 0.0, -0.25, -0.5, 1.0, 0.0, -0.25, 0.75, -0.75, 0.5, -0.5, -1.0, 0.75, 1.0, 0.5, 1.0, 0.5, 0.0, 0.5, 0.75, 0.5, -0.75, 0.75, -0.25, ]);
    const array1 = new Float32Array([-0.5, 0.5, 0.5, 0.5, 0.25, -0.25, -0.75, 0.75, 1.0, 1.0, 0.75, 0.75, 0.5, -0.75, 1.0, -1.0, -0.25, 0.5, -1.0, -0.5, -0.25, 0.5, -0.25, 0.25, -1.0, -0.25, 0.75, -0.5, -0.75, 0.75, 0.75, -0.5, -0.5, 1.0, 1.0, 1.0, 0.75, -0.75, -0.25, 0.0, -0.25, -0.25, 0.75, 0.5, 0.75, 0.5, -0.25, 1.0, 1.0, 0.75, 0.5, -0.5, 0.0, 0.0, 0.5, 0.5, 0.5, 0.5, 0.0, -1.0, -0.25, 0.75, 0.0, 1.0, 0.5, 0.75, 0.75, -0.75, -0.5, 0.0, -1.0, 0.25, 0.5, -0.75, -0.25, 0.25, -1.0, 0.0, 0.75, 0.25, -1.0, 0.5, 0.5, 0.0, 0.75, -0.25, -0.75, -0.25, 0.0, 0.5, 1.0, -1.0, 1.0, 0.75, 1.0, 0.25, 0.5, 0.75, -1.0, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([0.5, -1.0, 0.0, -0.5, 1.0, 0.75, 0.75, 1.0, -0.5, -0.25, 1.0, 0.75, -0.75, -0.5, -0.25, -1.0, 0.0, -0.5, -1.0, -0.25, 0.25, -0.75, 1.0, 0.0, -0.75, -1.0, -1.0, 0.0, 0.75, 0.5, -0.5, 0.5, 0.0, -0.5, 0.5, 0.25, 0.75, 1.0, 0.25, 0.0, 0.75, 0.75, -0.25, -1.0, 0.5, -1.0, 0.75, 0.0, 1.0, 0.75, -0.5, 1.0, 1.0, 1.0, 0.0, 1.0, 1.0, -0.5, 0.5, -1.0, -1.0, 0.25, 0.0, -0.75, 0.25, 0.75, -0.25, 1.0, 0.75, -0.75, -0.25, 0.25, -1.0, 0.25, 0.25, 0.75, 0.75, -0.5, 0.75, 0.0, -0.75, 1.0, 0.75, 0.0, 1.0, -0.5, 0.25, -0.25, 1.0, 0.25, -0.25, 1.0, -0.75, 0.25, 1.0, 0.0, 0.0, 0.75, 0.25, 0.75, ]);
    
    const array3 = new Float32Array([0.0, 1.0, -1.0, -0.75, 0.75, 1.0, -1.0, 0.75, 0.0, -0.25, 0.75, 0.0, 0.75, 0.5, 1.0, -1.0, 1.0, 0.75, 1.0, 1.0, 1.0, 1.0, -0.5, 0.25, 1.0, -0.75, 0.25, -0.5, -0.75, -0.5, 0.75, -0.5, 1.0, 1.0, 0.0, 0.75, 0.25, 0.0, 0.25, 0.0, -0.75, 0.0, 0.5, 0.25, -0.25, 0.25, 0.5, 0.75, -0.5, 0.25, 0.0, 1.0, 0.25, -1.0, 0.75, -0.75, 0.75, 1.0, -1.0, -1.0, 0.25, 0.75, 1.0, 0.25, 0.5, -0.75, 0.0, 0.75, -1.0, 0.0, 1.0, 0.0, -0.5, -0.5, -0.5, 0.25, 1.0, 1.0, 0.75, -1.0, -0.5, 0.5, -0.5, 0.75, -0.75, 0.0, 0.75, -0.75, 1.0, -0.75, 0.5, 0.25, -0.25, 0.25, 0.75, 0.0, 0.5, -0.75, -0.75, -0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("validation");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8sint",
        dimension: "2d"
    });
    texture100.destroy();
    device10.pushErrorScope("internal");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8uint",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer100.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("out-of-memory");
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8unorm",
        dimension: "2d"
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture202.destroy();
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.pushErrorScope("validation");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    buffer200.destroy()
    texture102.destroy();
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    texture000.destroy();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    texture101.destroy();
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer101.destroy()
    render_bundle_encoder100.popDebugGroup();
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    texture203.destroy();
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32uint",
        dimension: "2d"
    });
    buffer102.destroy()
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    buffer103.destroy()
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    texture001.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture201.destroy();
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    texture200.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer201.destroy()
    
    device30.destroy();
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    texture103.destroy();
    
    texture204.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    device00.pushErrorScope("validation");
    
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    buffer104.destroy()
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    buffer001.destroy()
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device00.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_bundle_encoder200.popDebugGroup();
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device40.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device60.pushErrorScope("out-of-memory");
    
    
    
    
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    
    device20.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer500.destroy()
    
    device10.destroy();
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer501.destroy()
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_bundle_encoder600.popDebugGroup();
    render_bundle_encoder500.popDebugGroup();
    
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture602.destroy();
    buffer502.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    const array4 = new Float32Array([-0.25, 0.5, 0.5, 0.25, 0.5, 0.0, 0.5, -0.75, 0.5, -0.25, 1.0, -0.75, 0.0, 1.0, 0.0, 0.0, 1.0, -0.5, 0.0, -1.0, 0.5, -0.75, 0.0, 0.0, 0.5, -0.25, 1.0, -0.25, -1.0, 0.5, 1.0, 0.75, 0.75, 0.75, 0.0, 0.25, -1.0, 0.75, -1.0, -0.25, 0.0, 0.0, -0.75, -0.75, 1.0, -0.25, -0.25, -1.0, -0.5, -0.25, -0.75, -0.25, 0.0, -0.5, 1.0, -0.75, -0.5, 0.5, -0.5, 0.0, 0.5, -0.25, 1.0, 0.5, 0.0, -0.75, 0.25, 1.0, 0.75, -0.5, 0.75, -0.5, 0.25, 1.0, -0.5, -1.0, 0.75, 0.5, 0.25, -0.5, 0.75, -0.75, 0.25, -0.75, -0.25, 0.25, -0.5, 0.0, 0.25, 0.0, 0.25, -0.75, 0.0, 0.25, 0.25, -0.75, -0.5, -0.75, -0.25, 0.5, ]);
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    texture600.destroy();
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    device50.pushErrorScope("validation");
    texture500.destroy();
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    
    device60.pushErrorScope("internal");
    
    device50.queue.writeBuffer(buffer503, 0, array4, 0, array4.length);
    
    const array5 = new Float32Array([1.0, 0.75, -0.25, -1.0, 1.0, 0.0, 0.25, 0.0, 0.75, -0.75, 0.25, 0.5, -0.75, -1.0, -0.75, -0.75, -0.25, 0.75, 0.5, -0.5, -0.25, -0.5, 1.0, 0.0, -0.75, -0.75, 1.0, -0.25, -0.25, -0.5, -1.0, 0.0, -1.0, -0.25, 0.5, 0.5, -1.0, -0.5, -0.25, -0.25, 1.0, 0.5, -0.75, 1.0, -0.5, 0.75, -0.75, -0.25, -0.75, 1.0, -0.75, -1.0, -1.0, -0.75, 1.0, 0.75, -0.75, -0.5, -0.75, -1.0, -1.0, 0.25, 1.0, 1.0, -0.5, 0.0, -0.5, 0.5, -0.75, 0.5, -1.0, -1.0, 0.75, 0.25, 1.0, 0.0, -1.0, -0.5, -0.75, -0.75, -0.5, 0.5, -0.75, -1.0, -1.0, 1.0, -1.0, -0.75, -0.25, -0.25, 0.0, 1.0, 1.0, 0.0, 0.25, -0.75, -1.0, 0.25, -0.25, 0.0, ]);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    render_bundle_encoder601.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    buffer601.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder600.popDebugGroup();
    render_bundle_encoder601.popDebugGroup();
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    device70.destroy();
    device60.destroy();
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    device50.queue.writeBuffer(buffer503, 0, array3, 0, array3.length);
    
    
    
    
    device50.queue.writeBuffer(buffer503, 0, array2, 0, array2.length);
    device50.queue.writeBuffer(buffer503, 0, array1, 0, array1.length);
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device50.queue.writeBuffer(buffer503, 0, array5, 0, array5.length);
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer503, 0, array3, 0, array3.length);
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder500.popDebugGroup();
    
    
    
    
    
    
    
    
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    
    device50.queue.writeBuffer(buffer503, 0, array5, 0, array5.length);
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer503.destroy()
    
    
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array6 = new Float32Array([-0.25, -0.75, -0.25, -0.5, -0.25, -1.0, -0.5, 0.25, -0.25, 0.5, -1.0, -0.5, -0.5, 0.25, 0.0, -0.5, -0.75, 0.75, -0.5, 0.25, -0.5, 0.75, -0.25, -1.0, -0.75, -0.75, -1.0, 1.0, -0.5, -0.75, 0.5, -0.25, 1.0, 0.0, -0.75, 0.75, -0.25, 0.0, 0.5, 0.5, 1.0, 0.0, -0.25, 0.0, 0.5, -0.5, 0.5, -0.5, -1.0, 0.25, 1.0, 0.0, 0.25, 0.0, -0.25, 1.0, -1.0, -0.75, 0.0, 1.0, 0.25, -0.25, -0.25, -0.25, -0.75, -0.5, -0.75, -1.0, -0.75, 0.25, -0.25, -0.75, 0.5, 0.75, 0.5, -0.25, -0.5, -0.25, -1.0, 0.25, 0.0, 0.25, 0.5, -1.0, -0.5, -1.0, 0.5, 1.0, 0.5, 0.25, -0.5, 0.25, 0.0, 0.0, 0.5, -0.25, -0.75, -0.25, 0.0, 0.75, ]);
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    render_bundle_encoder501.popDebugGroup();
    
    buffer506.destroy()
    
    
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    texture502.destroy();
    
    
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    buffer507.destroy()
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    texture800.destroy();
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    buffer504.destroy()
    
    device80.pushErrorScope("internal");
    device50.pushErrorScope("validation");
    render_bundle_encoder501.insertDebugMarker("marker");
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    texture501.destroy();
    render_bundle_encoder500.popDebugGroup();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device50.pushErrorScope("internal");
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
    
    
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder502.insertDebugMarker("marker");
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer508.destroy()
    
    const array7 = new Float32Array([1.0, 0.75, -1.0, -0.5, -0.25, 1.0, 0.0, -1.0, -0.75, 0.25, 0.5, 0.5, 0.0, -0.75, 0.25, 0.25, 0.25, -0.75, 0.75, -0.75, -0.5, -1.0, -0.5, -0.75, 1.0, 0.75, -1.0, -0.75, 0.0, -0.75, 0.25, 0.5, 0.0, 0.0, 1.0, -1.0, -0.5, -0.75, 0.75, -0.75, -1.0, 0.25, 0.75, 0.0, -0.75, 1.0, -1.0, 0.5, -0.5, -0.75, -0.25, -0.75, -0.5, 1.0, 0.75, -0.75, -0.5, -1.0, 0.25, 0.75, 1.0, -1.0, -0.75, 0.75, -0.75, -0.25, 1.0, 1.0, -0.25, -0.75, 0.5, 0.5, -0.75, -0.25, 0.25, 0.25, -0.5, 0.0, -1.0, 1.0, -0.5, 1.0, 0.0, 0.5, -0.5, -1.0, -0.25, 1.0, 0.5, -0.25, 1.0, 1.0, -0.25, -0.75, 1.0, -0.75, -1.0, 0.25, 0.75, 0.5, ]);
    texture801.destroy();
    const array8 = new Float32Array([-0.5, 0.25, 1.0, -0.5, 0.25, 0.25, 0.25, -1.0, 0.5, 0.75, 0.75, -0.25, 1.0, -0.5, 0.5, 0.25, -0.75, -0.75, 1.0, 0.25, 0.25, -0.25, 0.25, 0.25, -0.5, 0.5, -0.75, 0.75, -1.0, 1.0, 0.25, -1.0, -1.0, 0.5, 0.75, 0.5, -0.5, 1.0, -0.75, -0.75, -0.5, 0.25, 1.0, 0.5, -0.75, 1.0, 0.75, -0.75, 0.0, 0.25, -0.75, 0.25, 0.5, -0.25, 0.25, 0.0, 0.75, 0.5, 0.25, -1.0, 0.25, -0.75, 0.5, 0.0, 0.5, 0.0, 0.5, -1.0, -0.5, -0.25, 0.5, -0.75, 0.5, 1.0, -0.5, -0.75, -1.0, 0.5, 1.0, 0.25, -0.75, -1.0, 1.0, -1.0, -0.75, -0.5, -0.75, -1.0, -0.75, 0.0, 0.75, -0.5, 1.0, -0.5, 0.0, -0.5, 0.25, -0.25, 1.0, 0.0, ]);
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8snorm",
        dimension: "2d"
    });
    render_bundle_encoder502.popDebugGroup();
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const array9 = new Float32Array([0.5, -1.0, 1.0, -0.25, -0.75, -0.75, 0.25, 0.25, -0.75, 1.0, -1.0, -0.5, -0.25, 0.0, 0.5, 0.25, 0.75, -0.25, -1.0, -0.75, 0.75, 0.5, -0.5, 0.0, -0.75, -1.0, 1.0, -0.5, 0.75, -0.5, -0.5, -0.5, 0.5, -0.75, -1.0, 0.5, 0.75, 0.25, -1.0, 0.75, -0.25, 0.75, -1.0, -1.0, 0.25, -0.5, 0.0, -0.25, -0.75, -0.75, 0.5, -1.0, 0.25, -1.0, -1.0, 0.0, -0.75, -0.25, 0.75, 0.25, -0.5, 0.5, 0.5, -1.0, -1.0, 0.0, 0.5, 1.0, -0.5, 1.0, -0.5, 0.0, -0.25, 1.0, 1.0, -0.5, 0.75, 0.5, 0.25, 0.25, 0.5, 0.0, 0.25, 1.0, -0.5, -1.0, 0.0, -1.0, 0.25, 0.25, 0.0, -0.25, 1.0, 0.75, -0.5, -0.25, -0.25, -1.0, -0.75, 0.5, ]);
    
    const texture505 = device50.createTexture({
        label: "texture505",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array10 = new Float32Array([0.25, 0.25, -0.75, 0.25, 0.5, -1.0, 0.5, 0.5, -0.5, 1.0, 0.25, -0.75, -0.75, 1.0, -0.5, 0.5, -0.25, -0.5, -0.25, 1.0, 0.5, -0.5, -0.5, 0.25, -0.25, 1.0, -0.25, 0.5, 0.0, -0.5, -1.0, 0.0, -0.75, 0.0, 0.25, 0.0, 0.5, -0.75, 0.75, -0.75, 0.25, 0.25, 0.25, 0.75, -0.75, 0.25, 1.0, 1.0, 0.75, 0.0, 0.75, 0.0, 0.5, 0.25, -0.25, 0.25, 0.25, -0.5, -1.0, -0.25, -1.0, 0.75, 0.5, 0.75, -1.0, 0.0, 0.25, 0.25, -1.0, 0.5, 0.75, 0.75, -1.0, -1.0, 0.0, -0.25, 1.0, -1.0, 1.0, 0.25, -0.5, 1.0, -0.75, -0.25, -0.75, -0.75, 0.0, -0.75, -0.75, -1.0, 0.0, -0.5, 1.0, 0.5, -0.5, -0.75, 0.75, -0.25, -1.0, -0.75, ]);
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    buffer800.destroy()
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer505.destroy()
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder501.popDebugGroup();
    render_bundle_encoder502.popDebugGroup();
    texture505.destroy();
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.destroy();
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    texture1000.destroy();
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16sint",
        dimension: "2d"
    });
    
    
    device80.destroy();
    device100.destroy();
    device90.pushErrorScope("validation");
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    device90.destroy();
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    
    
    device110.destroy();
    
    
    
    
    
    const array11 = new Float32Array([0.0, -0.5, -0.25, -0.25, -0.25, -0.5, 0.25, 1.0, -0.5, 0.75, 0.75, -1.0, -0.25, -0.75, 0.0, 0.5, -0.75, -0.25, -0.25, 0.75, -0.75, 0.75, -0.75, 1.0, -0.25, -0.5, -0.25, -0.25, -0.75, 0.25, 0.25, -1.0, 0.75, 0.25, -0.5, -0.25, -0.25, 1.0, -0.5, -0.5, 0.25, 0.0, -1.0, -0.5, 0.75, 0.75, -0.75, 0.75, 0.0, 0.5, 0.25, -0.75, 1.0, 0.0, 0.25, -0.75, -0.75, 0.75, -1.0, -1.0, -0.5, 0.0, 0.75, -1.0, -0.75, -0.75, -0.25, 1.0, -0.5, 0.25, 0.0, -0.75, 0.0, 0.25, 0.75, -0.75, -0.5, 0.25, 0.25, -0.25, -0.5, 0.0, -0.25, -0.75, -1.0, 0.5, 0.0, -0.5, 0.0, 1.0, 0.25, -0.25, -1.0, -1.0, 0.75, -1.0, -0.75, -1.0, 1.0, 0.75, ]);
    
    
    
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
}