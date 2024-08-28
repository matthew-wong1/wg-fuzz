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
    const array0 = new Float32Array([-0.25, 0.0, -0.5, -0.5, -0.25, -1.0, -0.5, 1.0, 0.5, -0.75, 0.0, -0.5, -1.0, 1.0, -1.0, 0.25, -0.25, 0.75, 1.0, -0.5, -1.0, 0.75, -0.5, 1.0, 0.25, -0.75, 0.25, 0.5, 0.5, -0.25, 0.5, -1.0, -1.0, -1.0, -0.75, 1.0, 0.0, -0.75, -0.75, 0.5, 0.25, 0.0, 0.75, -0.75, -0.75, -0.75, 0.25, 0.25, 0.5, -0.5, -0.75, 0.0, -1.0, -0.25, 0.0, 1.0, 1.0, 0.0, 0.25, -0.25, 0.5, 0.5, -0.5, 0.5, -1.0, -1.0, -1.0, 1.0, -1.0, 0.5, -0.25, 0.5, -0.25, 0.0, -0.25, -0.25, 0.75, 0.75, -0.75, -1.0, 1.0, -0.75, 0.25, 0.75, 0.0, -0.75, 0.0, 0.75, 0.5, -0.75, -0.25, 0.5, -0.75, 0.5, 0.0, -1.0, 0.5, -1.0, -0.5, 0.25, ]);
    const array1 = new Float32Array([-1.0, 0.75, 0.5, 0.5, -0.25, 0.5, -0.75, 1.0, 0.75, -1.0, -0.25, 0.75, 0.75, -0.25, -0.5, 0.0, 0.5, 0.0, 0.25, 0.5, 0.5, 0.0, -0.5, 0.5, 0.25, -0.5, -0.75, -0.5, -0.25, 1.0, 1.0, 0.25, 0.0, 0.5, 0.5, 0.75, -0.25, -0.5, 0.75, 0.5, -0.25, -1.0, 1.0, 0.75, -0.5, 1.0, 0.25, -1.0, 0.75, 0.5, -0.75, -0.25, -0.25, -0.5, 0.75, -0.25, 0.0, 1.0, 0.25, 0.5, -0.25, 0.0, 1.0, -0.5, 0.75, 0.75, 0.5, -0.25, -0.25, -0.75, 0.75, 1.0, 0.25, 0.75, -1.0, -0.25, -0.5, -0.75, -0.75, -0.75, 0.25, 0.75, -0.5, 0.5, -0.25, 1.0, 0.0, 1.0, 0.75, 0.0, -1.0, -0.25, 0.5, -1.0, -1.0, 1.0, -1.0, -0.5, 1.0, 0.75, ]);
    const array2 = new Float32Array([1.0, -0.75, -0.25, 0.5, 0.0, 0.5, 1.0, 0.0, 1.0, -1.0, -0.25, 0.0, -1.0, 0.75, 0.5, 0.0, 0.75, 0.0, -0.25, -0.5, 0.0, 1.0, -0.5, -0.75, -1.0, -1.0, 0.75, -0.25, -0.5, 0.5, -1.0, 0.0, -0.25, -0.75, 1.0, -1.0, -0.75, 0.0, 0.25, 0.0, -0.5, -1.0, -0.25, 1.0, 1.0, 0.0, -1.0, 1.0, 0.25, -1.0, 0.75, -0.25, -0.75, 0.25, 0.0, 0.75, -0.75, 0.5, 0.0, 1.0, 0.5, 0.75, 1.0, -0.5, -0.5, -0.75, -0.25, 0.0, 0.5, -0.25, 1.0, -0.75, -0.25, 0.75, 0.5, -0.25, 0.75, 0.25, 0.25, 1.0, 0.75, 0.25, 0.0, 0.75, -0.75, -1.0, -0.75, 1.0, -0.75, -0.5, 1.0, 0.25, -0.5, -0.25, 0.25, 1.0, 1.0, -0.25, 0.75, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array3 = new Float32Array([-1.0, -1.0, -0.75, 1.0, -1.0, 0.5, 1.0, -0.25, -0.5, 0.75, 0.0, 0.25, 0.75, 0.75, 0.0, 0.5, 0.5, -0.25, -0.5, -0.25, 0.75, -0.75, 0.5, 0.25, 0.0, -0.5, 0.75, -0.75, -1.0, -0.25, -0.75, 0.75, 1.0, -0.75, -0.75, 0.0, -1.0, -0.75, 0.25, -0.5, -0.75, 0.0, -1.0, -0.5, -0.75, -0.25, -0.25, -1.0, -0.75, 0.25, 0.75, 0.75, 1.0, 0.0, -1.0, -0.75, 1.0, -1.0, 0.25, 0.0, -0.25, 0.25, -1.0, -0.5, 0.25, -0.75, -0.75, -0.25, -0.5, 1.0, 0.75, -0.75, 1.0, 0.75, 0.25, 0.5, -0.75, -0.75, 0.25, 0.0, 0.25, 0.5, -0.25, 0.75, -0.75, -0.5, -1.0, -0.75, 1.0, -1.0, -0.75, -0.75, 0.75, -1.0, -1.0, -0.25, 0.0, -0.75, 0.5, -1.0, ]);
    const array4 = new Float32Array([-1.0, 1.0, -0.5, -0.5, 1.0, 0.0, -0.5, 0.5, -0.5, -1.0, -0.5, 1.0, 0.0, -0.75, 0.5, -0.5, -0.5, -0.75, -0.5, 1.0, -0.5, 0.25, 0.5, -1.0, 0.5, -0.5, -0.5, -0.5, 0.5, 0.0, 0.75, -0.25, 0.25, 0.75, -1.0, -0.5, 0.5, -1.0, 0.75, 0.75, 1.0, 0.25, 0.0, 0.5, -1.0, 0.25, 1.0, 1.0, 1.0, -0.75, -0.25, 0.25, 0.75, -0.75, -0.25, -1.0, 1.0, 0.75, -1.0, -0.5, -1.0, -0.75, 0.75, 0.75, -1.0, -0.25, -1.0, -0.75, -0.75, 0.25, 0.0, 0.5, -0.5, -0.25, 0.0, -0.25, 0.25, -0.5, -0.25, 0.5, 1.0, -0.5, 0.0, 0.0, 0.25, -0.5, -0.75, 0.25, 1.0, 0.75, -1.0, 0.25, -0.25, -0.25, 1.0, 0.75, 0.75, 0.0, -0.5, 1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder202.pushDebugGroup("mygroupmarker")
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
    command_encoder200.insertDebugMarker("mymarker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder202.insertDebugMarker("mymarker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus",
        dimension: "2d"
    });
    command_encoder200.insertDebugMarker("mymarker");
    const array5 = new Float32Array([0.25, -0.75, -0.25, 1.0, 0.25, 1.0, -0.75, -0.5, -1.0, -0.25, 0.5, -0.25, 0.25, -0.75, -0.25, 0.75, 0.0, -0.25, -1.0, -0.25, -0.75, -0.25, -0.5, 0.25, -0.5, 0.75, 0.25, -0.75, 0.25, 0.5, 0.25, -1.0, 0.5, -0.75, -0.5, 0.25, -0.25, 0.5, 0.0, -0.25, 0.0, -0.25, 0.75, -1.0, 0.75, 0.5, -0.5, 0.25, 0.25, 0.75, -0.75, 0.5, 0.25, -0.5, 0.75, -0.5, -0.75, -1.0, 1.0, 0.0, 0.25, 0.25, 0.75, 0.75, -0.25, 0.5, 0.0, 0.5, -0.5, 0.5, -0.25, 1.0, -1.0, 0.25, 0.5, 0.5, -0.75, 0.75, 1.0, 0.75, -1.0, 0.75, -1.0, 0.75, 0.75, 0.5, 0.75, -1.0, 1.0, 0.25, -0.25, 0.75, -0.75, 0.25, 0.25, 0.75, -1.0, -0.25, 0.5, -1.0, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder201.insertDebugMarker("mymarker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.insertDebugMarker("mymarker");
    texture200.destroy();
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
    command_encoder100.pushDebugGroup("mygroupmarker")
    texture100.destroy();
    const array6 = new Float32Array([0.5, 0.0, 0.75, 0.25, -1.0, 0.5, 1.0, -1.0, 0.75, 1.0, 0.25, 0.75, -0.75, 0.75, 0.5, 1.0, -0.5, 0.75, 1.0, 0.25, -0.5, -0.25, -0.25, -1.0, 0.75, 1.0, 0.25, 0.5, 0.5, 0.5, 0.0, -1.0, 0.0, 0.75, -1.0, 0.25, 0.0, -1.0, -1.0, 0.0, -0.25, 1.0, 1.0, 0.0, 0.0, 0.25, 0.75, -0.5, 0.25, 0.0, 1.0, -0.75, 0.75, 0.75, 0.75, 0.5, 0.5, 0.0, 0.25, 0.0, -0.75, -0.25, -1.0, -1.0, -1.0, -0.75, -0.75, -1.0, -0.5, 0.0, -0.75, -0.25, -0.25, 1.0, -1.0, 0.25, -0.75, 0.25, -1.0, 1.0, -1.0, 0.0, -0.5, 0.25, -1.0, 0.25, 1.0, -0.25, 1.0, 1.0, 0.25, -1.0, 0.5, -0.25, -0.5, 0.75, 0.5, -1.0, 0.75, 0.5, ]);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
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
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    command_encoder200.insertDebugMarker("mymarker");
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
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder202.insertDebugMarker("mymarker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    command_encoder000.insertDebugMarker("mymarker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    texture101.destroy();
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array7 = new Float32Array([-1.0, -0.75, -0.75, -1.0, 1.0, 1.0, 0.25, -1.0, -0.75, 1.0, -0.25, 0.75, -0.75, -0.75, 1.0, 0.5, -1.0, 1.0, -0.5, -0.5, 1.0, 0.75, -0.5, -0.25, 1.0, -0.75, 0.25, 1.0, -0.5, 0.0, -0.5, -1.0, 0.5, 0.75, 0.75, 0.75, 0.25, -0.25, -0.75, -1.0, 1.0, 0.0, 0.25, -0.5, 1.0, 0.75, -0.5, -0.75, -0.5, 0.5, 0.25, -0.25, -0.75, 0.5, -1.0, -0.5, -0.5, 0.0, 0.75, 1.0, -1.0, 1.0, 0.75, 0.75, 0.0, -0.75, -0.5, -1.0, 0.25, 0.0, 0.5, 1.0, 0.0, 0.0, -0.75, -0.75, -0.5, -0.5, 1.0, -0.75, 0.5, -0.75, -1.0, -0.75, 0.25, -1.0, -0.25, 1.0, -1.0, 0.0, 0.25, -0.5, 0.5, 0.5, -1.0, 0.0, 0.0, -0.5, 0.0, 1.0, ]);
    texture000.destroy();
    render_pass_encoder1010.insertDebugMarker("marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const array8 = new Float32Array([1.0, -0.25, 0.0, -0.75, -0.75, 0.0, 0.25, 0.75, -0.75, 0.0, -1.0, -0.5, 1.0, 0.5, 0.75, -0.5, 0.75, -1.0, -0.25, 0.5, 1.0, -0.5, -0.25, -0.5, -0.75, -0.25, 0.0, -0.5, 0.5, 1.0, 0.75, -0.25, -1.0, 0.0, -0.25, 0.75, 0.25, -0.25, 0.75, 0.0, 0.75, -0.25, -0.25, 0.25, 0.5, 0.75, -0.25, 0.75, 0.5, -1.0, -1.0, -0.25, 0.5, -1.0, 0.0, 0.0, 0.75, 1.0, 1.0, 0.75, 0.25, -0.75, 0.0, -0.5, 0.25, 0.75, 0.0, -0.75, 0.0, 0.5, 0.25, -1.0, 0.25, 1.0, 0.75, -0.25, 0.75, 0.25, -0.25, -0.25, -1.0, 0.0, -0.25, -0.25, 0.25, -0.25, 1.0, 1.0, 1.0, -0.5, -0.5, -1.0, -1.0, 0.25, 0.75, -0.5, 0.75, 1.0, -1.0, 1.0, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout004]
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder201.insertDebugMarker("mymarker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder102.insertDebugMarker("mymarker");
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
    command_encoder202.insertDebugMarker("mymarker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8sint",
        dimension: "2d"
    });
    texture001.destroy();
    command_encoder201.insertDebugMarker("mymarker");
    render_pass_encoder1010.insertDebugMarker("marker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
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
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
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
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout006]
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder1020.insertDebugMarker("marker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder203.insertDebugMarker("mymarker");
    render_pass_encoder1010.insertDebugMarker("marker");
    command_encoder203.insertDebugMarker("mymarker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder202.insertDebugMarker("mymarker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
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
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
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
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder201.insertDebugMarker("mymarker");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.insertDebugMarker("marker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    command_encoder203.pushDebugGroup("mygroupmarker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder201.insertDebugMarker("mymarker");
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    texture005.destroy();
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array9 = new Float32Array([1.0, 0.25, 0.75, -1.0, 0.0, -0.25, 0.25, 0.25, -0.5, 0.25, 0.75, 0.5, -0.25, 0.75, 0.0, 0.0, -0.5, 1.0, 1.0, -0.75, 0.5, 0.0, 0.75, -1.0, 0.0, -0.5, -0.75, -0.75, -0.5, 0.75, -0.5, -1.0, 0.5, 0.25, 0.0, -0.25, -0.75, 1.0, 1.0, 0.75, -0.5, 1.0, 0.25, 0.5, 0.5, -0.75, -0.25, 0.25, -0.25, 0.25, -0.75, -0.75, -0.5, 0.25, -0.75, -0.75, -0.25, -0.75, 0.75, 0.5, -0.5, 0.25, -0.75, -0.75, -0.25, 0.25, 0.5, 0.5, -0.75, -0.5, 1.0, 0.25, 0.0, 0.75, 0.25, 0.0, 0.0, -0.75, -0.25, -0.75, -0.25, -0.5, 0.5, 0.0, 0.75, -0.5, -1.0, 1.0, -0.25, 0.25, -0.5, 1.0, -0.5, -0.5, 0.75, 0.25, 0.25, -0.5, 0.5, -0.5, ]);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder207.pushDebugGroup("mygroupmarker")
    command_encoder001.pushDebugGroup("mygroupmarker")
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout002]
    });
    texture201.destroy();
    texture104.destroy();
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout003]
    });
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
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder207.insertDebugMarker("mymarker");
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout004]
    });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32float",
        dimension: "2d"
    });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view2023 = texture202.createView({ label: "texture_view2023" });
    
    
    
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
    render_pass_encoder0020.insertDebugMarker("marker");
    command_encoder207.clearBuffer(buffer204);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    render_pass_encoder0020.insertDebugMarker("marker");
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2022,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2060.insertDebugMarker("marker");
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder2050.insertDebugMarker("marker");
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout006]
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_pass_encoder1010.insertDebugMarker("marker");
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder2050.pushDebugGroup("group_marker");
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout006]
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device30.destroy();
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout007]
    });
    render_pass_encoder2060.pushDebugGroup("group_marker");
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder207.clearBuffer(buffer204);
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    render_pass_encoder1000.insertDebugMarker("marker");
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const texture_view0023 = texture002.createView({ label: "texture_view0023" });
    texture002.destroy();
    command_encoder207.insertDebugMarker("mymarker");
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    const texture_view0033 = texture003.createView({ label: "texture_view0033" });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32sint",
        dimension: "2d"
    });
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout007]
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    texture006.destroy();
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout007]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder003.clearBuffer(buffer004);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0032,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2050.insertDebugMarker("marker");
    const render_pass_encoder2080 = command_encoder208.beginRenderPass({
        label: "render_pass_encoder2080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout002]
    });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    render_pass_encoder2000.insertDebugMarker("marker");
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0042 = texture004.createView({ label: "texture_view0042" });
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth32float",
        dimension: "2d"
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2080.insertDebugMarker("marker");
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder2080.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.insertDebugMarker("marker");
    texture003.destroy();
    texture004.destroy();
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout006]
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2024 = texture202.createView({ label: "texture_view2024" });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.insertDebugMarker("marker");
    texture007.destroy();
    render_pass_encoder2080.insertDebugMarker("marker");
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout007]
    });
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout103]
    });
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    const render_pass_encoder2070 = command_encoder207.beginRenderPass({
        label: "render_pass_encoder2070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2022,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2050.insertDebugMarker("marker");
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view1051 = texture105.createView({ label: "texture_view1051" });
    const texture_view2025 = texture202.createView({ label: "texture_view2025" });
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    render_pass_encoder2040.insertDebugMarker("marker");
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout000]
    });
    const bind_group_layout008 = device00.createBindGroupLayout({ 
        label: "bind_group_layout008",
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
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2080.insertDebugMarker("marker");
    render_pass_encoder2080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout0028 = device00.createPipelineLayout({ 
        label: "pipeline_layout0028",
        bindGroupLayouts: [bind_group_layout002]
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view1052 = texture105.createView({ label: "texture_view1052" });
    render_pass_encoder2030.insertDebugMarker("marker");
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
    const pipeline_layout0029 = device00.createPipelineLayout({ 
        label: "pipeline_layout0029",
        bindGroupLayouts: [bind_group_layout006]
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    {
        await buffer004.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer004.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer004.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder2010.insertDebugMarker("marker");
    texture202.destroy();
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    const pipeline_layout0030 = device00.createPipelineLayout({ 
        label: "pipeline_layout0030",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const texture_view1024 = texture102.createView({ label: "texture_view1024" });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout100]
    });
    {
        await buffer106.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer106.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer106.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder2050.insertDebugMarker("marker");
    render_pass_encoder2040.insertDebugMarker("marker");
    const texture_view1025 = texture102.createView({ label: "texture_view1025" });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    command_encoder105.pushDebugGroup("mygroupmarker")
    const pipeline_layout0031 = device00.createPipelineLayout({ 
        label: "pipeline_layout0031",
        bindGroupLayouts: [bind_group_layout004]
    });
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1052,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    texture102.destroy();
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout105]
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2070.insertDebugMarker("marker");
    render_pass_encoder1060.insertDebugMarker("marker");
    command_encoder105.copyBufferToTexture(
        {
            buffer: buffer101
        },
        {
            texture: texture105
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder105.clearBuffer(buffer106);
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1061 = texture106.createView({ label: "texture_view1061" });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2070.insertDebugMarker("marker");
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture_view1053 = texture105.createView({ label: "texture_view1053" });
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout0032 = device00.createPipelineLayout({ 
        label: "pipeline_layout0032",
        bindGroupLayouts: [bind_group_layout004]
    });
    command_encoder107.clearBuffer(buffer105);
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout106]
    });
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout105]
    });
    const bind_group_layout009 = device00.createBindGroupLayout({ 
        label: "bind_group_layout009",
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
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2040.insertDebugMarker("marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    const pipeline_layout0033 = device00.createPipelineLayout({ 
        label: "pipeline_layout0033",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1070.insertDebugMarker("marker");
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    {
        await buffer106.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer106.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer106.unmap();
        console.log(new Float32Array(data));
    }
    texture203.destroy();
    render_pass_encoder0000.insertDebugMarker("marker");
    const texture_view1062 = texture106.createView({ label: "texture_view1062" });
    render_pass_encoder1070.insertDebugMarker("marker");
    const command_encoder209 = device20.createCommandEncoder({ label: "command_encoder209" });
    device40.destroy();
    const array10 = new Float32Array([0.5, 1.0, 0.0, -0.75, -0.5, 0.0, 0.5, -0.75, -0.5, -0.25, 0.5, 0.0, -0.75, -0.5, 0.0, -0.5, 1.0, -1.0, -0.25, 0.5, 0.25, -0.25, -0.75, 0.0, -0.25, -0.5, 1.0, -0.5, -1.0, 0.5, 0.75, 0.75, 0.5, 0.75, 0.5, 0.0, 1.0, 0.5, 0.75, -0.5, -0.25, 0.75, 0.75, 0.0, -0.75, 0.0, -0.75, 0.0, 1.0, -0.25, 0.75, 0.25, 0.5, 0.25, 0.5, 0.25, -0.25, -0.75, -0.75, -0.75, -1.0, 0.5, 0.75, 1.0, -1.0, -0.5, -1.0, 0.5, -0.75, 0.75, -0.25, 0.0, 0.5, 0.75, 0.25, -0.25, -0.75, 0.0, 0.5, 0.75, -0.75, 0.75, -0.75, -0.5, 0.0, 0.0, -0.5, 1.0, -0.75, 1.0, 0.0, 0.75, -0.25, 0.75, 0.5, 0.0, -0.5, 1.0, -1.0, -1.0, ]);
    const pipeline_layout0034 = device00.createPipelineLayout({ 
        label: "pipeline_layout0034",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const render_pass_encoder2090 = command_encoder209.beginRenderPass({
        label: "render_pass_encoder2090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout106]
    });
    const pipeline_layout0035 = device00.createPipelineLayout({ 
        label: "pipeline_layout0035",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
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
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout0036 = device00.createPipelineLayout({ 
        label: "pipeline_layout0036",
        bindGroupLayouts: [bind_group_layout009]
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder2090.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout0037 = device00.createPipelineLayout({ 
        label: "pipeline_layout0037",
        bindGroupLayouts: [bind_group_layout009]
    });
    const pipeline_layout0038 = device00.createPipelineLayout({ 
        label: "pipeline_layout0038",
        bindGroupLayouts: [bind_group_layout005]
    });
    const pipeline_layout0039 = device00.createPipelineLayout({ 
        label: "pipeline_layout0039",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder2030.pushDebugGroup("group_marker");
    const command_encoder2010 = device20.createCommandEncoder({ label: "command_encoder2010" });
    const render_pass_encoder20100 = command_encoder2010.beginRenderPass({
        label: "render_pass_encoder20100",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout0040 = device00.createPipelineLayout({ 
        label: "pipeline_layout0040",
        bindGroupLayouts: [bind_group_layout003]
    });
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.insertDebugMarker("marker");
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
    
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout0041 = device00.createPipelineLayout({ 
        label: "pipeline_layout0041",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    render_pass_encoder20100.insertDebugMarker("marker");
    const pipeline_layout0042 = device00.createPipelineLayout({ 
        label: "pipeline_layout0042",
        bindGroupLayouts: [bind_group_layout008]
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.pushDebugGroup("group_marker");
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout0043 = device00.createPipelineLayout({ 
        label: "pipeline_layout0043",
        bindGroupLayouts: [bind_group_layout008]
    });
    render_pass_encoder1000.insertDebugMarker("marker");
}