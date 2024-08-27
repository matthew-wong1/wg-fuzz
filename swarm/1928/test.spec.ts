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
    const array0 = new Float32Array([-0.5, 0.75, -0.25, 0.25, -0.25, -0.75, -1.0, -1.0, 0.25, 0.0, -0.25, 0.75, -1.0, 0.25, -0.5, 0.25, 0.0, -0.5, 0.25, -0.25, -1.0, -1.0, 1.0, -0.25, -0.75, 0.25, -0.75, -0.5, 0.5, 0.25, -0.25, 0.0, -1.0, -1.0, -1.0, 1.0, -0.25, 0.0, 1.0, -0.75, -0.75, 0.25, -0.25, 0.5, 0.75, 0.25, 1.0, -0.75, 0.75, -1.0, 0.75, 1.0, 0.25, -0.5, 0.5, 0.5, 0.25, 1.0, -1.0, 1.0, -0.75, 0.25, -0.75, 0.75, -1.0, 0.5, 0.75, -0.75, 0.25, 0.0, -0.5, -1.0, -0.25, -0.25, -0.25, -1.0, 0.0, -0.25, -0.75, 0.75, -0.75, 0.25, -0.5, 0.5, 1.0, -0.25, 1.0, 1.0, 0.0, -0.75, -1.0, 0.0, 0.5, 0.5, -0.25, 0.5, 1.0, -1.0, -0.25, 0.5, ]);
    
    
    const array1 = new Float32Array([1.0, -1.0, 1.0, 0.0, -0.5, -0.5, 0.5, -1.0, 0.25, -0.25, 1.0, -0.5, -0.5, 0.25, 0.75, -0.5, 0.5, 0.5, 1.0, 0.25, -1.0, -0.5, 0.75, 1.0, 1.0, 0.5, 0.5, -1.0, -0.5, 0.5, 0.25, 0.75, 0.25, -1.0, 0.0, -1.0, -1.0, 0.25, -0.25, -0.25, 0.25, 0.0, 0.75, 0.75, 0.0, -0.5, -0.25, 0.5, 0.5, 1.0, -0.5, -0.25, 1.0, 0.0, -0.75, 0.5, -1.0, 0.5, -0.25, 0.75, 0.25, 0.5, 0.5, -0.25, -0.25, 0.5, 0.0, 1.0, -1.0, 0.75, -0.75, -0.75, -0.25, -0.5, -0.5, 0.5, -0.25, 0.75, -0.75, 0.0, 0.0, -0.75, -0.5, -0.5, -0.75, -0.25, -1.0, 0.75, 0.5, 0.0, -0.25, -0.25, -0.5, -0.5, 1.0, -0.5, 0.25, 0.25, 0.75, 1.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array2 = new Float32Array([0.75, -0.5, 0.25, 1.0, 0.5, 0.75, -1.0, -1.0, -0.25, 0.0, 0.5, -1.0, 1.0, -0.75, -0.5, 0.75, -0.75, -1.0, -0.5, 0.0, 0.5, -0.5, -0.75, -0.5, 0.25, 0.5, -0.5, 1.0, -0.75, -0.25, 0.5, -0.5, -1.0, -0.5, -0.5, -0.25, -0.75, 0.25, -0.75, 1.0, 0.0, -0.75, 0.25, 1.0, -1.0, -0.25, 1.0, -0.25, 0.25, 0.25, -0.25, -1.0, -0.75, -0.25, -0.5, 0.75, -0.5, 0.25, -0.75, -1.0, -0.75, 0.0, 0.25, -1.0, -0.5, -1.0, 0.25, 0.0, 0.0, 1.0, 0.5, -0.5, 1.0, 0.75, 1.0, -0.75, -0.25, 0.75, 0.25, 0.0, -0.25, -0.5, 0.0, 0.25, -0.25, 0.5, 0.0, 0.25, 0.0, 0.5, 0.25, 1.0, 0.0, -0.5, -0.25, 0.75, -0.5, -0.5, 0.75, 0.0, ]);
    
    const array3 = new Float32Array([0.75, 0.25, 0.25, 0.75, 1.0, -1.0, -0.75, -0.5, 0.75, 0.75, -0.75, 1.0, -0.25, 0.25, 1.0, 0.75, 0.25, -0.25, 0.5, 0.0, -0.75, 0.25, -1.0, 1.0, -0.5, -0.5, 0.0, 1.0, 0.25, 0.0, 1.0, 0.75, -1.0, 0.0, 0.5, 0.0, -0.25, -1.0, 1.0, 0.25, -0.5, 0.5, -0.5, 0.5, -0.5, 0.0, 0.5, -0.25, -0.25, 0.25, -0.5, -0.5, 0.0, 0.25, -0.5, -0.75, 0.5, 0.0, 0.5, -0.75, 1.0, -0.75, 0.25, -1.0, 0.5, 0.25, -0.75, -1.0, -1.0, -0.75, 0.0, 0.0, -1.0, 0.5, 0.75, -0.75, 0.75, 1.0, 0.5, -1.0, 0.25, -0.5, -1.0, -0.25, -0.5, 0.5, 0.5, 0.75, 0.25, -0.75, 0.0, 0.75, 0.0, 0.0, 1.0, 0.25, 0.25, 1.0, 1.0, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array4 = new Float32Array([0.25, 0.5, -1.0, -1.0, 1.0, 0.5, 0.75, 0.75, 0.0, 1.0, 0.25, -0.25, 0.5, 0.5, 0.25, 0.0, -0.5, 0.0, -0.25, 0.0, 0.0, 0.25, 0.75, -0.5, 0.0, 1.0, -0.5, -1.0, -0.75, 0.25, 0.5, 0.25, 0.25, 0.0, -0.75, 0.0, -1.0, 0.5, -0.75, 0.25, 0.0, 0.5, -0.5, -0.75, 0.25, 1.0, -0.75, 1.0, 0.0, -1.0, -0.75, 0.25, 0.0, 0.5, -0.25, 0.0, 0.0, 0.5, 0.25, 0.25, 0.0, 0.75, 0.75, -0.75, -0.75, -0.25, 0.0, -0.25, -0.25, 0.25, 0.0, 0.25, -0.75, 0.25, -0.5, 0.75, 1.0, -0.75, -1.0, -0.75, -0.75, -1.0, 0.0, -0.25, -0.75, 1.0, 1.0, 0.25, -0.5, 0.0, 0.5, -0.5, -0.25, 0.25, 0.25, -0.25, 0.75, -1.0, -0.75, 0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer000.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder000.insertDebugMarker("marker");
    device20.queue.submit([]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const array5 = new Float32Array([0.5, -0.5, -0.75, -0.75, -0.25, -0.75, -0.25, 0.5, -0.75, 0.25, -0.5, 0.0, 0.25, -0.25, 0.5, 0.75, -0.75, 0.0, 0.0, 0.25, 0.25, 0.5, -0.75, -0.5, 0.0, 0.75, 0.75, 0.75, 0.0, 0.75, 1.0, -0.25, -0.25, 1.0, 0.0, 0.75, 0.25, 0.25, -0.75, -1.0, -0.75, 0.5, -0.5, 0.5, 0.25, 0.75, 0.25, 0.25, 0.75, 0.25, 0.25, 1.0, -0.25, 0.25, 0.5, -0.75, 0.5, -1.0, 0.0, 0.5, -0.25, 0.25, 0.0, 0.75, 0.5, -0.5, -1.0, 0.0, 0.25, 1.0, 0.25, -0.25, -0.75, -0.25, 0.25, -0.5, -0.5, 0.75, 0.5, -0.5, -1.0, -1.0, 0.75, 1.0, 0.5, -0.5, -0.25, -0.25, 0.75, -1.0, 1.0, 0.5, 0.5, -0.5, -0.25, 0.5, -0.75, 1.0, 1.0, 0.5, ]);
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    device20.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    buffer300.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array6 = new Float32Array([-1.0, 0.0, 0.25, -0.25, -0.75, 0.5, -0.75, 0.75, -0.25, 1.0, 0.25, 1.0, -0.5, -1.0, 0.25, 0.25, -1.0, -0.5, 1.0, -0.75, 0.0, -1.0, 0.25, 0.0, 0.75, -0.25, 0.5, -0.25, 0.0, -0.5, 1.0, 1.0, -0.5, -0.75, 1.0, -0.25, 0.25, 1.0, 0.25, 1.0, 1.0, 0.0, 0.0, 0.75, 0.0, 0.25, 0.5, 0.0, -0.5, 1.0, 0.25, 0.75, 0.25, -0.25, -0.75, -0.5, 1.0, 0.5, 0.0, 0.0, 0.5, 0.25, 0.0, 0.0, 0.0, 0.0, 1.0, 0.25, 0.75, -0.5, 0.0, 0.5, 0.0, 0.5, -0.5, -0.75, -1.0, 0.0, -0.5, 0.75, 1.0, 0.0, -1.0, 0.75, -0.25, -0.75, 0.75, 0.25, -0.5, -0.25, 0.5, -0.5, -1.0, 0.25, -0.75, 0.75, 0.25, 0.25, 0.75, 1.0, ]);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.popDebugGroup();
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    command_encoder300.clearBuffer(buffer300);
    command_encoder300.clearBuffer(buffer300);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    command_encoder300.insertDebugMarker("mymarker");
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
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const array7 = new Float32Array([-0.75, 1.0, 0.25, 0.25, 0.0, -0.25, -0.75, -0.75, 0.5, 0.75, 0.5, 0.25, 1.0, -1.0, 0.0, 0.75, -0.5, 0.25, -0.75, 0.25, 0.0, -0.5, -1.0, -1.0, 0.0, -0.5, 0.5, 0.5, 0.25, 1.0, -0.25, 0.25, 1.0, 0.0, 0.25, 0.0, -0.5, -0.75, -0.75, -0.75, 0.25, 0.75, -0.75, 1.0, 1.0, 0.25, -0.5, -0.5, 0.0, -0.75, 0.5, 0.75, -1.0, 0.5, -1.0, 0.25, 0.25, 1.0, -0.75, -0.75, -0.75, -0.25, -1.0, 0.25, 0.75, 0.75, 0.5, 1.0, 0.0, 0.0, 0.5, -1.0, -1.0, -0.75, 0.5, 0.5, -0.75, 0.0, 0.5, 0.75, 0.25, 0.25, -1.0, -1.0, 0.0, -0.5, -1.0, -0.5, 0.25, -1.0, 0.25, -0.75, -0.25, 0.5, 0.75, 0.5, 1.0, -1.0, -0.5, 0.5, ]);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
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
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
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
    buffer100.destroy()
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
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
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device50.destroy();
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
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
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
    
    
    
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
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
    compute_pass_encoder3000.popDebugGroup()
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder102.pushDebugGroup("group_marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    
    render_bundle_encoder102.popDebugGroup();
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    
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
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder400.insertDebugMarker("mymarker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    
    command_encoder301.resolveQuerySet(
        query303,
        0,
        32,
        buffer300,
        0
    )
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout104]
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
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    command_encoder400.insertDebugMarker("mymarker");
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
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
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout105]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    command_encoder400.insertDebugMarker("mymarker");
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_buffer400 = command_encoder400.finish();
    
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    buffer400.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    command_encoder100.insertDebugMarker("mymarker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const command_buffer301 = command_encoder301.finish();
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_bundle_encoder700.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const command_buffer101 = command_encoder101.finish();
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder102.popDebugGroup();
    
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.popDebugGroup()
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    render_bundle_encoder700.popDebugGroup();
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout105]
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    device10.destroy();
    buffer401.destroy()
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
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
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    const command_buffer700 = command_encoder700.finish();
    command_encoder603.insertDebugMarker("mymarker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    command_encoder601.insertDebugMarker("mymarker");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout701]
    });
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
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    command_encoder602.insertDebugMarker("mymarker");
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const command_buffer401 = command_encoder401.finish();
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    command_encoder302.resolveQuerySet(
        query304,
        0,
        32,
        buffer300,
        0
    )
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    command_encoder602.insertDebugMarker("mymarker");
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
    command_encoder302.insertDebugMarker("mymarker");
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    compute_pass_encoder6010.insertDebugMarker("marker")
    
    
    
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout305]
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    command_encoder701.clearBuffer(buffer700);
    render_bundle_encoder700.insertDebugMarker("marker");
    
    compute_pass_encoder6010.insertDebugMarker("marker")
    
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder6010.popDebugGroup()
    
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout700]
    });
    const compute_pass_encoder3001 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3001" });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const command_buffer602 = command_encoder602.finish();
    render_bundle_encoder600.insertDebugMarker("marker");
    const command_buffer603 = command_encoder603.finish();
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    compute_pass_encoder3001.pushDebugGroup("group_marker")
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    compute_pass_encoder3010.insertDebugMarker("marker")
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout105]
    });
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
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
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout305]
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    render_bundle_encoder600.insertDebugMarker("marker");
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder700.popDebugGroup();
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout304]
    });
    command_encoder303.insertDebugMarker("mymarker");
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    device70.queue.submit([command_buffer700, ]);
    const compute_pass_encoder6001 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6001" });
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    
    
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout302]
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    compute_pass_encoder3010.popDebugGroup()
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout702]
    });
    
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_buffer302 = command_encoder302.finish();
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder6010.popDebugGroup()
    
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    
    const command_buffer703 = command_encoder703.finish();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout301]
    });
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    compute_pass_encoder3010.insertDebugMarker("marker")
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const command_buffer701 = command_encoder701.finish();
    const array8 = new Float32Array([0.25, 0.0, 0.25, -0.75, 0.25, 0.5, 0.5, -0.25, 0.25, -0.25, 0.25, 1.0, -1.0, -1.0, 1.0, 1.0, 0.25, 0.75, 0.25, 0.5, -1.0, -1.0, 0.5, -0.75, -0.5, 0.75, 0.25, 0.5, -0.75, -0.75, -0.5, 1.0, 1.0, 0.25, -1.0, 1.0, 0.5, -0.75, -0.5, 0.5, -1.0, -1.0, 0.75, 0.0, 0.25, -0.75, 1.0, 0.75, 0.5, 1.0, 1.0, 1.0, 0.0, 0.25, -1.0, -1.0, -0.5, 0.5, -1.0, 0.5, -0.5, 0.5, 1.0, 0.0, 0.75, -1.0, 0.5, -0.75, -0.75, -1.0, 0.5, 0.5, 0.5, -1.0, 0.5, -0.75, -0.25, -0.75, -0.75, 1.0, 0.75, -1.0, -0.75, -0.25, 0.0, -0.75, -1.0, 0.25, -1.0, 0.0, -1.0, 0.25, 0.75, -0.25, -1.0, -0.25, -0.25, 0.25, -0.25, 0.0, ]);
    compute_pass_encoder3001.pushDebugGroup("group_marker")
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout304]
    });
    
    
    render_bundle_encoder702.pushDebugGroup("group_marker");
    render_bundle_encoder600.popDebugGroup();
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    compute_pass_encoder3001.popDebugGroup()
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    command_encoder303.insertDebugMarker("mymarker");
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    
    
    
    compute_pass_encoder3040.insertDebugMarker("marker")
    
    
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device70.queue.submit([command_buffer700, command_buffer701, command_buffer703, ]);
    compute_pass_encoder6001.pushDebugGroup("group_marker")
    
    compute_pass_encoder6010.insertDebugMarker("marker")
    
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    compute_pass_encoder6001.popDebugGroup()
    const command_buffer303 = command_encoder303.finish();
    const command_buffer604 = command_encoder604.finish();
    const command_buffer305 = command_encoder305.finish();
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder6010.popDebugGroup()
    device30.queue.submit([command_buffer303, command_buffer305, ]);
    const command_buffer601 = command_encoder601.finish();
    device60.queue.submit([command_buffer601, command_buffer604, ]);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    device60.queue.submit([command_buffer601, command_buffer603, ]);
    device60.queue.submit([command_buffer603, ]);
    device30.queue.submit([command_buffer301, ]);
    const command_buffer300 = command_encoder300.finish();
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer400, ]);
    const command_buffer600 = command_encoder600.finish();
    compute_pass_encoder3000.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    device60.queue.submit([command_buffer600, command_buffer602, ]);
    device60.queue.submit([command_buffer604, ]);
    const command_buffer702 = command_encoder702.finish();
    device60.queue.submit([command_buffer603, ]);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    device30.queue.submit([command_buffer300, command_buffer303, command_buffer305, ]);
    device40.queue.submit([]);
}