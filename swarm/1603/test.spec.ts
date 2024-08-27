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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const array0 = new Float32Array([-0.5, -0.75, 0.25, 0.25, 0.0, -1.0, -1.0, 0.75, 0.5, -0.75, 0.25, 0.0, -0.75, 1.0, 1.0, 1.0, -0.75, 0.0, 1.0, -0.75, 0.25, -0.5, -0.75, -0.75, -0.25, 0.25, -0.75, 0.5, 0.5, -0.75, 0.5, -1.0, -0.75, -1.0, 0.5, 0.75, 1.0, -0.75, -0.75, 0.75, 0.25, -0.5, -0.5, -0.75, -0.5, 0.25, -1.0, 0.75, -0.25, 0.25, 1.0, 1.0, 1.0, 0.25, -0.25, -0.5, 0.5, 0.0, 1.0, 0.0, 0.5, 0.5, 0.75, 0.25, -0.75, 0.75, -0.5, 1.0, -0.5, 1.0, -0.25, 0.5, -1.0, 0.25, -0.75, -1.0, -1.0, 0.75, 0.25, 1.0, 0.75, 0.25, -0.5, -0.75, -0.25, -0.5, 0.5, 0.25, 0.0, -0.75, 1.0, 0.0, -0.75, -0.25, 0.25, 0.75, -0.5, 0.5, 1.0, 1.0, ]);
    
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
        powerPreference: "low-power"
    });
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
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    const array1 = new Float32Array([0.25, 0.75, 0.5, -0.5, 0.0, -0.25, 0.25, -1.0, 1.0, 0.75, -1.0, 1.0, -0.75, -0.5, -0.75, -0.25, 1.0, -1.0, 1.0, 0.0, -0.5, -1.0, -0.5, 0.5, -1.0, -0.5, 1.0, -0.25, -1.0, -1.0, 0.25, 0.5, -0.25, -0.25, 1.0, -0.75, -1.0, 1.0, 0.25, 0.5, -0.5, 0.5, -0.75, 0.75, -0.5, -1.0, -0.75, 0.5, -0.25, -0.5, 0.5, 1.0, 0.25, -0.5, -0.75, 0.75, 0.75, -1.0, -0.5, 1.0, 1.0, -1.0, -0.5, -0.75, -0.25, -0.5, -0.75, -0.25, -1.0, -1.0, 0.75, 0.0, -0.5, 0.75, 0.75, 0.75, 0.25, 0.0, -0.75, 0.75, -1.0, 0.0, -0.25, 1.0, -0.75, -1.0, 1.0, 1.0, 0.0, 0.25, 0.5, -0.25, -1.0, -0.25, -0.5, 0.75, 0.75, -1.0, 1.0, 1.0, ]);
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    query000.destroy()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device10.destroy();
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.pushErrorScope("validation");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
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
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array2 = new Float32Array([0.75, -0.25, -0.75, 0.75, 0.25, 1.0, 1.0, 0.25, -0.5, 0.25, -1.0, -0.25, 0.75, 0.5, 0.5, 0.0, 1.0, 0.0, -0.75, -0.25, -0.25, 1.0, 0.75, -0.5, 0.25, -0.75, 0.25, -0.5, 0.5, -0.75, 0.75, -0.5, 1.0, 0.25, 0.0, 0.5, -1.0, -1.0, -0.25, 1.0, -0.75, 0.0, 0.0, 0.75, 0.0, 0.5, -0.5, 0.25, -0.5, 0.75, 0.25, 0.25, -1.0, 1.0, -0.75, -1.0, 0.75, -1.0, 0.75, 0.75, -0.25, -0.25, -0.75, -0.25, 0.0, -1.0, -0.25, 1.0, -0.5, 0.75, -0.75, 0.5, 0.0, 0.5, 0.75, -0.25, 0.0, 0.5, -1.0, -0.75, -0.25, 1.0, -1.0, 0.0, 1.0, -0.75, 0.75, 0.75, -0.75, 0.5, 0.25, 0.25, 0.75, 0.25, 1.0, 0.0, 0.0, 0.75, 0.5, -0.25, ]);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const array3 = new Float32Array([0.0, 1.0, -0.75, -0.25, 0.75, -1.0, 0.5, 0.0, 0.75, 0.5, 0.5, -1.0, -1.0, 0.5, 0.75, 1.0, 1.0, -0.5, 0.25, 1.0, -0.25, 0.75, -0.5, 0.0, 0.75, 1.0, 0.75, 0.25, -0.75, -1.0, 0.5, -1.0, 0.0, -1.0, -1.0, 0.75, 0.0, -0.25, 0.25, 0.25, 0.75, -0.25, 1.0, -0.25, 0.25, 0.75, -0.5, -0.25, 0.5, -0.5, 0.0, -0.5, -0.75, 0.0, 0.75, 1.0, 0.75, 0.25, -0.25, 1.0, 0.0, 1.0, -0.25, -0.25, -0.75, 1.0, 0.5, 0.25, -1.0, 0.5, 0.5, -0.25, 0.0, 0.0, 0.25, 0.0, 0.75, 0.0, -1.0, -0.25, 0.25, 0.25, -0.75, 0.5, 0.75, 1.0, 0.0, -0.75, -0.5, -0.25, 1.0, 0.25, 0.5, 0.75, -0.5, -0.25, 0.5, 0.5, 0.75, 0.0, ]);
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    query000.destroy()
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device30.pushErrorScope("internal");
    command_encoder000.insertDebugMarker("mymarker");
    device40.pushErrorScope("out-of-memory");
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder002.popDebugGroup();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array4 = new Float32Array([1.0, -0.25, 0.25, -0.75, 0.75, 1.0, 0.25, -1.0, -0.25, 0.75, 1.0, 0.25, 1.0, 0.0, -0.25, 0.75, 1.0, -0.5, -0.25, 1.0, -1.0, -1.0, -0.5, -1.0, -0.75, -0.75, 0.25, 1.0, 0.25, -0.25, -0.75, -0.75, -0.5, -0.5, -0.75, 1.0, -0.75, 0.0, 0.25, -1.0, 0.5, 1.0, -0.75, 0.5, -0.75, -1.0, -1.0, -0.5, 0.25, 0.5, 0.25, -1.0, -0.5, -1.0, 0.0, -0.25, -1.0, 0.0, -1.0, -1.0, -1.0, -0.25, 0.5, 0.25, 0.5, 0.5, 0.25, 0.5, 1.0, -0.75, 0.75, -1.0, 0.0, 0.75, 0.5, 0.5, -0.25, 0.0, 0.0, -0.5, -0.25, 0.75, 0.0, -1.0, 0.75, -1.0, 0.5, 1.0, -0.75, 1.0, -0.75, 0.25, 0.75, 0.25, 0.75, 1.0, 0.5, -1.0, -0.5, -0.75, ]);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const texture001 = device00.createTexture({
        label: "texture001",
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout000]
    });
    query200.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
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
    command_encoder400.pushDebugGroup("mygroupmarker")
    buffer201.destroy()
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    query001.destroy()
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    device20.queue.submit([]);
    command_encoder400.insertDebugMarker("mymarker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout001]
    });
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder402.insertDebugMarker("marker");
    compute_pass_encoder2000.popDebugGroup()
    
    texture001.destroy();
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout000]
    });
    query200.destroy()
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout000]
    });
    device30.queue.submit([]);
    
    device40.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_bundle_encoder001.popDebugGroup();
    texture300.destroy();
    query200.destroy()
    query000.destroy()
    
    
    device20.pushErrorScope("validation");
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
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
    
    command_encoder200.clearBuffer(buffer200);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    buffer301.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout002]
    });
    buffer202.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout003]
    });
    command_encoder300.copyBufferToTexture(
        {
            buffer: buffer301
        },
        {
            texture: texture301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    query001.destroy()
    compute_pass_encoder2000.popDebugGroup()
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture302.destroy();
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    texture301.destroy();
    
    texture300.destroy();
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout000]
    });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    query001.destroy()
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout003]
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    buffer204.destroy()
    command_encoder301.clearBuffer(buffer301);
    
    query001.destroy()
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    query001.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    command_encoder301.insertDebugMarker("mymarker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer200.destroy()
    compute_pass_encoder3010.pushDebugGroup("group_marker")
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
    const array5 = new Float32Array([-0.5, -0.5, 0.75, -1.0, 0.25, 0.5, 1.0, -0.25, 0.75, 0.75, -0.5, -0.25, 0.0, -0.25, 0.25, -0.5, -0.25, 1.0, 0.5, 0.0, 0.0, 0.5, -0.5, -0.75, -0.25, 0.5, -0.75, 0.5, -0.5, -0.75, 0.25, 0.75, 0.5, 0.5, 0.25, -1.0, 0.25, -0.25, 0.5, 0.0, -0.75, 1.0, -0.75, 0.75, 0.25, 0.25, 0.5, 1.0, -0.75, 0.5, 0.5, -0.5, 1.0, 0.5, 0.25, 0.75, 0.75, 1.0, 0.25, 0.75, 0.5, -0.75, 0.5, -0.5, 1.0, -0.5, 0.75, -0.25, -0.75, -1.0, -0.5, 0.5, -0.5, -0.5, 1.0, 0.25, -0.25, 1.0, -0.25, -0.75, 0.0, 0.5, -0.75, -0.25, 0.25, 0.0, 1.0, 0.0, -0.75, 0.5, 0.75, 0.5, -1.0, -0.75, -1.0, -0.75, 0.25, 0.0, -0.75, 0.75, ]);
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    command_encoder400.insertDebugMarker("mymarker");
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    buffer203.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_buffer303 = command_encoder303.finish();
    texture500.destroy();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    command_encoder302.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3000.popDebugGroup()
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
    command_encoder301.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer205, 0, array5, 0, array5.length);
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_buffer002 = command_encoder002.finish();
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const command_buffer500 = command_encoder500.finish();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    buffer205.destroy()
    query202.destroy()
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
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
    query201.destroy()
    device50.pushErrorScope("out-of-memory");
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder400.popDebugGroup();
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    device30.queue.writeTexture({ texture: texture303 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder302.popDebugGroup()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query400.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    compute_pass_encoder2000.insertDebugMarker("marker")
    device30.pushErrorScope("validation");
    
    const command_buffer600 = command_encoder600.finish();
    device30.queue.writeTexture({ texture: texture303 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.popDebugGroup();
    device20.queue.writeBuffer(buffer206, 0, array5, 0, array5.length);
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder003.clearBuffer(buffer000);
    
    
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout001]
    });
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer206, 0, array3, 0, array3.length);
    device30.queue.writeTexture({ texture: texture303 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout003]
    });
    query201.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    buffer206.destroy()
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.resolveQuerySet(
        query202,
        0,
        32,
        buffer206,
        0
    )
    query400.destroy()
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    query300.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    texture200.destroy();
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    render_bundle_encoder000.popDebugGroup();
    texture302.destroy();
    device30.queue.writeTexture({ texture: texture303 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.setStencilReference(1);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    query204.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    query204.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer600.destroy()
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer302,
        0
    )
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    command_encoder302.copyBufferToTexture(
        {
            buffer: buffer302
        },
        {
            texture: texture303
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    texture201.destroy();
    texture303.destroy();
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer302,
        0
    )
    device60.pushErrorScope("internal");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder2000.setStencilReference(1);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device60.destroy();
    device20.queue.writeBuffer(buffer206, 0, array5, 0, array5.length);
    
    
    render_pass_encoder2000.executeBundles([])
    buffer200.destroy()
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    command_encoder302.copyBufferToTexture(
        {
            buffer: buffer300
        },
        {
            texture: texture303
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder003.insertDebugMarker("mymarker");
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture302.destroy();
    
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder0000.popDebugGroup()
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    render_pass_encoder2000.setStencilReference(1);
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    buffer203.destroy()
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3010.popDebugGroup()
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query001.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture002
        },
        {
            buffer: buffer000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder2000.setStencilReference(1);
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    buffer300.destroy()
    query001.destroy()
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    query300.destroy()
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    
    compute_pass_encoder3000.popDebugGroup()
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    command_encoder200.resolveQuerySet(
        query202,
        0,
        32,
        buffer206,
        0
    )
    texture303.destroy();
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.queue.writeBuffer(buffer207, 0, array4, 0, array4.length);
    render_pass_encoder3020.executeBundles([])
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3020.setStencilReference(1);
    compute_pass_encoder0010.insertDebugMarker("marker")
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    query001.destroy()
    query203.destroy()
    texture002.destroy();
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_bundle_encoder300.popDebugGroup();
    command_encoder300.pushDebugGroup("mygroupmarker")
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query004
    });
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.popDebugGroup();
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    device20.queue.writeBuffer(buffer207, 0, array0, 0, array0.length);
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout002]
    });
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2000.popDebugGroup()
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    query201.destroy()
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    query205.destroy()
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout003]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    device30.queue.writeTexture({ texture: texture303 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array6 = new Float32Array([0.0, -0.75, 0.75, -0.5, 1.0, 0.75, 1.0, 0.5, -0.25, -1.0, -1.0, 1.0, 0.5, 1.0, 1.0, -1.0, 0.75, -0.5, 1.0, 0.25, 0.75, -0.5, 0.0, -0.5, -1.0, 0.0, 0.0, -0.25, -1.0, -0.25, -0.25, -0.75, -0.5, 0.75, -0.25, 0.5, -0.5, -0.25, -1.0, 0.0, 0.25, 0.25, -0.25, 1.0, 0.0, -1.0, 0.25, -1.0, -0.75, -1.0, -0.5, 1.0, 0.0, 0.25, 0.0, -0.75, -0.75, -0.5, -0.5, 1.0, -0.75, 1.0, -1.0, -0.25, 0.0, -0.5, -0.5, 1.0, 0.0, -0.25, -0.25, -0.5, -0.25, 1.0, -0.75, 0.25, 0.25, -0.25, -0.25, -0.75, -1.0, -1.0, -0.5, 0.5, 0.0, 1.0, 0.25, -0.5, -0.25, -0.75, -1.0, -0.25, 1.0, 0.25, 0.0, 0.5, 0.5, 0.75, -1.0, 0.25, ]);
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer302,
        0
    )
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    query500.destroy()
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    command_encoder304.resolveQuerySet(
        query303,
        0,
        32,
        buffer302,
        0
    )
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.popDebugGroup()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    texture002.destroy();
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query303
    });
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout002]
    });
    buffer207.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query301.destroy()
    render_pass_encoder0030.executeBundles([])
    query400.destroy()
    query002.destroy()
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
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    query202.destroy()
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout304]
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query004
    });
    render_pass_encoder3040.executeBundles([])
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    command_encoder302.popDebugGroup()
    const command_buffer601 = command_encoder601.finish();
    compute_pass_encoder3020.popDebugGroup()
    const command_buffer304 = command_encoder304.finish();
    device30.queue.submit([command_buffer303, ]);
    device50.queue.submit([command_buffer500, ]);
    device50.queue.submit([command_buffer500, ]);
    device00.queue.submit([]);
    device00.queue.submit([command_buffer002, ]);
    device30.queue.submit([]);
    device30.queue.submit([command_buffer304, ]);
    const command_buffer001 = command_encoder001.finish();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2010.endOcclusionQuery()
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0000.popDebugGroup()
    command_encoder300.popDebugGroup()
    device30.queue.submit([]);
    const command_buffer300 = command_encoder300.finish();
    device50.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer300, ]);
    device50.queue.submit([command_buffer500, ]);
    command_encoder003.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    device00.queue.submit([]);
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([]);
    device20.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
}