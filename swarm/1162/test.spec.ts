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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    texture000.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const array0 = new Float32Array([0.5, 0.0, 1.0, 0.25, -0.25, 0.75, 0.0, 0.75, 0.25, -1.0, -0.5, -0.5, 0.5, -0.25, 0.25, 0.75, -1.0, -0.25, -0.5, 0.5, 0.5, -0.75, 0.25, -0.25, 0.75, -0.75, -1.0, 0.5, -1.0, 0.0, -0.5, 1.0, 0.0, -0.25, 1.0, 0.5, -0.5, 0.5, 1.0, -1.0, 0.25, -0.25, 0.25, -0.5, -0.5, -0.75, 0.75, -0.75, -0.5, 0.25, -0.25, 1.0, -0.5, -0.25, 0.5, -0.5, -1.0, -0.25, 0.75, 0.25, -0.5, 0.75, 1.0, 1.0, 0.5, 0.75, 0.5, -0.5, 0.75, -0.5, 0.0, -0.75, 0.25, 0.75, 0.75, -1.0, -0.5, -0.75, 1.0, 0.5, -0.25, 0.25, -1.0, -0.75, -0.75, -0.5, -0.75, 0.5, 0.25, 0.5, 0.5, 0.0, -0.75, 0.25, 0.75, -1.0, 0.75, 1.0, 0.25, -0.25, ]);
    const command_buffer200 = command_encoder200.finish();
    const array1 = new Float32Array([-0.5, 0.5, -0.25, -1.0, -0.75, -0.75, 0.0, 1.0, 0.5, -0.5, 1.0, -0.75, 0.5, -0.75, 0.75, -0.75, 0.0, -0.5, -0.5, 0.5, -1.0, -0.25, -0.75, 0.75, 0.0, -1.0, 0.75, 0.0, -0.25, -0.25, 1.0, 0.75, 0.0, -0.5, -0.75, 1.0, 0.0, 0.75, 0.0, -1.0, 0.5, 0.25, -0.75, -0.75, 0.0, -1.0, -1.0, -0.25, -0.5, -0.5, 0.0, 0.25, -1.0, -1.0, -1.0, 0.75, 0.0, 0.0, -0.75, -0.5, 0.5, 0.25, 1.0, -0.5, -0.25, 0.25, -0.25, 0.75, -1.0, -0.75, 0.5, -0.75, -0.75, -1.0, -0.5, 0.0, 0.5, 0.5, -1.0, 0.25, -0.75, 0.75, -0.5, 0.25, -1.0, 1.0, -0.75, 0.75, 0.75, -0.75, -1.0, -0.5, 0.5, 0.25, -0.5, 0.0, -0.5, 0.0, 1.0, -1.0, ]);
    const array2 = new Float32Array([0.75, 0.75, -0.25, 0.25, 0.5, 1.0, -1.0, 0.75, 0.25, 0.75, -1.0, 0.0, -0.25, -0.25, -0.5, 0.25, -0.75, -0.5, 0.25, -1.0, -0.75, 0.25, 0.75, -0.5, 0.5, -0.5, -0.75, -0.75, -0.25, -0.25, -0.5, -0.25, 0.75, 0.5, 0.0, 0.0, -1.0, -0.5, 0.75, -0.75, -0.5, -0.5, -0.75, -0.75, -0.5, 0.75, -0.25, -0.25, 1.0, -0.75, -0.5, -0.25, -1.0, 0.5, 0.75, 0.25, 0.75, -0.25, 0.0, 0.75, 0.5, -0.25, 0.75, -0.25, 0.75, 0.75, -0.5, 0.0, 0.75, 1.0, 0.0, 0.75, -1.0, 0.0, 0.25, -1.0, 1.0, 0.5, 0.75, 0.5, -0.75, 1.0, -0.75, 0.0, 0.75, 0.5, -1.0, 0.25, 0.0, 0.5, 0.5, -1.0, 1.0, 1.0, -0.75, -0.5, -0.25, -0.5, 1.0, 0.25, ]);
    const array3 = new Float32Array([-1.0, -0.5, -1.0, 0.5, 0.0, 0.25, -0.25, 0.5, -0.75, 0.5, 0.25, 0.0, -0.25, -0.75, -0.75, 0.25, -0.25, -0.5, 1.0, 0.25, 0.0, -0.25, -0.75, 1.0, 0.0, 0.25, -0.25, -0.5, -0.5, 0.25, -0.25, 1.0, 0.5, -0.5, 0.0, 0.0, -0.75, -0.25, 0.25, -0.25, -1.0, 1.0, 0.25, -0.75, -1.0, -0.75, -0.25, -1.0, -0.5, -0.25, -0.25, -0.5, 0.5, 0.0, 0.0, 0.5, -0.5, 1.0, 1.0, 0.0, -0.5, 0.75, -0.25, -0.75, 0.0, 0.0, 0.5, 1.0, -1.0, 0.25, 0.0, 0.0, -0.5, -1.0, 0.25, -0.75, -0.25, 1.0, -0.25, -0.25, -0.25, -0.25, 0.25, 1.0, -0.25, 0.25, 0.5, -0.75, 0.75, -0.5, 0.0, 1.0, 1.0, 1.0, -0.5, -0.75, 0.5, -1.0, -0.75, -0.75, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer202.destroy()
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    
    
    buffer200.destroy()
    
    
    
    
    
    
    buffer203.destroy()
    
    const array4 = new Float32Array([0.0, 0.0, 1.0, 0.25, 0.0, -0.5, 0.25, -0.75, 0.25, -1.0, 1.0, 0.75, -0.25, 0.5, -0.25, 0.5, -0.5, 0.5, 0.75, 0.0, 1.0, 0.0, -0.75, -0.75, 0.5, 0.5, 0.75, -1.0, 0.5, 0.5, -1.0, -0.25, -0.5, -0.25, 0.75, -0.75, 0.25, 0.0, -0.25, -0.5, 1.0, -0.5, -1.0, -0.5, 0.0, -0.5, -0.5, 1.0, 0.75, 0.0, -0.5, -0.25, 0.5, 0.75, -0.5, 0.0, -1.0, -1.0, 0.5, -0.25, 0.25, 0.0, 0.5, 0.5, -1.0, -0.25, 0.75, 0.0, -0.5, 0.0, 0.75, -0.5, -0.25, 0.5, -1.0, 0.5, -0.75, -1.0, 0.5, -1.0, 0.0, 0.75, 0.5, 1.0, 0.0, 0.5, -0.5, 0.5, -0.5, -0.25, -0.25, 1.0, 1.0, -0.5, 0.5, -0.5, -0.5, 1.0, -0.75, -0.25, ]);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    buffer201.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder300.insertDebugMarker("mymarker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    buffer300.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device20.queue.submit([command_buffer200, ]);
    
    device30.pushErrorScope("internal");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder300.insertDebugMarker("mymarker");
    
    
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    buffer203.destroy()
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
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_buffer300 = command_encoder300.finish();
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    command_encoder201.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    texture200.destroy();
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    query300.destroy()
    texture200.destroy();
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
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
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device20.pushErrorScope("out-of-memory");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder202.pushDebugGroup("mygroupmarker")
    query300.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    device10.pushErrorScope("out-of-memory");
    command_encoder101.insertDebugMarker("mymarker");
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    command_encoder000.insertDebugMarker("mymarker");
    buffer301.destroy()
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
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
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    query100.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    texture100.destroy();
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder102.clearBuffer(buffer100);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer102 = command_encoder102.finish();
    const array5 = new Float32Array([0.5, 0.5, -0.5, 0.25, 0.0, -0.25, 1.0, -0.25, 0.25, 0.25, 0.75, -0.75, -0.5, -0.25, 0.75, 0.5, -0.75, 1.0, -0.25, -0.25, -1.0, -0.25, -0.5, -0.25, 1.0, 0.25, 0.25, 0.25, -0.25, 0.5, 0.5, 0.75, -0.5, -1.0, 1.0, 0.5, -1.0, -0.25, 0.25, -0.25, 0.75, 0.5, 0.75, -0.25, -1.0, -0.75, -1.0, -0.5, 0.5, 0.25, 0.25, -0.75, 0.25, -0.75, -0.75, -0.5, -0.5, -0.5, -0.75, 0.75, 1.0, -0.75, 0.0, -0.5, 0.5, -0.25, 0.25, -0.5, -1.0, 0.5, 0.75, 0.75, -0.75, -0.25, -0.25, 0.5, 0.75, -0.25, -1.0, 0.75, -0.25, -0.25, 0.5, 0.75, -0.25, 0.0, -0.25, 0.75, -0.5, 1.0, -1.0, 0.5, -1.0, -1.0, -0.5, 0.25, 0.25, -0.25, -0.5, -1.0, ]);
    compute_pass_encoder1000.popDebugGroup()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
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
    compute_pass_encoder1001.pushDebugGroup("group_marker")
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
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    query301.destroy()
    command_encoder101.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    command_encoder202.copyBufferToTexture(
        {
            buffer: buffer204
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder203.pushDebugGroup("mygroupmarker")
    command_encoder202.clearBuffer(buffer202);
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    buffer100.destroy()
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder202.copyBufferToTexture(
        {
            buffer: buffer202
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const array6 = new Float32Array([0.5, -0.5, -0.25, 0.5, 0.25, -0.5, 0.75, -0.25, -0.75, -1.0, 0.75, 0.25, -0.25, -0.25, 0.75, -0.25, 0.5, 0.0, 0.0, 0.5, -0.5, -0.25, 1.0, -0.75, 0.25, -1.0, 0.75, 0.5, 0.0, 1.0, 0.5, -0.25, -0.5, 1.0, 0.25, 1.0, -1.0, -1.0, -0.5, -0.75, -0.75, -0.75, 0.5, 0.75, -1.0, -0.75, 0.25, 0.0, 0.25, -0.75, -0.25, 0.75, -0.75, 0.5, 0.0, 0.75, -1.0, -0.75, -1.0, -0.75, 0.0, 1.0, -0.5, 0.0, -0.5, -0.5, -0.75, 0.75, -1.0, 1.0, 0.0, -0.75, 0.75, 0.75, 1.0, 0.0, 0.0, 0.5, 0.0, 0.5, -1.0, 0.75, -0.25, 0.0, 0.5, -0.75, -0.5, -1.0, -0.75, 0.0, -0.75, 0.75, 0.5, 0.0, 0.25, -0.5, -0.5, 0.25, -0.75, 1.0, ]);
    query200.destroy()
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer205,
        0
    )
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query300.destroy()
    
    device10.queue.submit([command_buffer102, ]);
    query301.destroy()
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    render_pass_encoder1030.popDebugGroup();
    
    query300.destroy()
    command_encoder203.insertDebugMarker("mymarker");
    compute_pass_encoder2010.popDebugGroup()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_pass_encoder1010.insertDebugMarker("marker");
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    query201.destroy()
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_pass_encoder1030.setStencilReference(1);
    buffer206.destroy()
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device10.pushErrorScope("internal");
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
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder1010.executeBundles([])
    
    buffer205.destroy()
    
    
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
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
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    device20.pushErrorScope("validation");
    
    render_pass_encoder1030.setStencilReference(1);
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
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query301.destroy()
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer205,
        0
    )
    
    const compute_pass_encoder2031 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2031" });
    
    texture100.destroy();
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device30.pushErrorScope("out-of-memory");
    
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    query101.destroy()
    query100.destroy()
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    render_pass_encoder1010.setStencilReference(1);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer302.destroy()
    query201.destroy()
    compute_pass_encoder2031.pushDebugGroup("group_marker")
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1040.executeBundles([])
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1030.executeBundles([])
    
    query201.destroy()
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    query101.destroy()
    
    
    
    texture300.destroy();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.insertDebugMarker("marker");
    device30.queue.submit([command_buffer300, ]);
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    render_pass_encoder1010.setStencilReference(1);
    
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    render_pass_encoder1010.popDebugGroup();
    
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    render_pass_encoder1001.pushDebugGroup("group_marker");
    query202.destroy()
    buffer207.destroy()
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder2030.popDebugGroup()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm",
        dimension: "2d"
    });
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1010.executeBundles([])
    
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1030.setStencilReference(1);
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder3010.popDebugGroup()
    buffer206.destroy()
    render_pass_encoder1030.setStencilReference(1);
    query201.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1040.popDebugGroup();
    command_encoder302.pushDebugGroup("mygroupmarker")
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    device40.destroy();
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    query100.destroy()
    render_pass_encoder1001.executeBundles([])
    render_pass_encoder1001.insertDebugMarker("marker");
    command_encoder303.resolveQuerySet(
        query301,
        0,
        32,
        buffer302,
        0
    )
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder1041.setStencilReference(1);
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
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
    compute_pass_encoder2031.popDebugGroup()
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    render_pass_encoder1030.setStencilReference(1);
    query203.destroy()
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    command_encoder303.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query202
    });
    command_encoder302.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    texture301.destroy();
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    query201.destroy()
    
    
    query202.destroy()
    query300.destroy()
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    texture101.destroy();
    
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
    
    query200.destroy()
    render_pass_encoder1011.setStencilReference(1);
    render_pass_encoder1030.insertDebugMarker("marker");
    
    query201.destroy()
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    command_encoder202.copyBufferToTexture(
        {
            buffer: buffer204
        },
        {
            texture: texture203
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder2031.pushDebugGroup("group_marker")
    render_pass_encoder1040.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer303, 0, array3, 0, array3.length);
    render_pass_encoder2020.beginOcclusionQuery(0)
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pass_encoder3011 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3011" });
    device50.destroy();
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder201.insertDebugMarker("mymarker");
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
    render_pass_encoder1041.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    query201.destroy()
    render_pass_encoder1011.pushDebugGroup("group_marker");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    query301.destroy()
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    compute_pass_encoder1001.popDebugGroup()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1000.insertDebugMarker("marker");
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder302.resolveQuerySet(
        query301,
        0,
        32,
        buffer303,
        0
    )
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1011.endOcclusionQuery()
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1000.executeBundles([])
    device10.pushErrorScope("internal");
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query102
    });
    query102.destroy()
    render_pass_encoder3030.endOcclusionQuery()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    compute_pass_encoder2040.popDebugGroup()
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query102
    });
    buffer204.destroy()
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    texture102.destroy();
    
    
    render_pass_encoder1041.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    texture202.destroy();
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    compute_pass_encoder2031.popDebugGroup()
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    render_pass_encoder1051.pushDebugGroup("group_marker");
    
    render_pass_encoder1041.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3011.popDebugGroup()
    render_pass_encoder1051.insertDebugMarker("marker");
    const render_pass_encoder1052 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1052",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: undefined
    });
    query100.destroy()
    render_pass_encoder3030.insertDebugMarker("marker");
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder1011.executeBundles([])
    
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query302.destroy()
    render_pass_encoder1041.pushDebugGroup("group_marker");
    query302.destroy()
    render_pass_encoder1050.pushDebugGroup("group_marker");
    device10.pushErrorScope("internal");
    render_pass_encoder2020.endOcclusionQuery()
    compute_pass_encoder3011.pushDebugGroup("group_marker")
    
    render_pass_encoder1050.beginOcclusionQuery(0)
    query203.destroy()
    query202.destroy()
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1001.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2020.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder1001.endOcclusionQuery()
    compute_pass_encoder3011.popDebugGroup()
    device10.queue.submit([]);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2031.popDebugGroup()
    const command_buffer301 = command_encoder301.finish();
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder1000.popDebugGroup()
    const command_buffer303 = command_encoder303.finish();
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1052.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder1050.endOcclusionQuery()
    device30.queue.submit([command_buffer303, ]);
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2031.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1050.endOcclusionQuery()
    compute_pass_encoder3011.popDebugGroup()
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder3030.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    const command_buffer105 = command_encoder105.finish();
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([command_buffer105, ]);
    const command_buffer103 = command_encoder103.finish();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer102, command_buffer105, ]);
    render_pass_encoder1041.endOcclusionQuery()
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1050.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1001.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder1052.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder1041.endOcclusionQuery()
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1030.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder2031.popDebugGroup()
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder1051.endOcclusionQuery()
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([]);
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([]);
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer103, ]);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder2031.popDebugGroup()
    device20.queue.submit([command_buffer204, ]);
    device30.queue.submit([command_buffer300, ]);
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder3030.endOcclusionQuery()
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder2040.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([]);
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1001.popDebugGroup()
    device20.queue.submit([]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    device30.queue.submit([]);
    render_pass_encoder1010.popDebugGroup();
    device20.queue.submit([command_buffer204, ]);
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([]);
    compute_pass_encoder2020.popDebugGroup()
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder3030.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2020.endOcclusionQuery()
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1050.endOcclusionQuery()
    device20.queue.submit([]);
    device20.queue.submit([command_buffer202, ]);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1050.endOcclusionQuery()
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    device30.queue.submit([command_buffer301, ]);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1050.endOcclusionQuery()
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1052.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    device10.queue.submit([]);
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder3011.popDebugGroup()
    compute_pass_encoder3011.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder3030.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    device20.queue.submit([command_buffer204, ]);
    device10.queue.submit([]);
    compute_pass_encoder2010.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder3010.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder3030.endOcclusionQuery()
    compute_pass_encoder2010.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder1001.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder2031.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2040.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    device30.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3011.popDebugGroup()
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1052.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder3030.endOcclusionQuery()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1051.endOcclusionQuery()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder3011.popDebugGroup()
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder1001.popDebugGroup();
    device10.queue.submit([]);
}