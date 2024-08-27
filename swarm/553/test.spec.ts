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
    const array0 = new Float32Array([1.0, -0.5, -1.0, 0.75, -1.0, 0.75, -1.0, -0.5, 0.0, -1.0, 0.5, -1.0, -0.75, -0.5, -0.75, -0.25, 1.0, 0.25, -0.25, 1.0, 0.5, 1.0, -0.75, -0.25, -1.0, 0.75, 0.25, 0.25, -0.75, 1.0, -1.0, -0.5, -1.0, 1.0, 0.25, -0.75, 0.75, 0.0, -1.0, -0.5, 0.75, 0.25, -0.75, -0.25, -0.75, 0.25, 0.75, -0.25, -0.75, 0.75, 0.25, 1.0, -1.0, -1.0, 0.75, 0.5, -0.5, 0.25, 1.0, 0.75, -0.5, -0.75, 0.5, -0.75, -0.25, 0.0, -0.5, -0.75, 0.25, -0.5, -0.5, 0.25, 0.5, 1.0, 0.5, 0.5, -0.25, -0.75, 0.5, 0.5, -0.5, 1.0, 1.0, -0.25, -1.0, -0.25, 0.25, -0.25, -1.0, -1.0, 0.0, -0.75, 0.0, 0.75, 0.25, -0.5, 0.25, 0.25, 0.75, -0.25, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([1.0, 0.5, 0.25, 0.0, -1.0, 0.0, -0.5, -0.75, -0.25, 0.0, 0.75, -0.75, 0.75, -1.0, 1.0, -0.5, -0.75, 0.75, -0.75, 0.5, -0.5, -0.75, -0.5, 1.0, 0.0, 0.25, 0.5, -0.25, -1.0, 0.75, -0.25, -0.5, -0.75, 0.25, 1.0, -1.0, -0.5, -1.0, 1.0, -0.5, 0.5, -0.25, -0.5, 1.0, -0.5, 1.0, 0.25, 0.25, -0.5, 0.75, 0.0, 0.5, 1.0, -0.75, 0.25, -0.5, 0.5, -0.75, 1.0, 0.75, -0.5, -1.0, 0.5, 0.75, 0.0, 0.75, 0.75, 0.25, -0.25, -0.75, 0.25, 0.25, -0.5, -0.75, 0.25, 0.0, 0.5, -0.5, -1.0, 0.0, -0.75, 0.75, 0.0, 0.0, -0.5, 0.25, -0.75, 1.0, 0.5, -1.0, 0.0, 0.75, 0.75, 0.0, -0.75, -0.75, -1.0, 1.0, -1.0, -1.0, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    buffer001.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    texture000.destroy();
    const array2 = new Float32Array([-0.25, 0.75, 0.75, 1.0, -1.0, -1.0, 0.0, 0.5, 0.25, 0.75, -0.25, 0.75, -0.25, 0.0, -1.0, 0.25, 0.75, 0.75, 1.0, -0.75, -0.5, -0.25, -0.5, 0.75, 0.75, -0.75, -0.25, 0.75, -0.75, 0.0, 0.25, 1.0, 0.5, 0.75, 0.25, -1.0, -0.5, 0.0, 0.5, -1.0, -0.25, 0.5, 0.0, -1.0, -0.75, 1.0, 1.0, 0.25, -0.75, -0.5, -1.0, -0.5, 0.0, -0.5, -0.5, 0.5, -0.75, 0.25, -1.0, -1.0, -1.0, -0.5, 0.25, -0.75, -0.75, 0.0, -0.75, 0.5, -0.25, 0.75, 1.0, -0.25, -0.25, 0.0, 0.75, 1.0, 0.75, -0.25, 0.5, -0.25, -1.0, 0.5, 0.0, 0.75, -1.0, 0.0, -0.25, -0.25, 0.25, -0.5, 0.0, -1.0, 0.5, 1.0, -1.0, -1.0, 0.75, 0.25, -0.75, 0.0, ]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    buffer000.destroy()
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array3 = new Float32Array([-0.25, -0.25, -0.75, 0.5, -1.0, -0.75, 0.25, 0.25, 1.0, 0.75, -0.75, -0.5, -0.75, -0.25, 0.75, 0.0, 1.0, 1.0, 0.75, -0.5, 0.0, -0.75, 0.25, -0.25, -0.25, 1.0, -0.25, -1.0, 0.0, 0.25, 0.25, 0.75, -1.0, -0.25, 0.0, -0.5, -0.25, -0.5, -0.75, 0.5, -0.25, 0.5, 1.0, 0.25, -1.0, 0.25, -1.0, -0.75, -0.5, 0.0, -0.25, -1.0, 0.0, -0.25, 0.25, 0.25, -0.25, 1.0, -1.0, 0.25, -0.75, -1.0, 1.0, 1.0, -0.75, 0.5, 0.5, 0.0, -1.0, 0.0, 0.5, 0.0, -1.0, 0.0, 0.5, -0.25, 1.0, -0.75, 0.75, -0.25, -0.75, 0.25, -1.0, -0.75, 0.75, -0.75, 1.0, 0.5, 0.0, 0.25, 0.0, 0.0, -0.5, 0.0, 0.25, 0.0, 0.5, -1.0, 0.0, -0.75, ]);
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    texture300.destroy();
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device00.pushErrorScope("internal");
    compute_pass_encoder0010.popDebugGroup()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array4 = new Float32Array([-0.25, -0.5, 0.5, -1.0, -0.75, 0.25, 1.0, 0.25, 1.0, -0.5, -0.25, -0.75, 1.0, -0.75, 0.75, 0.5, 1.0, 1.0, -0.75, 0.5, 0.75, 0.0, -0.25, 1.0, 0.75, -0.5, 1.0, -0.5, -1.0, 0.5, 0.25, -0.5, -1.0, 0.75, -0.25, 0.5, -0.25, 0.0, -0.5, -1.0, 1.0, 0.0, 0.75, 0.75, 0.5, -1.0, 1.0, 0.5, 0.25, 0.25, 0.25, 0.25, 0.25, -0.25, -0.25, -0.25, -1.0, 1.0, -0.5, -1.0, 1.0, -0.75, 0.75, -0.5, 1.0, 0.0, -0.25, 0.25, -0.25, -1.0, -0.75, 1.0, -0.5, -0.25, 1.0, 0.25, -0.5, -1.0, -0.5, -0.25, 1.0, -0.75, 0.0, 0.5, 0.0, -0.25, -1.0, 0.75, -1.0, 0.75, -0.25, 0.25, 1.0, -0.25, -0.25, 0.25, 1.0, -0.25, 0.5, 0.75, ]);
    
    
    texture001.destroy();
    
    command_encoder003.insertDebugMarker("mymarker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device20.pushErrorScope("validation");
    const array5 = new Float32Array([0.25, -0.75, 0.5, -0.75, 0.75, 0.0, 0.5, 1.0, -1.0, 1.0, -0.5, 0.25, -0.75, 0.25, 0.5, -0.75, -0.75, 0.25, 0.0, -0.25, 0.5, 0.25, 0.25, 0.0, 0.5, -0.5, 0.5, 0.75, 1.0, 0.5, -0.5, 1.0, 1.0, 0.25, 0.5, -0.5, 0.5, 0.25, 0.75, 0.5, -0.5, -0.5, 0.0, -1.0, 1.0, 1.0, 0.75, 0.5, 0.25, -0.75, -0.25, -0.5, 1.0, -0.5, 0.25, -0.25, 0.75, 0.5, -0.75, -0.25, -0.25, -0.5, 0.75, -0.5, 0.0, -0.75, -1.0, -1.0, -0.25, -0.5, -0.5, 0.25, 0.5, 0.25, -0.25, -0.25, -0.75, -0.75, 0.0, 0.25, -0.25, 0.5, 0.0, -1.0, -0.5, -1.0, 0.25, 1.0, -0.5, 0.75, -0.75, 0.25, 0.0, 0.25, -0.75, -0.75, 0.5, 0.0, 0.5, 1.0, ]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    
    device40.pushErrorScope("out-of-memory");
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    buffer003.destroy()
    
    
    buffer400.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer301.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    command_encoder500.popDebugGroup()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("validation");
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    const array6 = new Float32Array([-0.25, 0.5, -1.0, -0.25, 0.25, -0.25, 0.75, -1.0, 0.0, 0.5, -0.25, -0.25, 0.25, -0.75, 0.0, 0.75, 0.75, 0.25, -0.25, -0.75, -0.75, 0.75, 0.0, -0.5, 0.25, 1.0, 0.5, 1.0, -0.25, -0.5, -0.25, 0.25, -0.25, 0.5, 0.75, -0.25, -0.5, -0.5, -0.5, 0.5, -1.0, -1.0, -0.5, 0.0, 0.5, 0.25, -0.75, 0.5, 1.0, 1.0, 0.75, 1.0, 0.25, -1.0, 0.25, -0.75, 0.25, -1.0, -0.75, -0.5, 0.75, 0.5, -0.75, -0.75, 1.0, 0.0, 0.5, 0.0, 0.75, -0.5, 0.5, 0.5, 0.0, 0.5, -0.5, -0.75, -0.75, 0.25, 0.0, -0.75, 0.5, 0.0, 1.0, 0.5, -1.0, 0.75, -0.75, 0.5, -1.0, -0.75, -0.25, 0.0, 0.75, 0.75, 1.0, -1.0, 0.75, 0.0, 0.75, 1.0, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder004.insertDebugMarker("mymarker");
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    command_encoder201.insertDebugMarker("mymarker");
    
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0020.popDebugGroup()
    
    buffer100.destroy()
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    
    
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    device30.pushErrorScope("internal");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8sint",
        dimension: "2d"
    });
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    texture400.destroy();
    command_encoder400.insertDebugMarker("mymarker");
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    compute_pass_encoder5000.insertDebugMarker("marker")
    texture005.destroy();
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    buffer002.destroy()
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    texture002.destroy();
    
    buffer500.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder401.insertDebugMarker("mymarker");
    
    
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder400.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    buffer101.destroy()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder0010.popDebugGroup()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    buffer004.destroy()
    
    
    
    
    texture003.destroy();
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    
    command_encoder402.insertDebugMarker("mymarker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder402.insertDebugMarker("mymarker");
    command_encoder201.insertDebugMarker("mymarker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    device50.pushErrorScope("internal");
    
    buffer201.destroy()
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder401.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    texture301.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device20.pushErrorScope("out-of-memory");
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    command_encoder201.popDebugGroup()
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer202.destroy()
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus",
        dimension: "2d"
    });
    command_encoder401.insertDebugMarker("mymarker");
    command_encoder300.insertDebugMarker("mymarker");
    device40.pushErrorScope("internal");
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder301.insertDebugMarker("mymarker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    command_encoder401.insertDebugMarker("mymarker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    compute_pass_encoder0030.insertDebugMarker("marker")
    command_encoder402.pushDebugGroup("mygroupmarker")
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    buffer300.destroy()
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder501.insertDebugMarker("mymarker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder1000.popDebugGroup()
    
    
    command_encoder101.insertDebugMarker("mymarker");
    
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder402.insertDebugMarker("mymarker");
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    texture302.destroy();
    
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    compute_pass_encoder0000.popDebugGroup()
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    compute_pass_encoder0020.insertDebugMarker("marker")
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder2020.insertDebugMarker("marker")
    command_encoder401.popDebugGroup()
    
    
    buffer200.destroy()
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    buffer203.destroy()
    device10.pushErrorScope("validation");
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder005.insertDebugMarker("mymarker");
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    const array7 = new Float32Array([-0.25, -0.25, -0.75, 0.5, -1.0, 0.5, 1.0, -0.5, -0.5, 0.25, 1.0, 0.75, -0.75, -0.5, 0.75, 0.25, -0.75, -0.75, -0.75, 1.0, -1.0, 1.0, 0.75, -0.5, -0.25, 1.0, 0.75, -0.5, 0.0, 1.0, -0.75, -1.0, 0.75, -0.5, 0.25, 1.0, 0.0, 0.75, -0.25, 1.0, 0.25, 0.75, 1.0, 0.0, 0.25, -0.5, -1.0, -0.25, -0.5, -1.0, 0.25, -1.0, -0.75, 0.25, -0.75, -0.75, -1.0, -0.25, -1.0, -1.0, -0.75, 0.0, 0.5, -0.5, 0.75, 0.25, 0.5, -0.5, -0.25, 0.25, -1.0, 1.0, 0.25, 0.5, -0.75, 1.0, -0.75, -0.5, -1.0, -1.0, -0.75, 0.25, -0.75, 0.25, 0.5, -0.75, 1.0, -0.75, -0.5, 0.5, 1.0, 0.5, -0.75, 0.25, -0.75, -1.0, -1.0, 0.25, -0.25, 0.0, ]);
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    device50.queue.writeBuffer(buffer502, 0, array6, 0, array6.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    texture500.destroy();
    command_encoder300.popDebugGroup()
    render_bundle_encoder402.pushDebugGroup("group_marker");
    command_encoder102.insertDebugMarker("mymarker");
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    
    
    
    texture100.destroy();
    
    
    
    
    texture200.destroy();
    command_encoder301.insertDebugMarker("mymarker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    texture006.destroy();
    
    command_encoder102.insertDebugMarker("mymarker");
    const array8 = new Float32Array([-0.75, -0.25, 0.75, -1.0, -0.5, 0.5, -1.0, 0.25, -0.25, -0.5, -0.25, 0.0, -1.0, 1.0, 0.0, 0.5, 0.0, -0.5, -0.25, 0.0, 0.25, -0.75, 0.5, 1.0, -0.25, 0.5, -0.25, -0.75, -0.75, 0.75, -0.75, 0.0, 0.0, 0.25, -0.75, 0.5, 0.5, 0.25, 0.25, -0.75, 0.75, -0.25, 0.25, -1.0, 0.0, -0.25, 1.0, -0.5, 0.25, -0.75, -0.5, -0.75, 0.25, -0.5, -1.0, 0.5, -0.5, 0.25, 0.25, 1.0, -0.75, 1.0, 0.5, -0.25, 0.5, 0.25, 0.25, -0.75, -0.25, -0.25, -0.25, 1.0, 0.0, -0.75, -1.0, 1.0, -1.0, 0.25, -0.75, -0.5, 0.75, -0.75, 1.0, -0.25, 0.0, 0.0, 0.25, -0.75, 0.0, 0.75, -0.75, -0.5, 0.0, 0.75, -0.25, -0.25, 0.5, -0.5, -0.5, 0.25, ]);
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer005, 0, array6, 0, array6.length);
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("internal");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    compute_pass_encoder2030.popDebugGroup()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    
    buffer501.destroy()
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    device20.pushErrorScope("out-of-memory");
    
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    texture004.destroy();
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder005.insertDebugMarker("mymarker");
    device50.queue.writeBuffer(buffer502, 0, array6, 0, array6.length);
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    buffer502.destroy()
    device00.queue.writeBuffer(buffer005, 0, array8, 0, array8.length);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("validation");
    
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    command_encoder502.insertDebugMarker("mymarker");
    texture402.destroy();
    command_encoder005.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    command_encoder404.insertDebugMarker("mymarker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    command_encoder301.insertDebugMarker("mymarker");
    compute_pass_encoder5000.insertDebugMarker("marker")
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder5000.insertDebugMarker("marker")
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer005, 0, array6, 0, array6.length);
    device30.queue.writeTexture({ texture: texture303 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4020.insertDebugMarker("marker")
    const array9 = new Float32Array([0.25, -0.75, 0.5, -1.0, 1.0, 0.25, -0.75, -1.0, -0.75, -0.25, -0.75, 0.75, 0.0, 1.0, -0.75, 0.0, 0.75, 0.0, 0.0, -0.25, 0.0, -0.75, 0.5, -1.0, -0.25, 0.75, -1.0, -0.25, -0.25, -0.5, 0.25, -0.75, -0.75, 0.75, 0.5, 0.0, -1.0, 1.0, 0.75, -0.75, -0.75, 0.5, -1.0, 1.0, -0.75, -1.0, 0.0, 0.0, -0.75, -0.75, 0.75, 0.0, -1.0, 0.25, -1.0, 0.75, 1.0, -0.5, -1.0, -0.75, -1.0, -0.5, 0.0, -0.5, 0.75, 0.0, -1.0, -0.5, 1.0, -0.75, -0.25, -0.25, -1.0, -0.25, 0.75, -0.75, 0.5, 1.0, 0.75, 0.0, -0.75, -0.5, -0.75, 0.5, -0.5, 1.0, 0.25, -0.25, -0.75, -0.25, 0.5, 0.25, 0.25, 0.0, -0.25, 0.0, -1.0, -1.0, -0.75, -0.75, ]);
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder4020.insertDebugMarker("marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder301.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    command_encoder005.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder4030.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5000.popDebugGroup()
}