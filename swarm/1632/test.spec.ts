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
    
    const array0 = new Float32Array([0.25, -0.25, 0.5, -0.5, 0.25, -1.0, -0.25, -0.25, 0.25, 0.5, -1.0, -1.0, -0.75, -0.75, 0.25, 0.25, -1.0, 0.75, -1.0, 0.25, 0.25, -0.5, -0.25, 0.75, 0.5, 1.0, 1.0, 0.5, -0.25, 0.25, -0.25, -0.25, 0.75, 0.5, -0.25, -0.5, 0.5, -1.0, -1.0, -0.25, 0.5, 0.0, -0.25, 0.75, 0.25, -0.5, 0.75, -1.0, -1.0, 0.0, -0.5, -0.25, -1.0, -0.5, 0.0, 0.75, -0.25, -1.0, 0.5, 0.75, 0.0, -0.25, -0.25, -0.25, -0.25, -1.0, 0.5, -0.75, -1.0, -0.25, 0.25, -0.5, -0.25, -0.5, 0.25, 1.0, 0.5, -0.5, -1.0, -0.75, 1.0, 1.0, -0.75, 0.75, 0.75, 0.25, 0.75, 0.75, 1.0, 0.75, -0.5, 0.25, 0.0, -1.0, 1.0, 0.5, 1.0, -0.25, 0.5, 0.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array1 = new Float32Array([-0.75, -0.75, -0.75, -0.75, -0.25, -0.25, 0.75, -0.75, 0.5, 0.5, -1.0, -0.5, -1.0, 1.0, -0.25, 0.25, -0.75, 0.25, 0.5, -0.75, 0.25, 0.75, 1.0, -0.25, -0.75, 0.75, 0.75, -0.5, 1.0, 0.5, -0.5, 0.75, -1.0, 1.0, 0.25, -0.75, -0.25, 0.25, 1.0, -0.25, -1.0, 0.25, -0.5, 0.75, 0.0, -1.0, -1.0, 0.25, -1.0, -1.0, 1.0, 0.0, -1.0, -0.25, -0.75, -0.75, 0.0, 0.25, 0.25, -1.0, 0.25, 0.0, -1.0, 1.0, 0.75, 1.0, 0.5, 0.75, -0.25, -0.75, -0.25, 0.5, 0.25, -0.5, 0.5, -0.25, 1.0, -0.5, 0.5, -0.25, 0.0, -0.25, 0.5, 0.25, 0.75, -0.25, -0.25, 0.0, 0.75, 0.0, -0.75, 0.5, -0.25, -0.25, 0.75, -0.75, 1.0, -0.5, -0.5, 0.75, ]);
    const array2 = new Float32Array([1.0, 0.25, 0.0, -1.0, 0.0, 0.75, -0.75, -0.25, 1.0, -1.0, -0.75, 0.25, 1.0, 0.0, -0.25, -0.5, -0.75, -1.0, 0.75, 0.5, -1.0, 1.0, 0.0, -1.0, -0.5, 0.25, -0.25, -0.25, 0.5, 0.5, -0.75, -1.0, 1.0, 0.75, -0.75, -1.0, 1.0, -0.5, 0.0, 0.5, -0.25, 0.0, 0.25, 0.25, -0.5, -1.0, 0.5, -0.75, -0.5, -0.25, 0.0, -1.0, -1.0, 0.0, 0.5, -0.25, 0.0, 0.5, -1.0, 0.5, -0.5, -0.5, -0.75, 0.0, 0.0, -0.25, 0.0, -1.0, 1.0, -0.5, 0.5, 0.75, 0.75, -1.0, 0.25, -0.75, -1.0, -0.25, 0.0, 1.0, -0.25, -0.25, 0.0, -1.0, 0.75, 0.75, -0.25, -0.75, 0.5, -0.5, 0.75, 0.5, 0.5, 0.5, -0.5, 0.75, 0.25, -0.75, 0.5, -0.5, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([0.0, -0.5, 0.5, -0.25, -0.75, 0.25, 0.75, -1.0, 0.25, 0.5, -1.0, 1.0, 0.0, 1.0, 0.5, 1.0, -0.75, -0.5, -0.25, -0.5, -0.75, -0.25, 0.75, 0.5, 0.25, -0.75, 0.75, 0.5, -0.25, 1.0, -0.25, 0.25, 0.0, -1.0, 1.0, -0.25, -0.5, -1.0, 0.75, 0.5, 1.0, -1.0, 0.0, 0.75, -0.75, -1.0, -0.25, 0.5, -0.25, 0.25, -1.0, 0.5, -0.75, 0.75, -0.75, 0.5, 1.0, -0.25, 0.75, 0.25, 0.5, -0.75, 1.0, 0.25, -0.75, -0.75, -0.25, -0.75, 0.75, -0.75, 0.75, -0.5, 1.0, 1.0, 0.5, -0.75, 0.0, 1.0, 0.5, 0.75, -1.0, 0.5, 0.75, -1.0, -0.5, 0.75, 0.75, -1.0, -0.75, 0.75, 0.25, 1.0, 0.5, 0.0, 0.0, -0.25, -0.75, 1.0, -0.25, -0.5, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.pushErrorScope("internal");
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    device20.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer000.destroy()
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
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
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    
    command_encoder000.insertDebugMarker("mymarker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
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
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    
    device10.destroy();
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    device00.pushErrorScope("validation");
    
    compute_pass_encoder0000.popDebugGroup()
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const array4 = new Float32Array([-0.25, 0.5, -1.0, 0.0, -0.75, 1.0, 0.5, 0.25, 0.5, -0.5, -0.75, 0.5, -0.75, -0.25, 0.25, 1.0, 0.75, 0.5, 0.0, -0.5, 0.0, -0.5, 0.0, 0.75, 0.75, 0.75, 0.0, 0.0, -1.0, 1.0, 0.0, -1.0, -0.75, 0.75, -0.75, 0.5, -0.75, -0.5, -0.5, -0.75, -0.5, 0.0, 0.25, -0.25, 0.75, -1.0, -0.5, -1.0, -0.75, -0.75, -1.0, 0.75, -0.25, -1.0, 0.25, -0.5, 0.0, -0.75, 0.25, -0.75, -0.5, 0.25, 0.0, -0.25, 0.0, 1.0, -0.25, -1.0, 0.0, -0.25, 0.5, -1.0, 1.0, 1.0, -1.0, -1.0, -1.0, 0.75, -0.5, -0.75, -0.5, 1.0, 0.25, -0.75, -0.25, -0.75, 0.25, 0.75, 0.5, -0.5, 0.5, 0.75, 0.0, -0.75, 0.25, 0.25, -0.75, 0.0, 0.25, -0.5, ]);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.insertDebugMarker("mymarker");
    
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0000.popDebugGroup()
    buffer001.destroy()
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
    const array5 = new Float32Array([1.0, -0.25, -0.25, -0.25, -1.0, 0.5, 0.25, -1.0, 0.75, 0.0, 0.5, -0.75, 1.0, 0.5, 1.0, 0.5, -0.75, -0.25, 0.5, -0.5, -0.5, -0.25, -0.5, 0.75, -0.5, 0.25, 0.25, -1.0, 0.75, 0.25, 0.25, -1.0, 0.0, -0.25, -1.0, 1.0, 0.75, -0.5, -0.5, -0.5, 0.25, -0.25, -0.25, 0.75, -1.0, 0.75, 1.0, -0.5, 0.75, 0.25, 0.75, 1.0, 1.0, 0.5, -0.5, -0.75, 0.0, -0.25, -0.5, 1.0, 1.0, 0.75, 0.25, 0.25, 0.0, 0.75, -0.5, 0.25, 0.5, -0.25, 0.5, -1.0, -0.25, 0.25, -1.0, 0.5, -1.0, -0.5, 0.25, 0.25, 0.75, 0.0, -0.75, -0.75, 1.0, 0.25, -1.0, -0.25, -0.25, -1.0, 0.25, 1.0, -1.0, 0.0, -0.25, 0.0, -1.0, -0.5, -0.5, -0.5, ]);
    const command_buffer000 = command_encoder000.finish();
    const array6 = new Float32Array([-1.0, -0.75, 0.25, 0.25, 0.0, -0.25, 0.5, 1.0, 1.0, -0.25, -1.0, 0.5, -0.75, 0.25, -0.25, 0.75, -0.25, 0.0, -0.25, -0.25, 0.0, 0.0, -0.25, 0.0, -1.0, 1.0, -0.5, 0.0, 0.0, 0.75, 1.0, 0.5, -0.75, -0.5, -0.25, 0.5, 0.5, 0.0, -0.25, -0.75, -0.5, -0.25, 0.25, 0.0, -0.25, -0.5, 0.5, 0.25, -0.75, 0.0, 0.0, 1.0, -1.0, 0.75, 0.5, -1.0, 1.0, -0.75, -0.5, -0.25, 0.0, 0.25, -0.5, -1.0, -0.25, -0.75, -0.25, 0.5, 0.75, -1.0, -1.0, -0.5, 0.5, -0.5, -0.75, 0.0, -1.0, -1.0, -0.5, 0.25, -0.75, 0.0, 0.0, 0.5, 0.25, 0.75, -1.0, 0.0, 0.25, 0.25, 0.5, 0.0, 1.0, 0.75, 0.5, -1.0, 0.5, 0.0, -1.0, 0.75, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    query104.destroy()
    
    command_encoder001.popDebugGroup()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder001.insertDebugMarker("mymarker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const command_buffer001 = command_encoder001.finish();
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    device50.destroy();
    
    
    
    
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
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    
    device00.popErrorScope().then((error) => {
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
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device30.pushErrorScope("validation");
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    
    
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder002.insertDebugMarker("mymarker");
    device60.destroy();
    const array7 = new Float32Array([-0.75, -0.75, 0.25, 0.75, 0.75, 1.0, 0.75, -0.5, -0.75, -0.75, 0.0, -0.75, -0.25, -0.25, 0.25, -0.25, -1.0, 0.25, -0.25, 0.25, -0.25, 1.0, -0.25, -0.25, -0.5, -0.5, 0.5, -0.75, 0.25, 1.0, -0.75, -0.5, 0.75, 1.0, 0.25, 0.5, -0.25, -0.25, 1.0, 1.0, -1.0, 1.0, -0.75, -1.0, -0.5, 1.0, -1.0, -0.75, 0.5, 0.75, -0.25, 1.0, -1.0, 0.75, 0.75, -0.75, 0.25, 0.5, -0.75, 0.75, -0.75, -1.0, 0.5, 1.0, -1.0, 0.5, -0.25, 0.25, 1.0, 0.5, 0.75, 0.5, -0.5, 0.25, -0.25, -0.25, -0.5, 0.5, -1.0, -0.75, -0.25, 1.0, -0.25, -0.5, -0.25, 0.0, -0.5, 0.75, -0.75, 0.25, -0.25, 0.0, 0.75, -1.0, -0.25, 0.75, 0.75, -0.75, 0.5, 0.75, ]);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.pushErrorScope("internal");
    
    
    
    command_encoder003.insertDebugMarker("mymarker");
    query300.destroy()
    command_encoder002.popDebugGroup()
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
    device00.queue.submit([command_buffer001, ]);
    command_encoder002.insertDebugMarker("mymarker");
    
    const array8 = new Float32Array([0.25, 0.0, 0.25, 0.0, -1.0, -0.25, -0.75, 0.0, 1.0, 0.5, -0.25, -0.75, -0.75, 1.0, 1.0, 1.0, -0.5, -0.5, 1.0, -1.0, 0.25, -1.0, -0.5, -0.75, -0.25, 0.25, 1.0, 0.25, 0.75, 0.0, 0.0, 0.5, 1.0, -1.0, -0.5, -0.25, -1.0, 0.0, 0.5, -1.0, -0.75, -0.25, 0.75, 0.75, -1.0, -0.5, 0.25, -0.75, -0.75, 0.5, -0.75, -0.25, 1.0, -0.25, 1.0, -0.25, -0.75, -0.5, -0.5, -0.5, 0.25, -0.25, -1.0, 0.25, -0.25, 0.5, 0.5, 0.25, 0.0, -0.25, -1.0, -0.75, 0.75, 0.0, -1.0, 0.0, 0.0, -0.75, -0.25, -0.25, -0.75, -1.0, 0.75, 0.0, -1.0, 0.5, -0.5, 1.0, 0.75, 0.75, 0.25, 0.25, -1.0, 0.5, 0.0, -1.0, 0.25, 0.5, 0.5, -1.0, ]);
    command_encoder002.insertDebugMarker("mymarker");
    
    command_encoder003.clearBuffer(buffer000);
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder004.pushDebugGroup("mygroupmarker")
    command_encoder002.clearBuffer(buffer002);
    command_encoder100.insertDebugMarker("mymarker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    device30.pushErrorScope("validation");
    const command_buffer002 = command_encoder002.finish();
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    compute_pass_encoder0000.popDebugGroup()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const array9 = new Float32Array([0.75, 0.5, -0.75, -1.0, -0.5, 0.75, 0.25, -0.25, 0.5, -1.0, -0.25, 0.5, -0.75, 1.0, -0.5, 0.0, 1.0, -1.0, -0.5, 0.5, -0.5, -1.0, 1.0, 0.25, -0.25, -0.75, -0.5, 1.0, -0.25, -0.5, -0.5, -0.75, -0.25, -0.25, -1.0, -0.25, 1.0, 0.75, 0.25, -0.25, 0.75, -1.0, 0.5, 0.25, 0.0, 0.75, -0.25, 0.5, 0.5, 1.0, 0.25, 0.25, -0.5, -0.75, 1.0, -0.5, -0.75, -1.0, 0.0, 0.0, -0.25, -0.75, 0.25, -1.0, 0.0, -1.0, -0.75, 0.0, -0.25, 1.0, 0.0, -0.25, 0.0, 0.5, -0.5, -0.75, -0.75, 0.5, -1.0, -0.25, -0.25, -0.25, 0.5, -1.0, 0.5, 0.75, 0.5, 0.0, 0.5, -0.75, -1.0, 1.0, -1.0, 0.25, -0.25, 0.5, -1.0, -0.5, 0.5, 0.0, ]);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_buffer005 = command_encoder005.finish();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder003.insertDebugMarker("mymarker");
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
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
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder300.clearBuffer(buffer300);
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
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer002.destroy()
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
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
    command_encoder300.clearBuffer(buffer300);
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    command_encoder300.clearBuffer(buffer300);
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    
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
    device90.destroy();
    
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    
    
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
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
    compute_pass_encoder3000.insertDebugMarker("marker")
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device100.pushErrorScope("out-of-memory");
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    query100.destroy()
    
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const array10 = new Float32Array([-1.0, -0.5, -0.5, -0.5, -1.0, -1.0, 0.75, -0.75, 0.25, 0.25, 0.5, 0.5, -1.0, -0.75, 0.25, -0.25, 0.0, 0.75, 1.0, 0.5, -0.5, -1.0, 0.75, -1.0, 0.0, 0.5, 0.75, 0.0, 1.0, 0.75, 0.0, 0.75, 0.0, -1.0, 0.25, -0.75, 0.25, -0.5, 0.75, 1.0, -1.0, 0.0, 1.0, 0.25, 0.75, 0.75, 1.0, 0.75, 0.0, 0.0, -0.25, 0.75, -1.0, 1.0, 1.0, 1.0, -1.0, 0.0, -0.75, 1.0, 1.0, -0.5, -0.75, 0.75, 0.5, 0.5, 0.75, -0.25, 0.0, 1.0, 0.75, 0.5, -1.0, 0.25, 0.5, -1.0, -0.75, 1.0, -1.0, -0.25, 0.75, -0.5, -0.5, -1.0, -1.0, 0.75, 1.0, -0.5, -0.5, -0.75, -0.75, 0.0, -0.25, 0.5, 1.0, -1.0, 0.0, 1.0, -0.75, 0.25, ]);
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_bundle_encoder400.popDebugGroup();
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    buffer300.destroy()
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    command_encoder008.pushDebugGroup("mygroupmarker")
    
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer005, ]);
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    device80.pushErrorScope("validation");
    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
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
    buffer302.destroy()
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    command_encoder301.insertDebugMarker("mymarker");
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    command_encoder004.insertDebugMarker("mymarker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    command_encoder700.pushDebugGroup("mygroupmarker")
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    command_encoder700.pushDebugGroup("mygroupmarker")
    
    buffer301.destroy()
    const sampler700 = device70.createSampler( { label: "sampler700" } );
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
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    command_encoder008.popDebugGroup()
    const compute_pass_encoder0080 = command_encoder008.beginComputePass({ label: "compute_pass_encoder0080" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder007.clearBuffer(buffer002);
    command_encoder701.pushDebugGroup("mygroupmarker")
    
    const command_buffer1000 = command_encoder1000.finish();
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    query000.destroy()
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    compute_pass_encoder0030.insertDebugMarker("marker")
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    query700.destroy()
    buffer400.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    query102.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer003 = command_encoder003.finish();
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
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device00.queue.submit([command_buffer000, ]);
    const command_buffer800 = command_encoder800.finish();
    compute_pass_encoder8000.insertDebugMarker("marker")
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device100.queue.submit([command_buffer1000, ]);
    device00.queue.submit([command_buffer003, ]);
    
    
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
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device70.queue.writeBuffer(buffer701, 0, array7, 0, array7.length);
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder8000.popDebugGroup()
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    
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
    device00.queue.submit([]);
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    device30.queue.submit([]);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder0080.insertDebugMarker("marker")
    command_encoder700.copyBufferToBuffer(
        buffer700,
        0,
        buffer701,
        0,
        400
    );
    
    query1001.destroy()
    
    buffer003.destroy()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    compute_pass_encoder0030.popDebugGroup()
    device100.queue.writeBuffer(buffer1001, 0, array9, 0, array9.length);
    const command_buffer801 = command_encoder801.finish();
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0080.insertDebugMarker("marker")
    device00.queue.submit([command_buffer003, ]);
    device60.pushErrorScope("out-of-memory");
    compute_pass_encoder3010.popDebugGroup()
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
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query103.destroy()
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    {
        await buffer1000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1000.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer303, 0, array8, 0, array8.length);
    buffer1002.destroy()
    compute_pass_encoder0030.insertDebugMarker("marker")
    buffer702.destroy()
    const bind_group_layout1003 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1003",
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
    command_encoder700.insertDebugMarker("mymarker");
    
    
    query001.destroy()
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    const command_buffer300 = command_encoder300.finish();
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    command_encoder400.insertDebugMarker("mymarker");
    
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
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
    
    
    
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    
    
    device80.queue.writeBuffer(buffer801, 0, array2, 0, array2.length);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const query1002 = device100.createQuerySet({
        label: "query1002",
        type: "occlusion",
        count: 32,
    });
    
    device80.queue.writeBuffer(buffer802, 0, array10, 0, array10.length);
    const command_buffer004 = command_encoder004.finish();
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    device80.queue.writeBuffer(buffer802, 0, array5, 0, array5.length);
    
    buffer302.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer800.destroy()
    
    device80.queue.writeBuffer(buffer802, 0, array6, 0, array6.length);
    device80.queue.writeBuffer(buffer802, 0, array4, 0, array4.length);
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device70.pushErrorScope("out-of-memory");
    command_encoder007.insertDebugMarker("mymarker");
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device30.queue.writeBuffer(buffer303, 0, array0, 0, array0.length);
    command_encoder700.copyBufferToBuffer(
        buffer700,
        0,
        buffer703,
        0,
        400
    );
    device80.queue.writeBuffer(buffer801, 0, array10, 0, array10.length);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const command_buffer007 = command_encoder007.finish();
    command_encoder100.insertDebugMarker("mymarker");
    buffer801.destroy()
    command_encoder701.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer303, 0, array6, 0, array6.length);
    query001.destroy()
    device80.queue.writeBuffer(buffer802, 0, array3, 0, array3.length);
    
    device30.queue.writeBuffer(buffer303, 0, array3, 0, array3.length);
    compute_pass_encoder4010.popDebugGroup()
    
    
    command_encoder500.insertDebugMarker("mymarker");
    device80.queue.submit([command_buffer801, ]);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.submit([command_buffer800, ]);
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    const command_buffer006 = command_encoder006.finish();
    command_encoder701.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0030.popDebugGroup()
    command_encoder400.popDebugGroup()
    device80.queue.submit([]);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    const command_buffer701 = command_encoder701.finish();
    device00.queue.submit([command_buffer006, ]);
    device70.queue.submit([command_buffer701, ]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer007, ]);
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer003, ]);
    device80.queue.submit([command_buffer801, ]);
    device00.queue.submit([]);
    compute_pass_encoder8000.popDebugGroup()
    command_encoder700.popDebugGroup()
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
    device80.queue.submit([command_buffer800, ]);
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer006, ]);
    const command_buffer700 = command_encoder700.finish();
    const command_buffer401 = command_encoder401.finish();
    device70.queue.submit([]);
    device100.queue.submit([]);
    compute_pass_encoder0060.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    device40.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder3010.popDebugGroup()
    command_encoder301.popDebugGroup()
    const command_buffer008 = command_encoder008.finish();
    device40.queue.submit([]);
    compute_pass_encoder0060.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3010.popDebugGroup()
    device00.queue.submit([command_buffer001, command_buffer008, ]);
    compute_pass_encoder0030.popDebugGroup()
    device70.queue.submit([command_buffer701, ]);
    device00.queue.submit([command_buffer002, ]);
    device80.queue.submit([command_buffer800, ]);
    device100.queue.submit([command_buffer1000, ]);
    device00.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer007, ]);
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    device70.queue.submit([command_buffer700, ]);
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer000, command_buffer006, command_buffer008, ]);
    const command_buffer301 = command_encoder301.finish();
    device00.queue.submit([command_buffer002, ]);
}