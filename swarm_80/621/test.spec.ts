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
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer000.destroy()
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const array0 = new Float32Array([0.25, -0.25, -0.75, -0.5, 1.0, -0.75, 1.0, 0.75, 0.75, 0.0, -0.5, -0.25, 0.0, -1.0, 1.0, 0.5, -0.5, 0.0, 1.0, -0.25, 0.0, 0.5, -1.0, 0.75, 0.0, 1.0, -0.25, 0.75, 0.5, 0.75, 0.5, 1.0, -0.25, -1.0, 0.0, 0.5, 0.5, 0.0, 0.25, 1.0, 0.25, 1.0, 0.75, 0.75, 1.0, -0.25, -1.0, 0.25, -0.5, 0.5, 0.5, -1.0, 1.0, -0.5, 1.0, -0.75, -0.5, -0.5, 0.5, 0.0, 0.0, 1.0, 0.0, -0.25, 0.25, 1.0, 0.75, -0.75, -0.25, 0.75, 1.0, 1.0, 1.0, -0.75, -1.0, -0.25, 0.5, 1.0, 1.0, 0.0, 0.5, -0.25, -1.0, 0.0, -0.25, -0.5, 0.0, 0.5, -0.25, -0.25, -0.5, 1.0, 0.5, -0.75, -0.25, -0.75, -0.75, 0.5, -1.0, -0.5, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer001.destroy()
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
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
    
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array1 = new Float32Array([0.75, -0.75, 0.75, 0.75, 0.25, -0.75, -1.0, 1.0, 0.75, -0.5, 0.5, -0.25, 0.5, -0.5, 0.75, -0.75, 0.75, 0.75, 0.25, 0.0, 1.0, -1.0, 0.25, 0.25, -0.75, -0.5, 0.5, 0.0, -0.25, 0.25, 0.0, 0.75, 0.75, 0.0, -0.75, 0.75, 0.5, 0.0, 1.0, -1.0, -0.5, -0.5, 0.0, -0.5, 0.0, 0.75, -0.75, -1.0, -1.0, -0.75, 0.25, -0.5, -0.25, -0.75, 0.5, -0.5, 0.25, -1.0, -0.25, -1.0, 1.0, 0.75, -0.5, -1.0, 0.75, 1.0, 0.5, -1.0, 1.0, -0.75, -0.75, 0.0, -1.0, 0.0, 0.25, 1.0, 0.5, -1.0, -1.0, -0.25, 0.0, 0.0, -0.25, -0.25, 0.0, -1.0, 0.25, 0.25, 0.75, -0.75, 0.75, 0.5, 1.0, -0.25, -0.75, 0.5, 0.0, 1.0, 0.25, -0.5, ]);
    const array2 = new Float32Array([0.0, -0.5, -0.5, 1.0, -0.5, 0.0, 0.5, -1.0, 1.0, -0.25, -0.5, -0.25, 0.25, -0.25, -0.25, 0.25, -0.75, 0.0, 0.25, 0.25, -1.0, 0.0, 0.25, 0.0, 0.25, 0.5, -0.5, -1.0, -0.5, 0.0, 0.5, 0.0, 0.25, -1.0, -1.0, -0.75, 0.0, 0.5, 0.0, 0.75, -0.75, 0.0, -0.5, -0.25, 0.25, -0.75, -0.75, 0.5, 0.5, 0.25, -1.0, -1.0, 0.5, -0.75, 0.5, -0.75, 1.0, -0.75, -0.5, -0.25, 0.0, 0.0, 0.75, 0.5, -0.75, -1.0, 0.25, 1.0, 0.75, -0.75, 0.5, -0.25, 0.75, -0.25, -1.0, -0.75, 0.0, -1.0, -1.0, 0.0, 0.25, -1.0, 0.25, -1.0, -0.25, 0.0, -1.0, -1.0, -0.75, 0.0, 0.25, 0.5, 1.0, 0.75, -1.0, -0.5, -1.0, -0.5, 1.0, 0.0, ]);
    device10.pushErrorScope("internal");
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    texture001.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device00.destroy();
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    buffer100.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder100.insertDebugMarker("mymarker");
    
    const command_buffer101 = command_encoder101.finish();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
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
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture103 = device10.createTexture({
        label: "texture103",
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
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus-stencil8",
        dimension: "2d"
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.destroy();
    
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    device10.pushErrorScope("validation");
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture102.destroy();
    buffer101.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture106.destroy();
    
    
    
    
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture104.destroy();
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    texture100.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    const array3 = new Float32Array([-0.75, 0.0, -0.5, 0.25, 1.0, 0.75, 0.0, 0.0, 1.0, -0.75, -0.5, 1.0, -1.0, 0.25, 0.0, 0.5, 1.0, -0.5, -1.0, -0.5, -0.25, 0.0, 0.25, 0.25, -0.75, 0.25, 1.0, 0.25, -1.0, 0.0, -0.75, -0.75, 0.25, -0.75, -0.5, -0.25, 0.0, -0.75, -1.0, 0.5, -0.5, 0.0, 0.5, 0.25, 0.25, 0.75, -0.5, 0.25, -0.5, -0.25, 0.75, -1.0, 1.0, -0.75, -0.25, 0.0, 0.5, 0.25, -0.25, 0.75, -0.5, 0.25, 0.75, 0.25, -0.25, 1.0, 1.0, 1.0, 0.25, 1.0, 0.0, -1.0, -0.75, -0.25, 0.0, 0.75, 0.0, -0.25, 0.0, -0.75, 0.75, 1.0, 0.5, 0.25, 0.75, 1.0, -0.75, -1.0, -0.75, 0.0, -0.75, -0.25, 0.25, 0.75, 0.25, 1.0, -0.5, 1.0, -0.25, 0.25, ]);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    texture103.destroy();
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture101.destroy();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    texture400.destroy();
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const array4 = new Float32Array([-0.5, 0.0, -1.0, 0.5, -1.0, 0.75, 0.75, 0.75, 0.75, -1.0, 1.0, 0.75, -1.0, 0.75, 0.75, 0.25, 0.0, 0.5, 0.25, -0.25, -0.5, -0.25, 1.0, -0.25, 0.25, -0.25, -0.25, -0.5, 0.0, 0.5, -1.0, -0.75, 1.0, 0.5, 0.75, 0.25, 0.25, 0.0, 0.25, 0.75, -0.25, 1.0, -0.75, 0.75, 1.0, 1.0, -1.0, 0.5, -1.0, 0.75, -0.75, 0.5, 0.75, -0.25, 0.0, -0.75, -1.0, -0.5, 0.25, -0.25, 0.25, 1.0, 0.5, -1.0, 0.75, -0.5, 0.75, -0.75, -0.5, -0.5, 0.25, 0.0, -0.75, -0.5, 1.0, -1.0, 1.0, 1.0, 0.25, 0.0, -0.5, 0.75, -0.75, 0.75, -0.25, 0.75, 0.25, -0.5, 1.0, -0.25, -0.5, -0.75, 0.75, -0.25, 0.5, 0.0, -0.5, -0.25, -0.25, -0.25, ]);
    
    
    const texture_view1051 = texture105.createView({ label: "texture_view1051" });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    command_encoder401.insertDebugMarker("mymarker");
    
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
    buffer102.destroy()
    texture105.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    const array5 = new Float32Array([-0.75, 0.25, 0.75, -0.5, 0.0, -0.5, -1.0, -1.0, 0.0, -0.25, -0.5, 0.5, 0.75, 0.5, -0.25, -0.75, 0.25, -0.25, 0.75, -0.5, -0.25, 0.0, 0.25, -1.0, -0.5, 0.75, -0.25, -0.75, -0.5, 0.25, 0.25, 0.0, 1.0, -0.5, 1.0, -0.75, -0.25, -0.75, -0.75, -0.25, -0.75, 0.0, 0.75, -0.25, -0.5, 1.0, 0.25, -1.0, -0.75, -1.0, 0.25, 0.0, -1.0, 0.75, 0.5, -0.5, -1.0, -0.25, -1.0, -0.75, 1.0, -0.25, -0.75, -0.5, 0.25, 0.0, -0.75, 0.25, -0.25, 1.0, -0.75, 1.0, -0.5, 0.25, -1.0, 0.25, 0.25, 0.75, 0.25, 0.0, -1.0, -0.25, 0.0, 0.5, -0.25, 0.0, 0.25, 0.75, -0.5, 0.25, -0.25, 1.0, 1.0, 0.0, -0.75, 0.75, -0.25, 0.75, 0.0, -0.5, ]);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const command_buffer400 = command_encoder400.finish();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder1000.setStencilReference(1);
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_buffer401 = command_encoder401.finish();
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.pushErrorScope("internal");
    
    
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    
    const array6 = new Float32Array([0.75, 0.5, 1.0, 0.5, 0.5, -1.0, -0.5, 0.5, -1.0, -0.75, 0.5, -1.0, 0.25, -0.25, -0.75, 0.25, 0.0, -0.5, 1.0, 1.0, 1.0, -0.5, 0.25, -1.0, 1.0, 0.75, 0.0, -0.25, 0.75, -0.75, -0.25, 1.0, -0.75, 0.5, 0.0, 0.5, -1.0, 0.75, 0.75, -0.75, -0.25, 0.5, 0.5, -1.0, -0.25, 0.5, 0.5, 0.5, -0.25, 1.0, -0.75, -0.5, -0.75, 0.0, 0.5, 1.0, 0.0, 0.5, -0.25, 0.5, -0.5, -0.5, 0.5, -0.25, 0.75, -0.75, -1.0, 0.5, -0.5, 0.5, 0.5, 0.25, 0.75, -0.75, -0.75, 0.75, -0.5, 1.0, -0.75, -0.25, -0.25, -0.75, 0.25, 0.75, 0.5, -0.5, 0.25, 0.25, -0.5, 0.5, 0.5, 0.75, -0.75, -0.75, -0.25, 0.5, 0.75, -1.0, 0.75, 0.75, ]);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    texture401.destroy();
    render_pass_encoder1000.setStencilReference(1);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
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
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    device30.destroy();
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture402 = device40.createTexture({
        label: "texture402",
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
    texture402.destroy();
    
    
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout102]
    });
    buffer103.destroy()
    
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_buffer102 = command_encoder102.finish();
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout102]
    });
    texture404.destroy();
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture405.destroy();
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
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
    const texture_view4031 = texture403.createView({ label: "texture_view4031" });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture_view1071 = texture107.createView({ label: "texture_view1071" });
    const array7 = new Float32Array([0.25, 1.0, 0.0, 0.25, -0.5, -0.25, -0.5, -1.0, 0.0, -1.0, 0.25, 0.5, 0.0, -0.75, 0.0, -0.25, 0.0, 1.0, 0.75, 0.5, 0.5, -1.0, 0.25, 0.25, -1.0, 0.5, 0.25, 0.75, -0.25, -1.0, -0.25, -0.5, -1.0, -0.75, -0.75, 0.75, -0.25, 0.25, 1.0, 0.25, 1.0, 0.0, 0.5, -0.25, -0.75, -0.5, -0.75, 1.0, 0.0, -0.25, 0.0, 0.0, 0.25, -0.75, 0.5, -1.0, -1.0, -0.75, 0.0, 0.25, 0.5, -0.25, -1.0, 1.0, -0.5, 0.75, -0.25, 0.0, -0.75, -0.25, 0.5, -1.0, -1.0, 0.0, 1.0, -0.5, -1.0, 1.0, 0.75, -0.5, -1.0, 0.25, -0.75, 0.0, 0.75, 0.5, 0.75, 1.0, 0.5, -1.0, -0.75, 0.5, -1.0, 1.0, 0.25, -0.5, -0.5, 0.0, 0.0, 1.0, ]);
    command_encoder402.pushDebugGroup("mygroupmarker")
    texture107.destroy();
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device10.queue.submit([command_buffer102, ]);
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout102]
    });
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
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const texture407 = device40.createTexture({
        label: "texture407",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder403.insertDebugMarker("mymarker");
    
    buffer401.destroy()
    const texture408 = device40.createTexture({
        label: "texture408",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4030,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout103]
    });
    texture403.destroy();
    
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4031,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder4020.setStencilReference(1);
    texture408.destroy();
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout103]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder4040.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    const texture_view4060 = texture406.createView({ label: "texture_view4060" });
    const array8 = new Float32Array([0.75, 1.0, 0.0, 0.5, 1.0, -0.75, -0.75, -0.75, -0.5, 0.5, -1.0, -1.0, 0.5, -0.25, 0.0, 0.25, 0.75, 1.0, -0.5, 1.0, -0.5, 0.25, 0.25, 1.0, -0.75, -0.75, 0.5, 0.0, 0.75, 0.0, -1.0, 1.0, 0.25, -0.25, 0.25, -0.5, -0.5, -1.0, -0.5, -0.25, 0.25, 0.0, -1.0, 0.0, 1.0, 0.5, -1.0, 0.75, -0.5, 1.0, 1.0, 0.5, -0.5, 0.25, 0.75, 0.75, 0.25, -1.0, 1.0, 0.75, -0.75, -0.25, 1.0, 1.0, 1.0, -0.75, -1.0, -0.25, 0.25, -1.0, 0.0, -0.25, 0.75, -0.25, -0.75, -0.25, -0.25, 0.5, -0.5, 1.0, 0.0, -0.5, 0.25, 0.25, 0.0, 0.75, -1.0, 0.25, -0.5, -0.5, -0.75, 0.0, 1.0, 0.25, 0.0, 1.0, 0.0, -1.0, -1.0, 0.5, ]);
    command_encoder403.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder4040.setViewport(0, 0, texture403.width / 2, texture403.height / 2, 0, 1);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.pushErrorScope("validation");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4030,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    const render_pass_encoder4050 = command_encoder405.beginRenderPass({
        label: "render_pass_encoder4050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4030,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture108.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture409 = device40.createTexture({
        label: "texture409",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder4030.setViewport(0, 0, texture403.width / 2, texture403.height / 2, 0, 1);
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder4040.setViewport(0, 0, texture403.width / 2, texture403.height / 2, 0, 1);
    texture406.destroy();
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1031,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer105.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    const texture109 = device10.createTexture({
        label: "texture109",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1070,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1030.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    
    render_pass_encoder4020.setStencilReference(1);
    
    render_pass_encoder4040.setViewport(0, 0, texture403.width / 2, texture403.height / 2, 0, 1);
    
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    render_pass_encoder1040.setViewport(0, 0, texture107.width / 2, texture107.height / 2, 0, 1);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder1040.setStencilReference(1);
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture4010 = device40.createTexture({
        label: "texture4010",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    render_pass_encoder1040.setScissorRect(0, 0, texture107.width / 2, texture107.height / 2);
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1030.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    
    texture407.destroy();
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    buffer104.destroy()
    
    const texture4011 = device40.createTexture({
        label: "texture4011",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer400.destroy()
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder4050.setStencilReference(1);
    
    const texture4012 = device40.createTexture({
        label: "texture4012",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    texture4012.destroy();
    render_pass_encoder4030.setViewport(0, 0, texture403.width / 2, texture403.height / 2, 0, 1);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.pushErrorScope("internal");
    render_pass_encoder1040.setScissorRect(0, 0, texture107.width / 2, texture107.height / 2);
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setStencilReference(1);
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    buffer402.destroy()
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout400]
    });
    texture409.destroy();
    texture109.destroy();
    device60.destroy();
    render_pass_encoder4020.setViewport(0, 0, texture403.width / 2, texture403.height / 2, 0, 1);
    const pipeline_layout4012 = device40.createPipelineLayout({ 
        label: "pipeline_layout4012",
        bindGroupLayouts: [bind_group_layout403]
    });
    
    const array9 = new Float32Array([0.25, 0.5, 0.0, 0.5, 0.75, -1.0, -1.0, 0.75, 0.5, -0.25, 0.25, -0.75, 0.0, -0.75, 0.0, -0.25, -0.25, 0.25, 0.75, 0.0, 1.0, 0.25, 0.5, 1.0, 0.0, -0.5, 1.0, -0.5, 0.25, 0.75, -0.75, 0.0, 0.25, -0.25, -0.25, 0.75, -0.25, -1.0, 0.5, 0.25, 0.0, 0.25, 1.0, 1.0, -0.5, -0.5, -0.25, -0.75, -0.75, 0.5, -0.5, 0.5, 0.5, -0.5, -1.0, -0.25, -1.0, -0.75, -0.25, 1.0, 1.0, -0.75, 0.25, 0.25, 0.0, -1.0, 0.75, -1.0, 1.0, 0.75, -0.25, 0.75, -1.0, -1.0, 0.5, -0.75, 0.25, 0.0, 0.75, 0.75, 1.0, 0.75, 0.5, 0.5, 0.5, 0.75, 0.5, 0.0, -0.5, -0.25, 0.75, 1.0, -0.25, -0.25, -0.5, -1.0, 1.0, 0.5, 0.25, -0.5, ]);
    const texture_view40100 = texture4010.createView({ label: "texture_view40100" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4050.setStencilReference(1);
    device40.pushErrorScope("validation");
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout1023 = device10.createPipelineLayout({ 
        label: "pipeline_layout1023",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    command_encoder406.insertDebugMarker("mymarker");
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture1010 = device10.createTexture({
        label: "texture1010",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array10 = new Float32Array([1.0, -1.0, 0.0, -0.75, 0.25, 0.25, -1.0, -1.0, -0.75, 0.5, 0.5, 0.0, 0.0, 0.25, -1.0, 0.5, 0.0, -1.0, 0.25, 0.0, 0.5, -0.25, 0.25, -1.0, 0.75, 0.25, 0.75, -0.75, -0.75, 0.25, 0.0, 0.5, 1.0, -1.0, -1.0, 0.25, 0.5, 1.0, -0.75, -0.75, -1.0, 0.25, 0.5, 0.0, 0.25, -0.75, -1.0, 1.0, 0.0, 0.0, 1.0, 0.25, -0.25, -1.0, 0.25, 0.75, 0.75, 0.0, 0.75, -0.25, 0.0, -0.25, 0.0, 0.0, -0.5, 0.25, 0.5, 0.75, 0.0, 0.0, -1.0, -0.5, 0.5, 1.0, -0.25, -0.5, -0.25, -1.0, -0.75, 1.0, 0.5, 1.0, 0.25, -0.75, 0.75, 1.0, -1.0, 0.25, 0.5, -0.25, 0.75, 0.5, -0.75, -0.25, -0.75, -1.0, -0.25, 0.75, 0.75, 0.0, ]);
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_buffer406 = command_encoder406.finish();
    
    
    
    
    
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const pipeline_layout4013 = device40.createPipelineLayout({ 
        label: "pipeline_layout4013",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture1011 = device10.createTexture({
        label: "texture1011",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture_view40101 = texture4010.createView({ label: "texture_view40101" });
    
    const command_encoder407 = device40.createCommandEncoder({ label: "command_encoder407" });
    const pipeline_layout4014 = device40.createPipelineLayout({ 
        label: "pipeline_layout4014",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const pipeline_layout1024 = device10.createPipelineLayout({ 
        label: "pipeline_layout1024",
        bindGroupLayouts: [bind_group_layout102]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder1030.setStencilReference(1);
    const command_buffer407 = command_encoder407.finish();
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const texture4013 = device40.createTexture({
        label: "texture4013",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const texture_view40110 = texture4011.createView({ label: "texture_view40110" });
    
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    render_pass_encoder4030.setStencilReference(1);
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const bind_group_layout406 = device40.createBindGroupLayout({ 
        label: "bind_group_layout406",
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
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view10110 = texture1011.createView({ label: "texture_view10110" });
    render_pass_encoder4030.setStencilReference(1);
    
    
    const pipeline_layout4015 = device40.createPipelineLayout({ 
        label: "pipeline_layout4015",
        bindGroupLayouts: [bind_group_layout404]
    });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder4020.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    render_pass_encoder4020.setViewport(0, 0, texture403.width / 2, texture403.height / 2, 0, 1);
    render_pass_encoder1040.setViewport(0, 0, texture107.width / 2, texture107.height / 2, 0, 1);
    device40.queue.submit([command_buffer407, ]);
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const texture_view10111 = texture1011.createView({ label: "texture_view10111" });
    render_pass_encoder4030.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder4020.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    
    
    render_pass_encoder1030.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout1025 = device10.createPipelineLayout({ 
        label: "pipeline_layout1025",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4030.setStencilReference(1);
    texture4013.destroy();
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder4020.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    
    
    const pipeline_layout4016 = device40.createPipelineLayout({ 
        label: "pipeline_layout4016",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer404.destroy()
    texture1011.destroy();
    const command_encoder408 = device40.createCommandEncoder({ label: "command_encoder408" });
    device40.pushErrorScope("internal");
    
    const texture_view40111 = texture4011.createView({ label: "texture_view40111" });
    const render_pass_encoder4080 = command_encoder408.beginRenderPass({
        label: "render_pass_encoder4080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4030,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout4017 = device40.createPipelineLayout({ 
        label: "pipeline_layout4017",
        bindGroupLayouts: [bind_group_layout405]
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4080.setStencilReference(1);
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    texture1010.destroy();
    const pipeline_layout1026 = device10.createPipelineLayout({ 
        label: "pipeline_layout1026",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout4018 = device40.createPipelineLayout({ 
        label: "pipeline_layout4018",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder4040.setStencilReference(1);
    buffer403.destroy()
    
    render_pass_encoder4080.setStencilReference(1);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4040.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    buffer107.destroy()
    
    render_pass_encoder1040.setScissorRect(0, 0, texture107.width / 2, texture107.height / 2);
    render_pass_encoder4050.setStencilReference(1);
    texture4010.destroy();
    
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder4040.setStencilReference(1);
    const pipeline_layout1027 = device10.createPipelineLayout({ 
        label: "pipeline_layout1027",
        bindGroupLayouts: [bind_group_layout101]
    });
    device50.pushErrorScope("out-of-memory");
    render_pass_encoder1030.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
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
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view40112 = texture4011.createView({ label: "texture_view40112" });
    render_pass_encoder1030.setStencilReference(1);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    render_pass_encoder1040.setViewport(0, 0, texture107.width / 2, texture107.height / 2, 0, 1);
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder4080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    render_pass_encoder1000.setStencilReference(1);
    
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1040.setViewport(0, 0, texture107.width / 2, texture107.height / 2, 0, 1);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setStencilReference(1);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer500 = command_encoder500.finish();
    device40.queue.submit([command_buffer406, ]);
}