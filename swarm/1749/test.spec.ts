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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array0 = new Float32Array([0.0, -0.25, -0.75, -1.0, 0.5, 0.0, -0.75, 0.25, 0.0, -1.0, 0.0, -0.5, 0.25, 0.0, 0.0, 0.0, -0.5, 1.0, 0.25, 0.0, 1.0, -0.25, 0.25, 0.5, 0.25, -0.75, -1.0, -0.25, -0.75, 0.75, -0.5, -0.5, -0.75, -0.5, 0.5, 1.0, 1.0, 0.75, -0.5, 0.75, 0.5, 0.25, -0.5, 1.0, 0.5, -0.25, 0.25, 0.5, -0.25, 0.25, 1.0, 1.0, 0.25, 0.25, -1.0, -0.5, 1.0, 0.0, 1.0, -0.75, -0.5, 0.25, -0.75, 0.25, 0.5, -0.75, -0.5, 0.25, 0.5, 1.0, -0.5, -1.0, -0.75, 0.75, 0.75, 0.75, 1.0, 0.25, 1.0, 0.25, 0.0, 0.0, 1.0, 1.0, -0.5, 0.5, 0.25, -0.5, -0.5, 1.0, 0.0, 1.0, 0.0, 0.75, 0.25, 1.0, 0.5, 1.0, -0.25, -0.5, ]);
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([1.0, -0.25, 1.0, -1.0, 0.75, -0.25, 0.75, -0.25, 0.5, 0.0, -0.25, -0.75, -0.5, 0.25, 0.0, -0.25, 1.0, -0.25, -0.25, 0.25, 0.25, -0.75, -1.0, 0.25, -0.75, 0.75, 0.5, -0.75, 0.25, 0.75, 0.25, 0.0, -0.5, -1.0, -1.0, -0.75, 0.0, -0.5, 0.0, -0.25, 0.75, 0.5, 0.25, -0.5, 1.0, 0.5, 0.75, 0.25, -0.75, 0.25, 0.75, -0.75, 0.25, -0.5, 1.0, -0.75, 1.0, 0.75, -0.75, 0.75, -1.0, 0.5, -0.25, -1.0, 1.0, 0.0, 0.25, 0.75, -0.5, 0.25, 0.0, -0.25, -0.25, 0.0, 0.5, -0.25, -0.75, 0.75, -0.5, 0.0, 0.75, -1.0, 1.0, 0.25, -0.5, 0.25, -1.0, 1.0, 0.5, 0.75, 0.75, -0.25, -0.5, -0.75, -1.0, 1.0, 0.75, 0.5, -1.0, 0.5, ]);
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("out-of-memory");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("validation");
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    const command_buffer200 = command_encoder200.finish();
    
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
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer100.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const array2 = new Float32Array([0.5, 0.25, -0.25, -1.0, -0.25, 0.25, -0.5, -0.25, 0.5, -1.0, -0.5, 0.0, -1.0, 0.0, 0.0, -0.25, -1.0, -0.5, 0.0, -0.25, -1.0, 0.25, 0.75, -0.75, -0.75, 0.75, -0.25, 0.25, -0.5, -1.0, -1.0, -0.25, 0.25, 0.0, 0.25, -0.25, 1.0, -0.75, -0.75, 1.0, -0.25, -1.0, 1.0, 0.0, 1.0, 1.0, 0.5, -0.5, 1.0, 0.5, -1.0, 0.0, -0.25, 1.0, 0.0, -0.5, 0.75, 0.25, 0.75, -0.25, -0.75, 1.0, 0.25, -0.5, 0.25, -1.0, 1.0, 0.75, 0.0, 0.0, -0.5, 0.0, -0.75, 0.75, 0.5, 0.5, -0.5, 0.75, -0.75, 1.0, 0.0, 1.0, -0.75, 1.0, 1.0, 0.25, 0.25, 0.75, 0.0, 0.0, -1.0, 0.5, 0.75, 0.5, 0.25, 0.0, -0.75, -0.5, -0.25, -0.5, ]);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    buffer201.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device20.pushErrorScope("internal");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder201.pushDebugGroup("mygroupmarker")
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    buffer201.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder201.insertDebugMarker("mymarker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
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
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    buffer200.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_buffer101 = command_encoder101.finish();
    
    texture100.destroy();
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8snorm",
        dimension: "2d"
    });
    device00.pushErrorScope("validation");
    texture100.destroy();
    
    
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
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
    compute_pass_encoder1000.popDebugGroup()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    
    device20.destroy();
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    
    command_encoder103.insertDebugMarker("mymarker");
    texture101.destroy();
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    buffer101.destroy()
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    device40.pushErrorScope("validation");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder103.clearBuffer(buffer101);
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
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const command_buffer102 = command_encoder102.finish();
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    device10.pushErrorScope("validation");
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder1000.popDebugGroup()
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    
    const command_buffer400 = command_encoder400.finish();
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture500.destroy();
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    buffer400.destroy()
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    device40.pushErrorScope("out-of-memory");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array3 = new Float32Array([0.75, 0.5, -0.25, -0.75, 0.5, 0.5, 0.75, -0.75, 0.5, -0.5, -0.5, 0.5, 1.0, -1.0, 1.0, 0.25, 0.75, 0.25, 1.0, -1.0, 0.25, 0.0, 1.0, -1.0, 0.25, -0.5, -0.5, -0.25, 0.25, 0.75, 0.25, -0.5, 0.75, -0.5, 1.0, -0.25, -0.25, 0.5, 1.0, -1.0, 0.75, 0.25, -0.25, -0.75, 0.75, 0.5, 0.75, -0.25, 0.25, 0.0, -1.0, -0.25, 0.25, -1.0, -0.5, -0.25, 0.5, -0.5, 1.0, -0.5, 0.5, 0.75, -0.25, 0.5, -0.75, 0.5, 0.25, 1.0, 0.5, -1.0, 1.0, 0.0, -1.0, -0.75, -0.25, 0.25, 0.75, -0.5, -0.5, -0.25, 0.75, 0.75, -0.75, -1.0, -0.25, -0.5, 0.5, 0.25, 0.75, 0.75, -0.5, -0.25, 0.75, -0.75, -0.75, -0.5, -1.0, -0.25, 1.0, -1.0, ]);
    
    buffer102.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    command_encoder105.insertDebugMarker("mymarker");
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    buffer500.destroy()
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
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    texture400.destroy();
    buffer103.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const sampler109 = device10.createSampler( { label: "sampler109" } );
    device30.destroy();
    
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder1050.insertDebugMarker("marker")
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1040.insertDebugMarker("marker")
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
    device10.pushErrorScope("internal");
    
    
    
    
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
    device40.pushErrorScope("internal");
    texture400.destroy();
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    const command_buffer104 = command_encoder104.finish();
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    command_encoder105.copyTextureToBuffer(
        {
            texture: texture100
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    compute_pass_encoder1040.insertDebugMarker("marker")
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    device40.pushErrorScope("internal");
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    device50.pushErrorScope("validation");
    
    
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    compute_pass_encoder1040.insertDebugMarker("marker")
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder201.insertDebugMarker("mymarker");
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    
    
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    
    
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    const command_buffer401 = command_encoder401.finish();
    
    compute_pass_encoder1001.insertDebugMarker("marker")
    command_encoder201.clearBuffer(buffer202);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer104.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout102]
    });
    compute_pass_encoder1050.popDebugGroup()
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    
    
    texture100.destroy();
    const array4 = new Float32Array([-1.0, 0.25, 0.75, 0.25, -1.0, 0.75, 0.0, 1.0, -0.75, -1.0, -1.0, 0.25, -0.5, -0.25, -1.0, 0.5, -0.5, 1.0, 0.5, -0.25, 1.0, -0.5, -0.25, -0.5, 0.0, 0.5, -0.25, -0.75, -0.5, -0.5, -1.0, 0.5, -0.75, 0.25, -0.25, 0.5, 1.0, -1.0, 0.75, 1.0, 0.75, -1.0, 0.0, 0.25, -0.75, 1.0, -0.75, 0.0, -0.25, -1.0, 0.5, 0.25, 0.75, -1.0, -0.25, 0.0, 0.0, 0.0, 0.25, 0.25, -0.25, 1.0, 0.0, 0.5, 0.75, -0.75, -0.75, 0.0, 1.0, 1.0, 1.0, 0.0, 0.25, -0.25, 1.0, -0.75, -0.75, 0.75, -0.25, 0.5, 0.75, 0.75, 1.0, 0.0, -0.5, 0.25, -0.5, -0.25, -1.0, 0.5, -0.25, -0.5, -0.5, -0.75, -1.0, 1.0, 1.0, -0.25, 0.0, -0.25, ]);
    command_encoder201.clearBuffer(buffer202);
    const command_buffer502 = command_encoder502.finish();
    texture401.destroy();
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const array5 = new Float32Array([1.0, 0.0, 0.0, -1.0, 0.5, 0.75, 1.0, -0.5, 1.0, 0.5, -1.0, -1.0, 1.0, -1.0, 0.75, -1.0, 0.75, 0.5, -0.75, 0.75, -0.5, -0.75, 0.25, -0.5, 0.25, -0.75, -0.25, 1.0, 0.5, -1.0, -0.75, 0.75, 0.25, 0.25, -0.75, -0.5, -1.0, 0.0, 0.25, 0.0, 1.0, 0.75, 1.0, -1.0, -0.25, 0.0, -0.5, 0.0, -1.0, -0.25, -1.0, -0.75, 0.75, 1.0, 0.25, -0.75, -1.0, -0.75, 0.0, 0.75, 1.0, -1.0, 0.75, 0.25, 0.0, -1.0, 0.0, -1.0, 0.25, -0.75, -0.5, -0.75, -1.0, -0.75, -0.5, -0.75, -0.75, -0.75, -1.0, 0.75, -0.75, -0.75, -1.0, 0.0, 1.0, 0.75, 0.0, 0.25, -0.5, -0.25, 0.25, 0.5, 0.25, 0.0, 0.25, -0.5, 0.25, 0.5, 0.75, 1.0, ]);
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
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device40.queue.writeTexture({ texture: texture402 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    device40.queue.writeTexture({ texture: texture402 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder103.clearBuffer(buffer101);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    compute_pass_encoder1001.popDebugGroup()
    buffer501.destroy()
    compute_pass_encoder1001.insertDebugMarker("marker")
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout102]
    });
    compute_pass_encoder1001.insertDebugMarker("marker")
    const command_buffer402 = command_encoder402.finish();
    device40.queue.writeTexture({ texture: texture402 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    device40.pushErrorScope("validation");
    compute_pass_encoder1001.popDebugGroup()
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
    device40.queue.writeTexture({ texture: texture402 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1040.insertDebugMarker("marker")
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    device40.queue.writeTexture({ texture: texture402 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder5000.insertDebugMarker("marker")
    command_encoder103.insertDebugMarker("mymarker");
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    device40.queue.writeTexture({ texture: texture402 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture100
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const command_buffer503 = command_encoder503.finish();
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    command_encoder403.clearBuffer(buffer400);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    compute_pass_encoder5010.insertDebugMarker("marker")
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    compute_pass_encoder1050.insertDebugMarker("marker")
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture402.destroy();
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
    });
    compute_pass_encoder1040.popDebugGroup()
    
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    const array6 = new Float32Array([0.0, 0.0, 0.75, 0.75, -0.75, 0.75, 1.0, 0.25, 0.0, 0.25, 1.0, 1.0, 1.0, -0.5, 0.5, 1.0, 0.5, 1.0, 0.25, 0.75, 0.5, 0.0, 0.25, -0.75, 0.25, -0.75, 0.25, 0.5, -0.25, -0.5, 0.5, -0.5, 1.0, -1.0, -0.5, 1.0, 0.75, -0.75, -0.25, 0.5, 0.75, -0.5, 0.0, -0.25, 0.5, 0.25, 0.0, 0.25, 0.25, 0.25, -0.25, 0.5, -0.75, 0.25, 1.0, 0.75, -1.0, -1.0, 0.25, 0.25, 0.5, 1.0, -1.0, 0.0, -0.75, -0.25, 1.0, 0.5, 0.25, 0.0, -0.25, 1.0, -0.5, -0.75, 1.0, 0.75, -1.0, 0.75, -0.5, -0.25, 0.0, -1.0, -0.5, 0.5, -1.0, -0.25, -0.75, -1.0, -0.25, 0.0, 0.5, -0.75, -0.75, 0.75, 0.75, 0.0, 0.0, -0.75, -0.25, -0.25, ]);
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    compute_pass_encoder1030.popDebugGroup()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture501.destroy();
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1040.insertDebugMarker("marker")
    command_encoder404.insertDebugMarker("mymarker");
    command_encoder403.insertDebugMarker("mymarker");
    const command_buffer403 = command_encoder403.finish();
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    command_encoder201.clearBuffer(buffer202);
    device40.queue.writeTexture({ texture: texture403 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5000.insertDebugMarker("marker")
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    texture403.destroy();
    buffer300.destroy()
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder5010.insertDebugMarker("marker")
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    
    const command_buffer505 = command_encoder505.finish();
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder1050.insertDebugMarker("marker")
    
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
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    device60.pushErrorScope("validation");
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    buffer502.destroy()
    compute_pass_encoder1040.insertDebugMarker("marker")
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    command_encoder504.insertDebugMarker("mymarker");
    buffer400.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder1001.popDebugGroup()
    command_encoder504.pushDebugGroup("mygroupmarker")
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const command_encoder506 = device50.createCommandEncoder({ label: "command_encoder506" });
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
    const compute_pass_encoder5040 = command_encoder504.beginComputePass({ label: "compute_pass_encoder5040" });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    device40.pushErrorScope("validation");
    device60.destroy();
    command_encoder100.copyBufferToBuffer(
        buffer101,
        0,
        buffer103,
        0,
        400
    );
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    const sampler1010 = device10.createSampler( { label: "sampler1010" } );
    device50.pushErrorScope("out-of-memory");
    compute_pass_encoder5040.insertDebugMarker("marker")
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout101]
    });
    buffer700.destroy()
    
    compute_pass_encoder1050.popDebugGroup()
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout103]
    });
    compute_pass_encoder5040.pushDebugGroup("group_marker")
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    const array7 = new Float32Array([-0.25, 1.0, 0.75, -0.75, 0.5, 0.5, -1.0, 1.0, -1.0, 0.75, 0.25, -0.25, 0.75, 0.5, -0.25, 1.0, -0.5, 1.0, 1.0, 0.0, 0.5, 0.75, 0.5, 0.5, 0.5, -0.5, 0.5, 0.0, -0.75, 0.5, 1.0, 0.75, -0.75, 0.75, 0.75, 0.0, -0.75, 0.25, 0.5, -0.75, -0.25, -0.5, 1.0, 1.0, 0.75, -1.0, 0.25, 0.25, -0.5, -0.5, -0.5, -0.75, -1.0, 0.5, -1.0, -0.75, 1.0, 0.25, -1.0, -0.5, 0.25, 1.0, 0.25, 0.0, 1.0, 0.0, -0.5, -1.0, -1.0, 1.0, 0.5, -0.5, -0.75, -1.0, -0.5, 0.5, -0.25, 0.25, 1.0, -0.75, -1.0, 0.75, -0.25, 1.0, -1.0, 0.5, -0.25, 0.25, -0.25, 0.5, 0.0, 0.0, -0.75, 0.25, -0.25, -0.5, 0.25, 0.0, -0.25, -0.75, ]);
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pass_encoder5060 = command_encoder506.beginComputePass({ label: "compute_pass_encoder5060" });
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    compute_pass_encoder5000.insertDebugMarker("marker")
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    compute_pass_encoder1040.insertDebugMarker("marker")
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout503]
    });
    
    const command_encoder507 = device50.createCommandEncoder({ label: "command_encoder507" });
    const texture_view4041 = texture404.createView({ label: "texture_view4041" });
    
    device70.pushErrorScope("internal");
    
    const texture_view4042 = texture404.createView({ label: "texture_view4042" });
    texture404.destroy();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder404.pushDebugGroup("mygroupmarker")
    const command_encoder508 = device50.createCommandEncoder({ label: "command_encoder508" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    compute_pass_encoder4040.insertDebugMarker("marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder5040.popDebugGroup()
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder5060.insertDebugMarker("marker")
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    command_encoder506.clearBuffer(buffer500);
    const compute_pass_encoder4041 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4041" });
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout504]
    });
    const command_buffer106 = command_encoder106.finish();
    
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
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    device10.destroy();
    {
        await buffer503.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer503.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer503.unmap();
        console.log(new Float32Array(data));
    }
    
    const command_buffer507 = command_encoder507.finish();
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pass_encoder5080 = command_encoder508.beginComputePass({ label: "compute_pass_encoder5080" });
    compute_pass_encoder4041.pushDebugGroup("group_marker")
    
    buffer503.destroy()
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeBuffer(buffer701, 0, array2, 0, array2.length);
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
    
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    device70.queue.writeBuffer(buffer701, 0, array4, 0, array4.length);
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const compute_pass_encoder5061 = command_encoder506.beginComputePass({ label: "compute_pass_encoder5061" });
    compute_pass_encoder5061.insertDebugMarker("marker")
    texture701.destroy();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    texture700.destroy();
    device70.queue.writeBuffer(buffer701, 0, array1, 0, array1.length);
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder508.copyBufferToBuffer(
        buffer500,
        0,
        buffer501,
        0,
        400
    );
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device50.queue.writeBuffer(buffer504, 0, array6, 0, array6.length);
    command_encoder700.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder4041.insertDebugMarker("marker")
    device70.queue.writeBuffer(buffer701, 0, array3, 0, array3.length);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    compute_pass_encoder5040.insertDebugMarker("marker")
    texture702.destroy();
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder700.insertDebugMarker("mymarker");
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout401]
    });
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder5010.popDebugGroup()
    const command_buffer405 = command_encoder405.finish();
    compute_pass_encoder5040.popDebugGroup()
    compute_pass_encoder4041.popDebugGroup()
    const command_buffer506 = command_encoder506.finish();
    compute_pass_encoder5060.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder5010.popDebugGroup()
    const command_buffer700 = command_encoder700.finish();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}