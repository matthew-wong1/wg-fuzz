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
    const array0 = new Float32Array([0.0, -0.75, 1.0, 0.5, -1.0, 0.75, -0.75, -0.5, -0.5, -0.75, -1.0, 0.0, -0.25, 0.25, 0.5, 0.25, 0.5, -0.5, -0.5, 0.0, 0.5, 0.5, -0.5, -0.25, -0.25, -0.75, 0.75, 1.0, 1.0, 0.0, 0.0, 0.0, 0.0, -0.5, 0.75, 0.75, 0.5, 0.0, -0.75, 1.0, 0.25, 1.0, 0.0, -0.25, 0.0, -0.75, 0.0, 0.5, -0.75, -0.25, -1.0, 1.0, -0.75, -0.75, 0.75, -0.5, -1.0, -0.25, -0.25, 0.25, 0.0, 0.25, -1.0, 0.0, -0.75, 1.0, 0.25, -0.5, -0.75, 1.0, -0.5, 0.0, -0.75, -0.5, 0.75, -1.0, -0.5, -0.5, -0.25, -0.75, 0.75, 1.0, 0.75, 0.25, -0.5, 0.5, -1.0, -1.0, 0.5, 0.0, 0.25, 0.5, -0.5, -1.0, -0.5, 0.0, 0.25, 0.75, 0.5, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("out-of-memory");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.destroy();
    const array1 = new Float32Array([0.0, -0.25, 0.25, 0.0, -0.5, -0.75, -0.5, 0.5, 0.25, 0.25, -1.0, 0.0, 0.5, 0.25, -1.0, -1.0, 0.25, 0.0, 0.75, 1.0, -1.0, -0.5, -0.75, -0.75, 0.0, 0.75, -1.0, -0.75, -1.0, -0.25, -0.25, -1.0, -1.0, -1.0, -0.75, -0.5, -0.75, 0.25, 0.0, -0.75, -0.5, 0.5, -0.5, 1.0, 1.0, 0.75, 0.75, -0.25, -0.25, 1.0, 0.0, 0.5, 0.5, 0.0, 1.0, -0.75, -0.25, 1.0, 1.0, 1.0, 0.0, -0.5, 0.5, 0.0, 1.0, 0.5, 0.75, 1.0, 0.0, 0.25, -0.5, -1.0, -0.75, -0.25, 0.75, 0.75, -0.25, -1.0, 1.0, -0.25, -1.0, -0.75, 0.5, -0.75, -0.25, -0.75, 0.25, 0.75, -1.0, -1.0, -0.5, 0.0, 0.5, 0.5, -1.0, 0.0, -0.5, 0.25, 0.0, 1.0, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array2 = new Float32Array([-1.0, 0.25, -0.25, -0.25, -0.25, 1.0, -1.0, 0.5, -0.5, -1.0, -1.0, 1.0, 0.25, 1.0, -0.75, 1.0, -0.25, 0.25, 0.75, -0.5, 0.25, 1.0, 0.75, -1.0, 0.0, -0.5, 0.5, 0.25, -1.0, 1.0, 0.0, 0.0, -0.75, 0.0, -0.25, 0.25, 0.0, -0.5, 0.5, -0.25, -1.0, 0.0, 0.25, 0.0, 0.75, -0.5, 1.0, 1.0, -0.5, 0.0, -0.25, 0.5, 0.25, 0.25, 0.75, 1.0, -0.25, -0.25, 0.0, 0.75, 0.75, 0.0, 1.0, -0.75, -0.5, -0.75, 0.75, -0.5, -0.25, 0.5, 0.25, -0.25, -0.5, -1.0, -1.0, 1.0, 0.5, 0.25, -0.25, 0.25, -0.25, -0.25, 1.0, -0.75, -0.75, 0.0, -0.75, -0.5, 0.25, 1.0, 0.75, -0.25, 0.75, -0.5, -0.5, 0.5, 1.0, 1.0, 0.0, -0.5, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array3 = new Float32Array([1.0, -0.75, 0.25, 1.0, -0.75, 0.25, 0.5, -1.0, -0.5, 0.5, 0.25, 0.25, -0.75, 0.75, 0.25, 1.0, -0.25, -0.5, 0.75, -0.75, 1.0, -1.0, -0.75, -1.0, -0.25, 0.25, -1.0, 0.75, 0.5, -0.25, -1.0, 0.25, 0.5, -1.0, -0.25, -0.75, 1.0, 0.75, 1.0, 0.0, 1.0, 0.5, 0.75, 0.0, 0.75, -0.25, -0.75, -1.0, 1.0, -0.75, -0.5, -0.75, 0.5, 0.5, -0.75, 0.5, -0.75, 0.75, -0.5, -0.25, 0.25, -0.25, -0.75, 0.5, 1.0, 1.0, -0.25, 0.0, 0.0, 0.75, 0.5, 0.5, -0.25, 0.25, 0.75, 0.75, 0.5, 0.75, 1.0, -1.0, 0.0, 0.5, -0.25, -0.75, 0.25, -0.5, -0.5, 0.25, 0.5, -0.75, -0.5, 0.25, 0.5, -0.75, 0.0, -0.75, -0.25, 0.0, 1.0, -0.5, ]);
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    buffer300.destroy()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    device10.pushErrorScope("out-of-memory");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    const array4 = new Float32Array([-0.5, 0.5, 0.5, 0.25, -0.75, -0.75, -1.0, -0.25, -1.0, 0.0, 0.5, -0.75, 0.0, -0.5, -0.75, -1.0, 0.75, -0.25, -0.25, 0.25, -1.0, 0.5, 0.0, 1.0, -0.5, -0.5, -0.5, -0.25, 0.25, 0.0, 0.0, -1.0, -0.25, 0.25, -0.5, 1.0, 0.25, 0.25, -0.75, -0.75, -0.25, -0.5, 0.75, 0.25, -0.25, -0.75, 0.0, 1.0, 0.25, 1.0, -0.5, 0.5, 0.0, -0.75, -0.5, -0.5, -1.0, 0.25, 1.0, -0.75, -0.5, -1.0, -0.25, 0.5, 1.0, 0.75, -1.0, -0.25, 0.0, 0.5, 1.0, -0.75, -1.0, -0.75, 0.0, -1.0, 1.0, 1.0, 0.75, 0.75, 0.0, 0.5, -0.75, 1.0, 1.0, -0.75, 1.0, 0.0, 0.75, 0.25, 0.5, 1.0, -1.0, 0.5, 0.25, -0.75, -0.25, 1.0, -1.0, 1.0, ]);
    device20.destroy();
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query100.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("validation");
    const array5 = new Float32Array([0.25, 0.25, 0.0, 0.0, 0.25, -1.0, 0.0, 1.0, -1.0, -0.25, 0.75, -0.5, 0.5, -0.5, 0.25, 0.0, -1.0, -0.5, 0.75, -0.25, -0.25, 0.0, -0.75, -1.0, 1.0, -1.0, -0.75, -0.25, -1.0, 0.25, -0.5, -0.5, -0.25, -0.5, 0.0, -0.25, -0.25, 0.75, 1.0, -1.0, 0.25, -1.0, -1.0, -1.0, 0.25, 0.75, 0.5, 0.5, -0.25, -1.0, 0.5, 0.0, 0.0, -1.0, -1.0, -0.5, 0.5, -1.0, -0.75, 0.5, 0.5, -1.0, -0.5, -1.0, 0.0, 0.5, -0.75, 0.25, 0.0, 1.0, 0.25, -0.75, 0.75, 1.0, 0.5, 0.25, 0.5, 0.75, 0.75, 0.25, -0.5, 0.0, 1.0, 0.0, -0.75, 0.0, -1.0, 0.75, 0.0, 0.0, -1.0, 0.5, -0.5, 1.0, 0.75, -1.0, 1.0, -0.25, 0.0, -1.0, ]);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    device10.pushErrorScope("internal");
    command_encoder300.insertDebugMarker("mymarker");
    const array6 = new Float32Array([0.25, 0.0, -0.25, -1.0, 0.5, -1.0, 0.25, 0.0, 1.0, -0.25, -0.75, 0.25, 0.25, 0.0, -1.0, 0.75, 1.0, -0.25, -0.5, 0.0, -0.5, -0.5, -1.0, 1.0, 0.0, -0.25, 0.25, -0.25, -0.5, 1.0, -0.5, -0.5, -0.5, 0.75, -0.25, 0.0, 0.25, 0.0, 1.0, 0.0, 1.0, 0.0, -0.5, 0.5, -0.75, -0.5, 1.0, 0.75, -1.0, -0.25, -0.25, -0.5, 0.75, -0.75, 0.5, -0.25, 0.25, -0.5, -0.25, 1.0, 0.5, 1.0, -0.75, -0.5, -1.0, -0.5, -1.0, -0.5, 1.0, -1.0, 0.75, -0.5, -1.0, 0.5, 0.25, 0.5, 0.0, -0.5, 1.0, 0.25, -0.5, -1.0, 1.0, 0.25, 1.0, -0.25, -0.25, -0.75, 0.25, -0.25, 1.0, -1.0, 1.0, -0.5, 0.25, -0.75, -0.25, -1.0, 1.0, 0.5, ]);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder301.insertDebugMarker("mymarker");
    
    
    const array7 = new Float32Array([-0.25, 1.0, 0.0, 0.5, 0.5, -0.75, 0.75, -0.75, 0.75, -0.75, -0.75, -1.0, 0.75, 0.5, -0.5, -0.25, 0.75, -0.25, 0.75, -0.75, -0.5, 0.75, 0.25, -0.5, 0.0, -0.25, -1.0, 0.5, -0.5, -1.0, 0.75, -0.25, -1.0, 0.5, 0.75, -1.0, 1.0, -1.0, -0.75, -0.75, 0.25, 0.0, 0.0, 0.25, 0.0, -1.0, -0.5, 0.75, 0.0, -0.5, 0.5, 0.75, 0.0, -1.0, -0.75, 0.0, 0.0, 0.25, -0.5, 0.75, -0.25, 0.5, 0.25, 0.0, 0.5, -0.25, 0.0, 0.75, -0.75, 0.75, -0.5, 0.75, -0.5, -0.5, 1.0, -0.75, 0.0, 0.5, 1.0, 0.75, 0.75, 0.5, 0.5, 0.0, -0.25, 0.5, 1.0, 0.5, 0.0, 0.0, -1.0, 0.5, -1.0, -0.5, -0.25, 0.25, -0.75, -0.75, 1.0, -0.25, ]);
    command_encoder302.insertDebugMarker("mymarker");
    const command_buffer303 = command_encoder303.finish();
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8sint",
        dimension: "2d"
    });
    
    
    const array8 = new Float32Array([0.5, 0.25, 0.0, 0.75, -0.75, 0.75, -0.5, 0.75, 0.5, 0.0, 0.0, -0.25, -1.0, -0.75, -0.75, -0.75, 0.25, 0.5, 1.0, -0.25, 0.0, -0.25, -0.75, -1.0, 1.0, 0.5, -1.0, 0.5, 0.25, 0.25, 0.0, 1.0, -0.5, 0.5, 0.25, -0.75, 0.25, -0.75, 0.5, 0.75, -0.25, -1.0, -0.75, 1.0, 0.75, 0.75, 0.0, -0.25, 0.75, 0.5, -1.0, -0.75, 1.0, -0.5, 0.75, 0.5, -0.25, 1.0, -0.75, 0.5, 1.0, -1.0, 0.0, 0.75, 1.0, 0.75, -0.75, -1.0, 0.5, 0.0, -0.75, 0.0, 0.25, -1.0, 1.0, 0.25, 1.0, -0.75, 1.0, -0.25, -0.75, -0.25, -1.0, -0.5, 0.25, 0.0, 0.0, 0.25, -0.5, -1.0, 0.25, 0.0, -1.0, 0.0, 0.25, -0.75, 0.0, -0.25, -0.75, 0.5, ]);
    
    
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const array9 = new Float32Array([-0.5, 0.25, 0.0, 1.0, 0.75, -0.25, 0.0, -1.0, -1.0, -1.0, 0.75, 0.5, 0.5, 0.75, 0.0, -0.75, 0.0, -0.75, 0.75, 0.25, 1.0, 0.75, -0.25, -0.5, 0.0, 1.0, -0.25, 0.75, -1.0, 0.75, 0.0, 1.0, -1.0, 0.25, 0.5, -0.75, 0.25, 0.5, -0.25, 0.25, -1.0, -0.75, 0.25, 0.25, -0.75, 0.75, 0.75, 0.25, 0.25, 0.0, 0.75, -0.75, 0.25, 0.0, -1.0, 0.5, -0.25, 0.75, -0.5, 0.75, 0.0, -1.0, 0.0, 1.0, 1.0, 0.0, -1.0, -0.5, 0.75, 1.0, 1.0, 1.0, 0.5, -0.25, -0.5, 0.0, -0.5, 0.5, 0.25, 1.0, -0.5, 0.25, -0.25, 1.0, -0.5, 0.75, 0.75, 0.75, 0.25, 1.0, 1.0, -0.25, 1.0, -1.0, -1.0, -1.0, 0.0, -0.5, 0.0, -0.75, ]);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder3020.pushDebugGroup("group_marker")
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder3000.beginOcclusionQuery(0)
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query101.destroy()
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
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
    
    device30.queue.submit([command_buffer303, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    query101.destroy()
    render_pass_encoder3000.executeBundles([])
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query102.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder1000.executeBundles([])
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_pass_encoder3000.executeBundles([])
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.destroy();
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device10.queue.writeBuffer(buffer100, 0, array9, 0, array9.length);
    
    device10.queue.writeBuffer(buffer102, 0, array9, 0, array9.length);
    const command_buffer401 = command_encoder401.finish();
    
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    
    buffer100.destroy()
    compute_pass_encoder3020.insertDebugMarker("marker")
    command_encoder400.insertDebugMarker("mymarker");
    
    query102.destroy()
    
    compute_pass_encoder3020.popDebugGroup()
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
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    command_encoder400.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder1000.executeBundles([])
    command_encoder400.insertDebugMarker("mymarker");
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3000.executeBundles([])
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    device10.pushErrorScope("validation");
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query300
    });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    buffer102.destroy()
    render_pass_encoder3040.pushDebugGroup("group_marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer400.destroy()
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const array10 = new Float32Array([-0.5, -0.5, -0.75, -0.25, -1.0, 0.5, -0.25, -0.75, 0.5, 0.25, -0.25, -0.25, 0.0, 0.5, 0.0, 1.0, 0.5, -0.25, -0.75, -1.0, 0.75, -0.25, 0.75, 0.5, -0.75, -1.0, -1.0, 0.5, -1.0, 1.0, 0.75, 0.25, 0.25, 0.25, 0.25, -0.75, -0.5, -0.25, -0.75, -0.5, 0.75, -1.0, 0.25, 0.0, 0.5, -0.25, 0.25, 0.0, -0.25, -0.25, -0.5, -0.5, 0.0, -1.0, 0.5, -1.0, 0.75, -0.5, -0.5, 0.5, -0.5, -0.25, 0.25, 0.25, -0.25, 0.5, -1.0, -0.5, 1.0, -0.75, -1.0, 0.25, 1.0, 0.0, 1.0, 0.75, 0.25, 1.0, -0.75, -1.0, 0.0, 1.0, 0.25, 1.0, 0.5, -0.5, 0.5, -0.75, -0.5, -0.5, 0.0, 0.0, 0.75, 0.0, 0.75, 0.75, 0.5, 0.0, -0.5, 0.25, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device60.destroy();
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_pass_encoder1000.insertDebugMarker("marker");
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    render_pass_encoder3040.executeBundles([])
    
    render_pass_encoder3000.insertDebugMarker("marker");
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    device10.queue.writeTexture({ texture: texture104 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture104 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer402 = command_encoder402.finish();
    const command_buffer403 = command_encoder403.finish();
    
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    device40.queue.submit([command_buffer401, ]);
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    compute_pass_encoder1010.popDebugGroup()
    
    device40.queue.submit([command_buffer402, command_buffer403, ]);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3040.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
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
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder3040.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder1000.executeBundles([])
    command_encoder404.insertDebugMarker("mymarker");
    device10.queue.writeTexture({ texture: texture104 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    buffer302.destroy()
    command_encoder404.pushDebugGroup("mygroupmarker")
    device10.queue.writeTexture({ texture: texture104 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
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
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.executeBundles([])
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    buffer401.destroy()
    device10.queue.writeTexture({ texture: texture104 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    render_pass_encoder3040.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    device10.queue.writeTexture({ texture: texture104 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    device10.queue.writeTexture({ texture: texture104 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3000.popDebugGroup();
    query101.destroy()
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
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
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    
    query400.destroy()
    device10.queue.writeTexture({ texture: texture104 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.popDebugGroup();
    
    render_pass_encoder3040.insertDebugMarker("marker");
    query102.destroy()
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3010.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture104 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_pass_encoder3040.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout303]
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.pushErrorScope("internal");
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module100,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module100,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device10.queue.writeTexture({ texture: texture104 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.executeBundles([])
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture104 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    render_pass_encoder3040.beginOcclusionQuery(1)
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder3040.pushDebugGroup("group_marker");
    query102.destroy()
    
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.queue.writeTexture({ texture: texture104 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    compute_pass_encoder3020.popDebugGroup()
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
    const texture_view3023 = texture302.createView({ label: "texture_view3023" });
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout303]
    });
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    
    render_pass_encoder3000.pushDebugGroup("group_marker");
    render_pass_encoder3040.executeBundles([])
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder400.insertDebugMarker("mymarker");
    
    render_pass_encoder1000.popDebugGroup();
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module100,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module100,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    buffer301.destroy()
    const texture_view3013 = texture301.createView({ label: "texture_view3013" });
    render_pass_encoder3000.executeBundles([])
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeTexture({ texture: texture106 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder3040.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    query100.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    device10.queue.writeTexture({ texture: texture104 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3010.popDebugGroup()
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    device10.queue.writeTexture({ texture: texture106 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder400.insertDebugMarker("mymarker");
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.queue.writeTexture({ texture: texture106 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture106 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module301,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture106 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module100,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module100,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
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
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture_view3014 = texture301.createView({ label: "texture_view3014" });
    
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout302]
    });
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4050.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder1000.insertDebugMarker("marker");
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_pass_encoder3000.insertDebugMarker("marker");
    query101.destroy()
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3040.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture104 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4050.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device10.queue.writeTexture({ texture: texture107 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer700.destroy()
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4050.pushDebugGroup("group_marker");
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture104 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture104 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture106 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4050.executeBundles([])
    render_pass_encoder3040.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    device10.queue.writeTexture({ texture: texture104 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder400.insertDebugMarker("mymarker");
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    
    device70.destroy();
    device10.queue.writeTexture({ texture: texture106 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout304]
    });
    const texture_view3004 = texture300.createView({ label: "texture_view3004" });
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder4050.executeBundles([])
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout301]
    });
    device10.queue.writeTexture({ texture: texture104 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device10.queue.writeTexture({ texture: texture104 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    render_pass_encoder3040.setPipeline(render_pipeline300);
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    device10.queue.writeTexture({ texture: texture107 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture104 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device10.queue.writeTexture({ texture: texture106 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    compute_pass_encoder3010.popDebugGroup()
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    device10.pushErrorScope("validation");
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module300,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module300,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout302]
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device10.queue.writeTexture({ texture: texture106 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module300,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module300,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device10.queue.writeTexture({ texture: texture106 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4040.popDebugGroup()
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    query101.destroy()
    buffer103.destroy()
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    render_pass_encoder3000.popDebugGroup();
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout304]
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.queue.writeTexture({ texture: texture106 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module100,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module100,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    query102.destroy()
    device10.queue.writeTexture({ texture: texture107 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.pushErrorScope("validation");
    
    device10.queue.writeTexture({ texture: texture106 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    
    
    render_pass_encoder1000.setPipeline(render_pipeline102);
    
    
    render_pass_encoder3040.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture107 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query400.destroy()
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const texture_view3024 = texture302.createView({ label: "texture_view3024" });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    device10.queue.writeTexture({ texture: texture107 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    
    query401.destroy()
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module400,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    compute_pass_encoder3020.popDebugGroup()
    
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    const texture_view1071 = texture107.createView({ label: "texture_view1071" });
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
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
    const texture_view1051 = texture105.createView({ label: "texture_view1051" });
    
    
    
    
    device80.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4050.setPipeline(render_pipeline400);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder3000.setPipeline(render_pipeline302);
    render_pass_encoder1000.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group100);
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group300);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_pass_encoder4050.setBindGroup(0, bind_group400);
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_pass_encoder3040.setBindGroup(0, bind_group301);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder4050.popDebugGroup();
}