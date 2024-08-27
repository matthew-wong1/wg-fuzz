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
    const array0 = new Float32Array([-0.25, 1.0, 0.0, -0.75, -1.0, -0.5, 1.0, -1.0, 0.75, 1.0, 1.0, -0.5, -1.0, 0.25, -1.0, 0.75, -0.5, -1.0, 0.25, 0.75, 1.0, -0.75, 1.0, -0.75, 0.25, 0.25, 0.75, -0.75, 0.75, 0.75, 0.75, -1.0, 0.0, -0.25, 0.5, 1.0, -0.25, -1.0, -1.0, -0.75, 0.0, 1.0, 0.0, -0.5, 1.0, -0.75, 0.5, -1.0, 0.0, -0.5, -0.75, -0.25, 1.0, 0.75, -0.5, 1.0, 0.0, 0.75, -1.0, 0.0, 0.75, 0.75, -1.0, 0.25, 0.75, -0.5, 0.0, 0.75, 0.25, 0.75, -0.5, -1.0, 0.0, 0.0, -0.25, -0.5, 0.5, 0.25, 0.0, -0.25, -1.0, 1.0, 0.25, -1.0, 0.25, 0.0, -0.5, -0.5, 1.0, 0.5, -0.75, 0.5, 0.5, 1.0, 0.25, 0.25, -0.25, 0.5, 0.75, -0.5, ]);
    const array1 = new Float32Array([0.25, -0.75, -1.0, -1.0, 1.0, 0.0, 0.5, 0.5, 0.25, 0.25, 0.0, 1.0, 0.5, -0.5, 0.5, -0.25, 0.5, 0.5, 0.5, 0.25, -0.5, -1.0, 1.0, -0.25, -1.0, 0.75, 0.0, 1.0, 0.25, -0.25, 0.0, 0.5, -0.75, -0.25, 1.0, 1.0, 0.25, -0.5, 0.75, 0.75, -0.5, 0.0, 0.5, 0.25, 1.0, -1.0, -0.5, -0.25, 0.25, -0.75, 1.0, -0.5, -0.75, -1.0, -0.75, 0.5, 0.0, 0.75, 1.0, -0.75, -1.0, -1.0, 0.25, -1.0, 0.25, -0.5, -0.75, 0.25, -0.75, 1.0, -1.0, -0.75, 0.0, 0.0, 0.0, -1.0, -1.0, 0.75, -0.5, -0.5, 0.5, -0.25, 0.75, 0.25, 1.0, 0.75, 1.0, -0.5, 0.5, 0.0, 1.0, 0.5, -0.25, -0.75, -0.5, -0.25, 1.0, -1.0, 0.5, 0.75, ]);
    
    
    const array2 = new Float32Array([0.25, 0.0, 0.25, -1.0, -0.25, 1.0, 0.5, -0.5, -0.25, -1.0, -1.0, 1.0, 1.0, 0.5, 0.0, -0.25, -1.0, -0.75, -1.0, -0.5, 0.75, -0.5, -1.0, -0.5, 0.25, 1.0, -0.75, 0.75, -0.75, 0.5, 0.25, 0.25, 0.5, 0.5, 0.5, 0.5, 1.0, -0.25, 0.0, 0.75, -1.0, -0.5, 0.0, -0.75, 0.75, 0.5, -0.25, 0.25, -0.75, 0.25, -0.75, -0.25, 1.0, 0.0, -0.75, -0.25, -0.25, 0.5, 1.0, -0.25, -1.0, 0.5, 0.0, -0.25, -0.25, 0.0, 0.5, 0.0, 0.0, 1.0, 0.25, 0.5, -0.5, 0.25, -0.5, 0.0, 1.0, -0.25, -0.25, -0.75, -0.5, 0.25, 1.0, 0.5, -0.25, 1.0, 0.25, -0.75, -1.0, -1.0, -0.5, -0.75, -0.75, -0.75, 0.75, 0.0, 0.75, 0.0, -1.0, -0.75, ]);
    const array3 = new Float32Array([0.75, -0.75, 0.0, -1.0, 1.0, 0.5, 0.25, 1.0, 0.0, 0.25, -0.5, -0.25, 0.5, -0.75, 0.75, 0.25, 0.5, -1.0, 0.0, -0.25, 0.5, 0.25, 0.0, 0.5, 0.0, -0.25, 0.25, 0.0, -0.25, -0.75, -1.0, -0.25, -0.25, 1.0, 0.25, 0.25, 0.0, -1.0, 1.0, -0.75, 0.75, 0.25, 0.25, 0.75, -0.25, -0.25, -1.0, 0.75, 0.25, 0.75, 0.5, -0.75, -0.25, 0.0, -1.0, 1.0, -0.5, 0.5, -0.75, -0.5, 0.5, -0.25, 1.0, 1.0, 0.5, 1.0, -0.5, 0.0, -1.0, 0.25, -0.5, 0.25, -1.0, 0.25, 0.25, -0.75, 1.0, -1.0, 0.5, 0.0, 0.25, -0.5, -0.25, 1.0, -0.75, -0.25, 0.75, 0.5, -0.25, -1.0, 0.5, 0.0, 0.75, -0.75, 0.5, 0.75, -0.5, 0.75, -0.75, -0.5, ]);
    
    
    const array4 = new Float32Array([0.0, 0.25, -1.0, -0.75, 0.75, 0.75, -0.25, 0.0, -0.5, -0.5, 0.0, 0.5, -0.5, 1.0, 1.0, 0.75, 0.75, 0.5, 0.75, 0.75, 0.5, -0.75, -0.25, 1.0, 1.0, -0.75, -0.75, -0.25, -0.25, -0.5, -0.75, -0.25, 0.0, 0.5, 0.75, 0.0, 0.75, 0.0, 0.0, 0.25, -1.0, -1.0, -1.0, 0.5, -0.75, -0.25, 1.0, -0.75, 0.5, -1.0, 0.75, 1.0, -0.25, -0.5, 0.5, -0.5, 1.0, -0.5, -0.5, 0.0, 0.0, 0.75, 0.0, -0.5, 0.5, -0.75, 0.0, -1.0, -0.5, -0.25, -1.0, -0.5, -0.25, -0.75, 0.75, -0.25, 0.5, 0.25, -1.0, -0.25, 0.5, 0.25, -1.0, 1.0, 0.5, 0.25, 0.25, 0.0, 1.0, 0.0, 1.0, 0.25, -0.75, -1.0, -0.75, 0.25, 0.5, 0.25, 1.0, 0.5, ]);
    
    const array5 = new Float32Array([0.0, 1.0, -1.0, 0.5, 0.75, 0.25, 0.25, 1.0, -0.75, 0.0, -1.0, -0.25, 0.25, 0.5, -0.25, 0.0, -1.0, -0.75, 1.0, 0.25, 0.75, 0.5, 1.0, 0.0, -1.0, -1.0, 0.75, 0.75, -1.0, 0.25, 1.0, 0.25, 0.25, 0.25, -0.25, -0.5, -0.75, 0.5, 0.0, -0.5, -0.25, -1.0, 0.5, -0.25, -1.0, -0.75, -1.0, -0.75, -0.75, 0.0, -0.75, 1.0, -0.25, -0.25, -0.5, -0.5, -0.75, -0.75, 1.0, 0.5, 0.25, 1.0, -1.0, 1.0, -0.25, 1.0, -0.75, 0.25, -0.25, 0.75, 0.75, 0.75, 0.5, -0.5, -0.5, 0.5, -0.25, -0.75, -0.25, 0.75, 0.5, 1.0, -0.5, 0.5, 0.0, 0.0, 0.0, -0.25, 0.0, 1.0, 0.75, 0.5, 1.0, -0.75, 0.75, -0.25, 1.0, 0.0, 1.0, 0.0, ]);
    const array6 = new Float32Array([-0.5, -0.5, -0.5, -0.75, 0.75, -1.0, 0.75, -0.25, 1.0, 0.5, -1.0, 1.0, 1.0, -0.75, -0.5, 0.0, -0.5, 0.0, -0.25, -0.25, -1.0, 0.75, -1.0, 0.5, 1.0, 0.25, 0.0, -0.25, -0.5, 0.5, 0.5, -1.0, 0.75, 0.0, -0.75, 0.0, 0.0, 0.75, 0.5, 1.0, -0.5, 0.75, 0.25, 0.5, -1.0, 0.0, 0.0, 0.75, 0.0, 0.25, 0.75, 0.0, -0.25, 0.5, 0.5, -0.5, -0.75, -1.0, 0.25, 0.75, -0.75, 0.5, 0.25, 1.0, -0.5, -0.25, 0.75, 0.75, -0.5, -1.0, -0.25, 0.75, 0.25, 0.0, 0.25, 0.25, -0.25, 0.75, -1.0, -1.0, 0.0, 0.75, 0.25, -1.0, 0.0, 0.5, -0.5, 0.75, -0.5, -0.25, -0.75, -0.5, 0.0, -0.25, -0.25, 1.0, 0.75, 0.25, 0.0, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array7 = new Float32Array([-1.0, -1.0, 0.0, 0.25, -1.0, -0.75, -0.5, 0.25, 0.75, -0.5, 0.0, -0.75, 0.75, -0.75, -0.75, 0.0, -1.0, 1.0, 0.0, 0.5, -1.0, 0.0, 1.0, -1.0, -0.5, 0.75, 0.5, 0.0, -0.5, 0.75, 0.75, 1.0, 1.0, 0.75, -0.25, 1.0, -0.5, 0.25, -0.75, -0.25, -0.25, 0.0, -0.5, 1.0, 1.0, 0.25, -0.5, 1.0, 1.0, -0.75, 0.75, -1.0, 0.5, 0.0, 0.75, 1.0, 0.5, 1.0, 0.5, 0.75, -0.25, -0.25, 1.0, 0.5, -0.5, 0.75, -0.75, -0.5, -0.5, -1.0, -0.25, -0.75, -0.75, 0.75, -0.75, -0.75, 0.0, -0.5, 0.0, -0.25, 0.5, 1.0, 0.75, -1.0, -0.25, 0.5, 0.5, 0.75, 0.75, 0.75, 0.75, 0.0, 0.0, -0.25, 0.5, -0.75, 1.0, 0.25, -0.5, 0.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
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
    
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const array8 = new Float32Array([1.0, -0.5, 0.75, 0.5, -1.0, 1.0, -0.75, 0.0, 0.75, 0.0, -0.75, 0.5, 0.75, 0.25, -0.75, 0.5, 1.0, -0.75, -0.5, -0.5, -0.5, -0.5, 0.75, -0.75, 0.0, 0.75, 0.25, -0.5, 0.25, 0.5, -0.5, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.75, 0.5, -0.75, -1.0, 0.25, 0.0, -0.25, -0.5, 0.0, -0.75, 1.0, -0.5, -1.0, 0.0, 0.5, -0.25, -0.75, -0.25, -0.5, 0.0, -0.5, -1.0, 0.0, -0.75, -1.0, 1.0, -1.0, 0.0, 1.0, 0.0, -0.25, 0.25, 0.5, 1.0, -0.75, -0.5, 0.0, -1.0, -1.0, 0.0, 0.5, 1.0, 0.25, -0.5, 0.5, -0.5, -0.5, -0.5, 0.5, -0.25, 0.25, -1.0, 0.5, 0.75, -0.75, -0.5, -0.5, -1.0, 0.0, -0.25, -1.0, 0.25, 0.0, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    compute_pass_encoder0000.popDebugGroup()
    
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
    
    const array9 = new Float32Array([1.0, 0.25, -1.0, -0.75, 0.0, -0.25, 0.25, -0.25, 1.0, -0.5, 1.0, -1.0, -0.5, 1.0, 1.0, 0.5, -0.25, -0.75, -0.25, 0.75, -0.75, 0.0, 0.5, 0.75, -0.25, -0.75, -0.75, -0.5, -0.5, -0.25, 0.5, 0.75, 0.0, -0.25, 0.5, 0.75, -1.0, -0.5, -0.75, 0.75, 1.0, 0.5, -0.75, -0.75, -0.75, -0.75, 0.5, 0.75, -0.25, -0.75, -0.5, -1.0, -1.0, 0.75, 1.0, 0.75, 1.0, 0.0, 1.0, 0.5, 0.5, 0.75, -0.25, 0.5, 0.5, -0.5, 0.0, 0.25, -0.75, 0.25, -1.0, -0.5, -0.5, -0.25, -0.5, 0.25, 0.25, -0.75, 0.5, -1.0, 1.0, 0.25, -1.0, -0.25, 0.25, 0.75, 1.0, -0.75, 0.25, -1.0, -0.25, -1.0, 1.0, 0.5, -0.5, 0.75, -0.5, -0.75, -0.75, -0.25, ]);
    query000.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    query000.destroy()
    
    device20.destroy();
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    query001.destroy()
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.destroy();
    
    query000.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const array10 = new Float32Array([0.0, -0.75, -0.5, 0.0, -1.0, 0.5, 0.25, 0.25, 0.5, -0.5, -0.5, 0.5, 0.5, -0.5, -0.25, 0.5, 0.0, -0.75, 0.5, -1.0, 0.5, -0.25, 0.0, -0.75, 0.25, -1.0, 1.0, -0.75, 0.25, 0.75, 0.25, -0.25, -0.75, -0.75, -1.0, 0.0, -0.75, 1.0, 1.0, 0.75, -1.0, -0.5, 1.0, 1.0, 0.75, 0.5, -0.25, 0.0, 0.75, -0.25, -0.25, -1.0, -0.25, 0.0, 0.75, 0.5, 0.5, -0.5, -0.75, -1.0, 0.25, 0.75, -0.5, -0.5, -0.5, 0.0, 0.25, 0.25, -0.75, 0.0, 0.5, 0.75, 0.0, 0.0, 0.25, 0.25, -1.0, -0.5, 1.0, 0.25, 0.5, 1.0, 1.0, 1.0, -0.5, 0.25, -0.25, -1.0, 0.5, 0.25, 0.0, -1.0, -0.75, 0.5, -1.0, 1.0, 0.0, 1.0, -0.5, 0.75, ]);
    command_encoder002.pushDebugGroup("mygroupmarker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    query000.destroy()
    query401.destroy()
    command_encoder401.pushDebugGroup("mygroupmarker")
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    query002.destroy()
    command_encoder401.popDebugGroup()
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    compute_pass_encoder4000.popDebugGroup()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    device60.destroy();
    device50.destroy();
    query001.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
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
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    device30.destroy();
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    command_encoder006.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0000.insertDebugMarker("marker")
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
    device70.destroy();
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4010.insertDebugMarker("marker")
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
    command_encoder002.popDebugGroup()
    command_encoder002.pushDebugGroup("mygroupmarker")
    query001.destroy()
    query001.destroy()
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    query001.destroy()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    compute_pass_encoder0030.insertDebugMarker("marker")
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    command_encoder402.pushDebugGroup("mygroupmarker")
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    compute_pass_encoder0040.popDebugGroup()
    query003.destroy()
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0040.insertDebugMarker("marker")
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder0050.insertDebugMarker("marker")
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout003]
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    query403.destroy()
    
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout004]
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout000]
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
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    compute_pass_encoder4020.insertDebugMarker("marker")
    query001.destroy()
    
    
    query402.destroy()
    compute_pass_encoder0010.popDebugGroup()
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
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout004]
    });
    const array11 = new Float32Array([-0.75, 0.0, -0.25, 0.75, 1.0, 0.0, 0.25, 0.0, 0.75, -0.5, 1.0, -0.75, 0.5, -0.75, -0.5, 0.25, 0.25, 0.25, 1.0, -0.25, 1.0, 1.0, -0.5, 0.5, -0.25, -1.0, 0.5, -1.0, 0.75, 1.0, 0.75, 0.0, -0.25, -1.0, 0.5, -0.25, -0.25, -0.25, -0.25, 0.0, 0.5, 0.75, 0.75, -1.0, -1.0, -1.0, 0.5, -1.0, 0.75, -0.75, 0.5, 0.5, -0.75, 0.75, 0.75, 0.5, -0.5, 0.0, 0.25, -1.0, 0.5, 0.5, 0.75, -1.0, -0.75, 1.0, -0.75, -0.25, 0.5, 0.5, -1.0, 0.75, 0.75, 0.0, 0.25, 0.75, 0.5, -0.5, 0.0, -0.75, 0.75, 1.0, 0.0, -0.25, -0.25, 0.5, 0.75, -0.75, 0.25, 1.0, -0.25, 0.75, 0.25, -1.0, 0.25, 0.75, -0.75, 0.25, -1.0, -0.25, ]);
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    compute_pass_encoder4010.insertDebugMarker("marker")
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout005]
    });
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder4010.insertDebugMarker("marker")
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    
    query000.destroy()
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    query400.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    query001.destroy()
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    compute_pass_encoder0050.popDebugGroup()
    query003.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    query402.destroy()
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0050.insertDebugMarker("marker")
    command_encoder006.popDebugGroup()
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout005]
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    const array12 = new Float32Array([-0.75, 0.5, 0.0, -0.5, -1.0, 0.5, 1.0, -0.75, 0.5, 0.25, 0.5, -0.75, 0.75, -0.25, 0.5, 0.0, 0.0, 0.75, 0.0, -0.25, 0.0, -0.25, 1.0, -0.75, 1.0, 0.5, 0.25, 0.25, 1.0, 0.25, 1.0, 0.75, -0.25, -0.75, -0.25, -1.0, 0.75, 0.0, 1.0, 1.0, -0.25, 0.5, -0.75, -1.0, 0.0, -0.75, 0.25, 0.5, 1.0, 0.25, 1.0, 0.5, 0.75, 0.75, 0.5, 0.0, 0.0, -0.5, 0.0, 0.5, -1.0, -1.0, -1.0, 1.0, 0.5, 1.0, 0.75, 0.5, 0.5, -0.5, 0.25, 1.0, 0.75, -0.25, -0.5, 1.0, -0.25, 0.25, 0.0, 0.25, 1.0, -0.75, -0.75, -1.0, 1.0, 0.25, 1.0, -1.0, 1.0, 0.0, -0.25, -0.5, -0.25, -0.75, 1.0, 0.5, 0.25, -0.75, 0.75, 0.5, ]);
    query002.destroy()
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    query003.destroy()
    compute_pass_encoder4010.popDebugGroup()
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    compute_pass_encoder4010.insertDebugMarker("marker")
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
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
    
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    compute_pass_encoder0050.insertDebugMarker("marker")
    compute_pass_encoder0050.insertDebugMarker("marker")
    query403.destroy()
    query404.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
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
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    command_encoder006.pushDebugGroup("mygroupmarker")
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
    query002.destroy()
    compute_pass_encoder0000.popDebugGroup()
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    command_encoder404.pushDebugGroup("mygroupmarker")
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0040.popDebugGroup()
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const array13 = new Float32Array([1.0, 0.0, 0.5, -1.0, -0.5, 0.5, 0.75, -0.75, -1.0, -0.75, 0.0, 0.75, 0.0, 1.0, 1.0, -0.25, 0.25, 0.5, 0.25, -1.0, -1.0, 0.0, 0.25, -0.75, -0.75, -0.5, 0.5, 0.25, 0.0, 0.5, 0.75, 1.0, -0.5, 0.25, -0.25, 0.25, -0.5, 1.0, -1.0, -1.0, -0.75, -0.5, 1.0, -0.75, 0.5, 1.0, 0.0, 1.0, -0.25, 0.75, 0.75, -0.5, 0.75, 0.0, -1.0, 0.0, 0.0, 0.25, 1.0, -0.5, -0.5, -0.25, 0.0, -0.5, 0.0, 1.0, 0.25, -0.25, -0.75, 0.75, 0.0, -1.0, 0.75, -0.25, 1.0, 0.5, -0.75, 1.0, -0.5, 0.25, 0.0, 0.75, -0.5, -0.25, 0.25, 0.0, 0.0, -0.5, 0.0, 0.5, 0.0, 0.75, 0.75, 0.5, 1.0, 1.0, 0.25, 0.25, -0.25, -0.75, ]);
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    compute_pass_encoder0060.insertDebugMarker("marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query402.destroy()
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout006]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0000.popDebugGroup()
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    query404.destroy()
    const pipeline_layout0028 = device00.createPipelineLayout({ 
        label: "pipeline_layout0028",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout0029 = device00.createPipelineLayout({ 
        label: "pipeline_layout0029",
        bindGroupLayouts: [bind_group_layout005]
    });
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    const array14 = new Float32Array([-1.0, -0.25, 0.25, 1.0, 0.0, -0.75, -1.0, 0.25, 0.25, 0.5, -0.75, -0.5, 1.0, -1.0, -0.25, 0.5, 0.0, -0.5, -0.75, -0.75, 0.75, 1.0, -1.0, 1.0, -0.5, 0.25, -0.75, 0.0, 0.25, 0.5, 0.75, 1.0, -0.5, 0.0, 1.0, 0.25, 0.0, -0.25, -0.5, 0.75, 1.0, 0.5, 1.0, -0.75, -0.25, -1.0, -0.5, 0.0, 0.25, 0.75, -1.0, -0.75, 0.25, 0.25, -1.0, 0.25, 0.5, 0.5, 0.75, -0.25, 0.25, 0.75, -0.5, -0.5, 0.0, 0.5, -0.75, 0.75, 1.0, -0.5, -0.75, 0.25, -0.5, 0.75, -0.5, -0.25, 1.0, 0.5, -1.0, -1.0, -0.25, 0.0, 0.5, 0.0, -0.75, -0.75, -0.75, 0.25, -0.25, 1.0, -0.75, -0.25, 0.5, 0.0, 0.5, -0.5, -0.25, -0.5, 1.0, -1.0, ]);
    const pipeline_layout0030 = device00.createPipelineLayout({ 
        label: "pipeline_layout0030",
        bindGroupLayouts: [bind_group_layout007]
    });
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0060.insertDebugMarker("marker")
    const query407 = device40.createQuerySet({
        label: "query407",
        type: "occlusion",
        count: 32,
    });
    
    query003.destroy()
    
    const pipeline_layout0031 = device00.createPipelineLayout({ 
        label: "pipeline_layout0031",
        bindGroupLayouts: [bind_group_layout007]
    });
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    const pipeline_layout0032 = device00.createPipelineLayout({ 
        label: "pipeline_layout0032",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    query405.destroy()
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0040.insertDebugMarker("marker")
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0060.popDebugGroup()
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    compute_pass_encoder0050.insertDebugMarker("marker")
    query001.destroy()
    
    const pipeline_layout0033 = device00.createPipelineLayout({ 
        label: "pipeline_layout0033",
        bindGroupLayouts: [bind_group_layout005]
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    query000.destroy()
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    const array15 = new Float32Array([-0.25, 1.0, -0.75, 1.0, 0.25, 1.0, 0.25, -0.75, -0.75, -0.25, 0.5, -0.5, 0.75, 0.75, -0.25, 1.0, -1.0, -1.0, 0.25, -0.75, -0.5, -0.25, 0.75, -0.5, -0.25, -0.25, 0.5, 1.0, -0.75, 0.25, -0.25, 0.75, -0.25, -0.25, 0.75, -0.25, -1.0, -0.5, -0.25, 0.75, 0.75, 0.25, 0.75, 0.25, -0.5, 0.25, 0.0, 1.0, 1.0, 0.0, 1.0, -0.75, 0.25, 0.25, 1.0, 0.5, -0.75, -0.75, 0.5, 1.0, -1.0, 0.5, 0.75, 0.75, -1.0, -0.25, -0.5, -0.75, 0.5, 0.25, 0.0, 0.0, 0.0, 0.5, -1.0, -0.5, 0.5, 0.0, 0.75, 1.0, 1.0, -0.75, -0.5, -0.25, 0.0, 1.0, 0.25, -0.25, 1.0, 0.25, -0.75, 0.5, -0.75, -1.0, -0.5, -1.0, -0.25, 0.5, -0.75, 0.75, ]);
    const pipeline_layout0034 = device00.createPipelineLayout({ 
        label: "pipeline_layout0034",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder4030.popDebugGroup()
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.popDebugGroup()
    query000.destroy()
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    query404.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    const pipeline_layout0035 = device00.createPipelineLayout({ 
        label: "pipeline_layout0035",
        bindGroupLayouts: [bind_group_layout004]
    });
    const compute_pass_encoder4050 = command_encoder405.beginComputePass({ label: "compute_pass_encoder4050" });
    query003.destroy()
    query400.destroy()
    query405.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0040.popDebugGroup()
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    query002.destroy()
    
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    
    compute_pass_encoder4040.insertDebugMarker("marker")
    query002.destroy()
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
    query008.destroy()
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout0010 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0010",
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
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const pipeline_layout0036 = device00.createPipelineLayout({ 
        label: "pipeline_layout0036",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    const array16 = new Float32Array([-0.25, -0.5, 1.0, -1.0, -0.75, 0.75, -1.0, 1.0, -0.5, -0.75, -0.25, -0.5, 0.5, 1.0, -1.0, 0.5, 0.25, 1.0, 0.0, 0.5, -0.75, 0.0, -0.25, -1.0, 0.25, 0.0, 0.5, 0.5, -0.5, 0.0, 0.5, -0.75, -0.5, 0.0, -0.75, 0.25, 1.0, 0.25, 1.0, -0.5, -0.75, 1.0, -0.75, 1.0, 0.25, 1.0, 0.25, -0.25, 0.25, 0.75, 0.0, 1.0, -0.25, 0.5, 0.0, 0.25, -1.0, 1.0, 0.5, 0.5, 1.0, 0.5, 0.5, -0.25, -0.25, 0.25, 0.5, 0.0, 0.0, 0.0, -0.5, -0.75, 0.5, -0.25, -0.5, 0.25, -0.5, 0.75, 0.25, 0.25, 0.75, 1.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.0, -0.25, -0.5, 0.5, -0.25, -0.25, 0.0, 0.5, -0.5, -0.5, -1.0, -0.25, -0.25, ]);
    device100.destroy();
    const pipeline_layout0037 = device00.createPipelineLayout({ 
        label: "pipeline_layout0037",
        bindGroupLayouts: [bind_group_layout002]
    });
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    compute_pass_encoder0020.popDebugGroup()
    
    query407.destroy()
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder0010.insertDebugMarker("marker")
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    query006.destroy()
    const pipeline_layout0038 = device00.createPipelineLayout({ 
        label: "pipeline_layout0038",
        bindGroupLayouts: [bind_group_layout005]
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout0039 = device00.createPipelineLayout({ 
        label: "pipeline_layout0039",
        bindGroupLayouts: [bind_group_layout009]
    });
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    query008.destroy()
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    
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
    const compute_pass_encoder4060 = command_encoder406.beginComputePass({ label: "compute_pass_encoder4060" });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder4010.popDebugGroup()
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    query800.destroy()
    compute_pass_encoder0050.insertDebugMarker("marker")
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    query007.destroy()
    query407.destroy()
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    
    query407.destroy()
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const pipeline_layout0040 = device00.createPipelineLayout({ 
        label: "pipeline_layout0040",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    compute_pass_encoder4060.pushDebugGroup("group_marker")
    const pipeline_layout0041 = device00.createPipelineLayout({ 
        label: "pipeline_layout0041",
        bindGroupLayouts: [bind_group_layout005]
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder4010.insertDebugMarker("marker")
    const pipeline_layout0042 = device00.createPipelineLayout({ 
        label: "pipeline_layout0042",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    compute_pass_encoder0060.insertDebugMarker("marker")
    compute_pass_encoder4000.popDebugGroup()
    query405.destroy()
    query407.destroy()
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0020.insertDebugMarker("marker")
    query400.destroy()
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    const pipeline_layout0043 = device00.createPipelineLayout({ 
        label: "pipeline_layout0043",
        bindGroupLayouts: [bind_group_layout009]
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const bind_group_layout0011 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0011",
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
    const pipeline_layout0044 = device00.createPipelineLayout({ 
        label: "pipeline_layout0044",
        bindGroupLayouts: [bind_group_layout006]
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const pipeline_layout0045 = device00.createPipelineLayout({ 
        label: "pipeline_layout0045",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    const array17 = new Float32Array([-1.0, 0.75, 0.25, 0.25, 0.5, -0.25, 1.0, 0.5, -0.25, 0.75, -0.25, 1.0, -0.75, 0.75, -0.25, -0.75, -1.0, -1.0, 0.25, -0.75, 1.0, -0.5, -1.0, 1.0, 1.0, 0.5, 0.25, 1.0, 0.0, -0.75, -1.0, -0.25, 1.0, -0.75, 0.0, -0.5, -0.25, 0.5, 0.25, -1.0, -0.25, -0.5, -0.75, -1.0, 1.0, -1.0, 1.0, 0.5, 0.5, 0.5, -0.5, 0.25, 0.75, 0.25, -0.5, 1.0, 0.25, -1.0, 0.75, -0.25, 0.75, 0.25, 0.5, -0.25, -1.0, 1.0, -1.0, -1.0, 0.75, -0.75, 0.75, -0.25, 0.5, -1.0, 0.0, 0.25, -1.0, 0.0, -0.5, -0.75, 0.0, -1.0, 1.0, -0.25, 0.25, -0.25, -0.5, 0.75, -0.75, 0.5, 0.25, 0.75, -0.75, 0.25, 0.5, -0.75, 0.25, -1.0, 0.5, -0.25, ]);
    const pipeline_layout0046 = device00.createPipelineLayout({ 
        label: "pipeline_layout0046",
        bindGroupLayouts: [bind_group_layout001]
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const pipeline_layout0047 = device00.createPipelineLayout({ 
        label: "pipeline_layout0047",
        bindGroupLayouts: [bind_group_layout0010]
    });
    compute_pass_encoder4050.insertDebugMarker("marker")
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    query002.destroy()
    device110.destroy();
    compute_pass_encoder0010.insertDebugMarker("marker")
    const pipeline_layout0048 = device00.createPipelineLayout({ 
        label: "pipeline_layout0048",
        bindGroupLayouts: [bind_group_layout008]
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    query403.destroy()
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    const command_encoder407 = device40.createCommandEncoder({ label: "command_encoder407" });
    const query408 = device40.createQuerySet({
        label: "query408",
        type: "occlusion",
        count: 32,
    });
    query407.destroy()
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
    command_encoder800.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    query402.destroy()
    
    const pipeline_layout0049 = device00.createPipelineLayout({ 
        label: "pipeline_layout0049",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    query006.destroy()
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout401]
    });
    command_encoder407.pushDebugGroup("mygroupmarker")
    query005.destroy()
    const pipeline_layout0050 = device00.createPipelineLayout({ 
        label: "pipeline_layout0050",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pass_encoder4070 = command_encoder407.beginComputePass({ label: "compute_pass_encoder4070" });
    query005.destroy()
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    compute_pass_encoder4060.popDebugGroup()
    const command_encoder408 = device40.createCommandEncoder({ label: "command_encoder408" });
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    query404.destroy()
    compute_pass_encoder0030.popDebugGroup()
    const pipeline_layout0051 = device00.createPipelineLayout({ 
        label: "pipeline_layout0051",
        bindGroupLayouts: [bind_group_layout009]
    });
    query008.destroy()
    const bind_group_layout0012 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0012",
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
    const bind_group_layout0013 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0013",
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
    compute_pass_encoder0030.insertDebugMarker("marker")
    command_encoder408.pushDebugGroup("mygroupmarker")
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    const pipeline_layout0052 = device00.createPipelineLayout({ 
        label: "pipeline_layout0052",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout0053 = device00.createPipelineLayout({ 
        label: "pipeline_layout0053",
        bindGroupLayouts: [bind_group_layout004]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const pipeline_layout0054 = device00.createPipelineLayout({ 
        label: "pipeline_layout0054",
        bindGroupLayouts: [bind_group_layout004]
    });
    query004.destroy()
    
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    compute_pass_encoder0050.insertDebugMarker("marker")
    command_encoder408.popDebugGroup()
    compute_pass_encoder4020.insertDebugMarker("marker")
    compute_pass_encoder4040.insertDebugMarker("marker")
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const array18 = new Float32Array([0.5, -0.75, 1.0, 0.5, 0.5, 1.0, -0.5, 1.0, -0.5, -0.5, 1.0, 0.0, 0.75, 0.25, 0.5, -1.0, 0.5, -0.25, 0.0, -0.75, 0.75, 1.0, -0.25, 0.25, -0.25, -1.0, 1.0, 0.5, 1.0, -0.5, 1.0, 0.75, 0.5, -0.75, 0.25, 0.25, 1.0, 0.5, 0.25, 0.25, 0.25, -0.25, 0.0, -0.25, 1.0, 0.5, 1.0, -0.75, 0.25, -0.5, -0.5, 0.0, 1.0, -0.5, 1.0, 1.0, -0.25, -0.25, 1.0, 1.0, 0.0, 0.75, -0.75, -0.5, -1.0, -1.0, -1.0, 0.5, 0.5, -0.5, 0.0, 0.25, 0.25, 0.0, 0.25, -0.75, -0.75, 0.0, 1.0, -1.0, 0.0, 1.0, -0.25, 0.5, 0.25, 0.75, 0.25, 0.0, -0.75, -0.5, 0.75, -0.25, 0.5, 0.0, 0.5, 1.0, 0.25, 0.75, -0.75, -0.25, ]);
    compute_pass_encoder8000.popDebugGroup()
    compute_pass_encoder4060.insertDebugMarker("marker")
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    query004.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    query407.destroy()
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout401]
    });
    compute_pass_encoder0050.insertDebugMarker("marker")
    query405.destroy()
    const pipeline_layout0055 = device00.createPipelineLayout({ 
        label: "pipeline_layout0055",
        bindGroupLayouts: [bind_group_layout0011]
    });
    query400.destroy()
    command_encoder408.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder4040.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder4030.popDebugGroup()
    command_encoder408.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
}