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
        powerPreference: "low-power"
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    device10.destroy();
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder001.insertDebugMarker("mymarker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array0 = new Float32Array([-0.5, 0.0, 0.5, -1.0, 0.0, -1.0, 0.75, 0.0, -0.75, -0.5, -0.5, 0.25, -0.75, -0.5, -0.75, 0.75, 0.0, 0.75, 1.0, -0.5, 0.0, 0.25, -0.25, -0.25, -1.0, -1.0, 0.25, 0.0, -0.5, 0.5, -0.75, 0.0, 0.75, 0.0, 0.25, -0.75, -1.0, 0.5, 0.25, -1.0, 0.0, -0.5, 0.5, -1.0, -1.0, 1.0, -1.0, -0.75, 0.25, -0.25, 0.5, 1.0, 0.75, -0.75, 1.0, 0.0, -0.25, 0.75, 0.0, 0.25, 0.25, 0.75, 0.75, 0.75, 0.75, 0.0, -0.75, 0.5, -1.0, 1.0, -0.75, -0.5, -0.25, 1.0, 0.25, -0.5, -0.5, -0.5, 0.5, -1.0, 0.25, 0.0, -0.5, -0.25, 0.25, -0.5, 1.0, -0.75, 0.75, 0.0, 0.5, 0.75, 0.5, 0.5, 0.0, 0.75, 1.0, 0.0, 1.0, -1.0, ]);
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    command_encoder001.insertDebugMarker("mymarker");
    const array1 = new Float32Array([0.0, -0.75, -0.5, -0.75, -0.25, 0.75, 1.0, 0.5, -0.25, -0.5, 0.0, -0.25, -0.25, -0.5, 1.0, -0.25, 1.0, -1.0, -0.25, -0.75, 0.75, -0.25, 1.0, -0.25, -0.75, 1.0, -1.0, -0.25, 1.0, 0.75, 0.75, 0.5, -0.75, -0.25, -0.5, -0.25, 0.25, 1.0, 0.5, -0.75, -0.25, -0.25, 0.5, -1.0, 1.0, -0.75, 0.0, -0.5, 1.0, -0.25, -0.5, -0.75, -1.0, 1.0, 0.5, 0.5, -0.5, -0.75, -0.75, 1.0, 1.0, 0.5, 1.0, -0.5, -0.25, -0.75, 0.25, 0.25, -0.75, -0.25, 0.25, 0.5, 0.5, -0.75, 0.25, -0.5, -0.25, 0.5, 0.5, -0.75, 0.25, 1.0, -0.75, 0.0, 0.0, 0.75, -0.5, 0.0, 0.75, -0.5, -0.75, 0.25, -0.75, 0.0, 0.0, -1.0, 0.75, -0.5, 0.75, -0.75, ]);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    command_encoder001.insertDebugMarker("mymarker");
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
    command_encoder001.pushDebugGroup("mygroupmarker")
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    texture001.destroy();
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder003.insertDebugMarker("mymarker");
    device00.pushErrorScope("out-of-memory");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer000.destroy()
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder001.insertDebugMarker("mymarker");
    
    texture002.destroy();
    command_encoder001.insertDebugMarker("mymarker");
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const array2 = new Float32Array([0.5, 0.75, -0.75, 0.5, -0.5, -1.0, -0.25, 0.5, -0.5, -0.25, 0.0, -0.25, 0.75, 0.75, 0.5, -0.5, 0.0, -1.0, -0.25, -0.25, 1.0, 0.25, 0.25, -1.0, -1.0, -0.75, -0.5, 0.75, -0.75, 0.25, 0.5, -0.75, -1.0, -0.5, -0.5, 0.5, -0.25, 0.5, 0.5, -1.0, 1.0, -0.5, -1.0, 0.5, -0.5, 0.0, 0.75, 1.0, -0.25, 0.25, 0.25, 0.25, 0.25, 0.5, 0.5, 0.0, -0.25, 0.5, 1.0, -0.75, 0.0, 0.5, 0.25, -0.25, -1.0, 0.0, 0.25, -0.75, 0.25, -0.25, 0.0, -1.0, 0.75, -0.5, -1.0, 0.75, -1.0, 0.0, -0.25, -0.75, 0.25, 0.5, -0.75, -0.75, 0.75, 0.75, -0.5, -0.5, 1.0, 0.25, -0.75, 0.25, 0.25, 0.75, 0.75, -1.0, 0.5, 0.25, -0.75, -0.75, ]);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer001.destroy()
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    query000.destroy()
    query001.destroy()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    device00.queue.writeTexture({ texture: texture005 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture005.destroy();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
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
    device20.destroy();
    query000.destroy()
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    
    texture004.destroy();
    texture003.destroy();
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    texture006.destroy();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    texture000.destroy();
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    buffer004.destroy()
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    buffer002.destroy()
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    query001.destroy()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query000.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    device30.destroy();
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    buffer401.destroy()
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
    device00.queue.writeTexture({ texture: texture007 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    query000.destroy()
    const array3 = new Float32Array([-1.0, 1.0, -0.25, -0.5, 0.25, 0.25, 0.0, -1.0, 0.5, 0.0, -0.5, 0.0, -1.0, 0.5, -1.0, 0.75, 0.0, -0.5, -0.75, 0.25, -0.5, 1.0, 0.5, 0.0, 1.0, -1.0, 0.25, 0.75, 0.0, 0.0, 0.0, -1.0, 1.0, 1.0, 0.5, -0.5, 0.75, 0.75, -0.5, 0.25, -0.25, 0.0, -0.25, -0.25, -0.25, -0.75, -0.25, 0.0, -0.75, 0.0, -0.5, 0.75, 0.0, -1.0, -0.75, -0.75, 0.75, -0.5, -0.75, 0.25, -0.75, 0.5, -0.25, 0.5, -0.5, -0.5, 0.0, -0.75, -1.0, 0.25, -1.0, -1.0, 0.5, 0.0, -0.25, -0.25, 1.0, -0.75, -0.75, -1.0, -0.25, -0.5, 0.5, 1.0, 0.5, 1.0, 0.0, -0.5, -0.25, 0.25, -0.75, 0.75, -1.0, -0.75, 0.5, -1.0, -0.25, -0.5, 0.25, -0.5, ]);
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout003]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    texture007.destroy();
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture008 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture008.destroy();
    
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
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer005.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout003]
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const array4 = new Float32Array([-0.75, -0.5, 0.0, -1.0, 1.0, 0.5, -0.75, 1.0, 0.0, 0.0, 1.0, 0.5, 0.75, 0.25, -0.5, -0.75, -0.25, -0.5, 1.0, 0.25, -1.0, -0.25, 0.75, 0.25, 1.0, 0.0, -0.75, -0.25, 0.25, -0.25, -0.25, 0.5, -0.75, 1.0, 0.75, 0.25, -1.0, -1.0, -1.0, 0.75, -1.0, -0.75, 0.75, 0.25, 0.5, -1.0, -1.0, 0.75, 0.0, -0.25, 0.0, 0.75, -1.0, -0.5, -1.0, 0.75, 1.0, -0.75, -0.5, -0.25, -0.25, -1.0, -0.75, -1.0, 1.0, 0.0, -1.0, -0.5, 0.0, -0.75, 0.0, 0.75, 0.75, -0.25, 1.0, -0.25, -0.5, -0.25, -0.25, -0.5, -1.0, -0.75, -0.75, 0.0, -0.25, 1.0, 0.25, -0.75, 0.5, -0.25, 0.0, -0.5, 0.0, 1.0, -0.75, -0.75, -1.0, -0.25, 0.25, -0.5, ]);
    const command_buffer004 = command_encoder004.finish();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query001.destroy()
    buffer402.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array5 = new Float32Array([0.75, 1.0, 0.5, -0.5, 0.0, 0.0, -0.75, -1.0, -0.25, 0.25, 0.75, 0.5, 0.5, -0.5, -0.25, 0.75, -1.0, 0.5, 0.0, 0.25, 1.0, 1.0, 0.0, 1.0, -0.75, -0.5, 0.25, -0.5, -0.25, -1.0, 0.25, 1.0, 0.75, 1.0, 0.0, 0.5, 0.75, 1.0, -0.75, -0.25, 0.25, -0.5, -1.0, 0.25, 0.25, 0.5, 0.75, -0.25, -1.0, -1.0, -0.5, -0.5, 0.5, -0.75, -1.0, -0.75, 1.0, 0.75, 0.5, -1.0, -0.25, -0.5, -1.0, 0.25, 0.75, -0.75, -1.0, 0.5, 0.0, 0.0, 0.0, 1.0, 0.0, -0.75, 0.25, 0.75, -0.5, 0.5, 0.5, 0.75, 0.25, 0.5, -0.25, -0.75, 1.0, 0.75, 0.5, 0.25, 0.5, 0.5, 0.75, -1.0, 0.0, 0.5, 0.0, 0.25, 0.5, -0.25, -0.5, 1.0, ]);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    query001.destroy()
    
    query002.destroy()
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    buffer501.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    buffer400.destroy()
    
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout004]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm",
        dimension: "2d"
    });
    texture400.destroy();
    
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout002]
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    query001.destroy()
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device40.queue.writeBuffer(buffer403, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer403, 0, array1, 0, array1.length);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const command_buffer005 = command_encoder005.finish();
    {
        await buffer006.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer006.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer006.unmap();
        console.log(new Float32Array(data));
    }
    {
        await buffer403.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer403.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer403.unmap();
        console.log(new Float32Array(data));
    }
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    {
        await buffer006.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer006.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer006.unmap();
        console.log(new Float32Array(data));
    }
    device50.destroy();
    device40.queue.writeBuffer(buffer403, 0, array2, 0, array2.length);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array6 = new Float32Array([-0.5, 0.75, -1.0, 0.25, -0.25, -1.0, -1.0, -1.0, -0.5, -1.0, -1.0, 0.0, 0.75, 0.75, 0.75, -1.0, 0.0, -0.25, -1.0, 0.5, 0.0, -0.75, 1.0, 0.25, 0.5, 0.5, -1.0, 1.0, 0.75, -1.0, -0.75, 0.25, -0.25, 0.25, -0.75, 0.0, 0.25, -0.75, -0.25, -1.0, 0.0, -0.5, 0.5, -0.25, 0.25, -0.75, -1.0, 0.0, -1.0, -0.75, -0.5, -0.75, 0.5, -0.5, 0.0, 0.25, 1.0, 0.0, 0.0, -0.75, -0.5, 0.5, 0.25, -0.75, -0.5, -0.75, -1.0, 1.0, -1.0, -0.5, 1.0, -0.75, -0.75, -1.0, 1.0, 0.0, 0.5, 0.75, 1.0, 0.25, 0.25, -1.0, -0.25, 0.0, 0.5, 0.0, -0.75, 0.25, -0.25, 0.5, -0.5, 1.0, -0.75, 0.5, -1.0, 0.25, -0.5, -0.75, -0.5, 0.0, ]);
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    compute_pass_encoder0030.insertDebugMarker("marker")
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    query000.destroy()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture402 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture402 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    device40.queue.writeTexture({ texture: texture402 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    texture402.destroy();
    device40.queue.writeBuffer(buffer403, 0, array4, 0, array4.length);
    query001.destroy()
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    device70.pushErrorScope("internal");
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device60.pushErrorScope("validation");
    
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer403, 0, array5, 0, array5.length);
    texture401.destroy();
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    query701.destroy()
    command_encoder700.insertDebugMarker("mymarker");
    
    command_encoder700.insertDebugMarker("mymarker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    query700.destroy()
    buffer404.destroy()
    {
        await buffer006.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer006.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer006.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder4000.insertDebugMarker("marker")
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    compute_pass_encoder0030.insertDebugMarker("marker")
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    device40.pushErrorScope("internal");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder701.insertDebugMarker("mymarker");
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout701]
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    texture403.destroy();
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    query004.destroy()
    buffer003.destroy()
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    query703.destroy()
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    query000.destroy()
    
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout004]
    });
    device40.queue.writeBuffer(buffer403, 0, array5, 0, array5.length);
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    const array7 = new Float32Array([-1.0, 0.0, -1.0, 1.0, 0.5, 0.0, 0.5, 0.0, 1.0, -0.5, -0.25, 1.0, -0.75, 0.25, 0.75, -1.0, -0.5, -0.25, -0.25, 1.0, -0.75, 0.75, -0.25, 0.0, -1.0, 0.75, -0.5, 0.25, 1.0, -0.25, -0.75, -0.25, 0.75, -0.75, 0.25, -0.25, -0.75, 1.0, 1.0, -0.5, 0.75, 0.25, 0.75, 0.75, 0.5, 0.0, -0.75, -1.0, -0.5, 0.25, -1.0, -1.0, -1.0, -1.0, -0.25, 0.25, -1.0, -0.5, 1.0, 0.0, 0.25, 0.0, -0.5, 0.0, -0.75, 0.5, -0.75, 0.75, 0.75, 0.5, 1.0, 0.75, 0.25, 0.25, 1.0, -1.0, 1.0, 0.0, 0.75, -0.5, -0.5, 0.0, -0.25, -1.0, 1.0, 1.0, -1.0, 0.0, 0.25, -0.5, 0.0, 0.5, 1.0, -0.25, 0.75, 1.0, 1.0, 0.75, 1.0, -0.75, ]);
    {
        await buffer403.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer403.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer403.unmap();
        console.log(new Float32Array(data));
    }
    {
        await buffer006.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer006.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer006.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    query701.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer403, 0, array1, 0, array1.length);
    query000.destroy()
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    {
        await buffer403.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer403.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer403.unmap();
        console.log(new Float32Array(data));
    }
    
    {
        await buffer403.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer403.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer403.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder4000.insertDebugMarker("marker")
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    buffer006.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout002]
    });
    query000.destroy()
    
    buffer405.destroy()
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout702]
    });
    query000.destroy()
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout004]
    });
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
    const pipeline_layout706 = device70.createPipelineLayout({ 
        label: "pipeline_layout706",
        bindGroupLayouts: [bind_group_layout703]
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout402]
    });
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
    render_bundle_encoder000.insertDebugMarker("marker");
    query001.destroy()
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    query701.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    texture600.destroy();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    query400.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_buffer703 = command_encoder703.finish();
    device40.queue.writeBuffer(buffer403, 0, array6, 0, array6.length);
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout001]
    });
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    query700.destroy()
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_buffer401 = command_encoder401.finish();
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout401]
    });
    query703.destroy()
    const pipeline_layout707 = device70.createPipelineLayout({ 
        label: "pipeline_layout707",
        bindGroupLayouts: [bind_group_layout700]
    });
    texture404.destroy();
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device40.queue.writeBuffer(buffer403, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout402]
    });
    query701.destroy()
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    compute_pass_encoder7020.insertDebugMarker("marker")
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout708 = device70.createPipelineLayout({ 
        label: "pipeline_layout708",
        bindGroupLayouts: [bind_group_layout700]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    compute_pass_encoder0020.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer403, 0, array7, 0, array7.length);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const command_encoder705 = device70.createCommandEncoder({ label: "command_encoder705" });
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    {
        await buffer403.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer403.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer403.unmap();
        console.log(new Float32Array(data));
    }
    const command_buffer402 = command_encoder402.finish();
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    command_encoder602.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer403, 0, array2, 0, array2.length);
    const command_buffer704 = command_encoder704.finish();
    render_bundle_encoder702.insertDebugMarker("marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    query600.destroy()
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    query000.destroy()
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder705.insertDebugMarker("mymarker");
    compute_pass_encoder7020.insertDebugMarker("marker")
    buffer008.destroy()
    const array8 = new Float32Array([0.0, 0.5, 1.0, 1.0, -0.25, 0.25, 1.0, 0.25, 0.25, 1.0, -1.0, 0.5, 0.25, 0.75, 0.5, -0.5, 0.25, 0.75, 0.5, -1.0, 0.5, 0.75, 0.5, 0.25, 0.5, -1.0, 0.5, 0.0, 1.0, 0.5, 1.0, -0.25, 0.0, 0.0, 1.0, 0.0, -1.0, -0.75, -0.75, 0.75, -0.5, -1.0, -0.25, 0.75, -0.25, 0.75, 0.75, 0.5, 0.25, -0.5, 0.75, 1.0, -0.25, 0.25, 1.0, 0.5, 0.75, -1.0, -0.5, 0.5, -0.25, 0.5, 1.0, 0.0, -0.25, 0.5, 1.0, 0.25, 0.75, -0.5, -0.25, 0.75, -0.5, -0.75, 0.5, 1.0, 1.0, 1.0, 0.5, 0.75, -1.0, 0.75, 0.0, 0.25, 0.75, 1.0, 0.0, -0.5, -1.0, -0.5, 0.5, 0.25, 0.5, -1.0, -0.75, 1.0, -0.5, 0.75, 0.75, -0.25, ]);
    
    const command_encoder706 = device70.createCommandEncoder({ label: "command_encoder706" });
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout003]
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer406.destroy()
    device40.queue.writeBuffer(buffer403, 0, array7, 0, array7.length);
    
    buffer600.destroy()
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const compute_pass_encoder7050 = command_encoder705.beginComputePass({ label: "compute_pass_encoder7050" });
    compute_pass_encoder6000.insertDebugMarker("marker")
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const command_encoder707 = device70.createCommandEncoder({ label: "command_encoder707" });
    
    compute_pass_encoder7050.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer403, 0, array7, 0, array7.length);
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const command_encoder708 = device70.createCommandEncoder({ label: "command_encoder708" });
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout005]
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    render_bundle_encoder402.insertDebugMarker("marker");
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer403, 0, array5, 0, array5.length);
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_buffer706 = command_encoder706.finish();
    const query705 = device70.createQuerySet({
        label: "query705",
        type: "occlusion",
        count: 32,
    });
    command_encoder708.pushDebugGroup("mygroupmarker")
    const pipeline_layout0028 = device00.createPipelineLayout({ 
        label: "pipeline_layout0028",
        bindGroupLayouts: [bind_group_layout002]
    });
    query702.destroy()
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder7000.insertDebugMarker("marker")
    query702.destroy()
    query001.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    
    command_encoder602.insertDebugMarker("mymarker");
    
    command_encoder602.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer403, 0, array5, 0, array5.length);
    texture800.destroy();
    render_bundle_encoder701.insertDebugMarker("marker");
    compute_pass_encoder6010.insertDebugMarker("marker")
    query702.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    const command_encoder709 = device70.createCommandEncoder({ label: "command_encoder709" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    command_encoder800.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer403, 0, array8, 0, array8.length);
    query003.destroy()
    device40.queue.writeBuffer(buffer403, 0, array1, 0, array1.length);
    const command_buffer707 = command_encoder707.finish();
    const command_buffer800 = command_encoder800.finish();
    const command_buffer602 = command_encoder602.finish();
    command_encoder708.popDebugGroup()
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    device70.queue.submit([command_buffer703, command_buffer704, command_buffer706, ]);
    device70.queue.submit([command_buffer707, ]);
    const command_buffer708 = command_encoder708.finish();
    const command_buffer709 = command_encoder709.finish();
    device60.queue.submit([command_buffer602, ]);
    device70.queue.submit([command_buffer709, ]);
    device00.queue.submit([command_buffer005, ]);
    device80.queue.submit([command_buffer800, ]);
    device00.queue.submit([command_buffer004, ]);
}