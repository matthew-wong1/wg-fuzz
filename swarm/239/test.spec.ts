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
    const array0 = new Float32Array([1.0, 0.75, -0.25, 0.25, 0.5, -1.0, 0.0, 0.5, -0.75, 0.25, 0.5, 0.75, -0.5, 0.5, 0.0, -0.25, 0.25, 0.75, -1.0, 1.0, 0.25, -0.5, 0.5, -0.75, -0.5, 1.0, -1.0, -1.0, 0.5, 0.5, 0.25, 0.0, -1.0, 0.75, -0.5, 0.5, 0.5, 0.75, 0.75, -1.0, 0.25, 0.25, 0.25, -1.0, -0.75, 0.0, 1.0, 0.25, 1.0, 0.75, -0.25, -0.75, 1.0, -0.75, -0.25, -0.25, -1.0, 0.0, -0.75, -0.5, 0.0, 0.5, 0.5, 0.5, -1.0, -1.0, -1.0, -1.0, 0.0, -0.25, 0.5, 0.75, 0.75, 1.0, 0.0, -0.5, -0.5, 0.5, -0.75, -1.0, 0.5, -0.25, 0.25, 0.0, -1.0, -0.75, 0.0, -1.0, 0.5, 0.25, -1.0, 0.0, -0.75, 0.0, 0.75, 0.5, -0.5, -0.25, 0.75, -0.75, ]);
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
    
    
    
    device00.pushErrorScope("validation");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    query001.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query001.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder000.popDebugGroup();
    const array1 = new Float32Array([0.0, -0.25, -0.5, -0.75, 0.0, 0.0, 0.25, 0.0, 0.25, -0.75, 0.25, 1.0, 0.25, -0.75, 0.0, -0.25, 1.0, -0.25, 0.0, -1.0, -0.75, -0.5, 0.0, -1.0, 0.0, 0.75, 1.0, 0.75, 1.0, 1.0, 0.75, 0.5, -0.5, -0.25, 0.25, -0.25, 0.25, 1.0, 0.5, 0.25, -0.75, -1.0, -0.5, -0.75, 0.5, 0.5, 0.25, 0.25, 0.0, -0.25, 0.0, -0.25, -0.75, 0.75, -0.75, -0.25, 1.0, -0.25, 1.0, 0.25, 0.75, 0.0, 1.0, 0.75, -0.75, -0.75, 0.25, 0.75, 0.0, -0.75, -0.25, -1.0, -0.25, -0.75, 1.0, 0.75, -1.0, -0.75, 0.25, -0.75, 0.75, 1.0, -1.0, -1.0, 0.25, 0.25, 1.0, -0.5, -0.75, 0.5, 0.0, 0.25, -0.25, 1.0, 0.25, -0.25, 0.25, -0.25, -0.25, 1.0, ]);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    query001.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    device00.pushErrorScope("validation");
    device30.destroy();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const array2 = new Float32Array([0.75, -0.5, -0.5, 1.0, -1.0, 0.25, 1.0, 0.5, -0.75, 0.75, 0.0, -0.25, -0.5, 0.75, -1.0, -0.25, 0.0, 0.5, 0.75, -0.75, 1.0, 0.0, 0.0, -0.75, 0.5, 1.0, 0.0, 0.5, -0.75, -0.25, -0.25, -1.0, 0.5, 0.75, -0.75, -0.75, 0.0, -0.75, -0.25, 1.0, 0.5, -0.75, -0.5, -0.25, 0.25, 0.5, 0.5, 0.5, 1.0, -0.5, 0.5, -0.75, 0.25, 0.75, -0.5, -1.0, -1.0, 0.75, 0.25, 0.0, 1.0, -1.0, -0.25, 0.75, 1.0, -0.25, -0.75, 1.0, 0.5, 0.0, -0.25, -0.25, 0.0, 0.5, 1.0, 0.0, -1.0, 0.75, 0.0, 0.0, -1.0, -0.5, 0.25, 0.25, 1.0, 1.0, -0.5, -1.0, -0.5, 1.0, -0.25, -0.75, 0.0, -0.5, 0.5, 0.25, 1.0, 0.0, -1.0, -0.5, ]);
    render_bundle_encoder002.insertDebugMarker("marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
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
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder000.popDebugGroup();
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
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
    device40.pushErrorScope("internal");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture000.destroy();
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    compute_pass_encoder0000.popDebugGroup()
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder000.popDebugGroup();
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    buffer400.destroy()
    const array3 = new Float32Array([-0.25, -0.25, -0.5, -1.0, -1.0, 0.0, 0.5, -1.0, -0.25, 0.5, -0.25, -0.5, -0.25, -0.25, -1.0, 0.5, 0.5, 0.75, 0.25, -0.75, -0.75, -1.0, 0.5, -1.0, 0.75, 0.0, 0.75, -0.75, 0.25, 0.25, 0.25, 0.25, 0.75, 0.0, 1.0, 0.5, -1.0, 0.5, -0.25, -1.0, 0.5, -0.75, 0.0, 0.75, 1.0, 1.0, -0.25, -0.25, -1.0, 0.75, -1.0, -0.5, 0.75, 0.0, 0.25, 1.0, -0.75, -0.5, -0.5, -1.0, 0.75, 0.75, 0.25, -0.5, 0.75, 0.25, 0.0, 0.0, 0.5, 1.0, 0.0, -1.0, 0.0, 0.75, 1.0, -1.0, 0.5, -0.25, -0.75, 1.0, 0.0, 0.0, -0.75, -0.5, 0.0, -0.5, -1.0, 0.5, -0.5, 0.0, -0.75, 1.0, -0.5, 0.75, 0.0, 0.5, 1.0, -1.0, 0.25, -1.0, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder002.popDebugGroup();
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_buffer003 = command_encoder003.finish();
    
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
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.pushErrorScope("internal");
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    buffer401.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.popDebugGroup()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder001.popDebugGroup();
    compute_pass_encoder0000.insertDebugMarker("marker")
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device40.pushErrorScope("internal");
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    
    const command_buffer400 = command_encoder400.finish();
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    compute_pass_encoder0010.popDebugGroup()
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_buffer004 = command_encoder004.finish();
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query001.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    render_bundle_encoder000.popDebugGroup();
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout002]
    });
    device00.queue.submit([command_buffer004, ]);
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    const array4 = new Float32Array([-1.0, 1.0, -0.5, -0.5, -0.25, -0.25, -0.5, -0.5, -0.5, 0.5, 0.5, 0.75, 1.0, -0.75, 0.25, -0.25, 0.25, 0.5, -0.5, 1.0, -1.0, -0.5, -1.0, 0.5, -0.25, 0.25, -1.0, 0.25, 0.75, -0.25, -0.5, 0.75, 1.0, 1.0, 0.25, 0.25, 0.0, -1.0, -0.75, 0.0, 0.25, 0.0, -1.0, 0.0, 1.0, 0.5, -0.5, -0.5, 0.75, 0.5, -0.75, 0.75, 0.5, 0.0, -0.75, 0.0, 0.5, 0.75, 0.25, 0.5, -1.0, 1.0, 0.0, -0.25, 0.5, -0.5, 0.75, 0.0, -1.0, 0.5, -0.25, 0.5, 1.0, -0.5, -0.25, -0.25, 0.0, -0.75, 0.75, -1.0, 0.5, 0.25, 1.0, 0.5, -0.25, -0.25, -1.0, 0.0, 1.0, 0.75, 1.0, 0.75, -0.25, 0.5, 0.5, 0.0, -1.0, -0.5, -0.25, 0.0, ]);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder0020.setStencilReference(1);
    
    
    
    
    
    device40.pushErrorScope("out-of-memory");
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.executeBundles([])
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_pass_encoder0020.executeBundles([])
    
    
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    buffer002.destroy()
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer000.destroy()
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query000.destroy()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query000.destroy()
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0000.pushDebugGroup("group_marker")
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
    buffer001.destroy()
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    render_pass_encoder0050.executeBundles([])
    texture400.destroy();
    
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    buffer403.destroy()
    render_bundle_encoder001.popDebugGroup();
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder0020.executeBundles([])
    query001.destroy()
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_buffer200 = command_encoder200.finish();
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_buffer006 = command_encoder006.finish();
    
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_pass_encoder0020.setStencilReference(1);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    texture001.destroy();
    query001.destroy()
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_pass_encoder0050.executeBundles([])
    const command_buffer202 = command_encoder202.finish();
    device40.pushErrorScope("out-of-memory");
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query002.destroy()
    render_pass_encoder0050.setStencilReference(1);
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder0050.setStencilReference(1);
    query002.destroy()
    query401.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout004]
    });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.pushErrorScope("internal");
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
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
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout004]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    buffer404.destroy()
    render_pass_encoder0020.setStencilReference(1);
    query001.destroy()
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder0020.executeBundles([])
    device50.pushErrorScope("internal");
    query001.destroy()
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    
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
    device00.queue.submit([command_buffer003, ]);
    
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder002.popDebugGroup();
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16uint",
        dimension: "2d"
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout003]
    });
    texture402.destroy();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0010.popDebugGroup()
    query001.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0070.setStencilReference(1);
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    texture002.destroy();
    query500.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0070.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    query402.destroy()
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout403]
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout004]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout004]
    });
    compute_pass_encoder0010.popDebugGroup()
    
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const array5 = new Float32Array([0.0, -0.5, 0.0, -0.25, -0.25, -0.75, -0.5, 0.5, 0.0, 0.5, 0.5, -1.0, 0.5, 1.0, 0.25, 1.0, -0.5, 0.5, -0.25, -1.0, -0.5, 0.75, -1.0, -0.75, -1.0, -0.5, -0.75, -0.25, -0.5, 1.0, 1.0, 1.0, 0.5, 0.0, 0.5, 0.25, 0.0, -0.75, -0.75, -0.25, 0.25, -0.5, -0.75, 0.75, -1.0, -0.25, 1.0, 0.0, 0.75, 0.5, -0.5, 1.0, -0.25, 0.25, 1.0, 0.75, 0.0, 0.75, -0.5, -1.0, -0.25, -0.25, -0.5, -0.5, 0.0, 0.5, -0.25, -1.0, 0.5, -0.75, -0.5, 0.0, -0.25, -0.5, 0.5, 1.0, 0.75, 0.5, 0.75, 1.0, -0.25, -0.75, 1.0, 0.0, -0.5, 0.25, 0.25, -0.5, 1.0, 0.25, -1.0, 0.25, 0.25, 1.0, -0.75, 0.75, 0.75, 0.25, 0.5, -0.25, ]);
    
    render_pass_encoder0070.executeBundles([])
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture003.destroy();
    render_pass_encoder0020.setStencilReference(1);
    query400.destroy()
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    texture004.destroy();
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    render_pass_encoder0050.executeBundles([])
    
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
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
    render_bundle_encoder500.pushDebugGroup("group_marker");
    buffer405.destroy()
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    render_pass_encoder0070.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout004]
    });
    texture200.destroy();
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("out-of-memory");
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout401]
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
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
    query001.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout005]
    });
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    render_bundle_encoder401.popDebugGroup();
    render_bundle_encoder002.popDebugGroup();
    query401.destroy()
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    render_pass_encoder0070.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout401]
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    query403.destroy()
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout402]
    });
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    render_bundle_encoder500.insertDebugMarker("marker");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture404.destroy();
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
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
    texture500.destroy();
    query401.destroy()
    
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout006]
    });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16sint",
        dimension: "2d"
    });
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout007]
    });
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: query502
    });
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    query401.destroy()
    const array6 = new Float32Array([-0.5, 0.0, 1.0, 0.75, 0.0, -0.75, 0.25, 0.5, 1.0, -1.0, 0.0, 0.0, 0.75, -0.25, 0.0, 0.0, 0.75, -0.5, 1.0, -0.5, 0.0, -0.5, 0.25, -0.5, 0.0, -1.0, 0.75, 0.0, -0.75, -0.75, -0.5, 0.25, 0.0, -1.0, -1.0, 0.5, -0.75, -0.5, -0.75, 1.0, 1.0, -0.25, 0.5, 0.5, -0.5, 1.0, 0.5, -0.25, 0.75, -0.75, 0.75, 0.5, -0.25, -0.5, -0.25, -0.5, -1.0, -0.75, 0.5, 0.0, 1.0, 0.5, 0.5, -1.0, -0.25, 0.75, -0.75, 0.5, 0.5, 0.75, -0.75, 0.5, -0.75, 0.0, 0.0, -0.5, -1.0, -0.75, 0.75, 0.25, 0.25, -0.5, 1.0, -0.5, 0.0, 1.0, -0.25, -0.25, -0.5, -0.5, 0.5, -0.5, 0.0, 0.75, -0.25, -0.5, -0.25, 0.0, -0.25, 0.75, ]);
    compute_pass_encoder0000.popDebugGroup()
    texture406.destroy();
    const array7 = new Float32Array([0.25, 0.75, -0.5, -0.25, -1.0, -0.75, -0.25, 0.75, 0.0, -0.25, 0.75, 0.0, 0.0, -0.75, -0.25, -1.0, -1.0, 1.0, -0.75, -0.5, -0.75, 0.75, 0.0, 0.0, -1.0, 0.75, -0.5, 0.0, -0.75, 0.75, 0.5, 0.75, -0.5, 0.25, 0.0, 0.0, 0.0, -0.25, -1.0, -1.0, 1.0, -0.5, 1.0, -0.75, 0.5, 0.5, 0.25, 0.75, 0.5, 0.5, -0.5, 1.0, 0.5, -0.5, 1.0, -1.0, -0.25, 0.75, 0.25, -0.5, -0.5, -1.0, -0.25, 0.75, 0.75, -0.5, 0.0, -1.0, -0.25, -0.75, 0.0, -0.5, -0.75, -0.75, 0.75, 0.0, -0.75, -0.25, 0.75, -1.0, 0.5, 1.0, 0.25, 0.0, 1.0, -1.0, 1.0, 0.5, 0.5, -0.75, 1.0, 0.0, 1.0, -0.5, 0.5, -0.25, -0.75, -0.25, -0.75, 0.5, ]);
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    query400.destroy()
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32uint",
        dimension: "2d"
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query002.destroy()
    texture403.destroy();
    render_pass_encoder0050.setStencilReference(1);
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder0070.executeBundles([])
    render_bundle_encoder400.popDebugGroup();
    render_pass_encoder0070.executeBundles([])
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    const texture_view5030 = texture503.createView({ label: "texture_view5030" });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view5040 = texture504.createView({ label: "texture_view5040" });
    const pipeline_layout0028 = device00.createPipelineLayout({ 
        label: "pipeline_layout0028",
        bindGroupLayouts: [bind_group_layout004]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16uint",
        dimension: "2d"
    });
    render_pass_encoder5010.executeBundles([])
    device50.pushErrorScope("out-of-memory");
    query002.destroy()
    const texture_view4013 = texture401.createView({ label: "texture_view4013" });
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_bundle_encoder002.popDebugGroup();
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder5010.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    texture201.destroy();
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
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer202, ]);
    device40.queue.submit([command_buffer400, ]);
    device00.queue.submit([command_buffer006, ]);
    device20.queue.submit([command_buffer200, ]);
}