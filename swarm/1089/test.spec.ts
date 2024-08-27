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
    const array0 = new Float32Array([-0.5, -1.0, -0.5, -1.0, -0.5, -0.25, -1.0, -1.0, -1.0, 0.5, -0.5, 0.0, 0.0, 0.25, 0.25, 0.25, -0.5, -0.25, 0.75, 0.5, -1.0, -0.5, 0.0, -1.0, 1.0, -0.5, -0.25, -0.25, -1.0, 0.0, -0.5, 0.25, -1.0, 1.0, -0.75, 1.0, 0.5, 1.0, -0.75, 0.5, 1.0, -0.5, 0.25, 0.25, -1.0, -0.75, -0.75, -0.75, -0.75, 0.0, -1.0, 0.5, 0.75, -0.5, -0.25, 0.5, -1.0, 0.25, 0.25, 1.0, 1.0, -0.25, 0.0, -0.75, 1.0, 0.5, -0.75, 0.75, -1.0, 0.0, -0.25, -0.25, 0.0, -0.75, 0.25, 0.25, -0.5, -0.75, 0.75, 1.0, -0.5, -0.25, -0.25, 1.0, 0.75, -0.5, -0.75, 0.5, -0.75, 0.0, 0.5, -0.5, 0.75, -0.25, 0.0, 0.5, 0.0, 0.75, -0.75, 0.5, ]);
    
    
    
    
    
    const array1 = new Float32Array([0.0, -0.75, -0.5, -0.75, -0.75, 1.0, 0.25, -0.5, 0.0, 0.0, -1.0, 0.25, -1.0, -1.0, 0.5, -0.25, -1.0, -1.0, -1.0, -1.0, 0.5, 0.25, 0.5, 0.5, 0.75, -0.75, -0.5, -0.25, 0.75, -1.0, -1.0, -1.0, -0.75, -0.5, 0.0, 1.0, 0.25, -0.5, 0.75, 0.25, 1.0, 0.5, 0.5, 0.5, 0.25, 1.0, 0.75, 0.75, -0.75, 1.0, -0.75, 1.0, 0.5, -0.5, -0.75, -0.25, -0.75, 0.75, -0.5, -0.25, 0.0, -0.75, 0.0, -0.5, -0.5, 0.25, 0.5, -1.0, -0.25, -0.5, 1.0, 0.75, 1.0, 0.0, 1.0, -0.75, 0.75, -1.0, 0.0, 0.25, 0.5, -0.75, 1.0, -0.25, -0.5, -0.5, 0.25, 0.0, 0.25, -1.0, 0.0, 0.25, 0.75, 1.0, 1.0, 0.75, 0.0, 1.0, 0.75, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
    
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
    
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
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
    
    const command_buffer000 = command_encoder000.finish();
    const array2 = new Float32Array([-1.0, -1.0, 1.0, -0.75, 0.0, -0.75, 0.25, -0.75, 0.0, -0.75, 0.25, 0.25, 0.75, 0.75, -0.75, -1.0, 0.5, 0.25, -0.5, 0.5, -0.5, -0.5, -0.25, -0.25, 0.25, -0.5, -0.75, -0.75, -0.75, 0.75, -0.75, -1.0, -0.75, 0.5, -0.25, -0.25, 0.5, 0.25, 1.0, -0.75, 0.0, 1.0, 1.0, 0.75, -0.75, -0.75, 0.5, -0.75, -0.5, 1.0, -1.0, 1.0, -0.75, -0.25, -0.5, 0.0, -0.5, 0.5, 0.75, 1.0, 1.0, 0.25, -1.0, 1.0, 1.0, 0.5, 0.25, -0.75, -0.75, 0.5, -0.5, 1.0, -1.0, -0.5, -0.5, -0.25, 0.75, 1.0, 0.5, -1.0, 0.5, 0.25, 0.5, 0.25, 0.5, 0.5, 0.25, 0.0, -0.25, 1.0, -0.75, 1.0, -1.0, 0.0, -0.25, 0.25, -0.25, -0.25, -0.5, 0.75, ]);
    query000.destroy()
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    
    const array3 = new Float32Array([0.25, -0.25, 0.0, -0.5, 1.0, 0.75, 1.0, -0.5, -1.0, -0.5, -0.25, 0.0, -0.5, -0.5, -0.5, 1.0, -1.0, 0.25, -0.25, 0.0, -0.5, -0.5, -0.25, 0.25, -0.75, 0.5, -1.0, 1.0, -0.5, 0.25, -0.5, -0.75, 0.0, -0.75, 0.75, -1.0, -0.75, 0.25, 0.75, 0.25, -0.25, -0.25, -0.5, 0.25, -1.0, 1.0, 0.75, 1.0, 1.0, 0.0, -1.0, -0.75, 0.5, 1.0, -0.25, 0.5, -1.0, 0.5, 0.75, -1.0, 0.75, -1.0, 0.5, -0.5, 1.0, 1.0, -1.0, 0.25, 0.5, 0.25, 0.25, -0.5, 0.5, 1.0, -0.75, -0.75, -1.0, -0.75, 0.5, 0.25, -1.0, 1.0, 0.75, 0.0, 0.5, 0.5, -1.0, 0.75, 0.25, -0.25, -0.5, -0.75, -0.75, 1.0, 0.5, 0.75, -0.25, -0.25, -1.0, -1.0, ]);
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("validation");
    query000.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query200.destroy()
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
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
    query201.destroy()
    
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    query100.destroy()
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.destroy();
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    query201.destroy()
    device10.pushErrorScope("internal");
    const command_buffer102 = command_encoder102.finish();
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    query201.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const array4 = new Float32Array([0.5, 1.0, -0.25, 0.0, 0.5, -0.75, -0.75, 0.0, -0.75, 0.0, 1.0, 1.0, -0.25, -1.0, 0.0, 0.25, 0.75, -0.25, 0.25, 0.25, 0.5, 0.0, -1.0, 0.0, -0.5, 0.5, 0.75, -0.25, 0.0, -0.75, -0.25, 0.25, 0.25, -0.25, 0.5, 0.75, 0.0, 1.0, -0.5, 0.5, 0.25, -0.5, -1.0, 0.25, 0.5, 0.25, 0.5, 0.75, 1.0, -0.25, -0.25, -1.0, -1.0, 0.0, -1.0, 0.0, 0.25, 1.0, 0.75, 0.75, -0.75, 0.5, -0.5, 1.0, -0.5, 0.0, 0.75, -0.5, -0.5, 0.25, -0.75, -0.75, -1.0, -0.5, 1.0, 0.0, 0.25, 0.0, -0.75, 0.0, 0.25, 0.5, -0.25, -0.75, -0.25, -1.0, -1.0, 0.25, 0.0, 0.5, -0.75, 0.75, -1.0, 0.0, -0.75, 0.75, 1.0, 0.0, 1.0, 1.0, ]);
    
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    
    command_encoder100.popDebugGroup()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query100.destroy()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    query202.destroy()
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.queue.submit([command_buffer102, ]);
    device10.pushErrorScope("internal");
    render_bundle_encoder200.insertDebugMarker("marker");
    device30.destroy();
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder200.popDebugGroup();
    query200.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
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
    const command_buffer100 = command_encoder100.finish();
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    query102.destroy()
    render_bundle_encoder200.popDebugGroup();
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device10.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    compute_pass_encoder2000.popDebugGroup()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    query202.destroy()
    
    compute_pass_encoder2010.insertDebugMarker("marker")
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
    query101.destroy()
    query202.destroy()
    compute_pass_encoder2000.popDebugGroup()
    query401.destroy()
    compute_pass_encoder2010.popDebugGroup()
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    query202.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    query201.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    query202.destroy()
    buffer400.destroy()
    device40.destroy();
    query200.destroy()
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device40.pushErrorScope("validation");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array5 = new Float32Array([-0.75, -1.0, -0.75, 0.25, 0.5, 0.0, 0.5, 0.25, -0.5, -0.25, 0.25, 0.0, 1.0, 1.0, 0.0, -0.5, -0.25, -0.75, -1.0, 0.0, -0.5, -0.25, -0.5, 0.25, -0.75, -0.25, -0.25, -1.0, 0.5, 0.0, -0.75, -0.25, -0.25, -1.0, -0.75, -0.5, -0.25, 0.75, 0.75, -0.75, 0.25, 0.0, -1.0, 0.5, -1.0, -1.0, -0.5, 0.5, 0.25, 0.25, 0.5, -1.0, 0.0, 0.5, -0.5, -0.75, 0.25, -0.5, -1.0, -0.75, 0.75, 0.5, -1.0, -0.5, -0.5, -0.5, 0.0, -1.0, -1.0, 0.25, -0.25, -0.25, -1.0, 0.0, -0.25, 0.75, -0.75, 0.5, 1.0, 0.75, -0.5, 1.0, -0.5, -0.5, 0.5, 1.0, -0.5, -1.0, 1.0, 0.5, 0.25, 0.25, -1.0, 0.0, -0.75, 0.0, 1.0, -1.0, -0.75, 0.0, ]);
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.popDebugGroup();
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder203.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2010.popDebugGroup()
    const array6 = new Float32Array([0.0, -1.0, 0.25, 0.25, 0.0, -1.0, -0.75, 0.0, 0.25, -0.75, 0.25, -0.5, 0.5, 0.5, 1.0, 0.5, 1.0, 1.0, 0.25, -0.75, -0.25, 0.75, 0.25, 0.25, 0.0, -0.25, 0.25, 1.0, 0.25, 1.0, 0.0, -1.0, -0.25, -1.0, -0.75, 0.5, -0.75, 0.75, -0.5, 0.0, -0.75, 1.0, 0.5, -0.25, -0.75, 0.25, 0.25, 1.0, -0.5, -0.5, 1.0, 0.5, 0.5, 0.75, -0.25, 0.75, -1.0, -0.5, 0.0, 0.0, 0.75, -0.5, 1.0, -0.75, 1.0, -1.0, -0.5, 0.75, -0.5, -0.5, -0.5, 0.25, -1.0, 0.0, -0.75, -0.75, 0.0, 0.75, -1.0, 0.75, -0.5, 0.0, 0.25, -1.0, 0.25, -0.5, 0.75, 0.0, -0.5, 0.5, -1.0, -0.75, -0.5, 0.75, 0.5, -0.75, 0.75, -0.75, -0.25, -0.75, ]);
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query200.destroy()
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
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
    compute_pass_encoder2010.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    query204.destroy()
    compute_pass_encoder2020.popDebugGroup()
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const array7 = new Float32Array([0.5, -1.0, -1.0, 0.75, -0.25, 0.75, -1.0, 1.0, 0.25, 0.25, 0.5, -0.75, 0.0, 0.75, 0.25, 0.25, -0.25, -1.0, 0.75, 1.0, 0.25, -0.5, -0.5, 1.0, 0.25, -0.25, 0.0, 0.75, 0.25, 0.0, -0.75, -0.25, -0.5, 0.5, -1.0, 1.0, -0.75, 0.25, -1.0, -0.75, 0.0, 1.0, 0.25, 1.0, 0.5, -0.5, 0.75, -0.75, 0.5, 1.0, -0.25, 0.0, -1.0, 0.25, -0.25, 1.0, 0.5, -0.5, 0.5, 0.0, -0.5, -1.0, -0.5, 0.75, 0.0, -1.0, -0.25, -0.5, 0.5, -1.0, 0.25, 0.25, -0.25, 0.5, -0.25, -1.0, 0.5, 0.5, 1.0, 0.5, -1.0, -0.25, -0.25, -0.5, -1.0, 0.5, -0.75, 0.25, -0.25, -0.5, 0.0, -1.0, -0.5, -0.5, 1.0, 0.25, 0.25, 0.75, -0.25, 0.0, ]);
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    buffer200.destroy()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2010.insertDebugMarker("marker")
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    compute_pass_encoder2010.insertDebugMarker("marker")
    query202.destroy()
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    query205.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query200.destroy()
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    command_encoder203.resolveQuerySet(
        query204,
        0,
        32,
        buffer201,
        0
    )
    query202.destroy()
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    query203.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.queue.submit([command_buffer000, ]);
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    query204.destroy()
    
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.pushErrorScope("out-of-memory");
    
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
    compute_pass_encoder2000.popDebugGroup()
    
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
    
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    query205.destroy()
    const array8 = new Float32Array([-0.75, 0.75, 0.5, 0.25, 0.5, 0.5, -0.25, 0.25, 1.0, -0.25, 0.25, -0.5, -0.5, 0.5, 0.0, 0.5, -0.75, 0.5, 0.75, 0.75, 0.25, 1.0, -0.25, -0.25, -0.75, -0.5, -0.75, -0.5, 1.0, 0.25, 0.5, -0.75, 0.5, 0.0, -0.25, 0.25, 0.5, 0.0, -1.0, -1.0, 0.0, 1.0, -1.0, -0.75, 0.25, -0.5, -0.5, -0.75, -0.25, 0.0, 0.0, 0.75, -1.0, 0.0, -0.25, 0.5, -1.0, 0.0, 0.5, 0.0, -0.5, 0.0, -0.5, -0.5, 1.0, -1.0, 0.0, 0.25, -1.0, 0.0, 0.75, -0.25, 0.25, 0.5, 0.5, -0.5, -0.75, -0.75, -1.0, 0.5, -0.5, 0.75, -0.75, -0.25, 0.25, -1.0, 1.0, 0.75, -1.0, 0.5, 1.0, -0.75, 0.25, -0.5, 0.25, -0.25, -1.0, -0.5, 0.75, 0.25, ]);
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    query203.destroy()
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.pushErrorScope("internal");
    query205.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    query202.destroy()
    query200.destroy()
    
    query203.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    query201.destroy()
    query206.destroy()
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout203]
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
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    command_encoder204.resolveQuerySet(
        query205,
        0,
        32,
        buffer202,
        0
    )
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    render_bundle_encoder200.insertDebugMarker("marker");
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
    query204.destroy()
    query204.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder204.resolveQuerySet(
        query206,
        0,
        32,
        buffer202,
        0
    )
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    compute_pass_encoder2000.popDebugGroup()
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    command_encoder204.resolveQuerySet(
        query205,
        0,
        32,
        buffer202,
        0
    )
    compute_pass_encoder2020.popDebugGroup()
    command_encoder204.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    device50.destroy();
    
    
    command_encoder204.pushDebugGroup("mygroupmarker")
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    query208.destroy()
    query205.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder204.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    command_encoder204.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    query205.destroy()
    command_encoder204.resolveQuerySet(
        query208,
        0,
        32,
        buffer201,
        0
    )
    const array9 = new Float32Array([0.25, 0.25, 0.75, 0.75, -0.5, 0.0, -1.0, -0.75, 0.75, 1.0, 0.75, -0.5, 0.5, 0.25, -1.0, -0.75, 0.25, -0.75, 0.5, -1.0, -0.25, 1.0, -0.25, -0.75, 0.75, -0.5, 1.0, 0.75, 0.0, 0.75, -0.5, 0.0, 0.0, 0.75, 0.75, 1.0, 0.25, 1.0, 1.0, 0.75, 1.0, -1.0, 0.75, -0.25, -0.25, -0.25, -0.75, -0.25, 0.0, -0.5, 1.0, 0.0, 0.25, 0.25, -0.75, -0.5, 0.0, -0.5, -0.25, 0.5, -0.25, 1.0, -0.5, 0.5, -1.0, 0.0, -0.5, 0.0, 0.5, -0.25, 0.25, 0.25, 1.0, 0.0, 0.75, -0.5, 0.0, 1.0, 0.25, -1.0, -0.5, 0.5, -0.75, 0.25, 1.0, 0.0, -0.25, -1.0, 1.0, -0.25, -0.25, 1.0, 1.0, 0.0, 0.75, -0.5, 0.75, -0.75, 0.75, 0.5, ]);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query203.destroy()
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder204.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    device20.queue.submit([]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder204.resolveQuerySet(
        query205,
        0,
        32,
        buffer202,
        0
    )
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder2030.popDebugGroup()
    command_encoder204.resolveQuerySet(
        query206,
        0,
        32,
        buffer201,
        0
    )
    render_bundle_encoder200.popDebugGroup();
    const query209 = device20.createQuerySet({
        label: "query209",
        type: "occlusion",
        count: 32,
    });
    query208.destroy()
    
    query200.destroy()
    
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder204.resolveQuerySet(
        query209,
        0,
        32,
        buffer200,
        0
    )
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder2030.insertDebugMarker("marker")
    const array10 = new Float32Array([0.25, 0.25, -0.5, -0.75, 1.0, 1.0, -0.25, 0.5, 1.0, -0.5, -0.25, 1.0, 0.75, 1.0, 1.0, -0.5, 0.5, -0.75, -0.75, -1.0, -1.0, -1.0, -1.0, 0.75, 0.5, 0.0, 1.0, 0.75, -0.5, -1.0, -0.5, 0.0, 0.5, 0.25, 1.0, 0.5, 0.25, 0.5, -0.75, -0.5, 0.75, -0.5, -0.75, 0.5, -0.75, 0.75, -0.25, -0.25, -1.0, -0.25, 0.5, -0.5, 0.5, -0.25, 0.25, -1.0, 0.25, 1.0, -0.25, 0.5, 1.0, 0.0, 0.25, -0.25, -1.0, -0.5, 0.75, 0.0, -0.75, -0.5, -0.25, 1.0, -0.5, -1.0, 0.25, -0.25, 0.5, -0.5, 0.5, -0.75, 0.75, -0.5, 1.0, 0.5, -0.25, 0.5, 1.0, 0.5, -0.5, -0.5, 0.0, 0.0, -1.0, 0.0, -0.25, 0.75, 1.0, 0.5, 0.0, -0.5, ]);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    const query2010 = device20.createQuerySet({
        label: "query2010",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    query2010.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder204.resolveQuerySet(
        query208,
        0,
        32,
        buffer202,
        0
    )
    
    buffer204.destroy()
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    command_encoder204.resolveQuerySet(
        query209,
        0,
        32,
        buffer202,
        0
    )
    command_encoder204.resolveQuerySet(
        query206,
        0,
        32,
        buffer202,
        0
    )
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder200.resolveQuerySet(
        query206,
        0,
        32,
        buffer202,
        0
    )
    command_encoder204.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    compute_pass_encoder2030.popDebugGroup()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder203.resolveQuerySet(
        query204,
        0,
        32,
        buffer201,
        0
    )
    
    device20.queue.writeBuffer(buffer203, 0, array8, 0, array8.length);
    
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    command_encoder204.resolveQuerySet(
        query208,
        0,
        32,
        buffer204,
        0
    )
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    command_encoder204.clearBuffer(buffer200);
    compute_pass_encoder2010.popDebugGroup()
    render_bundle_encoder200.popDebugGroup();
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    const query2011 = device20.createQuerySet({
        label: "query2011",
        type: "occlusion",
        count: 32,
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    query206.destroy()
    buffer600.destroy()
    
    device70.destroy();
    
    command_encoder205.resolveQuerySet(
        query2011,
        0,
        32,
        buffer202,
        0
    )
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    compute_pass_encoder2050.insertDebugMarker("marker")
    
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    buffer202.destroy()
    
    buffer201.destroy()
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    device20.pushErrorScope("out-of-memory");
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout201]
    });
    device60.pushErrorScope("validation");
    compute_pass_encoder2030.popDebugGroup()
    
    buffer601.destroy()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder205.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    
    
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    buffer301.destroy()
    
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    const query2012 = device20.createQuerySet({
        label: "query2012",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout205]
    });
    const query2013 = device20.createQuerySet({
        label: "query2013",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.popDebugGroup();
    
    command_encoder204.resolveQuerySet(
        query205,
        0,
        32,
        buffer202,
        0
    )
    command_encoder203.resolveQuerySet(
        query204,
        0,
        32,
        buffer201,
        0
    )
    const array11 = new Float32Array([0.5, -0.25, 0.75, 0.25, -0.5, 0.5, -0.25, -0.75, 0.0, 0.5, 0.5, 1.0, 0.5, 0.25, 0.75, 1.0, 0.0, -1.0, -0.5, -0.25, -1.0, 0.0, -0.75, -0.5, -0.25, -0.25, 0.0, -0.5, 0.75, -1.0, 1.0, -0.75, 0.5, -0.75, -0.25, -1.0, -0.25, -0.75, -0.25, 1.0, -0.5, 1.0, -0.75, -0.25, 1.0, -1.0, 0.75, -0.25, 1.0, -0.25, 0.5, -0.75, -0.25, -0.75, -0.5, -0.25, 1.0, -1.0, 0.0, -0.25, 0.25, -1.0, -0.75, -0.75, 1.0, 0.0, -1.0, -0.75, -1.0, 0.25, -0.25, 0.75, 0.5, -0.25, 0.75, -0.5, 0.5, -0.25, 0.0, 0.5, 0.5, 1.0, 1.0, -1.0, 0.75, 0.5, -1.0, 0.5, -0.75, 0.25, 0.25, 0.5, 1.0, -0.75, 0.5, 0.25, -0.75, 1.0, -1.0, 0.25, ]);
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    query2012.destroy()
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    query202.destroy()
    
    const compute_pass_encoder2041 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2041" });
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout205]
    });
    query209.destroy()
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout205]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    device50.pushErrorScope("validation");
    query205.destroy()
    compute_pass_encoder2030.insertDebugMarker("marker")
    
    query209.destroy()
    query201.destroy()
    command_encoder204.resolveQuerySet(
        query2012,
        0,
        32,
        buffer202,
        0
    )
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    query201.destroy()
    query208.destroy()
    
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const bind_group_layout207 = device20.createBindGroupLayout({ 
        label: "bind_group_layout207",
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
    
    
    command_encoder206.resolveQuerySet(
        query207,
        0,
        32,
        buffer202,
        0
    )
    command_encoder206.resolveQuerySet(
        query2011,
        0,
        32,
        buffer202,
        0
    )
    compute_pass_encoder2030.insertDebugMarker("marker")
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    command_encoder206.resolveQuerySet(
        query208,
        0,
        32,
        buffer202,
        0
    )
    
    command_encoder206.resolveQuerySet(
        query2012,
        0,
        32,
        buffer201,
        0
    )
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    command_encoder206.resolveQuerySet(
        query206,
        0,
        32,
        buffer204,
        0
    )
    compute_pass_encoder2050.insertDebugMarker("marker")
    query207.destroy()
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout2017 = device20.createPipelineLayout({ 
        label: "pipeline_layout2017",
        bindGroupLayouts: [bind_group_layout206]
    });
    
    
    
    query204.destroy()
    const pipeline_layout2018 = device20.createPipelineLayout({ 
        label: "pipeline_layout2018",
        bindGroupLayouts: [bind_group_layout206]
    });
    query401.destroy()
    command_encoder206.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    query2010.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout2019 = device20.createPipelineLayout({ 
        label: "pipeline_layout2019",
        bindGroupLayouts: [bind_group_layout204]
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    command_encoder602.pushDebugGroup("mygroupmarker")
    command_encoder204.popDebugGroup()
    query200.destroy()
    device60.pushErrorScope("validation");
    const pipeline_layout2020 = device20.createPipelineLayout({ 
        label: "pipeline_layout2020",
        bindGroupLayouts: [bind_group_layout205]
    });
    command_encoder203.resolveQuerySet(
        query208,
        0,
        32,
        buffer200,
        0
    )
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const pipeline_layout2021 = device20.createPipelineLayout({ 
        label: "pipeline_layout2021",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder2060.insertDebugMarker("marker")
    const array12 = new Float32Array([0.75, -1.0, 0.0, 0.5, -0.25, 0.5, 0.25, -0.75, 0.25, 1.0, 0.75, 0.75, 0.5, -0.5, 0.5, -0.5, 0.5, -0.75, 0.0, 0.75, -1.0, 0.75, 0.0, 0.75, -1.0, -1.0, -0.5, 1.0, 0.75, -0.25, -0.75, 0.75, -0.75, -0.75, -0.75, -0.25, -0.75, 0.25, 0.25, 0.75, -0.5, -1.0, 0.25, -0.25, -0.25, -1.0, -0.25, 0.5, 0.0, 0.5, 0.5, -0.75, -0.5, -0.75, -0.75, -1.0, 0.25, 0.0, -0.5, 1.0, 0.0, -0.25, -0.5, 0.5, 0.0, -1.0, 0.5, 0.5, 0.75, -0.5, 0.25, 0.25, -0.75, -0.75, -0.5, 1.0, 0.75, -0.75, -0.75, 0.0, 0.25, -1.0, 0.25, -0.25, -0.5, -0.5, 1.0, -0.75, 0.5, -1.0, 1.0, -0.5, -0.5, 0.0, 0.25, 0.5, -0.75, 0.75, 0.5, 0.25, ]);
    
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    command_encoder205.resolveQuerySet(
        query205,
        0,
        32,
        buffer202,
        0
    )
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2030.popDebugGroup()
    command_encoder103.popDebugGroup()
    command_encoder602.popDebugGroup()
    compute_pass_encoder2050.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    command_encoder200.popDebugGroup()
    const command_buffer202 = command_encoder202.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([]);
    command_encoder203.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer202, ]);
    const command_buffer600 = command_encoder600.finish();
    const command_buffer602 = command_encoder602.finish();
    compute_pass_encoder2020.popDebugGroup()
    device20.queue.submit([]);
    device60.queue.submit([command_buffer602, ]);
    const command_buffer204 = command_encoder204.finish();
    device30.queue.submit([]);
    compute_pass_encoder2020.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    device60.queue.submit([]);
    compute_pass_encoder2010.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2020.popDebugGroup()
    const command_buffer206 = command_encoder206.finish();
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder2060.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([]);
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder2000.popDebugGroup()
    const command_buffer205 = command_encoder205.finish();
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2060.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer205, command_buffer206, ]);
    device60.queue.submit([command_buffer602, ]);
    compute_pass_encoder2041.popDebugGroup()
    device20.queue.submit([command_buffer204, command_buffer205, ]);
    compute_pass_encoder2041.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder6010.popDebugGroup()
    compute_pass_encoder6010.popDebugGroup()
    compute_pass_encoder2060.popDebugGroup()
    device20.queue.submit([command_buffer206, ]);
    device20.queue.submit([command_buffer205, ]);
    const command_buffer203 = command_encoder203.finish();
    const command_buffer601 = command_encoder601.finish();
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder2050.popDebugGroup()
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder2041.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2050.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder6010.popDebugGroup()
    device20.queue.submit([command_buffer205, ]);
    device60.queue.submit([command_buffer600, command_buffer601, command_buffer602, ]);
    compute_pass_encoder2040.popDebugGroup()
    device00.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
}