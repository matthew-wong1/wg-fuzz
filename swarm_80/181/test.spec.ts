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
    
    
    const array0 = new Float32Array([0.0, 0.5, -0.75, -0.25, 0.5, -1.0, -0.25, -0.75, -0.5, 0.25, -0.25, -0.5, 0.25, 0.75, 0.0, 0.5, 0.75, -0.5, 0.75, -1.0, 0.25, -0.75, 0.0, 0.75, -1.0, 0.5, 0.25, 1.0, 0.75, 0.25, 1.0, -1.0, -0.5, -1.0, 0.75, 0.75, 0.75, -0.75, 0.25, 0.75, -0.75, -0.75, 0.25, 0.25, -0.5, 0.0, 1.0, 0.75, -1.0, 0.0, 0.0, -0.25, -1.0, -1.0, 0.5, -0.25, -0.75, -0.5, 0.0, 0.75, -0.75, 0.25, 0.0, 1.0, 1.0, 0.5, 0.0, 0.25, -1.0, -0.5, 0.0, -1.0, 1.0, 0.0, 0.25, 0.0, -0.25, -1.0, 0.25, 1.0, -1.0, -0.5, 0.75, 0.25, 1.0, -0.25, -0.75, -0.5, 0.25, -1.0, -1.0, -0.75, -0.25, -1.0, 0.5, -1.0, -1.0, 1.0, 0.75, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([1.0, 0.25, -0.5, 0.5, -0.75, 0.5, 0.75, -0.5, -0.75, 0.75, -0.25, -0.5, 0.25, 0.5, 0.75, 0.75, 0.75, -0.25, 0.5, -0.25, -0.5, -0.25, -1.0, 0.25, -1.0, 0.5, -1.0, 0.25, -0.75, 0.0, -1.0, 0.25, -1.0, -0.25, -1.0, -0.5, -0.5, 0.75, 0.75, 1.0, 0.0, -0.75, 0.75, -1.0, -0.75, 0.75, 0.25, 0.5, 0.75, 0.0, -0.25, 0.75, -0.75, 0.0, 0.0, -0.75, -0.75, -0.5, 0.25, -1.0, 0.75, -0.75, 0.0, 0.0, 1.0, -1.0, -0.75, 1.0, 0.5, 0.75, 0.0, 1.0, -0.25, 0.5, -0.75, -0.5, -0.5, 0.0, -0.75, -0.75, -0.25, -0.5, -0.25, 0.25, 0.25, 1.0, -0.25, 0.5, -0.25, 0.5, -0.25, -1.0, -1.0, -0.25, -0.5, 0.75, 0.25, 1.0, 0.25, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    command_encoder100.insertDebugMarker("mymarker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array2 = new Float32Array([0.5, -0.25, 0.25, 0.75, 0.0, -0.25, 0.0, 0.75, -0.5, -1.0, 0.25, 0.75, 0.5, -1.0, 0.25, 0.0, -0.25, 0.25, 1.0, 0.75, -0.75, -1.0, 0.75, 1.0, 0.0, 0.75, 0.5, -0.25, -1.0, -0.25, -1.0, -0.75, 0.25, -1.0, 0.0, 0.25, -0.25, 0.75, -0.75, 1.0, -0.75, 0.5, 0.75, 0.5, -1.0, 0.0, 0.25, 1.0, 0.25, 0.75, -0.25, -1.0, -1.0, 0.0, 0.75, -0.75, 0.75, -0.5, 0.25, 0.5, 0.25, -1.0, 0.75, -0.25, 0.5, 0.25, -0.75, -0.5, -0.25, -0.5, -0.75, -0.25, 0.25, 1.0, 0.75, 0.25, -0.25, 0.0, -0.25, -0.25, 0.75, 1.0, -0.5, 0.75, 0.5, 0.75, 0.0, 0.0, 0.0, 0.5, -0.75, 0.75, -0.75, 0.25, 0.75, 0.0, -1.0, 0.0, 0.0, -0.75, ]);
    const array3 = new Float32Array([0.0, 1.0, 0.75, -0.25, -0.25, 0.75, -1.0, 0.0, 0.25, -0.75, 0.75, -1.0, 0.0, 0.25, 1.0, 1.0, 1.0, 0.0, 0.0, 0.0, 1.0, -0.25, -0.75, 0.5, 0.0, -0.75, -0.5, 0.75, 0.25, 0.75, 0.0, 0.5, 0.5, -0.75, -0.75, -0.5, 0.75, -1.0, 0.25, 0.25, -0.25, 0.25, -1.0, -1.0, 0.0, 0.25, -0.75, -0.75, 1.0, -0.5, -0.5, -1.0, 0.75, -0.5, -0.5, -0.5, 0.25, -0.25, -0.5, -0.75, -0.25, -1.0, 0.75, 0.25, -0.75, -0.25, -0.75, -1.0, 0.25, 0.0, 1.0, -0.75, 0.75, -0.75, -1.0, 0.5, -1.0, 0.0, -1.0, -0.5, -0.75, 0.25, -0.5, 1.0, -0.5, -0.75, -0.5, -0.5, 0.5, -0.5, 0.25, -0.75, 0.75, 1.0, 0.5, -0.75, 0.75, -0.5, 0.25, 0.75, ]);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.insertDebugMarker("mymarker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder101.insertDebugMarker("mymarker");
    texture001.destroy();
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    device10.pushErrorScope("internal");
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    
    command_encoder005.insertDebugMarker("mymarker");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    query001.destroy()
    command_encoder101.insertDebugMarker("mymarker");
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    device00.pushErrorScope("out-of-memory");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const array4 = new Float32Array([-0.25, -0.75, 1.0, -0.25, -0.75, -0.5, 0.25, 1.0, -0.5, 0.75, 0.75, 0.5, 0.75, -0.75, -0.5, 0.0, -0.75, -0.5, -1.0, -1.0, 0.25, -0.5, 1.0, -0.75, -1.0, 0.25, 0.25, 0.5, 0.75, -0.25, 0.75, 0.75, 0.25, -0.25, 0.25, -0.25, 1.0, 1.0, 0.5, -0.5, 0.5, -0.75, -0.25, 1.0, -1.0, 0.0, -0.25, -1.0, 0.25, 0.25, 0.5, -0.75, 0.5, 0.5, 0.75, -0.5, 1.0, 0.5, -0.75, 0.25, 1.0, 0.25, 0.75, 1.0, -1.0, -0.25, 0.5, 0.25, 0.5, -1.0, 0.75, 0.25, -1.0, 0.5, 0.25, -0.75, 0.75, -0.75, -0.5, 0.0, 1.0, 1.0, 0.0, -0.5, -0.75, -1.0, 0.0, 1.0, -0.75, 1.0, 1.0, -0.75, -1.0, -1.0, 0.0, 0.25, 0.75, 1.0, -0.5, -1.0, ]);
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    query001.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device10.pushErrorScope("validation");
    render_bundle_encoder101.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    texture000.destroy();
    render_bundle_encoder001.popDebugGroup();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    const bind_group_layout100 = device10.createBindGroupLayout({ 
        label: "bind_group_layout100",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16float",
        dimension: "2d"
    });
    
    
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    query300.destroy()
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    query001.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.popDebugGroup();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture004.destroy();
    query002.destroy()
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("validation");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture300.destroy();
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    query004.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array5 = new Float32Array([0.0, -0.5, 0.5, 0.0, 0.0, -0.75, -1.0, -0.25, 0.25, -1.0, -0.5, -0.25, -0.5, 1.0, -0.75, -1.0, 1.0, 0.0, 0.75, 0.75, 0.5, 0.0, 0.0, 0.5, -0.25, 0.0, 1.0, 0.0, -1.0, -0.75, 0.5, -1.0, 0.0, -0.5, -0.25, -0.75, 0.75, 0.0, -1.0, -0.75, 0.75, -0.5, 0.25, 0.0, 1.0, -1.0, 0.5, -0.5, 1.0, -0.25, -1.0, 0.0, -0.5, -0.25, -0.25, 0.0, 0.75, -0.75, 0.75, 0.5, 0.75, -1.0, -1.0, 1.0, 0.25, -1.0, 0.5, -0.5, -0.25, -0.75, 0.0, -0.25, 0.75, 1.0, -0.25, 0.25, -0.25, -1.0, 1.0, 0.0, 0.75, -0.75, 1.0, 0.5, 0.0, 0.0, -0.25, 0.75, -0.75, -1.0, -0.5, -0.75, -0.25, 0.5, -0.25, 0.75, 0.25, -0.25, -1.0, -0.75, ]);
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    query100.destroy()
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    
    
    texture102.destroy();
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder302.popDebugGroup();
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    query300.destroy()
    texture005.destroy();
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    device30.destroy();
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder102.popDebugGroup();
    texture101.destroy();
    
    
    
    query003.destroy()
    query000.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder002.insertDebugMarker("marker");
    query004.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    query102.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query002.destroy()
    
    query102.destroy()
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    texture002.destroy();
    device00.pushErrorScope("internal");
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query100.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.popDebugGroup();
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query005.destroy()
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    device20.pushErrorScope("out-of-memory");
    query201.destroy()
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    texture003.destroy();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
    device10.pushErrorScope("out-of-memory");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder007.copyBufferToBuffer(
        buffer004,
        0,
        buffer002,
        0,
        400
    );
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const array6 = new Float32Array([-0.25, 1.0, 0.25, -0.5, 1.0, 0.25, 1.0, -0.75, 0.75, -0.75, 0.25, 0.5, 0.0, 0.75, 0.0, -0.75, -0.75, 0.5, -0.75, 0.75, 1.0, 0.5, 0.5, 0.0, 0.5, 0.5, 0.25, 0.75, 0.0, 0.25, -0.75, 1.0, -0.25, -1.0, 0.0, 0.75, 0.5, 1.0, -0.5, 1.0, 0.25, 0.75, -0.25, 0.75, -0.25, 0.25, -0.5, -0.25, -0.75, -0.25, -1.0, -0.5, 0.5, -0.75, 0.75, 0.75, 1.0, 1.0, 0.0, -0.5, -0.25, -1.0, -0.75, 0.75, 0.75, -0.5, 1.0, 0.25, 0.0, -0.75, -1.0, 0.0, 1.0, 0.75, 1.0, 0.0, -0.5, 0.75, -0.25, 0.25, -0.25, -1.0, -0.25, -0.75, 0.25, 0.0, -0.75, 0.75, -0.5, 0.75, -0.5, -0.75, -1.0, -0.25, 0.25, 1.0, 1.0, -0.5, -0.25, 1.0, ]);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    query201.destroy()
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout003]
    });
    texture201.destroy();
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    texture100.destroy();
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query000.destroy()
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query005.destroy()
    command_encoder007.copyBufferToBuffer(
        buffer004,
        0,
        buffer002,
        0,
        400
    );
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    query100.destroy()
    query000.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    device00.pushErrorScope("validation");
    
    
    device10.queue.writeTexture({ texture: texture103 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    query102.destroy()
    command_encoder007.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    command_encoder202.insertDebugMarker("mymarker");
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    texture103.destroy();
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture104 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder008.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder501.insertDebugMarker("marker");
    command_encoder103.insertDebugMarker("mymarker");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    texture200.destroy();
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder007.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    device60.destroy();
    const array7 = new Float32Array([0.75, 0.25, 0.25, 0.25, 0.75, -0.25, 0.0, 0.5, 0.5, 0.5, 0.0, 0.75, 0.25, 0.0, -0.75, -1.0, -0.75, 0.25, -0.75, 0.5, 0.0, 0.0, -0.25, 1.0, 1.0, 0.5, 0.75, -0.25, -0.25, -0.25, -0.75, -1.0, -0.75, -1.0, -1.0, -0.25, 0.5, -0.25, -0.25, -0.75, 1.0, 0.25, 0.25, -1.0, 0.75, -0.25, 0.25, 0.75, 1.0, -0.25, 0.75, 0.25, 0.25, 1.0, -1.0, 0.75, 1.0, -0.25, 0.0, -0.5, 0.75, 1.0, 0.75, 0.75, 0.75, 0.0, 0.75, -0.25, -0.25, -0.75, 1.0, 0.0, -0.5, -0.25, -0.5, 0.5, 0.5, 0.5, -0.75, 0.0, -0.25, -0.5, -0.75, -0.75, 0.75, 0.0, -0.75, 0.5, -0.5, 0.25, -0.75, -0.75, 0.75, -0.5, -0.5, -0.75, -0.25, -1.0, -0.5, -0.5, ]);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder008.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder007.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    device10.queue.writeTexture({ texture: texture104 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    command_encoder007.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    const array8 = new Float32Array([-1.0, 0.5, 1.0, 0.25, 0.25, 1.0, -0.75, 0.25, 0.5, 1.0, -0.75, -0.75, -0.75, 0.5, 0.25, 0.0, -0.75, 0.25, 0.5, -1.0, -0.25, 0.25, -0.75, 0.75, -1.0, 1.0, 1.0, 1.0, -0.25, 0.75, 0.5, -0.25, -1.0, 1.0, -0.5, 0.5, -0.75, -0.5, 0.5, -0.75, 0.5, -0.25, -0.5, 0.0, 1.0, -0.5, 0.75, 0.5, 1.0, -0.5, 0.25, 0.75, -0.25, -0.25, -0.25, -1.0, -0.25, 0.25, -1.0, 0.5, -0.25, -1.0, -0.75, -0.25, 1.0, 0.75, -1.0, 0.25, 0.0, 0.25, 0.75, 0.75, -0.25, 1.0, 0.0, 0.0, 0.0, 0.5, -0.75, 1.0, 0.5, 0.5, -0.25, 1.0, 0.5, -0.75, -0.25, -1.0, 0.0, 0.5, 0.25, -0.5, 0.25, -0.5, 0.25, 0.25, -0.25, -0.25, -0.5, 0.5, ]);
    query202.destroy()
    texture104.destroy();
    command_encoder008.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    
    query001.destroy()
    command_encoder008.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    command_encoder008.copyBufferToBuffer(
        buffer004,
        0,
        buffer002,
        0,
        400
    );
    query203.destroy()
    command_encoder008.resolveQuerySet(
        query005,
        0,
        32,
        buffer005,
        0
    )
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder008.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    query502.destroy()
    
    command_encoder008.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    query501.destroy()
    command_encoder008.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    const array9 = new Float32Array([0.75, 1.0, 0.25, 0.25, 1.0, 1.0, 0.5, 0.25, -0.75, 0.5, -0.25, 0.5, -1.0, 0.25, -1.0, 0.75, -0.5, 0.0, -0.5, -1.0, -1.0, -0.25, 0.0, -1.0, -0.75, -0.25, 0.0, 0.25, 0.0, 0.5, 1.0, 0.5, 0.5, 1.0, 0.0, 0.75, 0.5, -0.75, -1.0, -0.75, 0.5, -1.0, 0.5, 0.0, -0.75, -1.0, 0.75, -0.5, 1.0, 0.75, -0.25, -0.75, 0.5, -0.5, 1.0, 0.75, 0.25, 0.25, -0.25, 1.0, 0.25, -0.25, 0.25, -0.25, 0.5, 0.75, -0.25, -1.0, -0.5, 0.5, 0.0, -0.5, -1.0, -0.25, 0.5, -0.75, 1.0, -0.75, -0.75, 0.0, 0.75, -0.25, -1.0, 0.5, 0.75, -0.75, 1.0, -0.75, 0.25, 0.0, 1.0, 1.0, 0.75, -0.75, -0.5, 0.75, 0.5, 0.75, 0.5, 0.25, ]);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    
    
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder008.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    command_encoder008.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    command_encoder008.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    query004.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    command_encoder008.copyBufferToBuffer(
        buffer004,
        0,
        buffer006,
        0,
        400
    );
    query501.destroy()
    device40.destroy();
    device50.queue.writeBuffer(buffer502, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer002, 0, array9, 0, array9.length);
    
    command_encoder008.copyBufferToBuffer(
        buffer004,
        0,
        buffer002,
        0,
        400
    );
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    query000.destroy()
    
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    command_encoder008.resolveQuerySet(
        query005,
        0,
        32,
        buffer005,
        0
    )
    const compute_pass_encoder0080 = command_encoder008.beginComputePass({ label: "compute_pass_encoder0080" });
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}