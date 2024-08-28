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
    
    
    const array0 = new Float32Array([0.75, -1.0, 0.0, 1.0, -0.5, -0.75, -0.5, -1.0, 0.25, -0.25, 1.0, 0.0, -0.5, -0.5, -0.5, 0.75, 1.0, 1.0, 1.0, 0.5, 0.5, -1.0, -1.0, -0.75, 1.0, 0.25, 1.0, 1.0, 0.25, -0.75, 0.75, -0.25, -1.0, -0.75, 0.5, 1.0, 0.75, 0.5, -1.0, -0.75, -0.75, -0.25, -1.0, -0.75, 0.0, -0.25, 0.0, -0.5, 1.0, 0.0, 0.5, -1.0, -0.25, -0.75, -0.75, -0.75, -0.5, -0.25, 0.75, 1.0, 1.0, 0.25, -0.5, -0.75, 0.25, -1.0, 0.0, 1.0, -0.25, 0.5, 0.5, 0.75, -0.5, -1.0, 0.0, -0.75, -0.25, -0.75, 0.25, 0.25, 0.75, 0.75, -0.5, 0.5, 0.5, 0.25, -0.5, -1.0, 1.0, 0.75, -0.75, -1.0, -1.0, -0.5, 0.5, 0.5, 0.5, -0.5, 0.5, -1.0, ]);
    const array1 = new Float32Array([-1.0, -0.75, -0.25, -0.5, 0.25, -1.0, 0.0, 0.0, 0.5, 1.0, 1.0, -0.5, 0.5, 0.75, -0.5, 0.75, 1.0, -0.25, -0.5, 0.5, 0.75, -0.25, 0.75, 0.0, 0.25, 1.0, -0.5, -0.25, -0.25, 0.5, -0.75, 0.0, -0.25, 0.5, -0.75, 0.0, 0.75, 0.0, 0.0, 0.25, 0.5, 0.0, -0.75, -0.25, -1.0, 0.5, -0.25, 0.5, 0.5, 0.25, -0.75, 0.0, -0.75, -0.75, 0.0, -0.25, -0.75, 0.0, 1.0, 0.75, 1.0, 0.0, 0.75, -0.25, -0.25, 0.0, 0.0, 1.0, 0.75, 0.0, 1.0, 1.0, 0.75, -0.75, 0.5, 0.25, -0.75, -0.25, -0.5, -0.5, 0.5, 0.0, 0.5, 0.5, 0.5, 0.0, -0.75, -0.5, 1.0, 0.75, 1.0, -0.25, -0.25, 1.0, -1.0, 0.75, -0.75, 1.0, 0.25, 0.75, ]);
    
    
    const array2 = new Float32Array([0.75, 0.5, -1.0, -1.0, 1.0, 0.5, 1.0, 0.25, 0.0, 0.75, 0.5, 0.5, 0.25, -0.75, -0.25, -0.25, 0.75, -0.75, -0.25, 0.75, 0.75, -0.25, -0.5, 0.75, -0.25, -0.25, -1.0, 0.75, 0.75, 0.25, -0.75, 0.75, 0.75, 0.0, 0.25, -1.0, -0.25, 0.5, 0.75, 1.0, 0.0, -1.0, -0.25, 0.75, -0.75, 0.0, 0.75, 0.75, 1.0, -0.5, 0.5, -0.25, -0.75, 0.5, 0.5, 0.5, -0.5, -0.5, -0.75, 0.25, -1.0, 0.25, 0.5, 0.5, 0.5, 0.0, 1.0, 0.0, 0.25, -0.25, 0.5, 0.0, 1.0, -1.0, 0.75, 0.0, 1.0, -0.75, 0.5, -0.5, 1.0, -0.5, 0.0, -0.5, -0.75, -0.5, -1.0, -0.25, 0.25, 0.25, 0.0, 0.0, -0.25, -0.75, -0.75, 0.25, -0.25, 0.0, 0.0, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
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
    command_encoder100.insertDebugMarker("mymarker");
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder100.popDebugGroup()
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    buffer100.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    texture100.destroy();
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    render_pass_encoder1020.executeBundles([])
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    device10.pushErrorScope("validation");
    
    
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device20.destroy();
    const array3 = new Float32Array([0.5, 1.0, -0.5, 0.0, -1.0, -1.0, -0.5, -0.75, 0.0, 0.0, 0.0, -1.0, -0.5, 0.25, -0.25, 1.0, 0.75, 0.0, 0.0, -1.0, -1.0, 1.0, -0.25, -1.0, 0.0, -0.75, -0.5, -0.5, 0.25, -0.5, -0.25, 0.5, -0.25, 0.75, -0.5, 0.25, 1.0, -0.5, 0.25, 0.75, -1.0, -0.75, 0.75, 0.5, 0.25, -0.25, -0.75, 1.0, -0.5, 0.0, -1.0, 0.5, 0.25, 1.0, 1.0, -0.75, 1.0, 0.5, 0.0, -0.5, 0.25, -0.5, -0.75, -0.25, 0.75, -0.5, -0.75, -0.25, -0.5, 1.0, 0.75, -0.75, 0.75, 0.5, 1.0, 0.25, 0.75, 1.0, -0.75, -1.0, -0.75, 0.25, 0.5, 0.75, -0.5, -0.25, 0.75, -0.75, 1.0, 0.5, -1.0, 1.0, 0.25, -0.75, 0.75, -1.0, 0.5, -0.5, 0.5, 0.25, ]);
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    const array4 = new Float32Array([-1.0, 0.5, -0.5, 0.75, 0.75, 0.0, 0.5, 0.5, 0.5, 0.75, 0.25, 0.25, -0.5, -0.25, 0.5, 0.5, 0.0, 0.25, -0.5, -0.5, 0.25, 0.5, -0.75, 0.5, -0.75, 0.0, 0.5, -0.75, -0.75, 1.0, -0.5, -0.5, -0.5, -0.5, 0.0, 0.75, 0.25, -0.75, 0.5, 0.5, 1.0, -0.5, 0.75, 0.0, -0.5, 0.75, 0.25, -0.25, 0.0, -0.25, -0.5, 0.25, -0.75, 0.25, 0.75, 0.0, -0.75, 0.5, -1.0, -1.0, 0.0, -0.25, 1.0, -1.0, 0.75, -1.0, 1.0, 0.75, -0.75, -0.25, 0.25, -0.25, -0.75, 0.75, -0.5, 0.25, 0.75, -0.25, -1.0, 1.0, -1.0, -0.5, 1.0, -1.0, 0.25, -1.0, -1.0, 0.75, -0.5, 1.0, 0.25, -0.25, 0.5, 0.25, 0.5, -0.5, -0.75, 1.0, 0.0, -0.75, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const array5 = new Float32Array([0.5, -0.25, 0.0, 0.25, 0.75, -0.5, 0.25, -0.25, 0.0, 0.5, -0.5, -0.75, -0.5, 0.75, 0.0, 1.0, 0.75, -0.25, -1.0, 0.5, -0.75, 0.25, 0.25, -0.5, 0.25, -0.5, 0.0, -0.25, 0.0, -0.25, 0.25, 0.0, -0.75, 1.0, 0.25, 0.5, 0.0, 1.0, 1.0, 0.75, 1.0, 0.75, 0.25, 0.5, 0.5, 0.25, 0.75, -1.0, -0.25, -0.5, 1.0, 0.75, 0.75, -0.5, 0.75, -0.25, -0.25, -0.5, -0.5, -0.25, 0.25, -0.75, -0.5, 0.25, -0.5, -0.5, 1.0, -0.5, -0.75, 0.0, -0.25, -0.25, 1.0, 0.25, -1.0, 0.0, 0.25, 0.5, 0.25, 0.25, 0.5, -0.75, -0.5, 0.0, 1.0, 0.25, 0.5, 0.5, 0.0, 0.75, 0.75, -1.0, 1.0, 1.0, -0.75, 0.75, 0.0, -0.5, -0.75, 0.25, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_buffer104 = command_encoder104.finish();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1020.insertDebugMarker("marker");
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8snorm",
        dimension: "2d"
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler101 = device10.createSampler( { label: "sampler101" } );
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
    
    render_pass_encoder1020.executeBundles([])
    buffer000.destroy()
    texture001.destroy();
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_pass_encoder1020.executeBundles([])
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder1020.popDebugGroup();
    
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture102.destroy();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    device10.queue.submit([command_buffer104, ]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    command_encoder001.clearBuffer(buffer001);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder001.clearBuffer(buffer001);
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    buffer101.destroy()
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    texture105.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device40.destroy();
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1020.insertDebugMarker("marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    texture000.destroy();
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    render_pass_encoder1020.popDebugGroup();
    const command_buffer001 = command_encoder001.finish();
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    device30.pushErrorScope("internal");
    texture106.destroy();
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer002.destroy()
    const texture_view1042 = texture104.createView({ label: "texture_view1042" });
    
    
    
    device00.pushErrorScope("validation");
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture_view1043 = texture104.createView({ label: "texture_view1043" });
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
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array6 = new Float32Array([-0.5, -0.75, 0.0, 0.0, 0.0, -1.0, -1.0, 0.5, 0.0, 0.25, 1.0, -0.5, -0.25, 0.75, 0.75, 0.25, 0.25, 0.25, 1.0, 1.0, 1.0, 0.0, 0.75, 0.5, -1.0, -0.25, 0.0, -0.25, -0.75, 0.25, -0.5, 0.75, -0.25, -0.75, 0.75, 0.5, 0.75, -0.75, 0.5, -1.0, -0.25, -0.75, -1.0, -0.25, -0.25, 1.0, -0.75, 0.75, -0.5, -0.5, -1.0, -1.0, 0.0, -1.0, 1.0, 1.0, -1.0, -0.5, 0.75, 0.5, -0.75, 0.75, -1.0, 1.0, 0.75, -1.0, 1.0, 0.75, -0.25, -0.25, -0.75, 0.0, 1.0, -1.0, 0.0, 0.5, -0.5, 0.25, 0.75, -1.0, 1.0, 0.75, -0.25, -1.0, -0.25, -0.25, -1.0, 0.25, 0.75, -0.25, -0.25, -0.75, 0.75, 1.0, 1.0, -0.75, -0.75, 1.0, 0.5, 0.0, ]);
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    render_pass_encoder1020.popDebugGroup();
    const texture_view1044 = texture104.createView({ label: "texture_view1044" });
    
    texture103.destroy();
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    buffer001.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device00.queue.submit([command_buffer001, ]);
    
    const texture_view1045 = texture104.createView({ label: "texture_view1045" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    command_encoder300.popDebugGroup()
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
    
    texture104.destroy();
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    
    
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
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
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
    texture107.destroy();
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.pushErrorScope("out-of-memory");
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder1020.executeBundles([])
    
    
    texture300.destroy();
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16uint",
        dimension: "2d"
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array7 = new Float32Array([-0.75, -1.0, -0.75, -0.25, -0.25, 0.75, 0.25, 0.5, 1.0, -0.75, 0.0, 0.25, -0.25, -1.0, 0.0, 1.0, 0.0, 1.0, 0.5, 0.75, 0.5, -0.75, -0.25, 0.75, 0.25, -0.5, 0.25, -0.5, 0.5, -0.25, -0.25, 1.0, 0.25, 0.0, 1.0, 0.25, 0.0, 1.0, 0.25, -0.25, 0.75, 0.5, 0.25, 1.0, 0.5, -1.0, -1.0, -0.75, -1.0, -0.25, -1.0, 0.0, -0.75, 0.25, 1.0, 0.75, -0.25, 0.25, 1.0, -0.25, -0.25, -0.5, -0.75, 0.5, 0.5, 0.25, -0.25, 1.0, -1.0, -1.0, -0.5, -1.0, 0.5, 1.0, -0.75, -0.5, 0.0, 0.0, -0.5, 0.5, -0.75, 0.25, -0.5, 1.0, -0.75, -0.5, 0.25, -1.0, 0.5, 0.0, 1.0, 0.25, 0.75, -0.75, -0.25, -0.25, -1.0, 1.0, -1.0, -1.0, ]);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    texture302.destroy();
    command_encoder300.insertDebugMarker("mymarker");
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    command_encoder300.insertDebugMarker("mymarker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const array8 = new Float32Array([-0.5, -0.5, 0.75, -0.25, -0.75, -1.0, 0.0, -0.25, 1.0, 1.0, 0.25, -0.5, -0.25, -0.5, 1.0, 0.5, 1.0, 0.75, 1.0, -0.5, -0.75, 0.75, -0.5, -0.25, 0.5, -0.5, 0.25, 1.0, -0.25, -0.75, 1.0, -0.75, 0.5, 0.5, 0.0, 0.0, 1.0, 0.5, 1.0, -0.25, -0.5, 1.0, -0.5, -0.25, 0.75, -0.5, 0.25, 1.0, 1.0, 0.0, -0.25, -1.0, 0.5, 1.0, 1.0, -1.0, 1.0, -1.0, -0.5, 0.75, -1.0, -0.5, 1.0, 0.25, 0.5, 0.25, -0.5, -1.0, 0.5, -0.25, 0.0, -1.0, 0.5, -1.0, 1.0, 0.5, -0.25, 0.0, -0.5, -0.75, -0.5, 1.0, 0.0, 0.25, -0.75, 0.75, -1.0, -1.0, 0.0, 0.75, 0.25, 0.25, 0.0, 0.0, 0.0, -0.75, 0.75, -0.5, 0.0, -0.5, ]);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
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
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    render_pass_encoder1020.insertDebugMarker("marker");
    buffer004.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    render_pass_encoder1020.executeBundles([])
    texture303.destroy();
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    const texture_view1014 = texture101.createView({ label: "texture_view1014" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    const command_buffer600 = command_encoder600.finish();
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    buffer005.destroy()
    command_encoder301.pushDebugGroup("mygroupmarker")
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder3000.executeBundles([])
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    texture600.destroy();
    buffer103.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    render_pass_encoder3000.insertDebugMarker("marker");
    const array9 = new Float32Array([0.5, 0.25, 0.0, 0.25, 0.25, 0.25, 0.75, -0.5, -0.75, -1.0, 0.25, -1.0, -0.25, 0.75, 0.5, 0.75, 1.0, 0.25, -0.75, 0.5, 0.25, 0.25, 0.0, 0.75, 0.0, -0.25, -0.75, -1.0, 0.75, -1.0, 0.5, 1.0, 1.0, -1.0, 0.75, 0.25, -0.75, -0.75, 0.5, 0.5, 1.0, 0.25, 0.75, -1.0, -1.0, -0.25, 0.25, 0.0, -0.25, 0.25, -0.25, 0.0, -0.25, 0.5, 0.0, -1.0, 0.25, 0.0, 0.5, 0.75, 1.0, -1.0, 0.0, -0.25, 0.75, -1.0, -0.5, 0.0, 0.5, -0.25, 1.0, -0.75, 0.0, 0.75, -0.25, 0.5, 1.0, -0.25, 0.25, 0.0, 0.5, 1.0, -0.75, -0.5, -0.75, -0.75, -0.25, -0.25, -0.5, -0.25, 0.0, -0.25, -0.25, -0.75, -0.5, -1.0, -0.75, -0.5, 1.0, -0.75, ]);
    command_encoder301.popDebugGroup()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder3000.insertDebugMarker("marker");
    render_pass_encoder3000.executeBundles([])
    
    buffer003.destroy()
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    buffer105.destroy()
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    command_encoder002.insertDebugMarker("mymarker");
    const command_buffer002 = command_encoder002.finish();
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
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    device00.queue.writeBuffer(buffer006, 0, array8, 0, array8.length);
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    
    command_encoder500.insertDebugMarker("mymarker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    buffer104.destroy()
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    device70.pushErrorScope("internal");
    
    device10.queue.writeTexture({ texture: texture108 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture304 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer006, 0, array9, 0, array9.length);
    render_pass_encoder1020.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture108 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture108 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture304 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture304 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.insertDebugMarker("marker");
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture108 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer006, 0, array8, 0, array8.length);
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_pass_encoder1020.insertDebugMarker("marker");
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    compute_pass_encoder1010.insertDebugMarker("marker")
    buffer006.destroy()
    
    
    const texture_view1080 = texture108.createView({ label: "texture_view1080" });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    device10.queue.writeTexture({ texture: texture108 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer700.destroy()
    
    device30.queue.writeTexture({ texture: texture304 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device10.queue.writeTexture({ texture: texture108 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    buffer102.destroy()
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
    
    device30.queue.writeTexture({ texture: texture304 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture101.destroy();
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
    texture301.destroy();
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder004.pushDebugGroup("mygroupmarker")
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    compute_pass_encoder1030.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture108 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture108 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture304 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture108 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    device30.queue.writeTexture({ texture: texture304 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array10 = new Float32Array([0.25, -1.0, 0.75, 0.0, -0.25, -1.0, -0.5, 0.75, 1.0, 1.0, 0.0, 0.75, -1.0, 0.75, 0.25, 1.0, -0.5, -0.25, -0.75, -0.25, -1.0, 0.0, 0.5, 0.5, 0.25, 0.25, 0.0, 0.0, 0.5, -0.25, -0.25, 0.25, 0.25, 1.0, -0.5, -0.25, 0.5, -0.75, 0.0, -1.0, 0.0, -0.75, 1.0, -0.75, 0.0, -1.0, 0.75, -0.5, -0.75, -0.5, -0.5, -0.5, 1.0, 0.5, -0.25, 0.25, 0.75, 0.0, 1.0, 0.0, -0.25, 0.25, 1.0, 0.25, -1.0, 0.5, -0.75, 0.0, 1.0, -0.25, 0.0, 0.5, 0.25, -0.25, 1.0, 0.25, 0.5, -0.5, 0.25, -0.5, -0.75, -0.75, -1.0, -1.0, 0.0, -0.75, -1.0, 0.0, 0.75, 0.5, -1.0, -1.0, 0.75, 0.0, 0.75, 0.5, -0.5, -0.75, 0.25, 0.25, ]);
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    buffer500.destroy()
    render_pass_encoder3000.pushDebugGroup("group_marker");
    const command_buffer601 = command_encoder601.finish();
    device30.queue.writeTexture({ texture: texture304 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    const texture_view1081 = texture108.createView({ label: "texture_view1081" });
    const array11 = new Float32Array([0.5, -0.5, 0.0, 1.0, 0.25, 0.0, 0.25, -0.5, -0.5, -0.25, 0.5, 0.0, -0.25, -1.0, 0.0, -1.0, -0.25, -0.25, -0.5, 0.5, 0.5, -0.75, 0.25, 0.5, 0.5, 0.75, 1.0, 0.75, -1.0, -0.25, 0.0, 0.0, -1.0, -0.25, 0.0, -0.25, -1.0, -0.75, -0.5, -0.75, 0.25, 0.0, -0.5, 0.25, 0.5, -1.0, -1.0, -0.75, 0.0, 0.75, 0.25, -0.75, -0.25, 1.0, 0.0, 0.5, -0.5, 0.0, 1.0, 0.25, 0.75, 0.0, 0.0, -1.0, 0.25, 1.0, 0.25, 0.75, -0.5, -0.5, 0.0, 0.25, -0.5, -0.5, 1.0, -0.5, 0.25, -0.75, -0.75, 0.75, 0.0, -0.25, 0.5, 0.25, 0.25, -0.75, -0.5, 1.0, -0.5, 0.25, 0.75, -0.75, 0.5, 0.75, 1.0, -0.75, -0.5, -0.5, -0.25, 1.0, ]);
    device10.queue.writeTexture({ texture: texture108 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_pass_encoder1020.pushDebugGroup("group_marker");
    buffer106.destroy()
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture304.destroy();
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.queue.writeTexture({ texture: texture108 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture108 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture108 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer107.destroy()
    
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_pass_encoder1020.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture108 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer501.destroy()
    
    render_pass_encoder3000.popDebugGroup();
    
    buffer502.destroy()
    
    render_pass_encoder1020.executeBundles([])
    device10.queue.writeTexture({ texture: texture108 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder1020.popDebugGroup();
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    device10.queue.writeTexture({ texture: texture108 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder602.pushDebugGroup("mygroupmarker")
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture307 = device30.createTexture({
        label: "texture307",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture306.destroy();
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const texture_view3070 = texture307.createView({ label: "texture_view3070" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    command_encoder004.popDebugGroup()
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
    device10.queue.writeTexture({ texture: texture108 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3010.insertDebugMarker("marker")
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
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const bind_group_layout108 = device10.createBindGroupLayout({ 
        label: "bind_group_layout108",
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
    render_pass_encoder3000.executeBundles([])
    device10.queue.writeTexture({ texture: texture108 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture108 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    const array12 = new Float32Array([0.5, -0.25, 1.0, -1.0, -0.25, -0.5, 0.5, 0.25, 0.0, -1.0, -0.75, 0.25, -0.75, 0.0, 0.25, -0.25, -0.25, -0.25, 0.25, -0.25, -0.75, -0.75, 0.0, -0.25, -1.0, -0.5, -1.0, 0.25, 0.0, 1.0, 1.0, 0.0, -0.5, -1.0, 1.0, 1.0, 0.0, 0.0, 1.0, 1.0, -1.0, -1.0, -1.0, 0.5, 0.75, -0.75, -1.0, -0.75, 0.25, 0.0, 0.25, 0.25, 1.0, 1.0, 0.75, 1.0, -1.0, 0.75, 0.75, 0.75, 1.0, 0.0, 0.0, 0.25, 0.75, 0.25, -1.0, 0.25, 0.5, 1.0, 0.25, 0.5, 0.5, 0.25, 0.75, -0.75, -0.75, -0.25, -1.0, 0.75, -0.25, 0.0, -0.5, -0.25, -0.5, -0.75, 0.0, 0.0, -1.0, 0.5, -0.75, 0.75, -0.25, -1.0, 0.25, 0.0, 1.0, 0.25, -0.25, -1.0, ]);
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    device60.queue.writeBuffer(buffer602, 0, array12, 0, array12.length);
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
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
    compute_pass_encoder3020.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer300, 0, array11, 0, array11.length);
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device60.queue.writeBuffer(buffer602, 0, array5, 0, array5.length);
    
    device60.queue.writeBuffer(buffer602, 0, array2, 0, array2.length);
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer701.destroy()
    const bind_group_layout109 = device10.createBindGroupLayout({ 
        label: "bind_group_layout109",
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
    device60.queue.submit([command_buffer600, ]);
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device60.queue.writeBuffer(buffer602, 0, array10, 0, array10.length);
    device30.queue.writeBuffer(buffer300, 0, array12, 0, array12.length);
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
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
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    buffer602.destroy()
    const command_buffer304 = command_encoder304.finish();
    const command_buffer501 = command_encoder501.finish();
}