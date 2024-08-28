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
    const array0 = new Float32Array([0.5, 1.0, -1.0, 0.0, 0.25, 0.25, -1.0, -0.25, 1.0, 0.5, -0.5, 0.5, -0.5, 0.75, -0.75, -0.5, 0.75, -1.0, 0.0, -0.75, 0.5, 0.0, -1.0, -0.75, -0.25, 0.75, 0.25, -0.75, 0.75, -1.0, 0.75, 1.0, -0.25, 0.0, -0.25, 0.5, 0.0, 0.75, 0.5, 0.5, 1.0, 0.25, 0.0, -0.5, 1.0, 0.0, -0.25, -0.25, 0.75, -0.75, -0.75, 0.0, 0.25, -0.5, -1.0, -0.5, -0.5, -0.5, -0.75, 0.25, 0.25, -1.0, -0.75, -0.5, -0.75, 0.75, -0.25, 0.5, 0.0, 0.0, -0.25, 0.5, 0.5, 0.25, -0.25, 0.5, -0.5, 0.0, -0.75, -0.25, -0.75, 0.5, -1.0, 0.0, 1.0, -0.5, 0.0, 1.0, -1.0, -0.5, -1.0, 1.0, -1.0, -0.75, 1.0, 0.75, -0.25, -1.0, 0.0, 0.0, ]);
    const array1 = new Float32Array([0.25, -0.75, -0.5, -0.25, -0.25, 1.0, 0.75, 0.5, 0.75, 0.5, -0.25, -0.75, -1.0, -0.25, 0.75, -0.75, -0.5, 0.5, 0.0, 1.0, 0.0, -0.5, 0.25, 0.25, -0.5, 0.5, 0.0, -1.0, 1.0, -0.25, 0.75, -0.75, -0.25, -0.5, 0.75, -0.5, -1.0, 0.25, -0.5, -0.25, -1.0, -1.0, -0.75, 0.75, -0.5, 0.5, -1.0, -0.5, -1.0, 0.75, 0.5, -1.0, -0.25, -1.0, -0.75, 0.25, -0.75, -1.0, -1.0, 0.0, 1.0, 0.5, -0.75, -0.75, 0.25, -0.25, 0.75, 0.25, -0.25, 0.0, 0.0, 1.0, -0.75, 0.0, 0.25, -0.75, 0.0, 0.5, 0.25, 1.0, 0.5, -0.75, -1.0, 0.0, -0.75, 0.75, 0.75, 1.0, 0.75, 0.0, -0.75, -0.75, 0.0, -1.0, 0.0, 0.0, -1.0, -0.75, 0.75, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer000.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
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
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
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
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    const array2 = new Float32Array([-1.0, -0.75, 0.5, 0.25, -0.5, 0.5, -0.5, -1.0, -0.5, 1.0, -1.0, -0.25, -0.5, -1.0, -1.0, 0.5, -0.25, 1.0, 1.0, 1.0, 0.5, 0.25, -0.75, 0.75, 0.5, -0.5, 0.5, 0.25, 0.75, 0.5, 0.75, 0.0, 0.0, -1.0, -0.5, -1.0, 0.0, -0.75, 0.25, -1.0, 0.0, -0.25, -0.75, 0.25, 0.75, -0.75, 0.25, 0.0, 0.75, 0.5, 0.75, 0.25, -1.0, -0.5, -0.75, 1.0, 0.0, 0.5, -0.75, 0.0, -0.25, 0.25, -0.75, -0.75, -0.25, -0.75, 0.0, 0.25, 0.25, 0.25, -1.0, -0.5, -0.5, 1.0, 0.0, -0.75, 0.25, -1.0, 0.0, -0.5, -0.75, 1.0, 0.0, -0.25, -0.25, 1.0, 0.25, 1.0, 1.0, 0.25, -0.5, 0.75, 1.0, -1.0, 0.5, -0.75, -0.75, 0.0, 1.0, 0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
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
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder0030.insertDebugMarker("marker")
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
    compute_pass_encoder0030.popDebugGroup()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
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
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    compute_pass_encoder0020.popDebugGroup()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
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
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
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
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([0.5, 0.75, -0.75, -0.5, -0.25, 0.5, -1.0, -0.75, 0.5, 0.5, 0.5, 0.5, -0.5, -0.75, -0.25, -0.5, 0.25, -1.0, 1.0, -0.75, -0.5, 0.75, 0.25, -0.25, 0.5, 1.0, -1.0, -0.5, -0.25, 0.5, -0.5, 0.5, -0.5, -0.25, -1.0, -1.0, 0.0, 0.5, 0.5, 0.75, 0.5, -0.25, 0.0, 0.75, 1.0, -0.5, -1.0, -0.75, -0.25, -1.0, 0.25, -0.75, 0.5, -0.25, -0.25, -1.0, 0.75, 1.0, 0.75, -0.75, 1.0, -0.75, 0.25, -1.0, -0.75, 0.75, 1.0, -0.75, -1.0, 0.0, -1.0, 0.75, -1.0, 0.75, -0.75, -0.25, 0.75, -0.5, -1.0, -0.25, 0.75, 0.25, 1.0, 0.25, 0.25, 1.0, -0.25, -0.25, -0.5, -0.25, -0.25, -0.75, -0.75, 0.75, -0.75, 0.25, 1.0, 0.25, -0.5, 0.0, ]);
    const array4 = new Float32Array([0.5, 0.0, 0.25, 1.0, 0.5, 0.75, -0.5, 0.75, 0.5, -1.0, -0.25, -1.0, 0.75, -0.25, 0.75, -0.75, 0.0, 0.75, -0.5, 0.75, -1.0, 0.0, 0.5, -0.5, 0.75, 1.0, 0.75, 0.5, 0.0, -0.5, 1.0, 0.0, -1.0, 1.0, 0.0, 0.75, 0.5, -0.5, 0.5, 1.0, -0.75, 0.25, 0.75, -1.0, -0.75, 0.25, -1.0, 0.25, 0.25, 1.0, -0.75, -1.0, 0.25, 1.0, -0.25, -1.0, 0.25, 0.75, -0.75, 0.5, -1.0, -0.75, -0.25, 0.0, -0.5, -0.5, -0.25, 0.5, 1.0, -0.5, -0.75, -0.25, -0.25, 0.5, 0.25, 0.5, 0.25, 0.25, -0.25, -0.5, -1.0, -0.25, 0.75, -0.25, -0.25, 1.0, -1.0, -0.5, 0.75, 0.25, -0.25, 0.5, 1.0, 0.25, 0.25, -0.25, 0.5, -1.0, -0.5, -0.5, ]);
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
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
    buffer001.destroy()
    const array5 = new Float32Array([0.25, -0.5, -0.75, -0.25, 0.25, -1.0, -1.0, -0.25, -0.25, -0.5, -0.5, 0.0, 0.25, 0.25, -0.5, -1.0, 0.75, 0.75, -0.75, -0.75, 0.0, -1.0, 0.25, -0.75, 0.75, -0.75, 0.25, 1.0, 1.0, -0.5, -0.25, 0.75, -0.25, -0.5, 0.75, -0.5, -1.0, -0.75, 0.5, -0.5, 0.5, -1.0, 0.25, -1.0, -0.75, 0.75, 0.0, 0.5, -1.0, -1.0, 0.5, 0.0, -0.25, 1.0, -0.75, 1.0, -0.5, -1.0, -0.5, -0.25, 0.25, -0.75, 0.75, 0.5, -0.75, -1.0, 1.0, -0.25, -0.25, -0.25, 0.0, -0.75, -0.25, 0.0, 0.0, 0.75, -0.75, -1.0, -1.0, -0.25, 0.0, -0.5, 0.75, -0.5, 1.0, 0.5, -0.75, -0.5, 1.0, 0.25, -0.5, 0.5, -0.5, 0.5, -1.0, 0.0, 0.75, 0.5, 0.25, 0.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    buffer100.destroy()
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder1000.popDebugGroup()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    compute_pass_encoder1020.popDebugGroup()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder0030.popDebugGroup()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_bundle_encoder000.popDebugGroup();
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout006]
    });
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const array6 = new Float32Array([0.0, 0.75, -1.0, 1.0, 0.0, 0.25, -0.5, -0.75, 0.75, 1.0, -0.25, -0.5, -0.25, 0.0, 0.25, 0.5, -1.0, -1.0, -0.25, 0.25, 1.0, 0.25, 0.5, 0.75, 0.75, 0.5, -0.75, 0.25, 1.0, -0.75, 1.0, -0.25, -0.5, 0.75, 0.25, -0.5, 0.75, 0.0, 1.0, 0.5, 0.0, -0.5, 0.75, -0.5, 0.75, -0.75, -1.0, 0.5, -0.5, 0.5, -0.25, 0.0, 0.25, 0.0, -0.5, 0.5, -0.5, -0.5, -0.5, -1.0, 0.5, 0.75, 0.25, 0.5, -1.0, -0.5, -1.0, 1.0, 0.75, 0.75, 0.25, -0.5, 1.0, 0.75, -0.5, 0.0, 0.25, 0.5, 1.0, -0.5, -0.25, -0.75, 0.5, -0.75, -0.5, -0.25, 0.25, 0.5, 0.25, 0.0, 0.75, 1.0, 1.0, 0.75, -0.75, 0.75, 0.0, -0.25, 0.5, -1.0, ]);
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
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
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
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
    
    render_bundle_encoder201.popDebugGroup();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout006]
    });
    buffer200.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout004]
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder202.popDebugGroup();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder0060.insertDebugMarker("marker")
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pass_encoder0090 = command_encoder009.beginComputePass({ label: "compute_pass_encoder0090" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_bundle_encoder001.popDebugGroup();
    
    compute_pass_encoder0070.insertDebugMarker("marker")
    compute_pass_encoder0050.insertDebugMarker("marker")
    
    
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    
    
    compute_pass_encoder0000.popDebugGroup()
    buffer300.destroy()
    
    compute_pass_encoder0040.popDebugGroup()
    
    
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
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    compute_pass_encoder0060.insertDebugMarker("marker")
    compute_pass_encoder1000.popDebugGroup()
    
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
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout006]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder1030.insertDebugMarker("marker")
    const compute_pass_encoder0080 = command_encoder008.beginComputePass({ label: "compute_pass_encoder0080" });
    compute_pass_encoder0070.insertDebugMarker("marker")
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    compute_pass_encoder0070.insertDebugMarker("marker")
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0060.popDebugGroup()
    
    render_bundle_encoder202.popDebugGroup();
    compute_pass_encoder0070.insertDebugMarker("marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1010.popDebugGroup()
    
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    command_encoder300.clearBuffer(buffer301);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    compute_pass_encoder0050.insertDebugMarker("marker")
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    
    buffer302.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout006]
    });
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout005]
    });
    compute_pass_encoder0040.popDebugGroup()
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_bundle_encoder201.popDebugGroup();
    
    render_bundle_encoder002.popDebugGroup();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder0090.insertDebugMarker("marker")
    render_bundle_encoder201.pushDebugGroup("group_marker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder0080.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder0080.pushDebugGroup("group_marker")
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout007]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder001.popDebugGroup();
    
    compute_pass_encoder0050.insertDebugMarker("marker")
    compute_pass_encoder0080.insertDebugMarker("marker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder0080.insertDebugMarker("marker")
    
    
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
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
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    
    compute_pass_encoder3000.insertDebugMarker("marker")
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
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
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
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder0060.insertDebugMarker("marker")
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder0060.insertDebugMarker("marker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder002.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    compute_pass_encoder1020.insertDebugMarker("marker")
    buffer500.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    compute_pass_encoder0090.insertDebugMarker("marker")
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    compute_pass_encoder0070.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0070.insertDebugMarker("marker")
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    buffer002.destroy()
    compute_pass_encoder0070.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder0060.insertDebugMarker("marker")
    render_bundle_encoder202.insertDebugMarker("marker");
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
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    compute_pass_encoder0050.insertDebugMarker("marker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder0000.popDebugGroup()
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder600.insertDebugMarker("marker");
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    compute_pass_encoder0080.popDebugGroup()
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout005]
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
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
    render_bundle_encoder401.pushDebugGroup("group_marker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    const array7 = new Float32Array([0.25, -0.5, 0.75, 0.25, -0.5, 0.75, -0.5, 0.25, 0.0, 0.0, -0.5, -0.25, 0.0, 1.0, -0.5, 1.0, -0.75, 0.5, 0.75, 0.75, 0.5, 0.0, -0.5, 1.0, 0.25, -1.0, 0.5, -0.5, 1.0, 0.25, -1.0, -0.75, -0.5, 0.5, -1.0, 0.25, -0.5, 1.0, -0.25, 0.25, -0.5, -0.5, -0.25, 0.0, 0.75, 1.0, 0.75, 0.0, -0.25, -1.0, 1.0, -0.5, -0.75, -0.25, -1.0, 0.0, 1.0, 0.25, -0.25, -1.0, 0.25, 0.0, -0.75, 0.75, 1.0, 0.75, 0.5, -1.0, 0.75, 0.0, 1.0, -0.25, -0.75, -0.25, -0.5, 0.25, -0.25, 0.0, -0.5, -1.0, 0.5, -0.5, -0.25, -0.75, 0.25, 0.0, -1.0, 0.0, -1.0, -0.5, -0.75, 0.5, 1.0, 0.5, 1.0, -0.25, 1.0, -1.0, -0.5, 0.5, ]);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    compute_pass_encoder0060.insertDebugMarker("marker")
    compute_pass_encoder1020.popDebugGroup()
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
    compute_pass_encoder0090.insertDebugMarker("marker")
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    render_bundle_encoder400.popDebugGroup();
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer101.destroy()
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
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
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer304.destroy()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder0010.popDebugGroup()
    render_bundle_encoder100.insertDebugMarker("marker");
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
    
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
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
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0050.insertDebugMarker("marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder0090.pushDebugGroup("group_marker")
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
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
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder0090.insertDebugMarker("marker")
    compute_pass_encoder0050.popDebugGroup()
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    buffer004.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    buffer303.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3000.popDebugGroup()
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const compute_pass_encoder00100 = command_encoder0010.beginComputePass({ label: "compute_pass_encoder00100" });
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_bundle_encoder401.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder300.popDebugGroup();
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    buffer301.destroy()
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout104]
    });
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout0028 = device00.createPipelineLayout({ 
        label: "pipeline_layout0028",
        bindGroupLayouts: [bind_group_layout008]
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pass_encoder9010 = command_encoder901.beginComputePass({ label: "compute_pass_encoder9010" });
    
    
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    compute_pass_encoder1010.popDebugGroup()
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    const pipeline_layout0029 = device00.createPipelineLayout({ 
        label: "pipeline_layout0029",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    compute_pass_encoder0050.insertDebugMarker("marker")
    render_bundle_encoder500.popDebugGroup();
    render_bundle_encoder002.insertDebugMarker("marker");
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    compute_pass_encoder9010.insertDebugMarker("marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder0090.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
}