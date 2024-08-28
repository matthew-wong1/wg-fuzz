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
    
    const array0 = new Float32Array([0.0, 0.5, -0.25, 0.5, 0.0, -0.25, -1.0, -1.0, -1.0, 1.0, -0.5, 0.0, 0.25, 0.5, 0.25, 1.0, 0.25, 0.25, 1.0, 1.0, 0.75, -1.0, 0.75, 1.0, -0.75, 0.0, -0.5, 1.0, 0.0, 0.75, 0.75, -0.5, -0.5, 1.0, 0.75, -0.75, -1.0, 0.75, 1.0, 0.0, -0.75, 1.0, -0.25, -0.25, 0.75, -0.25, -1.0, 0.75, -0.25, 0.25, 0.25, 0.0, 0.5, -0.5, -0.75, 0.0, 0.25, -0.75, -1.0, -0.75, -0.25, 1.0, 0.0, -0.5, 0.25, 0.25, 0.5, 1.0, 0.75, -0.5, -0.25, -1.0, -0.25, -1.0, -0.5, 1.0, -0.75, 1.0, -0.5, 0.25, -1.0, 1.0, 1.0, 1.0, 0.75, 0.75, 1.0, -1.0, -1.0, 0.25, 1.0, 0.0, -0.5, -0.75, 1.0, -0.25, 0.0, -0.75, -0.25, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array1 = new Float32Array([0.0, -1.0, 1.0, -0.5, 1.0, -1.0, 0.0, 0.75, -1.0, 0.5, 0.5, 0.5, -0.5, 1.0, -0.5, -0.25, -0.75, 0.5, -0.25, 0.0, -0.5, 0.25, -0.25, 0.5, -0.25, 0.5, -0.25, 0.0, -0.75, -1.0, 0.75, -0.5, -1.0, -1.0, 0.75, -0.5, -1.0, 0.5, 0.25, 0.0, 0.25, -0.75, -0.5, -0.5, 0.0, 1.0, -0.5, 1.0, 0.25, 0.5, 0.0, -0.5, 0.25, 1.0, 0.5, 0.0, -1.0, -0.25, 0.0, 1.0, 1.0, 0.0, -0.5, 0.75, -0.25, 0.0, -0.75, 1.0, -0.5, 0.0, 0.0, -1.0, 0.25, 0.75, 0.0, -0.75, 0.0, -1.0, -0.75, 0.0, 0.25, 1.0, -1.0, 0.25, 0.0, 0.75, 0.25, 1.0, 0.25, -1.0, 0.75, 0.5, -0.75, 1.0, 0.25, 1.0, 0.75, 1.0, 0.5, 0.5, ]);
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    command_encoder000.clearBuffer(buffer000);
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
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
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
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
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("internal");
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
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    command_encoder001.insertDebugMarker("mymarker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    command_encoder002.clearBuffer(buffer000);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    command_encoder001.insertDebugMarker("mymarker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_buffer001 = command_encoder001.finish();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const array2 = new Float32Array([-0.75, 0.25, 0.75, 0.5, 0.25, 0.5, 0.75, -0.25, 0.0, -0.75, 1.0, 0.75, -0.25, 0.75, -0.75, -0.75, -0.5, 0.75, 0.0, -0.75, -0.75, -0.75, -0.5, -1.0, 0.25, -0.5, -0.5, 0.5, -1.0, 0.25, 0.5, 0.0, 0.5, -1.0, 1.0, -0.5, 0.0, -0.75, -0.25, -0.75, -0.75, 0.5, -0.5, 1.0, 0.75, 0.75, 0.25, 0.75, -1.0, 0.0, -1.0, 1.0, -0.5, -1.0, 0.75, 0.5, 0.25, 0.5, 0.25, 0.25, 0.5, 0.0, -1.0, 0.75, 0.5, 0.0, -0.25, -1.0, -0.25, -0.75, -0.5, 0.25, 0.25, -0.25, -1.0, -0.25, -0.5, 0.0, 0.25, 0.0, 0.75, 0.75, -0.5, 1.0, 1.0, 0.25, 0.25, -0.5, 0.75, 0.0, 0.75, 0.25, -0.75, -1.0, 0.25, 0.75, 0.75, 0.5, 0.75, -1.0, ]);
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
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    query000.destroy()
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
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout005]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.submit([command_buffer001, ]);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    query000.destroy()
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    query000.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0020.popDebugGroup()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([0.0, 0.75, -0.25, 0.25, 0.75, -0.5, -0.75, 0.75, -0.5, 0.25, 0.75, 0.0, -1.0, 0.5, 1.0, 0.25, 0.75, 0.5, 0.25, 0.75, 0.0, -1.0, 1.0, -0.75, -0.25, -0.25, 0.5, 0.5, -0.75, 0.25, -1.0, 0.5, 1.0, -0.75, 0.75, -0.25, -1.0, -1.0, 1.0, -0.5, -0.25, 0.75, -1.0, 1.0, 0.5, -0.75, -0.25, -0.5, 1.0, 0.25, 0.75, 0.5, 0.0, 0.75, 1.0, -0.25, -0.25, -0.75, 0.25, -0.75, -0.25, -0.25, -0.75, -1.0, -0.75, 0.75, -0.5, -0.75, -1.0, 0.5, -0.75, -0.25, -0.75, 0.75, -0.75, -0.75, -0.5, 0.25, -1.0, 0.75, 0.25, -0.5, 0.5, -1.0, -1.0, 1.0, -1.0, 0.25, 0.75, 0.5, -0.75, 0.75, 0.0, 1.0, -0.25, 0.5, 0.0, -0.75, 0.25, -1.0, ]);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device20.pushErrorScope("validation");
    render_bundle_encoder001.popDebugGroup();
    const command_buffer201 = command_encoder201.finish();
    
    command_encoder200.insertDebugMarker("mymarker");
    
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    device20.queue.submit([command_buffer201, ]);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
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
    
    
    
    command_encoder200.insertDebugMarker("mymarker");
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout003]
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder200.popDebugGroup()
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    
    
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout002]
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    query003.destroy()
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout004]
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout004]
    });
    compute_pass_encoder0020.popDebugGroup()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    render_bundle_encoder002.popDebugGroup();
    
    command_encoder200.popDebugGroup()
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder000.popDebugGroup();
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device30.destroy();
    texture000.destroy();
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout003]
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const array4 = new Float32Array([-0.25, 0.75, -0.5, -0.25, -0.25, 1.0, 0.0, 0.0, -1.0, 0.25, 0.75, 0.0, -0.75, 0.0, -0.75, 0.25, 0.0, 0.75, -0.25, 0.25, -1.0, -0.5, 0.0, -0.75, -0.5, -1.0, -0.75, 0.25, -1.0, -0.5, 0.75, 1.0, -0.75, 0.75, 0.0, -0.5, 0.5, -0.25, 0.25, -1.0, -0.25, 0.75, 0.0, 0.75, 0.0, 0.25, -0.5, 0.0, -0.75, -1.0, -1.0, 0.75, 0.75, -0.25, -0.5, 0.5, 0.0, 1.0, -0.5, -0.5, 1.0, 0.0, -0.75, 0.5, -0.5, -0.25, 0.25, 0.0, 1.0, -0.25, -0.75, 0.0, 1.0, -0.75, -1.0, 0.25, 0.75, 0.0, -0.25, 1.0, -0.5, -1.0, -0.75, -0.5, 0.25, -0.5, 0.75, 1.0, 0.0, 0.5, 0.0, -0.25, -0.75, 1.0, 1.0, 0.0, -1.0, 0.5, -0.75, -1.0, ]);
    compute_pass_encoder4000.insertDebugMarker("marker")
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: undefined
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    
    query005.destroy()
    const command_buffer200 = command_encoder200.finish();
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    render_pass_encoder0030.insertDebugMarker("marker");
    query000.destroy()
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout004]
    });
    query001.destroy()
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    query000.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_pass_encoder0030.executeBundles([])
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder004.clearBuffer(buffer005);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    query002.destroy()
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: query003
    });
    const command_buffer401 = command_encoder401.finish();
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    compute_pass_encoder2020.insertDebugMarker("marker")
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    texture001.destroy();
    render_pass_encoder0040.insertDebugMarker("marker");
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
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    query201.destroy()
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout002]
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    command_encoder203.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    query000.destroy()
    render_pass_encoder0040.insertDebugMarker("marker");
    command_encoder203.popDebugGroup()
    compute_pass_encoder0000.insertDebugMarker("marker")
    query201.destroy()
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
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    query003.destroy()
    render_pass_encoder0030.insertDebugMarker("marker");
    query004.destroy()
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0050.executeBundles([])
    render_pass_encoder0040.executeBundles([])
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus-stencil8",
        dimension: "2d"
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    query001.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query000.destroy()
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
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
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    render_pass_encoder0050.executeBundles([])
    query200.destroy()
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder0030.insertDebugMarker("marker");
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const command_buffer203 = command_encoder203.finish();
    
    render_pass_encoder0060.insertDebugMarker("marker");
    texture400.destroy();
    render_bundle_encoder002.popDebugGroup();
    render_pass_encoder0050.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    texture200.destroy();
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder0060.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0030.insertDebugMarker("marker");
    device40.pushErrorScope("validation");
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout002]
    });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    query001.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.popDebugGroup();
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    query202.destroy()
    
    render_pass_encoder0060.executeBundles([])
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    query200.destroy()
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query200.destroy()
    
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query200.destroy()
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    query006.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query002.destroy()
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
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query203.destroy()
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    
    device20.queue.submit([command_buffer200, ]);
    
    render_pass_encoder0060.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0030.insertDebugMarker("marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    render_bundle_encoder002.popDebugGroup();
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query005
    });
    texture201.destroy();
    query002.destroy()
    render_pass_encoder0070.insertDebugMarker("marker");
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder0070.executeBundles([])
    compute_pass_encoder0020.insertDebugMarker("marker")
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout004]
    });
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    render_pass_encoder0070.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder200.popDebugGroup();
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder0070.executeBundles([])
    render_pass_encoder0030.executeBundles([])
    
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query003.destroy()
    query006.destroy()
    
    
    query200.destroy()
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder0070.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0050.executeBundles([])
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: query006
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0070.insertDebugMarker("marker");
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    query001.destroy()
    render_bundle_encoder200.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query003.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    const sampler006 = device00.createSampler( { label: "sampler006" } );
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
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    query000.destroy()
    
    
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder001.popDebugGroup();
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    render_pass_encoder0040.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    
    render_pass_encoder0050.executeBundles([])
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    const render_pass_encoder0090 = command_encoder009.beginRenderPass({
        label: "render_pass_encoder0090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query002
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    render_pass_encoder0080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.insertDebugMarker("marker");
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    render_pass_encoder0060.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query201
    });
    render_pass_encoder0050.executeBundles([])
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_pass_encoder0080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0060.executeBundles([])
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder0080.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0090.executeBundles([])
    compute_pass_encoder0000.insertDebugMarker("marker")
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    query001.destroy()
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    query005.destroy()
    render_pass_encoder0080.executeBundles([])
    compute_pass_encoder4000.popDebugGroup()
    texture402.destroy();
    query200.destroy()
    render_pass_encoder0070.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query005.destroy()
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    query203.destroy()
    
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_buffer205 = command_encoder205.finish();
    compute_pass_encoder2020.popDebugGroup()
    device20.queue.submit([command_buffer203, command_buffer205, ]);
    compute_pass_encoder0020.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    const command_buffer402 = command_encoder402.finish();
}