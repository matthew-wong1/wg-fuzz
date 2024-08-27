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
    const array0 = new Float32Array([-0.5, -0.75, -0.5, 1.0, -0.25, -0.25, -0.25, 0.0, -0.5, -1.0, 0.5, -0.5, 0.5, 1.0, -0.5, 0.75, 0.75, 0.75, -0.75, 0.5, 0.0, 1.0, 0.0, -0.25, 0.5, 0.0, -0.5, -0.75, 0.25, 0.25, -1.0, 0.25, 0.0, 0.75, -0.25, -1.0, 0.75, 0.0, 0.75, 0.25, 0.5, 0.5, -1.0, -0.25, -1.0, -1.0, 1.0, 0.5, -0.75, 0.5, -0.75, 1.0, 0.75, 1.0, -1.0, 0.0, -1.0, 1.0, -0.5, 0.25, -0.5, 1.0, 0.5, -0.25, -0.75, 0.75, -1.0, -0.75, -0.25, 1.0, 0.75, 0.5, 1.0, -0.5, 0.0, -0.5, -1.0, -0.5, -0.5, 0.0, 1.0, -1.0, 0.0, 1.0, 0.75, 1.0, 0.25, 0.25, -0.5, -1.0, 0.75, -1.0, -0.5, 0.75, -0.75, -0.75, 0.0, -0.75, 0.75, 1.0, ]);
    
    const array1 = new Float32Array([1.0, -1.0, -0.5, -0.5, 1.0, 0.25, -0.75, 0.75, -1.0, 0.75, -1.0, 0.5, 0.5, 1.0, 0.5, -0.75, -0.75, 1.0, -1.0, -0.5, -1.0, 1.0, 0.75, -0.5, 0.0, 0.0, -0.75, 0.25, -0.25, -1.0, -0.5, 0.25, -1.0, -1.0, 1.0, 0.5, 1.0, -1.0, -0.25, 0.25, 0.0, 0.0, 0.25, 0.25, 1.0, 1.0, -1.0, 0.75, 0.0, -0.75, 1.0, -0.25, -1.0, -1.0, -0.5, 0.5, 1.0, -0.25, 0.0, 1.0, -0.75, -0.75, 0.25, 0.5, -1.0, 0.75, 0.5, 0.5, -0.75, -0.25, -1.0, 0.5, -0.25, 0.5, 0.5, 0.25, -0.75, -1.0, -0.5, 0.0, -1.0, 0.0, -0.75, 0.5, 0.5, -0.5, -0.75, 0.5, 1.0, -0.75, -0.25, 0.25, 1.0, -1.0, 1.0, -0.75, -0.25, -1.0, 0.0, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    const array2 = new Float32Array([0.25, 0.5, 0.5, -0.5, -0.5, -1.0, 0.0, 0.75, -1.0, 0.5, -0.75, 0.25, -1.0, 0.75, 0.0, 0.75, -0.25, -0.25, -0.25, -0.5, 0.75, 1.0, 0.5, -1.0, -0.5, -1.0, -1.0, 0.75, -0.5, 0.0, 0.0, 0.0, -0.25, 0.25, 0.5, 0.5, 0.25, 0.25, -0.75, -1.0, 0.0, -0.75, 0.75, 0.75, 0.5, 1.0, 1.0, 0.5, -0.25, 0.5, 0.5, -0.5, 0.5, 0.5, 0.25, 0.5, -0.25, -0.5, 0.5, 0.75, 1.0, -0.5, -0.5, -0.75, -0.5, 0.75, -1.0, 0.0, 0.5, 0.25, 0.75, 1.0, -1.0, -0.5, -0.75, 0.5, 0.25, -0.25, 0.0, 0.0, 0.0, -0.75, 0.75, 0.5, -0.25, 0.75, 0.0, -0.5, -0.5, 1.0, -0.25, 0.75, -1.0, -0.75, 1.0, -0.5, -0.5, 0.5, 0.25, -0.75, ]);
    
    const array3 = new Float32Array([-1.0, -0.25, -0.25, -1.0, -1.0, -0.25, 0.5, -0.25, 1.0, 0.25, 0.25, 0.75, -0.25, -0.25, 0.5, -0.5, 0.75, 0.0, -0.75, 0.5, 0.5, -0.25, 0.5, -1.0, 0.25, -0.5, 0.5, 0.0, 0.5, -0.25, 0.0, 0.5, 0.5, -0.75, -0.5, -0.25, 1.0, -1.0, -0.5, 0.0, 1.0, -0.75, 0.0, 0.25, -0.5, 1.0, -0.75, -1.0, 0.75, 1.0, -0.75, 0.25, -0.25, 0.25, 0.75, -0.5, 1.0, -1.0, -0.5, 1.0, -0.5, 0.75, 0.5, 0.0, 0.75, -0.25, 1.0, -0.75, 0.75, 0.25, -0.25, 0.25, 0.5, -0.75, 1.0, -1.0, -1.0, 0.5, 0.0, -0.5, -0.25, 0.0, -0.5, -0.5, 0.0, 0.0, 1.0, -1.0, 0.75, 0.0, -0.25, 0.75, 1.0, 1.0, 1.0, 0.5, 0.0, -0.25, 0.75, -0.5, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const array4 = new Float32Array([-0.75, -0.75, -0.25, -0.5, 0.75, -1.0, -0.75, -0.5, 0.75, 0.75, 0.25, 0.0, 0.75, 1.0, -0.25, -0.5, -0.5, 1.0, -0.75, 0.0, 0.75, 0.75, 0.25, -1.0, 0.75, -0.75, -0.25, 0.75, -0.5, 0.25, 0.25, 0.5, -1.0, 0.75, 0.75, -0.5, -0.75, 0.25, -0.5, 0.25, 0.0, 1.0, -1.0, -0.5, -1.0, 0.75, 0.75, 0.75, 1.0, -1.0, 0.25, -1.0, -0.75, 0.0, -0.5, 0.0, -1.0, 1.0, -1.0, 1.0, -1.0, -1.0, 0.25, 0.25, -0.5, -0.5, 1.0, 1.0, -0.75, 0.25, -0.75, -0.25, 0.75, 0.5, -1.0, 1.0, -0.25, -0.75, 1.0, -1.0, -1.0, 0.0, 0.25, -0.25, 0.0, 0.25, 0.75, 0.25, -1.0, -0.5, -1.0, -1.0, -0.75, 0.0, 0.75, -1.0, -0.5, 0.75, -1.0, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder100.insertDebugMarker("mymarker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query100.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.insertDebugMarker("mymarker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    command_encoder000.insertDebugMarker("mymarker");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const array5 = new Float32Array([1.0, -0.5, 0.25, 0.25, 1.0, 0.5, 1.0, 1.0, -0.75, -0.5, 1.0, 0.5, 1.0, -0.5, 1.0, 0.5, -1.0, 0.0, 0.0, -0.75, -0.25, 0.75, -0.25, 1.0, -1.0, -1.0, 1.0, 0.25, 0.5, 0.5, -0.5, 0.75, 0.0, -0.5, -0.5, 0.0, -0.25, -0.5, 0.0, 0.75, 0.0, 1.0, -0.5, -1.0, 1.0, 1.0, 0.0, -1.0, -0.75, -0.75, -0.5, -0.25, -0.5, -0.25, 0.25, -0.25, -1.0, -0.75, -0.5, -0.75, 0.75, 0.75, -0.75, 1.0, 0.0, 0.25, 0.0, -0.25, 0.25, -0.25, -1.0, 1.0, 0.5, 1.0, 1.0, -0.25, -1.0, 0.0, -1.0, -0.75, 0.75, 0.5, -0.75, 0.75, 0.5, -1.0, 0.75, 0.0, -0.75, -0.5, 1.0, -0.5, 0.25, 0.5, 0.0, 0.75, 1.0, -1.0, -0.5, 0.75, ]);
    const command_buffer100 = command_encoder100.finish();
    const array6 = new Float32Array([0.0, -0.75, -0.75, 0.25, 1.0, 0.0, 1.0, 0.0, -0.5, 0.75, 0.25, 0.75, 0.5, -0.25, -1.0, 0.5, -0.5, -0.5, 0.75, 0.0, 0.0, -1.0, 0.5, 0.0, -0.5, 1.0, 0.5, -1.0, -0.75, 0.75, 0.75, -1.0, -0.5, -0.75, 0.25, -0.25, 1.0, 0.5, 0.75, -1.0, -1.0, 0.75, 1.0, -0.25, 0.75, 0.75, 1.0, -0.25, 1.0, -0.75, -0.5, 1.0, 0.25, -0.75, -0.25, -1.0, -0.5, -1.0, 0.25, -0.5, 0.25, 1.0, -1.0, -0.5, 0.5, 0.0, 0.5, 0.0, 1.0, 0.25, 0.25, 0.75, -0.5, 1.0, 0.75, 0.75, 0.5, 0.75, -0.75, -0.75, 1.0, 1.0, -0.25, 1.0, 0.25, 1.0, -1.0, 0.5, 0.75, 0.75, -1.0, -0.75, 0.25, -1.0, 0.0, 0.0, 0.0, 0.5, -0.25, 0.75, ]);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query100.destroy()
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    buffer101.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    command_encoder200.insertDebugMarker("mymarker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer200.destroy()
    query100.destroy()
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    buffer100.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device10.queue.submit([command_buffer100, ]);
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
    device10.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query200.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    query200.destroy()
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
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    command_encoder200.insertDebugMarker("mymarker");
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    
    
    
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    query200.destroy()
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const command_buffer202 = command_encoder202.finish();
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query100.destroy()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array7 = new Float32Array([0.0, 0.5, 0.0, -0.75, 0.0, 0.25, -0.75, 0.5, -0.25, 0.75, 0.25, 1.0, 1.0, -0.25, -0.25, -0.75, -1.0, 0.5, -1.0, 0.75, 0.25, 0.0, -1.0, 0.75, 1.0, -0.75, -0.5, -0.5, 1.0, -0.25, 1.0, -0.5, 0.25, -0.5, 0.75, -1.0, 0.25, 0.75, 1.0, 1.0, -1.0, 0.25, 0.5, -1.0, 1.0, -0.75, -0.75, 1.0, 0.25, 0.5, -0.25, 1.0, -1.0, 0.75, 0.75, -0.5, 0.25, 0.0, -0.5, 0.25, 1.0, 0.5, -0.5, 1.0, 0.0, -0.5, 1.0, 0.25, -0.25, -0.25, 0.5, 0.5, 1.0, -0.5, -0.5, -1.0, 0.5, -0.25, -1.0, 0.25, -0.25, 0.5, -0.25, -0.25, 0.25, -0.75, 0.25, -0.5, -0.75, -0.5, 0.25, -0.25, 0.75, 0.75, 0.75, 0.5, 0.0, 0.5, 1.0, -0.75, ]);
    
    device10.queue.submit([command_buffer100, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_buffer203 = command_encoder203.finish();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query200.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    query200.destroy()
    
    device20.queue.submit([command_buffer203, ]);
    buffer202.destroy()
    
    
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    query300.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    const array8 = new Float32Array([-0.75, -0.5, -1.0, -0.75, -1.0, -0.25, 0.75, 0.5, -0.75, -0.25, 1.0, -0.5, 0.25, 0.25, 0.25, -0.5, -0.75, 1.0, -0.25, 0.25, 0.75, 0.75, -0.25, -0.25, 1.0, -0.5, 0.25, -0.5, 0.75, -1.0, -1.0, 0.75, -0.25, 1.0, 0.0, -1.0, -0.25, 0.5, -0.75, 0.25, 0.5, 0.75, -0.25, 0.25, 0.75, -0.75, -1.0, 0.25, 0.25, 0.5, 1.0, -0.5, -0.75, 0.5, 0.25, 0.25, 0.0, 0.25, -0.25, 0.25, 0.75, 0.75, -0.5, -1.0, -0.25, 0.25, 0.75, -0.25, 0.5, -0.75, 1.0, 0.75, 0.75, -0.75, -0.25, 1.0, -0.25, -0.5, -0.75, 0.25, 0.75, 0.0, 0.0, 0.25, 0.75, 0.5, 0.25, 0.0, -0.75, -0.75, -0.25, 0.5, -0.75, -0.5, -0.5, -1.0, -1.0, 0.25, 0.75, 0.75, ]);
    device30.destroy();
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
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
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.destroy();
    buffer201.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device40.destroy();
    compute_pass_encoder2000.insertDebugMarker("marker")
    
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
    
    
    
    
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder500.insertDebugMarker("mymarker");
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    query200.destroy()
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
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
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const command_buffer501 = command_encoder501.finish();
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query500.destroy()
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    command_encoder502.insertDebugMarker("mymarker");
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer500.destroy()
    
    
    query500.destroy()
    
    
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    device50.queue.submit([command_buffer501, ]);
    
    
    device60.destroy();
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query200.destroy()
    
    const array9 = new Float32Array([0.75, 1.0, -0.75, 0.75, -0.75, 0.75, 0.0, -1.0, -0.75, -0.75, 0.25, -0.25, -0.25, -1.0, 0.5, 0.5, 0.75, 0.25, -0.75, 0.75, -0.5, -0.75, 0.75, -1.0, 0.25, 0.75, 1.0, -0.75, -0.25, 0.25, 0.0, -0.25, -0.5, -0.25, 0.25, -1.0, 0.5, -0.75, 0.75, 1.0, -0.5, -0.5, 0.5, -0.25, 0.75, -0.5, 0.75, 0.5, -0.25, 0.0, 1.0, -0.25, -0.5, 1.0, -1.0, -0.25, -0.75, 0.5, 0.5, -0.75, 0.75, -0.5, -0.25, -0.5, 0.5, 0.0, -1.0, -0.25, 0.5, 1.0, 0.0, -0.25, -0.75, -0.75, 1.0, 0.5, 0.25, 0.5, 1.0, 0.0, 1.0, 0.0, 0.75, 0.0, -1.0, 0.75, 0.5, -0.5, 0.75, -0.75, 0.0, 0.0, -1.0, 0.75, -1.0, 0.25, -1.0, 1.0, 0.5, -1.0, ]);
    device20.queue.writeBuffer(buffer204, 0, array6, 0, array6.length);
    command_encoder502.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer204, 0, array8, 0, array8.length);
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
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5020.insertDebugMarker("marker")
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    device50.destroy();
    
    
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    buffer201.destroy()
    
    compute_pass_encoder2001.insertDebugMarker("marker")
    
    buffer203.destroy()
    
    
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    query300.destroy()
    buffer202.destroy()
    query201.destroy()
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
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const array10 = new Float32Array([-0.5, -0.5, -1.0, -0.75, 0.75, 1.0, -0.5, -0.25, 0.5, 0.5, -0.5, -0.25, 1.0, -0.25, -1.0, -0.25, -0.25, 0.25, -0.5, -0.5, -1.0, -0.75, -0.25, -1.0, -0.5, -1.0, 1.0, -0.75, -1.0, -1.0, 0.25, 0.0, 0.5, 0.0, 0.0, 1.0, 0.75, 0.0, 0.25, 0.5, -1.0, -0.5, 1.0, 0.5, -0.75, -0.5, 0.75, -1.0, 1.0, 0.0, 1.0, -0.25, -0.75, 0.5, -0.5, -0.75, -1.0, -0.75, 1.0, 0.0, -1.0, 0.75, -0.75, -0.5, 0.25, -0.5, 0.5, 0.0, -0.25, 0.25, 0.0, 0.5, 0.0, 0.25, -0.75, 0.5, 1.0, -1.0, 0.0, 0.0, 0.25, -0.25, -1.0, 0.5, -0.25, 0.75, 1.0, 0.5, -0.5, -0.75, -1.0, -0.25, -0.75, -1.0, -1.0, -0.75, 0.5, 0.0, -0.25, 0.25, ]);
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    device70.destroy();
    query201.destroy()
    
    
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
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
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder2040.insertDebugMarker("marker")
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    command_encoder205.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder2060.insertDebugMarker("marker")
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    query201.destroy()
    const command_buffer200 = command_encoder200.finish();
    command_encoder205.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    
    
    device20.queue.writeBuffer(buffer204, 0, array10, 0, array10.length);
    compute_pass_encoder2060.popDebugGroup()
    
    command_encoder205.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    query200.destroy()
    compute_pass_encoder2060.insertDebugMarker("marker")
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query200.destroy()
    
    device70.destroy();
    command_encoder207.insertDebugMarker("mymarker");
    query200.destroy()
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    command_encoder207.insertDebugMarker("mymarker");
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    buffer204.destroy()
    compute_pass_encoder2040.insertDebugMarker("marker")
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    command_encoder207.insertDebugMarker("mymarker");
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    const array11 = new Float32Array([-0.75, -0.75, -0.5, 0.75, 0.0, -1.0, -0.75, -0.75, -0.75, 1.0, -0.75, 0.25, -0.25, 0.5, 0.5, 1.0, 0.25, -1.0, 1.0, -1.0, 1.0, 0.75, 0.0, 0.75, -0.25, -0.5, -0.5, 0.5, 0.5, 0.5, 0.5, 0.75, -0.75, 0.5, -1.0, -0.5, -0.25, 0.5, 0.5, 0.75, 0.5, 0.0, -0.25, 1.0, -1.0, -0.25, -0.75, 0.25, 0.0, 1.0, -0.5, 1.0, 0.75, 0.25, 0.25, -0.75, 1.0, 0.5, -0.25, 0.75, -0.25, -0.75, -0.75, 1.0, -1.0, -0.75, -1.0, 0.5, 0.0, -0.5, 0.5, 0.75, -0.5, -0.25, 0.0, -0.75, 0.0, 0.0, 0.0, -0.25, 0.25, -1.0, 0.0, 0.5, -0.25, 0.75, -0.75, 0.75, -0.75, 0.75, 0.5, -0.5, 0.5, 0.5, -0.5, 1.0, -0.25, -0.25, 0.5, -1.0, ]);
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout201]
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder2011 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2011" });
    compute_pass_encoder2060.insertDebugMarker("marker")
    const command_buffer001 = command_encoder001.finish();
    device40.destroy();
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    compute_pass_encoder2001.insertDebugMarker("marker")
    
    command_encoder207.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    command_encoder205.clearBuffer(buffer204);
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    const command_buffer205 = command_encoder205.finish();
    command_encoder207.insertDebugMarker("mymarker");
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    const command_encoder209 = device20.createCommandEncoder({ label: "command_encoder209" });
    command_encoder207.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout801]
    });
    
    compute_pass_encoder2060.insertDebugMarker("marker")
    
    compute_pass_encoder2060.insertDebugMarker("marker")
    query202.destroy()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device70.queue.writeBuffer(buffer700, 0, array9, 0, array9.length);
    
    
    compute_pass_encoder2011.insertDebugMarker("marker")
    
    command_encoder208.clearBuffer(buffer204);
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    command_encoder209.clearBuffer(buffer203);
    
    const command_buffer206 = command_encoder206.finish();
    const command_encoder2010 = device20.createCommandEncoder({ label: "command_encoder2010" });
    
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout800]
    });
    compute_pass_encoder2040.insertDebugMarker("marker")
    command_encoder2010.clearBuffer(buffer201);
    
    compute_pass_encoder2011.insertDebugMarker("marker")
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    query200.destroy()
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    query202.destroy()
    
    const array12 = new Float32Array([0.25, -1.0, 0.5, -0.75, 0.0, 0.25, -0.5, -1.0, 0.25, -0.5, 0.25, -0.25, -0.25, -1.0, -1.0, 0.5, -0.5, 1.0, 0.25, 0.25, 0.75, 1.0, 0.25, -1.0, 0.5, -0.5, -1.0, -0.75, 0.5, 0.75, -1.0, -0.5, -0.25, 0.5, 0.5, -0.5, 0.0, -0.5, 0.75, -0.5, -0.75, 0.25, -1.0, -0.25, -0.25, 0.75, 1.0, -0.75, 0.75, -1.0, 0.0, 0.25, 0.0, 0.5, -0.75, 0.5, 0.0, -0.5, -0.5, 0.5, -0.25, 0.25, 0.75, -0.75, -0.75, 0.25, 0.5, 0.5, 0.25, -0.5, 0.0, -0.5, -0.75, 0.25, 0.75, 0.0, 0.0, 0.5, 0.75, 0.25, -0.75, 1.0, 0.75, -0.25, -0.75, 0.75, -1.0, 1.0, 0.0, 0.5, 0.75, 0.0, 0.0, -0.5, -0.75, -0.5, 1.0, 0.5, 0.75, 1.0, ]);
    const command_buffer208 = command_encoder208.finish();
    command_encoder209.insertDebugMarker("mymarker");
    query201.destroy()
    
    compute_pass_encoder2011.insertDebugMarker("marker")
    
    command_encoder2010.resolveQuerySet(
        query203,
        0,
        32,
        buffer202,
        0
    )
    compute_pass_encoder2000.insertDebugMarker("marker")
    buffer202.destroy()
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    command_encoder2010.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    compute_pass_encoder2001.insertDebugMarker("marker")
    
    const compute_pass_encoder20100 = command_encoder2010.beginComputePass({ label: "compute_pass_encoder20100" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const command_buffer301 = command_encoder301.finish();
    
    
    
    command_encoder207.clearBuffer(buffer205);
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    const pipeline_layout803 = device80.createPipelineLayout({ 
        label: "pipeline_layout803",
        bindGroupLayouts: [bind_group_layout802]
    });
    const command_buffer800 = command_encoder800.finish();
    const pipeline_layout804 = device80.createPipelineLayout({ 
        label: "pipeline_layout804",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    const compute_pass_encoder10000 = command_encoder1000.beginComputePass({ label: "compute_pass_encoder10000" });
    query202.destroy()
    device20.queue.writeBuffer(buffer205, 0, array12, 0, array12.length);
    compute_pass_encoder2001.insertDebugMarker("marker")
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    compute_pass_encoder8010.insertDebugMarker("marker")
    compute_pass_encoder8000.insertDebugMarker("marker")
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    command_encoder207.resolveQuerySet(
        query202,
        0,
        32,
        buffer204,
        0
    )
    compute_pass_encoder2010.insertDebugMarker("marker")
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout805 = device80.createPipelineLayout({ 
        label: "pipeline_layout805",
        bindGroupLayouts: [bind_group_layout801]
    });
    
    const pipeline_layout806 = device80.createPipelineLayout({ 
        label: "pipeline_layout806",
        bindGroupLayouts: [bind_group_layout802]
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
    
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    command_encoder207.resolveQuerySet(
        query203,
        0,
        32,
        buffer203,
        0
    )
    
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_buffer207 = command_encoder207.finish();
    compute_pass_encoder2050.insertDebugMarker("marker")
    
    
    compute_pass_encoder20100.insertDebugMarker("marker")
    const array13 = new Float32Array([-0.5, -0.75, -0.75, 0.0, 0.75, -1.0, 0.75, -0.75, 0.75, 0.0, 0.5, -0.5, 0.25, -0.25, 0.0, 1.0, -1.0, -1.0, -1.0, 0.75, 1.0, 0.5, -0.5, 0.5, 0.5, 0.25, -0.5, 0.5, 0.5, -0.25, -0.75, -0.75, 0.25, 0.5, 0.25, 0.25, -0.5, -0.25, -0.5, 0.0, 0.0, 1.0, -0.25, -1.0, 0.5, -0.5, 0.0, -0.25, 0.5, 0.75, 0.25, 0.75, 0.5, 0.25, 1.0, 1.0, -0.75, 0.75, -1.0, -0.25, 0.0, 0.5, 0.25, 1.0, 0.75, 0.0, 1.0, 1.0, 0.5, -0.75, 0.0, 0.0, 0.5, 0.5, 1.0, 0.5, -0.25, 0.75, 0.25, -0.75, -0.5, 0.75, 0.25, -0.75, 1.0, -0.75, -0.25, -1.0, 0.25, -0.25, -0.25, 0.0, -0.5, 0.25, 0.5, 0.75, -0.75, -1.0, -0.25, 1.0, ]);
    
    
    
    const command_buffer1001 = command_encoder1001.finish();
    command_encoder209.insertDebugMarker("mymarker");
    compute_pass_encoder10000.insertDebugMarker("marker")
    
    
    compute_pass_encoder2050.popDebugGroup()
    
    const command_buffer201 = command_encoder201.finish();
    compute_pass_encoder2011.insertDebugMarker("marker")
    buffer205.destroy()
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    compute_pass_encoder2001.insertDebugMarker("marker")
    
    command_encoder209.insertDebugMarker("mymarker");
    
    compute_pass_encoder2060.insertDebugMarker("marker")
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    command_encoder209.resolveQuerySet(
        query201,
        0,
        32,
        buffer204,
        0
    )
    
    device80.queue.writeBuffer(buffer800, 0, array10, 0, array10.length);
    command_encoder209.clearBuffer(buffer203);
    query800.destroy()
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1001 = device100.createPipelineLayout({ 
        label: "pipeline_layout1001",
        bindGroupLayouts: [bind_group_layout1000]
    });
    query203.destroy()
    compute_pass_encoder2001.insertDebugMarker("marker")
    compute_pass_encoder2050.insertDebugMarker("marker")
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
    command_encoder209.clearBuffer(buffer200);
    command_encoder209.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const pipeline_layout807 = device80.createPipelineLayout({ 
        label: "pipeline_layout807",
        bindGroupLayouts: [bind_group_layout801]
    });
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    query101.destroy()
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    device100.queue.writeBuffer(buffer1000, 0, array6, 0, array6.length);
    const pipeline_layout1002 = device100.createPipelineLayout({ 
        label: "pipeline_layout1002",
        bindGroupLayouts: [bind_group_layout1000]
    });
    compute_pass_encoder8000.insertDebugMarker("marker")
    compute_pass_encoder2001.popDebugGroup()
    compute_pass_encoder2040.insertDebugMarker("marker")
    device80.queue.writeBuffer(buffer800, 0, array11, 0, array11.length);
    device70.destroy();
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
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder2050.insertDebugMarker("marker")
    command_encoder209.resolveQuerySet(
        query203,
        0,
        32,
        buffer204,
        0
    )
    
    buffer1000.destroy()
    
    
    const pipeline_layout808 = device80.createPipelineLayout({ 
        label: "pipeline_layout808",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    buffer200.destroy()
    
    query202.destroy()
    
    device100.queue.submit([command_buffer1001, ]);
    device20.queue.submit([command_buffer201, command_buffer205, command_buffer206, ]);
    const command_buffer503 = command_encoder503.finish();
    const command_buffer209 = command_encoder209.finish();
    compute_pass_encoder2060.popDebugGroup()
    compute_pass_encoder8000.popDebugGroup()
    device20.queue.submit([command_buffer201, command_buffer208, command_buffer209, ]);
    device20.queue.submit([command_buffer201, ]);
    device100.queue.submit([]);
    const command_buffer802 = command_encoder802.finish();
    compute_pass_encoder2001.popDebugGroup()
    device20.queue.submit([command_buffer202, command_buffer207, command_buffer209, ]);
    device20.queue.submit([command_buffer205, ]);
    compute_pass_encoder2050.popDebugGroup()
    const command_buffer204 = command_encoder204.finish();
    device20.queue.submit([command_buffer200, ]);
    device80.queue.submit([command_buffer800, ]);
    device20.queue.submit([command_buffer204, command_buffer207, ]);
    device80.queue.submit([command_buffer802, ]);
    device20.queue.submit([command_buffer204, ]);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2010.popDebugGroup()
    const command_buffer1000 = command_encoder1000.finish();
    const command_buffer600 = command_encoder600.finish();
    const command_buffer300 = command_encoder300.finish();
    const command_buffer801 = command_encoder801.finish();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder2001.popDebugGroup()
    device20.queue.submit([command_buffer206, command_buffer209, ]);
    const command_buffer2010 = command_encoder2010.finish();
    compute_pass_encoder2050.popDebugGroup()
    device40.queue.submit([]);
    device100.queue.submit([command_buffer1000, ]);
    device100.queue.submit([command_buffer1001, ]);
    compute_pass_encoder2001.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer208, ]);
    device80.queue.submit([command_buffer802, ]);
    device80.queue.submit([command_buffer801, ]);
    device20.queue.submit([command_buffer208, ]);
    const command_buffer000 = command_encoder000.finish();
    device100.queue.submit([]);
    compute_pass_encoder2040.popDebugGroup()
    device20.queue.submit([command_buffer208, command_buffer2010, ]);
    compute_pass_encoder10000.popDebugGroup()
}