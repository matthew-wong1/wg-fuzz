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
    const array0 = new Float32Array([-0.5, 0.25, 0.75, -1.0, 0.5, 0.25, 1.0, 0.0, 1.0, -0.25, 0.25, 0.75, -0.5, -0.5, 0.25, 0.75, 0.0, 1.0, 0.5, 0.25, 0.5, 0.5, 0.5, -0.5, -0.25, 0.5, -0.75, -0.75, 1.0, 0.0, 0.5, 0.25, -0.75, 0.5, 1.0, 0.75, -0.5, -1.0, 0.75, -0.25, 0.0, -0.75, 0.5, 0.5, -0.5, 0.75, 0.25, 0.75, 0.25, 0.75, 0.75, 0.75, 0.0, -0.75, 0.25, 0.75, 0.5, -1.0, 0.25, -0.25, 0.25, 0.0, 0.75, 0.75, 1.0, 0.75, 0.5, 0.0, -0.5, 1.0, -0.25, 0.75, -0.25, 1.0, 0.75, 0.0, -0.75, 0.0, 0.25, 0.25, -0.75, -1.0, 0.75, 1.0, 1.0, -0.5, 0.0, 0.0, 1.0, -0.5, -0.5, -0.5, -0.25, -0.25, -1.0, -0.75, -0.25, 1.0, -1.0, 1.0, ]);
    const array1 = new Float32Array([0.0, -0.25, 0.5, -0.75, -0.75, -1.0, 0.0, -1.0, 0.5, -0.25, 1.0, 1.0, 0.5, -0.5, 0.0, 0.5, -0.75, 0.25, 1.0, -1.0, -0.5, -1.0, 0.5, 1.0, -1.0, 0.25, 0.25, 0.25, 0.75, 0.25, -0.25, -0.5, -0.75, -0.75, -1.0, 0.25, -0.25, 0.0, 0.5, -0.25, 0.75, 0.25, 0.5, -0.5, 1.0, 0.5, 0.75, -0.75, -0.75, -0.5, -0.75, 1.0, 0.75, -0.75, 0.0, 0.5, -0.5, 1.0, 0.5, 0.25, -0.75, 0.5, -0.25, -1.0, 0.75, -1.0, 1.0, -0.75, -0.75, 0.75, 0.5, -1.0, 0.5, 0.0, 0.5, 0.75, 0.0, -1.0, -0.5, -0.25, 0.75, -1.0, 0.75, -0.5, -0.25, 1.0, -0.75, -0.5, -0.25, 0.25, -0.5, -1.0, -0.25, 0.25, -0.25, -0.75, 0.5, -0.75, 1.0, 0.25, ]);
    
    const array2 = new Float32Array([0.25, -0.5, 0.5, 0.0, -0.25, 0.25, 0.25, 0.75, 0.75, 0.75, 0.0, 0.75, 0.5, 0.75, 0.0, -0.25, -0.75, -0.5, 0.0, -0.25, -0.5, 0.25, 1.0, 0.5, 0.25, 0.25, 0.0, -0.75, -0.75, -0.75, -0.75, -0.75, -0.5, 0.75, -0.75, 0.5, -0.25, 0.0, -1.0, 0.25, 0.25, 1.0, -0.75, -0.25, -0.5, 1.0, 0.75, 1.0, -0.25, 0.25, 0.0, 0.75, 1.0, -1.0, -1.0, -0.25, 0.25, 0.75, -0.75, 0.0, 0.25, 1.0, 0.5, -0.75, -0.75, 0.25, 1.0, 0.75, 0.5, 0.75, 0.0, 0.25, -0.5, 0.0, 0.5, 0.75, 0.5, 1.0, 1.0, -1.0, -0.5, -0.5, 1.0, 0.5, 0.5, 0.25, -0.75, -0.5, -0.5, 1.0, -0.25, 0.0, 0.25, -0.75, -0.75, -0.75, 0.0, -0.75, -0.25, -0.25, ]);
    
    
    
    
    const array3 = new Float32Array([1.0, -0.75, 0.75, 0.0, -0.25, 0.0, 0.0, 1.0, -1.0, 0.25, 0.25, 1.0, -0.75, -0.5, -0.5, -0.5, -0.5, 1.0, -0.25, -1.0, -0.5, -0.25, -0.5, 0.25, 0.75, 1.0, 0.25, 0.5, 0.0, 0.0, 0.0, 0.5, -0.75, 0.75, 0.75, 0.0, 1.0, 0.0, 0.75, -0.25, -0.75, 0.25, 0.75, 0.0, 0.5, -0.5, -0.5, -0.75, 1.0, 0.75, 0.75, -0.5, 0.75, -0.25, 0.0, 0.75, 0.0, 0.0, -1.0, 1.0, 0.25, -0.25, -0.75, -0.75, -1.0, 0.5, 0.25, -0.25, 0.25, 0.25, -0.25, -0.25, 0.75, 1.0, 0.0, -0.25, 0.0, 1.0, 0.0, -1.0, -0.75, -0.25, 0.75, 0.25, 0.75, -1.0, 0.25, 0.75, 0.75, -0.75, -0.25, -0.75, 0.5, -0.5, 0.75, -1.0, 0.75, -1.0, 0.5, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array4 = new Float32Array([0.25, 0.5, 0.0, 0.5, 0.5, 0.0, -1.0, -1.0, 0.25, 1.0, 0.5, 0.0, 1.0, 0.5, 0.75, -0.75, 0.25, 0.75, -0.75, -0.25, -1.0, 0.5, 1.0, 0.25, -0.25, 1.0, -1.0, 0.5, -0.25, 0.25, 0.25, -0.25, 0.75, 1.0, 0.25, 1.0, 1.0, 0.0, 0.75, -0.25, -0.25, -1.0, 1.0, -1.0, 0.75, -0.75, -0.5, -0.25, 1.0, 0.0, 1.0, 0.25, 0.0, -1.0, -0.5, -0.75, -1.0, -0.75, 0.0, -0.25, -1.0, 0.75, -0.25, -0.5, -0.25, 0.75, -0.75, -0.25, 0.5, -0.5, -0.5, -0.25, -0.5, 0.75, -0.25, -0.75, -0.25, 0.75, -0.75, 0.75, -0.75, 0.0, 0.5, 0.25, 0.0, 1.0, 1.0, -1.0, -0.25, 0.5, 0.75, 0.75, 1.0, -0.25, -1.0, -0.75, -0.5, 0.0, -0.25, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    
    
    
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    device10.pushErrorScope("out-of-memory");
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const array5 = new Float32Array([1.0, 0.75, 0.25, -0.75, 0.5, -0.25, 0.25, -1.0, 0.75, 0.25, 1.0, -0.5, -0.5, -0.25, 1.0, -1.0, -0.75, 0.25, 0.0, 0.25, 0.5, 0.25, 1.0, 1.0, -0.5, -0.5, 0.0, -1.0, 0.0, -0.5, 1.0, 1.0, 0.0, 0.75, 0.25, 0.25, -1.0, 1.0, -0.25, 1.0, -0.25, 0.75, 1.0, 0.5, -0.25, -1.0, -1.0, 0.0, 0.75, -1.0, -1.0, 0.75, 0.5, 0.75, -0.75, 1.0, -1.0, 1.0, 0.5, 1.0, 0.75, 0.25, -0.25, 0.5, 0.5, -0.5, 0.25, 0.5, 1.0, 0.0, 0.25, -0.75, 0.5, 0.75, -1.0, 0.25, 0.5, -0.5, -0.25, 0.5, -0.25, -1.0, 0.0, -0.25, -0.5, 0.5, 0.75, 0.25, -0.5, 1.0, -1.0, 1.0, 0.0, 0.75, -1.0, 0.5, -0.25, 0.5, -0.5, 0.5, ]);
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    buffer201.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    command_encoder200.insertDebugMarker("mymarker");
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder200.popDebugGroup()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
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
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    query200.destroy()
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
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    command_encoder200.insertDebugMarker("mymarker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    buffer200.destroy()
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.popDebugGroup()
    query200.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    buffer100.destroy()
    
    query201.destroy()
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    compute_pass_encoder2010.popDebugGroup()
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder100.insertDebugMarker("mymarker");
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    const array6 = new Float32Array([-0.5, -0.75, 0.0, 1.0, 0.5, 0.75, 0.25, -0.25, -0.75, -0.25, 0.5, 0.75, -0.25, 0.25, -1.0, 1.0, 0.0, 0.5, 0.5, 0.25, -0.5, -0.75, 0.75, -0.5, 1.0, -0.5, 0.25, 0.75, 0.25, 1.0, -1.0, -1.0, 0.5, -1.0, -0.5, -0.5, 0.0, 1.0, 0.75, -0.25, -1.0, -0.75, 0.75, -0.75, 0.0, 0.25, -0.75, 0.5, 1.0, 1.0, 0.75, 0.5, -0.5, -0.5, -0.5, -1.0, 1.0, 0.0, -0.75, -1.0, 0.25, -0.5, 1.0, 0.75, -0.25, 0.0, -0.5, -0.75, 0.5, 0.5, 0.25, -0.75, -0.75, -0.5, 0.0, -1.0, -0.25, 0.25, 0.75, 0.25, -0.75, 0.75, -1.0, 1.0, -0.75, 0.25, -0.25, 1.0, -0.25, 0.75, 0.5, 0.25, 0.25, 0.25, -0.75, -0.5, -0.75, 0.25, -1.0, 0.5, ]);
    command_encoder102.insertDebugMarker("mymarker");
    const array7 = new Float32Array([-0.25, -0.75, 0.25, 0.25, -0.5, 0.0, -0.25, 1.0, 0.75, -1.0, -1.0, 0.75, -1.0, 1.0, 0.75, 1.0, -0.25, -0.25, 0.25, -0.5, 0.0, 0.75, -0.75, 0.75, -0.75, 0.5, -0.25, 1.0, 0.75, 0.0, 0.5, 0.75, 1.0, -1.0, 0.25, -0.25, 0.25, -0.25, 0.5, -0.5, 1.0, 0.75, 0.0, -0.5, 0.0, 0.75, -1.0, -0.25, 0.75, -1.0, -0.75, 0.5, -1.0, -0.75, 1.0, 0.5, 0.75, 0.25, -0.25, 0.25, 0.0, 0.5, 1.0, 0.5, -0.5, 0.75, 0.25, 0.75, 1.0, -0.25, -0.5, 0.75, 0.75, 0.75, -1.0, -0.75, -1.0, 0.5, 1.0, 0.75, 0.75, -0.75, -0.5, -0.25, 0.75, -0.25, 0.0, -0.5, -1.0, -1.0, -0.5, 0.0, -0.75, -1.0, -0.25, -1.0, 0.25, 0.0, -0.5, 0.0, ]);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
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
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const array8 = new Float32Array([1.0, -0.25, 0.5, 1.0, 0.0, 0.0, -1.0, -0.25, -0.75, 1.0, -1.0, -0.25, 0.75, -0.75, 0.0, 0.0, 0.0, -0.25, 0.0, -0.75, -1.0, 0.0, 0.5, -0.75, -0.75, -0.75, -0.75, 0.5, 0.5, 0.75, 0.0, -0.75, -0.5, -0.25, -0.75, -0.5, -0.75, -0.25, 0.5, -0.5, 1.0, -0.75, -0.75, -1.0, 0.0, -1.0, 0.0, 0.75, -0.25, 0.5, -0.5, -0.75, 0.75, 0.75, 0.5, 0.25, -1.0, -0.75, 0.5, -0.5, 0.75, -0.75, 0.5, -0.25, 0.0, 0.75, 0.25, 0.75, -0.5, 0.75, -1.0, 0.0, 0.25, 0.0, 0.25, -0.25, 0.25, 0.0, -0.75, -1.0, -1.0, -0.5, -0.5, -0.5, -0.75, -0.75, 0.75, -0.75, 0.5, 0.75, 0.0, -0.25, 0.0, -0.75, -0.75, 0.5, 0.5, -1.0, 0.75, 0.5, ]);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    command_encoder100.insertDebugMarker("mymarker");
    
    
    command_encoder101.insertDebugMarker("mymarker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
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
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    render_bundle_encoder200.popDebugGroup();
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    query201.destroy()
    
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    compute_pass_encoder2010.insertDebugMarker("marker")
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
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
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    command_encoder102.insertDebugMarker("mymarker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    compute_pass_encoder2030.insertDebugMarker("marker")
    command_encoder202.resolveQuerySet(
        query203,
        0,
        32,
        buffer200,
        0
    )
    compute_pass_encoder2010.popDebugGroup()
    render_bundle_encoder101.popDebugGroup();
    command_encoder202.resolveQuerySet(
        query201,
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
    command_encoder104.insertDebugMarker("mymarker");
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    query204.destroy()
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    compute_pass_encoder2000.popDebugGroup()
    
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    query100.destroy()
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    query202.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    query204.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    query102.destroy()
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder201.popDebugGroup();
    compute_pass_encoder2030.insertDebugMarker("marker")
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout100]
    });
    query204.destroy()
    query204.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    query203.destroy()
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder2010.insertDebugMarker("marker")
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    compute_pass_encoder1030.insertDebugMarker("marker")
    command_encoder204.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    command_encoder204.resolveQuerySet(
        query205,
        0,
        32,
        buffer200,
        0
    )
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    command_encoder204.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1040.popDebugGroup()
    
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout102]
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    compute_pass_encoder1040.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    
    command_encoder205.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    query100.destroy()
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
    query201.destroy()
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    
    command_encoder205.insertDebugMarker("mymarker");
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
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
    
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_bundle_encoder102.popDebugGroup();
    command_encoder204.resolveQuerySet(
        query204,
        0,
        32,
        buffer200,
        0
    )
    command_encoder204.resolveQuerySet(
        query206,
        0,
        32,
        buffer202,
        0
    )
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    query101.destroy()
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    
    command_encoder204.resolveQuerySet(
        query205,
        0,
        32,
        buffer200,
        0
    )
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout202]
    });
    command_encoder204.resolveQuerySet(
        query203,
        0,
        32,
        buffer202,
        0
    )
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
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
    const bind_group_layout208 = device20.createBindGroupLayout({ 
        label: "bind_group_layout208",
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
    const array9 = new Float32Array([-0.5, -1.0, 0.25, -0.25, 1.0, -1.0, 0.5, -0.75, 0.5, -0.25, -0.75, 0.25, -0.25, -0.25, 0.75, 1.0, 0.75, -0.75, -0.75, 0.75, -1.0, 0.75, 1.0, -0.75, 0.5, 0.75, 1.0, 0.25, -1.0, 0.75, -1.0, 0.5, 1.0, 0.25, 0.25, 0.5, -1.0, 0.25, -0.5, 0.0, 0.5, 0.5, 0.75, 0.5, -0.5, -0.25, -1.0, 0.25, -0.25, 0.75, 0.0, 0.75, -0.75, 0.75, 0.25, -0.5, 0.5, 0.5, -0.25, -0.25, -1.0, -0.5, 0.5, -0.5, 0.0, 0.0, 0.5, -0.5, -0.5, 0.0, 0.75, -0.75, 0.75, -0.5, 0.25, -0.5, -1.0, 1.0, 1.0, 0.5, 0.25, -0.75, -0.5, 0.25, 1.0, 0.25, -0.75, 0.25, -0.25, 1.0, 0.75, 0.25, 0.0, 0.75, 0.0, -1.0, 0.75, -0.25, -0.25, 0.75, ]);
    query100.destroy()
    command_encoder204.resolveQuerySet(
        query206,
        0,
        32,
        buffer200,
        0
    )
    
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    command_encoder204.resolveQuerySet(
        query205,
        0,
        32,
        buffer200,
        0
    )
    device20.pushErrorScope("validation");
    buffer203.destroy()
    query203.destroy()
    
    compute_pass_encoder2050.insertDebugMarker("marker")
    compute_pass_encoder1040.insertDebugMarker("marker")
    command_encoder204.insertDebugMarker("mymarker");
    compute_pass_encoder2020.insertDebugMarker("marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout101]
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
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
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    
    query104.destroy()
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    buffer202.destroy()
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    command_encoder204.resolveQuerySet(
        query205,
        0,
        32,
        buffer202,
        0
    )
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder202.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout104]
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    query202.destroy()
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout102]
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    query100.destroy()
    
    buffer204.destroy()
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout205]
    });
    command_encoder204.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout207]
    });
    command_encoder204.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    command_encoder204.resolveQuerySet(
        query206,
        0,
        32,
        buffer200,
        0
    )
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const bind_group_layout209 = device20.createBindGroupLayout({ 
        label: "bind_group_layout209",
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
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    
    command_encoder204.resolveQuerySet(
        query203,
        0,
        32,
        buffer202,
        0
    )
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout202]
    });
    query204.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout207]
    });
    command_encoder105.pushDebugGroup("mygroupmarker")
    command_encoder204.insertDebugMarker("mymarker");
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout208]
    });
    compute_pass_encoder2030.popDebugGroup()
    
    query202.destroy()
    query204.destroy()
    
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    command_encoder204.resolveQuerySet(
        query205,
        0,
        32,
        buffer202,
        0
    )
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    command_encoder204.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    query104.destroy()
    const pipeline_layout2017 = device20.createPipelineLayout({ 
        label: "pipeline_layout2017",
        bindGroupLayouts: [bind_group_layout201]
    });
    query201.destroy()
    compute_pass_encoder2030.insertDebugMarker("marker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder1020.popDebugGroup()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder204.resolveQuerySet(
        query205,
        0,
        32,
        buffer200,
        0
    )
    
    query101.destroy()
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder204.resolveQuerySet(
        query205,
        0,
        32,
        buffer202,
        0
    )
    
    
    
    render_bundle_encoder200.popDebugGroup();
    
    const pipeline_layout2018 = device20.createPipelineLayout({ 
        label: "pipeline_layout2018",
        bindGroupLayouts: [bind_group_layout208]
    });
    compute_pass_encoder2030.insertDebugMarker("marker")
    render_bundle_encoder101.popDebugGroup();
    command_encoder204.insertDebugMarker("mymarker");
    compute_pass_encoder1010.popDebugGroup()
    command_encoder204.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    query100.destroy()
    query205.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    command_encoder204.resolveQuerySet(
        query206,
        0,
        32,
        buffer202,
        0
    )
    
    
    query203.destroy()
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout102]
    });
    command_encoder206.resolveQuerySet(
        query206,
        0,
        32,
        buffer200,
        0
    )
    
    command_encoder105.insertDebugMarker("mymarker");
    query206.destroy()
    device40.destroy();
    command_encoder204.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    const pipeline_layout1023 = device10.createPipelineLayout({ 
        label: "pipeline_layout1023",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout1024 = device10.createPipelineLayout({ 
        label: "pipeline_layout1024",
        bindGroupLayouts: [bind_group_layout106]
    });
    command_encoder204.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    const pipeline_layout1025 = device10.createPipelineLayout({ 
        label: "pipeline_layout1025",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder105.popDebugGroup()
    
    command_encoder105.pushDebugGroup("mygroupmarker")
    
    command_encoder204.resolveQuerySet(
        query205,
        0,
        32,
        buffer202,
        0
    )
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    command_encoder206.resolveQuerySet(
        query206,
        0,
        32,
        buffer200,
        0
    )
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    const pipeline_layout2019 = device20.createPipelineLayout({ 
        label: "pipeline_layout2019",
        bindGroupLayouts: [bind_group_layout206]
    });
    
    const pipeline_layout1026 = device10.createPipelineLayout({ 
        label: "pipeline_layout1026",
        bindGroupLayouts: [bind_group_layout100]
    });
    query202.destroy()
    query103.destroy()
    command_encoder206.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    command_encoder206.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    command_encoder207.resolveQuerySet(
        query203,
        0,
        32,
        buffer200,
        0
    )
    const pipeline_layout1027 = device10.createPipelineLayout({ 
        label: "pipeline_layout1027",
        bindGroupLayouts: [bind_group_layout104]
    });
    const pipeline_layout1028 = device10.createPipelineLayout({ 
        label: "pipeline_layout1028",
        bindGroupLayouts: [bind_group_layout106]
    });
    
    command_encoder204.resolveQuerySet(
        query202,
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
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query103.destroy()
    command_encoder208.resolveQuerySet(
        query206,
        0,
        32,
        buffer200,
        0
    )
    const pipeline_layout1029 = device10.createPipelineLayout({ 
        label: "pipeline_layout1029",
        bindGroupLayouts: [bind_group_layout103]
    });
    query205.destroy()
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    command_encoder204.resolveQuerySet(
        query204,
        0,
        32,
        buffer200,
        0
    )
    
    command_encoder208.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    command_encoder208.resolveQuerySet(
        query205,
        0,
        32,
        buffer200,
        0
    )
    compute_pass_encoder1000.insertDebugMarker("marker")
    command_encoder204.resolveQuerySet(
        query206,
        0,
        32,
        buffer202,
        0
    )
    command_encoder207.resolveQuerySet(
        query205,
        0,
        32,
        buffer202,
        0
    )
    compute_pass_encoder2050.insertDebugMarker("marker")
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    command_encoder206.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    command_encoder204.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder2050.popDebugGroup()
}