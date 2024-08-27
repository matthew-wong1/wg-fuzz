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
    const array0 = new Float32Array([-0.25, 0.75, -0.5, -1.0, -0.5, 0.5, 0.25, 0.5, 0.5, 1.0, 0.75, 0.75, 0.0, 0.75, -1.0, 0.25, 0.0, -0.25, 1.0, 0.75, 0.0, -0.5, 1.0, 1.0, -0.25, 0.25, 0.25, -0.5, -0.5, 0.5, -0.75, 0.25, -0.5, 0.25, -1.0, 0.0, 0.0, 0.25, 0.25, 0.75, -1.0, 0.25, -0.5, 1.0, -0.75, -1.0, -0.75, -1.0, 0.5, -0.75, -0.75, -0.5, -0.25, 0.0, 0.5, 1.0, -1.0, -0.25, 1.0, 0.75, -0.25, 0.75, -0.5, -0.75, 0.0, 0.0, -1.0, -0.25, 1.0, -0.5, 0.5, -0.25, -0.75, -0.75, 0.0, 0.0, -0.25, 0.75, 0.25, 0.5, 0.5, 0.25, -0.5, 0.5, -1.0, -0.25, 0.0, 0.25, 0.75, -0.5, 0.5, -0.25, 0.0, 0.75, 0.0, 0.25, -0.25, 0.75, 0.0, -0.5, ]);
    const array1 = new Float32Array([0.25, 0.0, -0.25, -0.75, -1.0, 0.75, 0.25, 0.25, 0.25, -0.5, 0.5, -0.75, 0.0, 0.75, 0.5, -0.25, 0.0, 0.75, -0.5, 0.0, -0.5, -0.75, -0.5, -1.0, -0.75, 0.0, 0.25, 0.0, -0.75, -1.0, -1.0, 0.5, 0.5, -1.0, 0.5, 0.25, -0.75, -0.75, 1.0, -1.0, 0.5, 0.25, 0.25, -0.5, -1.0, 0.0, -1.0, -0.75, -0.75, -1.0, -0.75, 0.25, -0.5, 1.0, 0.25, -0.5, 1.0, 1.0, -0.25, 0.0, -0.5, 0.25, -0.25, 1.0, 1.0, -0.5, 0.5, 0.0, 0.5, 0.0, 0.25, 0.25, -0.75, 0.5, -1.0, 0.25, -1.0, 0.5, 0.75, -0.75, -1.0, -0.75, 0.5, -0.75, -0.5, 1.0, 0.0, -0.5, -0.5, 1.0, -0.75, 1.0, -0.5, 0.75, 0.5, -0.5, 0.25, 1.0, 1.0, 0.5, ]);
    
    
    
    const array2 = new Float32Array([0.25, 0.5, -0.5, -0.5, -1.0, 1.0, -1.0, -0.75, -0.5, -1.0, -0.25, -1.0, 1.0, 0.25, 1.0, -0.5, -0.75, 0.5, -1.0, 1.0, 0.5, 0.0, 0.25, 0.5, 1.0, -0.75, -0.75, -0.75, 0.25, -0.25, -1.0, -0.5, -0.25, 0.25, 0.0, -0.5, -1.0, 1.0, -0.5, 0.5, 1.0, -1.0, 0.5, 0.0, 0.25, 1.0, -0.5, -0.25, 0.5, 0.5, 1.0, -1.0, 0.25, 0.25, 0.0, 0.0, -1.0, 0.25, -0.75, -0.75, -0.5, -1.0, 0.0, -0.75, 0.5, -0.25, 0.0, 0.25, 0.25, -0.5, 0.25, 0.75, -0.75, 0.0, 1.0, 0.25, -1.0, 0.0, 0.0, -0.5, 1.0, 0.25, 0.5, -0.5, -0.5, 0.5, 0.75, 1.0, -1.0, -1.0, 0.0, 0.5, -0.5, 0.5, 0.25, -0.25, 0.75, -0.5, -0.75, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer000.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device20.destroy();
    const array3 = new Float32Array([1.0, -0.5, -0.75, -0.25, 1.0, 0.75, -0.5, -0.25, 0.75, 0.25, 0.75, 1.0, -0.25, 0.0, 0.75, 1.0, -1.0, 0.5, -0.75, -1.0, -0.25, -0.5, -0.75, 0.25, -0.75, 0.5, 0.25, -0.5, 0.0, 1.0, -0.5, 0.75, -0.25, 0.5, 0.5, 1.0, -0.25, -0.25, 0.5, -0.75, -1.0, -0.75, 1.0, -0.25, -1.0, 0.75, 0.5, -1.0, 0.5, 1.0, -1.0, 0.75, -0.25, -0.5, 0.5, -0.5, -0.5, 0.25, -1.0, 0.5, 1.0, 1.0, 0.0, 0.25, 0.75, 1.0, 0.75, 0.75, 0.75, -0.5, -0.25, 0.5, -0.25, -0.25, 0.25, 0.5, 0.0, -0.75, -0.5, 1.0, 0.0, 0.5, 0.25, 0.5, 0.25, 1.0, 0.5, -1.0, -0.25, 0.75, -1.0, 1.0, -0.5, 1.0, -0.5, 0.75, -1.0, -1.0, 1.0, -0.75, ]);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    texture000.destroy();
    buffer001.destroy()
    device00.pushErrorScope("internal");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const array4 = new Float32Array([-0.25, -0.75, -0.25, 0.25, 0.25, 0.25, 0.5, 0.5, 0.25, -0.75, -1.0, 0.25, 0.75, 0.25, 0.0, 1.0, 1.0, -0.75, 0.5, 0.0, -0.25, -1.0, 0.75, -1.0, 1.0, 0.5, 0.0, 0.75, -0.5, 0.5, 0.75, 0.0, -1.0, 0.75, 0.5, -0.25, -0.25, 0.0, -1.0, -0.5, -0.5, 0.75, -1.0, -1.0, 0.5, 0.0, 0.75, -0.75, -0.75, 0.5, -0.75, 1.0, 1.0, 0.0, 0.0, 0.5, 0.75, -0.25, -0.75, 0.5, 1.0, 1.0, 0.0, 0.0, -1.0, 0.25, -0.25, 0.5, 0.0, 0.25, -0.5, -0.25, -1.0, 0.75, -0.5, -0.75, -0.25, -1.0, 0.5, -0.75, -0.25, 0.75, -1.0, 0.0, -0.5, 0.5, 0.0, 0.5, 0.75, 1.0, 0.25, 1.0, -0.25, 0.25, 0.75, 0.5, 0.0, -0.5, 0.75, -0.5, ]);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    buffer004.destroy()
    
    const command_buffer001 = command_encoder001.finish();
    
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
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
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
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout004]
    });
    texture001.destroy();
    
    
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    device00.pushErrorScope("internal");
    
    
    buffer005.destroy()
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const array5 = new Float32Array([-1.0, 1.0, 0.5, 1.0, 0.25, 0.5, 0.75, -1.0, 1.0, -0.25, 1.0, -0.25, -0.5, -0.75, -0.75, 0.0, 0.75, 0.25, -0.75, -0.75, -0.5, 0.0, 1.0, -1.0, 0.5, 0.5, 0.0, 1.0, 1.0, 1.0, 1.0, -0.25, 0.0, -0.5, -0.5, 0.25, -0.25, 0.25, -0.75, -0.75, 0.5, 0.75, -0.75, -0.5, 0.25, 0.0, 0.0, -0.5, 0.75, 0.0, -0.25, 0.5, 0.0, 1.0, -1.0, -0.75, 0.75, 0.75, 0.75, 0.0, -0.5, 0.0, 1.0, 0.25, -0.75, 0.0, -0.75, -0.25, 0.0, 0.75, 0.25, 1.0, -1.0, -0.75, 1.0, 1.0, -1.0, -0.25, -1.0, -0.75, -0.75, -0.75, 0.25, -0.25, 1.0, -0.75, 0.75, -0.5, 1.0, -0.5, 1.0, -0.75, 0.75, 0.25, -0.25, 0.25, -0.25, -0.25, -1.0, -0.75, ]);
    query000.destroy()
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout003]
    });
    query001.destroy()
    const command_buffer002 = command_encoder002.finish();
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout004]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query001.destroy()
    buffer006.destroy()
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    query001.destroy()
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    device00.pushErrorScope("out-of-memory");
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    
    command_encoder003.insertDebugMarker("mymarker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    buffer003.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder003.insertDebugMarker("mymarker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query003
    });
    query000.destroy()
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.pushErrorScope("validation");
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0040.executeBundles([])
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16sint",
        dimension: "2d"
    });
    
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout002]
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query002.destroy()
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout002]
    });
    buffer002.destroy()
    render_pass_encoder0000.insertDebugMarker("marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query002
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout003]
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder0030.beginOcclusionQuery(0)
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0000.executeBundles([])
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    texture401.destroy();
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    
    
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder0000.executeBundles([])
    device40.pushErrorScope("out-of-memory");
    
    query400.destroy()
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    query002.destroy()
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0050.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture003.destroy();
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    device40.pushErrorScope("out-of-memory");
    
    
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
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
    
    
    query001.destroy()
    query005.destroy()
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout000]
    });
    query004.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const array6 = new Float32Array([0.75, 1.0, -0.25, 0.0, 0.25, 0.75, 0.75, -0.5, 1.0, -0.25, 0.0, -0.75, -0.75, -1.0, 0.5, 0.75, 0.0, -0.75, 0.5, -1.0, 0.75, -0.5, 0.25, 0.5, -0.5, -0.25, -1.0, -1.0, -0.75, 1.0, -1.0, -0.5, 0.25, 1.0, 1.0, 0.5, 0.5, 1.0, -0.25, 0.25, -1.0, -0.5, 0.25, -0.75, -1.0, -0.75, -0.5, -0.25, 0.5, 0.25, -0.25, 0.5, -0.5, -0.5, 1.0, -0.5, -0.5, 0.25, 0.25, -0.25, 0.25, 0.75, 0.75, 0.25, 0.75, -0.75, 0.5, 0.25, 1.0, 0.0, 0.75, 1.0, 0.0, -0.5, 0.0, 1.0, -0.25, 0.75, -1.0, 0.25, 1.0, -0.25, 1.0, -0.5, -0.25, -0.75, 0.5, 0.25, 0.0, -0.25, 0.0, 0.5, 0.75, 0.75, -0.5, -0.25, 0.25, -0.75, 0.25, 0.0, ]);
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0050.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout001]
    });
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    render_pass_encoder0060.insertDebugMarker("marker");
    command_encoder007.resolveQuerySet(
        query004,
        0,
        32,
        buffer007,
        0
    )
    render_pass_encoder0060.insertDebugMarker("marker");
    const array7 = new Float32Array([0.25, -0.5, -0.25, 0.75, -1.0, 0.25, 0.5, 0.5, 0.0, -1.0, -1.0, -0.75, -0.5, -1.0, -0.5, -0.75, -0.5, -0.25, -0.25, 0.75, -0.75, 0.0, 0.25, 0.75, 1.0, -0.5, -1.0, -0.5, 0.0, 0.75, -0.75, 0.75, 0.5, -0.75, 1.0, 0.75, -0.75, 0.25, -0.25, 0.25, 0.5, -1.0, -0.25, -0.5, -0.5, 0.0, -0.75, 0.25, 0.0, 1.0, 0.25, -0.75, 0.5, -0.25, -0.25, -0.5, 0.75, 0.25, 0.0, 0.25, -1.0, 1.0, -1.0, -0.75, 1.0, -0.25, 0.25, 1.0, -0.75, 0.0, 0.0, -0.5, 0.75, 0.5, 0.5, 0.0, -0.25, -0.5, 0.25, 0.75, -1.0, 0.0, -1.0, -1.0, -0.5, -0.5, -0.25, 0.0, 1.0, 1.0, -0.25, -1.0, 1.0, 0.5, 0.0, -1.0, -1.0, 1.0, -0.5, 0.25, ]);
    
    const array8 = new Float32Array([0.25, -0.5, -0.25, -1.0, 1.0, 0.25, -0.5, -1.0, 0.5, 0.75, 0.5, -0.5, -0.5, 0.25, 1.0, 0.5, 0.25, -0.75, 0.5, -0.5, 1.0, 0.25, -1.0, 1.0, 0.5, -1.0, -0.25, 0.0, -0.5, 0.25, 0.75, 0.75, 0.75, -0.75, -0.75, 1.0, 0.5, 0.5, -0.25, 0.75, 0.75, 1.0, -0.5, 0.5, -0.5, -0.5, 0.25, 1.0, 0.0, -0.5, 0.0, 0.5, 0.75, -1.0, 1.0, -0.5, -0.5, 0.25, -0.25, -1.0, -0.5, 0.25, 0.25, 0.75, 0.0, 0.0, 0.0, 0.25, -0.5, -0.25, -0.75, 0.5, -0.25, 0.75, 0.0, -1.0, -0.75, -0.5, 0.5, 1.0, -0.5, -0.75, -1.0, 1.0, -0.25, -0.25, -0.5, 0.0, 0.25, 1.0, 0.75, 0.75, 0.25, -0.75, 0.0, 0.0, 0.5, 0.75, -1.0, -0.75, ]);
    query402.destroy()
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query005
    });
    
    query002.destroy()
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0050.executeBundles([])
    
    
    
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    query006.destroy()
    
    render_pass_encoder0060.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder0070.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0030.executeBundles([])
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth32float",
        dimension: "2d"
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    texture002.destroy();
    buffer007.destroy()
    
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0030.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.pushErrorScope("internal");
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout003]
    });
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture400.destroy();
    
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout000]
    });
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    query001.destroy()
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout005]
    });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture004.destroy();
    query001.destroy()
    const command_buffer403 = command_encoder403.finish();
    command_encoder402.insertDebugMarker("mymarker");
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
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    command_encoder402.pushDebugGroup("mygroupmarker")
    render_pass_encoder0030.executeBundles([])
    
    render_pass_encoder0050.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    render_pass_encoder0050.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    buffer008.destroy()
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    query001.destroy()
    render_pass_encoder0000.executeBundles([])
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const array9 = new Float32Array([0.25, -0.25, -0.75, 0.0, 0.25, 0.25, -0.5, 0.25, -0.25, 0.75, 0.75, -0.5, 0.5, 0.25, 0.5, 0.0, -1.0, 1.0, 0.5, 0.0, 0.25, 0.75, -0.5, -1.0, -1.0, 0.25, -0.25, 1.0, 0.0, -0.75, 1.0, -1.0, -0.5, 0.0, 1.0, 0.5, -0.5, 1.0, 1.0, 0.0, 1.0, 0.25, -0.25, 0.5, 1.0, 1.0, 0.25, -0.75, 0.0, -0.5, 0.75, 0.75, -1.0, 0.0, 0.5, 0.0, -1.0, 0.25, -1.0, 0.25, 0.0, 0.5, -0.75, -0.5, -0.5, -0.25, 0.0, -0.75, 0.5, 0.5, 0.25, 1.0, 1.0, -0.75, 0.5, -0.5, -1.0, -0.75, -0.5, -0.25, -1.0, 0.5, 0.5, 0.5, 1.0, -0.5, 0.0, 0.25, -1.0, -1.0, 0.0, 0.75, -0.25, -1.0, -0.75, -0.75, 0.75, -0.75, -0.75, 0.75, ]);
    command_encoder402.clearBuffer(buffer400);
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    render_pass_encoder0060.executeBundles([])
    render_pass_encoder0030.insertDebugMarker("marker");
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query402
    });
    query403.destroy()
    query007.destroy()
    
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
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
    
    render_pass_encoder0080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query400.destroy()
    buffer400.destroy()
    render_pass_encoder0080.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    command_encoder009.resolveQuerySet(
        query008,
        0,
        32,
        buffer003,
        0
    )
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    
    query400.destroy()
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    query006.destroy()
    query400.destroy()
    
    command_encoder0010.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    const render_pass_encoder0090 = command_encoder009.beginRenderPass({
        label: "render_pass_encoder0090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query006
    });
    render_pass_encoder0070.insertDebugMarker("marker");
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0060.executeBundles([])
    query004.destroy()
    
    const render_pass_encoder00100 = command_encoder0010.beginRenderPass({
        label: "render_pass_encoder00100",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query006
    });
    render_pass_encoder00100.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array10 = new Float32Array([-0.75, -1.0, 1.0, -0.75, 0.0, -0.25, -0.75, -0.5, 1.0, 0.25, 0.5, 1.0, 0.5, 0.75, 1.0, 0.0, 0.25, -1.0, 1.0, -0.5, -1.0, -0.5, 0.0, 0.25, -0.5, 0.5, 0.75, -0.75, 0.0, 0.75, 0.25, 0.5, -1.0, 0.25, 0.5, -0.75, 0.25, -0.5, 0.5, -1.0, -1.0, 1.0, -0.5, -1.0, -1.0, 0.0, 0.25, 1.0, 1.0, 0.5, -0.75, 1.0, -0.5, 0.5, -0.5, 0.25, -1.0, -0.25, -0.25, 0.0, -0.5, -1.0, 0.0, -1.0, 0.75, -0.25, 0.75, -1.0, 0.75, 0.5, 0.75, -0.25, 0.75, 0.75, -0.75, 0.0, -0.5, -0.25, -0.75, -0.5, 0.0, -0.75, -0.5, -0.5, -0.25, -0.25, 0.5, -0.5, 0.75, 0.5, -1.0, -0.5, 0.75, 0.5, 0.75, 0.0, -0.25, -0.25, 0.0, -0.75, ]);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0050.executeBundles([])
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout005]
    });
    query004.destroy()
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query401.destroy()
    
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query402
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
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    query004.destroy()
    render_pass_encoder00100.executeBundles([])
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    render_pass_encoder4020.executeBundles([])
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
    render_pass_encoder4040.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pass_encoder4050 = command_encoder405.beginRenderPass({
        label: "render_pass_encoder4050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query404
    });
    device40.pushErrorScope("validation");
    
    render_pass_encoder0070.insertDebugMarker("marker");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    query000.destroy()
    
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query403.destroy()
    
    query401.destroy()
    render_pass_encoder0080.executeBundles([])
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4040.insertDebugMarker("marker");
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout006]
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer0010, 0, array0, 0, array0.length);
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer0010, 0, array1, 0, array1.length);
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture403.destroy();
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    render_pass_encoder4050.insertDebugMarker("marker");
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder00110 = command_encoder0011.beginRenderPass({
        label: "render_pass_encoder00110",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query002
    });
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout006]
    });
    render_pass_encoder00100.insertDebugMarker("marker");
    query400.destroy()
    render_pass_encoder0060.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder00100.insertDebugMarker("marker");
    render_pass_encoder0090.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    query005.destroy()
    render_pass_encoder0080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0080.insertDebugMarker("marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0060.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    render_pass_encoder00100.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const array11 = new Float32Array([0.75, -0.25, 0.75, 1.0, 1.0, -0.25, 0.5, -0.75, 0.25, -0.75, 0.0, 0.75, -1.0, -1.0, 0.75, 0.5, 0.75, -0.75, -0.25, 0.25, 0.5, -0.75, -1.0, 0.5, -0.5, -0.75, 0.75, 0.25, 0.25, 0.75, 0.5, -0.25, -1.0, 0.5, -0.75, 0.0, -1.0, -1.0, 0.0, -0.25, -0.75, 1.0, -0.5, -0.5, -0.75, -1.0, 0.5, -0.5, -1.0, -1.0, 0.0, -1.0, 0.5, -0.75, 0.75, -0.5, 1.0, 0.25, 0.5, -0.5, 0.75, -0.75, 0.25, -0.5, 1.0, -0.25, -0.75, 0.25, -0.25, 0.25, 0.0, -1.0, 1.0, 0.25, 0.0, -0.75, 0.75, 0.0, 1.0, -0.25, -1.0, 0.25, 0.5, -0.75, 1.0, -0.5, 0.25, -0.5, 0.75, 0.75, 0.75, 1.0, -1.0, 0.5, 0.75, 0.5, 0.25, -0.25, -0.5, -0.5, ]);
    query007.destroy()
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder0012 = device00.createCommandEncoder({ label: "command_encoder0012" });
    command_encoder0012.clearBuffer(buffer0010);
    render_pass_encoder0050.insertDebugMarker("marker");
    
    render_pass_encoder4040.insertDebugMarker("marker");
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
    const render_pass_encoder00120 = command_encoder0012.beginRenderPass({
        label: "render_pass_encoder00120",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query006
    });
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer0010, 0, array0, 0, array0.length);
    texture402.destroy();
    
    
    render_pass_encoder0080.executeBundles([])
    query401.destroy()
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    device00.queue.writeBuffer(buffer0010, 0, array9, 0, array9.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0080.executeBundles([])
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout403]
    });
    device40.pushErrorScope("out-of-memory");
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    render_pass_encoder00120.executeBundles([])
    query401.destroy()
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder00110.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer0010.destroy()
    const texture_view0052 = texture005.createView({ label: "texture_view0052" });
    
    const array12 = new Float32Array([-0.75, -0.25, 1.0, 0.5, -1.0, -0.25, -0.5, -1.0, 0.5, -0.75, 0.5, -0.5, 0.75, 0.75, -1.0, 0.5, 0.0, -0.5, 1.0, 1.0, 0.0, 0.5, 0.0, -0.5, 0.75, -0.75, -1.0, 0.75, 1.0, 0.25, 0.25, -0.25, 0.5, -1.0, -0.25, 0.0, 0.25, 0.5, 0.25, -0.5, -0.75, 0.0, -1.0, -0.75, -0.25, 0.25, 0.75, 0.0, -1.0, -0.75, 0.75, 0.75, -0.5, -0.75, 1.0, 0.0, -0.75, 0.75, -0.5, 0.25, 1.0, 0.75, 0.5, -1.0, 0.0, -0.5, 0.0, -0.5, -1.0, 1.0, 1.0, 0.5, -0.75, 0.25, 0.5, 0.0, -0.75, -0.75, 0.5, -1.0, -0.25, 0.0, -0.5, 0.25, -0.75, -0.5, 0.25, 0.75, 1.0, -0.75, -1.0, -0.75, -0.25, 0.0, 0.5, 1.0, 0.75, 0.0, 0.25, 1.0, ]);
    query402.destroy()
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder4020.executeBundles([])
    render_pass_encoder0030.insertDebugMarker("marker");
    query007.destroy()
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder00110.insertDebugMarker("marker");
    render_pass_encoder4020.insertDebugMarker("marker");
    render_pass_encoder0030.executeBundles([])
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer400, ]);
}