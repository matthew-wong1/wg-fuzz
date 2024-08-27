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
    const array0 = new Float32Array([-0.25, -0.75, 1.0, 0.0, -1.0, 0.5, -1.0, 1.0, 0.25, -0.5, 1.0, 0.0, -0.5, -0.5, 0.75, 1.0, -0.5, 0.5, -0.25, -0.25, 0.5, -0.75, 0.75, 0.0, -0.75, 0.25, -0.25, -0.75, -1.0, 0.25, -0.25, 0.75, -0.75, -0.25, 0.75, 1.0, -0.25, 0.75, 0.75, 1.0, -0.25, 0.5, 1.0, -0.5, -1.0, 0.5, -0.5, -0.75, -0.5, 0.0, -1.0, -0.25, 0.25, -0.5, -0.75, 0.5, 0.75, 1.0, 0.0, -1.0, 0.5, -0.5, -0.25, 0.0, 0.0, 0.25, 0.5, 0.25, 1.0, 0.25, 1.0, -0.75, 0.75, 0.25, -0.5, -0.5, -0.25, -1.0, 0.5, -0.25, 0.75, 0.25, 0.75, -0.25, -0.75, -0.5, -0.5, 0.75, -1.0, 0.75, 0.25, -0.75, 0.75, -1.0, 0.75, 1.0, -0.5, 0.25, 1.0, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([-0.75, 0.75, 0.75, 0.25, 0.75, -1.0, 0.75, 0.0, 0.25, -0.25, 1.0, -0.75, 0.25, 1.0, -0.5, -0.75, 0.75, -0.5, -1.0, -0.5, 0.5, -0.75, 0.0, 0.5, 0.0, -0.75, -0.25, -1.0, -0.75, -0.5, 0.0, 1.0, -0.5, 0.25, 0.0, 1.0, 0.75, 0.75, 0.25, 0.5, -1.0, 0.25, 0.5, 1.0, -0.75, -0.5, 0.75, -0.75, -0.75, -0.25, -0.25, 1.0, -0.75, -0.75, 0.5, 0.5, 0.5, -1.0, 1.0, -1.0, 1.0, 0.25, 0.5, 0.5, -0.75, -0.25, 1.0, -0.25, 0.0, 0.5, 0.75, -1.0, 0.5, 0.75, -0.5, 0.75, -1.0, -0.25, -1.0, -1.0, 0.0, 1.0, 0.0, -0.5, -0.25, 1.0, -0.5, 0.75, 0.75, 0.75, -0.5, 0.25, 0.25, 0.5, 1.0, -0.75, 0.75, -0.5, 0.75, 0.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_buffer100 = command_encoder100.finish();
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    command_encoder000.pushDebugGroup("mygroupmarker")
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device30.pushErrorScope("out-of-memory");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    
    query100.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    device10.pushErrorScope("out-of-memory");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder200.insertDebugMarker("mymarker");
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
    
    query100.destroy()
    
    
    
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    command_encoder200.clearBuffer(buffer200);
    query000.destroy()
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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
    
    command_encoder000.insertDebugMarker("mymarker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder000.popDebugGroup()
    const command_buffer001 = command_encoder001.finish();
    command_encoder200.clearBuffer(buffer200);
    texture200.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder200.insertDebugMarker("mymarker");
    
    
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
    query300.destroy()
    command_encoder000.pushDebugGroup("mygroupmarker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_buffer002 = command_encoder002.finish();
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer200.destroy()
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    texture100.destroy();
    query303.destroy()
    query303.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder200.insertDebugMarker("mymarker");
    render_pass_encoder1010.insertDebugMarker("marker");
    
    texture201.destroy();
    
    
    
    
    device20.pushErrorScope("internal");
    query002.destroy()
    
    buffer100.destroy()
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query303.destroy()
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
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const array2 = new Float32Array([0.75, -0.5, 0.5, -1.0, 0.5, -0.25, 0.0, -0.75, 0.75, -1.0, 1.0, -1.0, -0.75, -0.5, -0.75, 0.25, -0.25, -1.0, 0.25, -1.0, 0.0, 1.0, -0.25, -0.25, 0.75, 0.5, -0.75, -1.0, 0.25, -0.75, 1.0, 0.5, -0.25, -1.0, -0.75, 0.25, 0.0, 0.75, -0.25, -0.75, 0.75, 0.0, -0.75, 1.0, -0.25, 0.25, 0.75, 0.5, 0.25, 0.0, 0.25, -0.5, -0.75, 0.75, -0.25, -0.5, 0.5, -1.0, -0.25, -0.5, 0.75, 0.0, -0.25, 0.0, 0.5, -0.75, 1.0, -0.75, -0.75, 0.5, -0.75, -0.75, 1.0, 0.0, 0.25, -0.75, 1.0, -1.0, -0.5, 0.0, 0.75, 1.0, 0.75, 0.75, 1.0, 0.5, -0.25, -1.0, 0.25, -1.0, 0.25, 0.5, 0.25, -0.5, -0.75, 0.0, -0.5, 0.75, -0.25, 1.0, ]);
    
    device40.pushErrorScope("internal");
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
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
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
    buffer000.destroy()
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
    
    
    device00.pushErrorScope("out-of-memory");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder2000.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder400.insertDebugMarker("mymarker");
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    buffer001.destroy()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    texture000.destroy();
    device00.queue.submit([command_buffer001, ]);
    buffer400.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    texture202.destroy();
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    query001.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query001.destroy()
    const array3 = new Float32Array([-1.0, 0.5, 1.0, 0.0, -0.75, 0.5, -1.0, 0.5, 0.25, 0.5, 0.5, 0.25, 1.0, -1.0, -0.25, -0.75, 0.25, 0.75, -0.25, 0.75, 0.0, -0.75, -0.25, 0.5, 0.5, 1.0, -0.5, -0.75, 0.75, 0.75, -1.0, 0.0, -0.75, 0.0, -1.0, 1.0, -0.25, -0.75, 0.25, 0.0, 0.75, 0.25, -0.5, -0.5, -0.75, 0.0, -1.0, 0.5, -0.25, -1.0, 1.0, 0.0, -0.5, 0.75, 0.75, -1.0, -0.25, -1.0, -0.75, -1.0, -1.0, 0.25, -0.25, -0.5, -0.5, -1.0, 0.5, 0.5, 0.0, 0.25, -0.75, 0.75, 0.5, 1.0, -0.25, 0.0, -0.5, -1.0, -0.5, -0.5, 1.0, -0.5, -0.25, 0.5, 1.0, -0.5, 0.0, -0.75, -0.75, -1.0, 1.0, -0.75, 0.25, -0.5, 0.75, 0.25, 0.75, 0.5, 0.25, -0.75, ]);
    query003.destroy()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query200.destroy()
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    texture001.destroy();
    query304.destroy()
    render_pass_encoder2010.pushDebugGroup("group_marker");
    buffer101.destroy()
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    query005.destroy()
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    render_pass_encoder2010.popDebugGroup();
    
    
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
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    render_pass_encoder2000.popDebugGroup();
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
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    query305.destroy()
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    query302.destroy()
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    device80.pushErrorScope("validation");
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture002.destroy();
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    query303.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    query006.destroy()
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    query000.destroy()
    query005.destroy()
    
    command_encoder300.insertDebugMarker("mymarker");
    query004.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
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
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    command_encoder300.copyBufferToBuffer(
        buffer302,
        0,
        buffer300,
        0,
        400
    );
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
    
    
    query303.destroy()
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    device100.queue.writeBuffer(buffer1000, 0, array0, 0, array0.length);
    query004.destroy()
    
    
    command_encoder300.copyBufferToBuffer(
        buffer302,
        0,
        buffer300,
        0,
        400
    );
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout004]
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
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
    command_encoder400.insertDebugMarker("mymarker");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    device100.queue.writeBuffer(buffer1000, 0, array0, 0, array0.length);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    buffer800.destroy()
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    command_encoder401.insertDebugMarker("mymarker");
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    query300.destroy()
    
    query100.destroy()
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_buffer401 = command_encoder401.finish();
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query303.destroy()
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const array4 = new Float32Array([-0.75, -0.5, -1.0, 0.75, 0.5, 0.25, -0.25, -0.5, 0.25, 0.25, 0.25, 0.0, 1.0, -0.5, 0.5, -0.75, -0.5, -0.25, -1.0, -1.0, 1.0, 0.75, 0.75, 0.75, -1.0, -0.25, 0.0, -0.75, 0.0, -0.75, 0.0, 0.25, -0.25, -0.75, 0.5, -0.25, 0.5, -0.5, 0.0, -1.0, 0.25, 1.0, -0.5, 0.75, 0.75, 0.0, -0.25, -0.75, -1.0, -0.5, 0.75, 0.0, -0.25, -0.75, -0.75, 1.0, -0.75, 0.25, 1.0, 1.0, -0.25, 0.0, -0.75, 0.0, 0.5, 0.0, -0.75, -0.25, -0.5, -0.75, 1.0, 0.25, 0.5, 0.5, -0.75, 0.25, 0.75, -0.25, 0.25, 0.25, -0.75, -0.5, -0.25, 0.0, 0.75, -0.25, 0.75, 0.0, -0.75, -0.75, -1.0, 0.5, -0.5, 0.5, -0.5, 0.75, -0.5, 0.0, -0.5, 0.5, ]);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.popDebugGroup();
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    texture1000.destroy();
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    
    const command_buffer300 = command_encoder300.finish();
    device100.queue.writeBuffer(buffer1000, 0, array3, 0, array3.length);
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    query100.destroy()
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device100.pushErrorScope("out-of-memory");
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    buffer1000.destroy()
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    query005.destroy()
    
    render_pass_encoder2000.insertDebugMarker("marker");
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
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    query005.destroy()
    buffer102.destroy()
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query402
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
    
    query300.destroy()
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout006]
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder4020.pushDebugGroup("group_marker");
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    
    device90.pushErrorScope("validation");
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.popDebugGroup();
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
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query003.destroy()
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
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    device60.pushErrorScope("out-of-memory");
    query002.destroy()
    
    render_pass_encoder4000.insertDebugMarker("marker");
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    compute_pass_encoder8000.insertDebugMarker("marker")
    query304.destroy()
    buffer003.destroy()
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    command_encoder600.pushDebugGroup("mygroupmarker")
    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
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
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    query100.destroy()
    query303.destroy()
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout006]
    });
    render_pass_encoder4000.insertDebugMarker("marker");
    query200.destroy()
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    query300.destroy()
    
    
    
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    texture800.destroy();
    
    
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    buffer302.destroy()
    
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    texture400.destroy();
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    render_pass_encoder2000.insertDebugMarker("marker");
    query305.destroy()
    const array5 = new Float32Array([1.0, 0.0, 0.25, 0.75, 0.25, -0.75, -1.0, -0.5, -0.25, -0.5, 0.75, 0.0, 1.0, 1.0, 0.5, 0.0, -1.0, -0.5, 0.0, 0.75, 1.0, 1.0, 0.0, -0.75, -0.75, -1.0, 0.0, -0.75, -0.75, 0.5, 0.75, 0.25, -0.25, 0.75, 1.0, -0.25, 0.5, 0.25, 0.0, 0.25, 0.0, -0.5, -0.75, -0.25, -0.25, -0.75, -0.5, 0.25, 0.25, 1.0, 0.0, -0.25, 0.25, 0.0, 0.5, -0.5, -0.75, 0.5, -0.25, -0.25, -0.75, 0.0, 0.25, 0.75, -0.5, -0.5, -1.0, 1.0, 0.75, 0.25, 0.0, -1.0, 0.75, -0.5, -0.5, -0.25, 0.75, 0.5, -1.0, 1.0, 0.25, -0.5, 0.5, -1.0, -1.0, 1.0, -0.25, 0.0, 0.75, 0.5, -0.5, -0.25, -1.0, 0.5, -0.5, 0.5, -0.5, 0.75, 0.75, 1.0, ]);
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout002]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query006.destroy()
    
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout005]
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_pass_encoder4000.pushDebugGroup("group_marker");
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2010.insertDebugMarker("marker");
    
    
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder4000.popDebugGroup();
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    
    query100.destroy()
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    query200.destroy()
    buffer301.destroy()
    buffer1001.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const command_buffer204 = command_encoder204.finish();
    command_encoder600.popDebugGroup()
    const command_buffer203 = command_encoder203.finish();
    const command_buffer600 = command_encoder600.finish();
    device60.queue.submit([command_buffer600, ]);
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4020.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
}