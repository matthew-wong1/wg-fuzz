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
    const array0 = new Float32Array([-0.75, 1.0, -0.5, -0.75, -0.25, 0.25, -0.25, 0.0, -0.75, -0.75, -1.0, -0.25, 0.75, 1.0, -0.25, 0.5, 0.25, 1.0, 0.75, -1.0, 0.25, -0.75, 0.25, 0.5, 0.0, 0.75, 0.75, -0.75, -0.25, 0.5, 0.25, -0.5, -0.75, 0.25, 0.75, 0.5, 0.5, -0.25, 0.0, 0.0, 0.25, -1.0, -0.75, 0.75, -1.0, 1.0, 1.0, -0.75, 0.5, 0.75, 0.5, 0.5, -0.25, 0.0, 1.0, 0.75, -0.25, -0.25, -0.25, 1.0, -1.0, 0.5, 0.0, -0.25, -1.0, -0.5, 0.0, 0.75, 0.5, -0.25, 0.25, -0.25, 0.25, 0.0, 0.25, -0.5, 1.0, 0.0, 1.0, -0.25, 1.0, 0.0, -0.25, -0.5, 0.0, -1.0, 0.0, -0.25, -0.25, -0.75, 0.5, 0.75, -1.0, -1.0, -0.75, 0.0, 0.5, 0.0, -1.0, -1.0, ]);
    
    const array1 = new Float32Array([0.75, 0.75, 1.0, -0.5, 0.0, -0.5, 1.0, -0.75, -0.5, 0.25, -0.5, 0.75, -0.5, 0.5, -1.0, 0.25, -1.0, 0.25, 1.0, -0.25, -0.75, 1.0, -0.75, 1.0, 0.0, -1.0, -0.25, -1.0, -0.5, -0.5, -0.5, -0.5, 0.0, -0.5, -0.25, 0.5, -0.75, 0.0, 1.0, -1.0, -0.25, 0.0, 0.0, 0.25, -0.75, -0.5, 0.25, -0.5, 0.25, 0.5, -1.0, 0.25, 0.5, -0.25, 0.0, 0.25, 0.5, 0.0, 0.75, -0.5, 0.25, 0.5, -0.5, -0.75, 0.75, 0.75, 0.75, -0.25, -0.75, 0.25, 0.5, -0.25, -0.75, -0.25, 0.5, 0.0, 0.25, 1.0, 0.0, 0.25, -1.0, 0.5, -0.25, 0.5, 0.0, 0.5, -0.25, 1.0, -0.25, 1.0, -0.5, -0.75, 1.0, -0.75, 0.75, -0.25, 1.0, -1.0, -0.25, -0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    
    const array2 = new Float32Array([0.0, -0.75, 0.75, -0.25, -0.25, 1.0, -1.0, -0.25, -0.75, -1.0, 1.0, 0.5, 0.75, -0.5, 0.75, -1.0, 1.0, 1.0, 0.5, -0.5, -0.25, -0.25, -0.75, -0.5, -0.5, 0.25, -0.5, 0.25, -0.75, 0.25, 0.25, -0.25, 1.0, 0.5, -1.0, 0.25, 0.75, -1.0, -1.0, 0.5, -1.0, 1.0, -0.5, -0.25, 1.0, -0.75, -0.5, 1.0, 0.25, -0.75, -1.0, 0.5, -0.25, 0.5, 0.0, 0.25, 0.5, 0.5, 0.5, -1.0, -0.25, 0.25, 1.0, -0.5, -0.5, -0.75, -0.5, 1.0, 0.5, 0.5, -1.0, 0.0, 0.0, -0.5, 0.0, -0.75, -1.0, -0.25, 0.25, -0.75, -1.0, 0.75, 1.0, -0.5, 0.5, -1.0, 0.0, 0.75, -0.75, -1.0, 0.5, 0.75, -0.5, 0.25, 0.5, -1.0, 0.5, 0.5, -0.75, -1.0, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth16unorm",
        dimension: "2d"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const array3 = new Float32Array([0.25, 0.25, 1.0, 0.5, 0.5, 0.25, 0.0, -1.0, -0.75, -0.75, 1.0, 0.75, 0.5, 0.25, 1.0, 0.25, -1.0, 0.75, 0.25, 0.5, -0.75, 1.0, 1.0, -0.25, 1.0, 0.5, -0.25, -0.5, -0.5, -0.5, -1.0, 1.0, 0.75, -0.25, 0.5, -1.0, 0.0, -0.75, -0.5, 1.0, 0.25, 0.75, 0.75, 1.0, 0.0, 0.25, 1.0, 0.0, 1.0, 0.75, -0.25, -0.75, -1.0, 0.5, -0.5, 1.0, -1.0, 0.75, -0.25, 0.5, 0.75, -0.5, -0.5, -1.0, -0.75, -0.5, 0.75, 1.0, 0.75, 0.5, 1.0, -0.25, 0.0, 0.25, 1.0, -1.0, -0.75, -1.0, 1.0, 1.0, -0.5, -0.75, 0.75, 0.25, 0.75, -1.0, -1.0, 1.0, 0.0, 0.5, -0.75, -0.25, 0.0, 1.0, -0.5, 1.0, -1.0, -0.75, 0.75, 0.5, ]);
    device00.destroy();
    
    
    
    
    const array4 = new Float32Array([1.0, 0.25, -0.25, -0.75, 0.5, 0.5, -1.0, 0.75, -0.25, -0.25, 0.0, -0.25, 1.0, -0.25, 0.5, -0.75, -0.5, -0.25, -0.75, 0.0, 0.25, 1.0, 0.25, 0.25, 0.25, 0.75, 0.5, 0.0, 0.0, -0.5, 0.75, 1.0, 0.75, -0.75, 0.5, -0.5, 0.5, 0.75, -0.75, -1.0, -0.5, -0.5, 0.5, -1.0, -0.25, 0.75, 0.5, 0.75, 1.0, 0.25, 1.0, -1.0, -0.25, 1.0, 0.25, -0.25, 0.25, -0.25, -1.0, 1.0, 0.5, -1.0, 0.0, 0.5, 0.0, -0.25, 0.5, -0.5, 0.25, 1.0, 0.75, 1.0, 0.75, 0.5, -0.75, -0.25, 0.0, 0.5, 1.0, 0.5, -0.25, 0.5, -0.75, 0.75, -0.75, -1.0, -0.75, 0.75, -0.5, 0.5, 0.0, 0.25, 1.0, 0.0, -0.25, -0.25, 0.75, -1.0, 0.0, 0.25, ]);
    
    const array5 = new Float32Array([0.5, -0.75, -0.5, 0.75, -0.25, -0.25, -1.0, -0.5, 0.5, 0.5, -1.0, 0.25, -0.25, -0.25, 1.0, -1.0, -1.0, -1.0, 0.75, -0.25, -0.5, -1.0, 0.75, -0.25, -0.25, 0.75, -0.5, 0.25, -0.75, 1.0, -0.75, -0.25, 0.0, 0.0, -0.25, -1.0, 1.0, 0.0, 1.0, -1.0, 1.0, -0.25, 1.0, -0.25, 1.0, -0.75, -1.0, 0.25, 0.75, 0.0, 1.0, -0.75, 0.0, -0.25, 0.25, -1.0, 1.0, 0.0, 0.75, 0.0, -0.25, 0.25, -0.75, -0.5, -0.75, 1.0, -0.75, 0.0, -1.0, -1.0, 0.75, -0.25, 1.0, 0.5, 1.0, 0.75, -1.0, -0.75, 0.75, 0.25, -0.25, -0.25, 0.5, -0.5, 1.0, -0.75, -0.5, 0.75, 0.25, 1.0, -1.0, 0.75, -0.75, -0.25, 0.5, 1.0, -0.25, -0.25, -0.75, 1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device20.destroy();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const array6 = new Float32Array([-0.5, 0.0, 0.75, 0.5, 0.5, -0.5, -0.75, 1.0, 0.75, 0.5, 0.75, -0.25, 0.0, 0.75, -0.25, 0.5, -1.0, -1.0, 0.25, -0.5, -1.0, -0.75, 0.0, 0.25, -0.25, 0.75, 1.0, 0.0, 0.75, 0.5, -0.5, 0.75, -0.25, -1.0, 0.75, 0.75, 0.25, 0.5, 1.0, -1.0, 0.25, 0.5, -1.0, 0.75, 0.25, -1.0, 0.75, -1.0, 0.75, -0.75, 1.0, -0.75, -0.5, -1.0, 0.75, 0.5, 0.0, 0.0, 0.25, -0.75, 0.75, 0.5, -0.75, 0.5, -0.25, 0.0, -1.0, 0.5, -0.75, -1.0, 0.75, 1.0, 0.25, -0.25, 0.0, 0.0, -0.25, 1.0, -1.0, -0.25, 0.0, -0.25, 0.0, 1.0, 1.0, 1.0, 0.0, -0.5, -0.75, -0.25, 0.75, -0.25, 1.0, 0.5, -0.25, -0.5, -0.25, -0.75, 0.5, -1.0, ]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device30.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array7 = new Float32Array([-0.75, -0.5, 0.75, 0.0, 1.0, 0.5, 0.25, 1.0, -0.75, -0.5, 0.75, -0.75, 0.5, 1.0, 0.5, -1.0, 1.0, 0.0, -0.5, 1.0, 0.25, 0.25, 0.75, 0.25, -1.0, 0.25, -0.5, 0.75, -1.0, 0.0, 1.0, 0.0, -0.5, -0.25, 0.0, 1.0, -0.5, 0.25, 0.0, -0.75, -0.75, 0.5, -0.5, 0.25, 0.75, -0.25, -1.0, 0.25, 0.25, 0.5, 0.0, 0.5, -0.75, -0.5, 0.75, -0.5, -0.25, 0.25, 1.0, 0.25, -0.25, -0.5, 0.75, -0.5, -1.0, -1.0, 0.75, -1.0, -0.5, -0.25, 0.5, -1.0, -0.25, 0.0, 0.0, -0.25, 0.0, -1.0, 0.25, -0.5, 0.75, 0.25, 1.0, 0.25, 0.5, -0.25, -0.75, 0.25, 0.5, -0.5, -0.5, -0.75, 0.0, 0.5, -0.25, 0.75, -0.75, 0.75, 0.0, -0.75, ]);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
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
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const array8 = new Float32Array([0.75, -0.25, 0.25, -0.5, -1.0, 1.0, 0.0, -0.5, -0.5, 0.75, -1.0, 0.25, 0.25, 0.5, 0.25, -0.5, -0.75, -0.5, 0.5, -0.25, -0.75, -0.5, 1.0, 0.75, 0.5, -0.25, 1.0, -0.75, 0.5, -1.0, -0.75, -1.0, -0.75, -0.5, -0.25, -1.0, -0.25, -0.25, 0.75, 0.0, -0.75, 0.5, -0.5, -1.0, -0.75, -0.25, 0.0, -0.25, 0.5, -1.0, 0.0, -1.0, 0.25, 0.25, -0.75, 0.75, -1.0, -0.25, 1.0, -1.0, -0.25, 0.0, 0.25, 0.5, -0.75, -0.75, 0.75, -0.75, -1.0, 0.5, -0.5, -0.5, 1.0, -1.0, -0.25, 0.25, -0.25, 1.0, -0.25, 1.0, 0.75, 0.5, 0.25, -0.5, -0.25, -0.75, -0.5, 0.25, 0.75, -0.5, 0.25, 0.25, 0.25, 1.0, -0.25, 0.5, -0.25, -1.0, -0.75, 1.0, ]);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const array9 = new Float32Array([-0.75, 0.0, 0.25, -0.75, -0.75, -0.75, 0.75, 0.0, -0.5, 0.75, 0.5, 1.0, 0.75, 0.75, -1.0, 0.25, 1.0, -0.5, -0.5, 0.25, -0.25, 1.0, -0.5, -0.75, 0.25, 0.75, 0.25, 1.0, -0.5, 0.25, -1.0, -0.25, -0.25, 0.0, 0.75, 0.25, -0.75, 0.25, -1.0, 0.5, -0.25, 0.25, 1.0, -0.5, -0.25, -0.75, 0.5, 0.75, -0.5, 0.0, -1.0, 0.0, 0.75, -0.25, -0.25, -0.5, 0.5, -0.5, 0.5, 0.75, 0.25, 0.75, -0.25, -0.25, -0.25, -0.75, 0.75, -0.25, -0.75, 0.0, 1.0, -0.75, 0.0, 1.0, 0.75, 0.0, 0.0, -0.5, 0.25, 0.5, -1.0, -0.75, 1.0, -1.0, 0.5, 0.5, -1.0, 0.25, -1.0, 0.25, 1.0, 0.0, 0.0, -0.5, 1.0, -1.0, -0.5, 0.0, -0.5, 1.0, ]);
    
    device10.pushErrorScope("validation");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    const array10 = new Float32Array([-0.75, 0.25, -0.5, 0.25, -0.25, 0.75, 1.0, -0.75, 0.25, 0.25, 0.5, -0.75, 1.0, -0.25, -1.0, 0.25, 1.0, 0.0, 0.25, 0.5, 0.75, 0.0, -0.5, 0.0, -0.25, -0.25, -0.25, 1.0, 0.75, 1.0, 0.25, -1.0, -0.5, 0.75, 0.25, -1.0, -0.25, -1.0, -0.5, 0.75, 0.25, 0.5, -0.25, -0.5, 1.0, 1.0, 1.0, 0.0, 0.0, 0.75, -0.5, 0.5, -1.0, -0.75, -0.75, -1.0, -0.25, 0.0, 0.5, -0.5, -1.0, 1.0, 0.5, -0.25, -0.25, -0.75, -0.75, -0.5, 0.75, -0.5, 0.5, -0.25, -1.0, -0.25, -0.75, 1.0, 0.0, 1.0, 0.25, 0.0, 0.25, -0.75, -0.5, 0.25, 0.5, -0.75, 1.0, -0.25, -0.25, 0.75, -0.75, -0.75, -1.0, 0.0, 1.0, -0.75, 1.0, 0.5, -1.0, 0.5, ]);
    texture100.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const array11 = new Float32Array([0.5, -0.75, -0.75, 0.5, -0.5, 0.25, 0.25, 0.75, 1.0, 0.0, -0.75, 0.5, 0.0, -0.25, -0.5, -0.75, 1.0, -0.25, 0.5, 0.25, 0.25, 0.25, 0.75, 0.5, 0.75, -0.5, -0.25, -0.75, 1.0, -0.25, -0.25, 0.25, -1.0, 0.25, 0.0, -0.75, 0.0, -0.25, 0.5, -0.75, 0.75, 0.75, -0.25, -0.25, 0.75, 0.75, -1.0, -0.25, 0.75, -0.75, 0.0, -0.25, 1.0, 0.0, 1.0, -0.75, 1.0, 1.0, 0.25, -0.5, -0.75, -0.25, 0.75, -0.75, 1.0, -1.0, -1.0, 0.5, 0.5, 1.0, 0.25, -0.75, -1.0, -0.5, 0.25, 0.75, -0.25, 0.5, -1.0, -0.5, 0.0, -0.5, 1.0, 1.0, 0.0, -0.5, 1.0, -0.5, 0.75, 0.0, 0.0, -0.75, 0.25, -0.25, -0.75, 0.0, 0.25, 0.25, -1.0, -1.0, ]);
    device50.pushErrorScope("validation");
    texture102.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
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
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    device50.pushErrorScope("validation");
    query101.destroy()
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture103 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    device10.queue.writeTexture({ texture: texture103 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    device10.queue.writeTexture({ texture: texture103 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
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
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
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
    query100.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    texture103.destroy();
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query100
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query100
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1040.setStencilReference(1);
    
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
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
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_bundle_encoder601.insertDebugMarker("marker");
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_pass_encoder1040.setStencilReference(1);
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder500.insertDebugMarker("marker");
    device40.destroy();
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout105,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout104,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
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
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array12 = new Float32Array([0.5, 0.25, 0.0, -0.75, 0.75, 0.25, 0.5, -1.0, -1.0, 1.0, 1.0, -0.5, 0.75, 0.75, -0.25, 1.0, -0.75, -0.5, 0.25, 0.75, -0.25, -0.75, 0.75, 0.0, 1.0, 0.0, -1.0, 0.25, -0.5, 0.25, 0.25, -1.0, -1.0, 0.5, -1.0, 0.5, 0.25, -0.75, 0.75, 0.75, -1.0, -0.75, -1.0, -0.75, 0.25, 0.0, -0.25, -0.5, -0.25, 0.25, 1.0, 0.5, -0.25, 1.0, -0.5, -1.0, 0.75, -0.25, -0.25, 1.0, 1.0, -1.0, 0.25, 0.5, -0.5, 0.5, 1.0, 0.5, 0.0, 0.25, 0.0, -1.0, -1.0, 0.75, 0.75, 1.0, 0.25, -0.25, -0.5, 0.5, 0.75, -1.0, -1.0, 0.5, 0.0, 0.25, 0.0, -1.0, -0.75, 0.75, -1.0, -0.75, -0.5, 1.0, -0.75, -0.5, -0.25, -0.75, -0.5, -0.75, ]);
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query501
    });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    query101.destroy()
    render_pass_encoder1010.pushDebugGroup("group_marker");
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
    query101.destroy()
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout104,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query500
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout105,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.popDebugGroup();
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query502
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1010.insertDebugMarker("marker");
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout105,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    
    render_pass_encoder5000.beginOcclusionQuery(0)
    render_pass_encoder5010.executeBundles([])
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    render_pass_encoder1040.insertDebugMarker("marker");
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout105,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder5020.pushDebugGroup("group_marker");
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder5000.insertDebugMarker("marker");
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    texture600.destroy();
    render_pass_encoder5020.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout104,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    query502.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    query502.destroy()
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.executeBundles([])
    const texture_view5012 = texture501.createView({ label: "texture_view5012" });
    render_pass_encoder1040.pushDebugGroup("group_marker");
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
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_pass_encoder5020.insertDebugMarker("marker");
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout106,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    render_pass_encoder5000.endOcclusionQuery()
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout106,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout104,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query500.destroy()
    render_pass_encoder1000.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1014 = texture101.createView({ label: "texture_view1014" });
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_pass_encoder5000.beginOcclusionQuery(0)
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout107,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    texture501.destroy();
    const texture_view1015 = texture101.createView({ label: "texture_view1015" });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout106,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout602]
    });
    query102.destroy()
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_pass_encoder5020.setStencilReference(1);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder5010.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder5000.setStencilReference(1);
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1030.executeBundles([])
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    render_pass_encoder5010.executeBundles([])
    const array13 = new Float32Array([-0.75, 0.5, -1.0, 0.5, -1.0, 1.0, 1.0, -0.25, 0.25, 0.0, -0.25, -0.75, -0.25, 1.0, 0.25, 0.25, 0.75, -0.25, -1.0, 0.25, 0.0, 0.25, 0.0, -0.5, 1.0, -1.0, -1.0, -0.75, 0.0, 1.0, -0.5, 0.75, -0.25, -0.25, 0.75, -0.25, -1.0, 0.75, 0.5, 0.75, -0.5, -0.25, 0.0, -0.5, 0.25, -0.75, 1.0, -0.75, 0.0, -0.25, 0.75, -1.0, 0.5, 0.5, 0.75, 0.5, -0.25, 1.0, 0.5, 0.75, 0.25, 0.25, -0.25, -0.5, -0.25, 0.25, 1.0, 1.0, -0.25, -0.25, 0.5, 0.75, 0.0, -1.0, -1.0, 0.5, -0.75, 0.75, 0.5, -0.25, -0.25, -0.25, -0.5, 0.25, -0.5, -0.75, 0.25, 1.0, -0.5, 0.75, 0.5, -0.25, 0.0, 0.25, -0.5, -0.25, -1.0, 1.0, -0.5, -0.25, ]);
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder5010.insertDebugMarker("marker");
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder602.insertDebugMarker("marker");
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout106,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    query500.destroy()
    device60.pushErrorScope("validation");
    query500.destroy()
    render_pass_encoder5010.pushDebugGroup("group_marker");
    query101.destroy()
    
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout108,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1040.popDebugGroup();
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const texture_view1016 = texture101.createView({ label: "texture_view1016" });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1050.insertDebugMarker("marker");
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    render_pass_encoder5010.setStencilReference(1);
    render_pass_encoder5020.popDebugGroup();
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout104]
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
    });
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module507.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder5000.pushDebugGroup("group_marker");
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout105,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout103,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    const array14 = new Float32Array([-1.0, -0.25, 0.0, -0.75, 0.75, -0.25, -0.5, 0.0, 1.0, 1.0, 0.0, 1.0, 0.5, -0.25, 0.5, 0.25, -0.75, 0.0, -0.5, 1.0, 0.0, 0.75, -0.25, 0.75, 0.75, -1.0, -1.0, 0.75, -0.75, 1.0, -0.5, -1.0, 0.25, 0.25, 0.75, -0.75, 0.5, 0.75, 0.75, 0.0, 0.5, -1.0, -1.0, -1.0, -0.5, 1.0, 0.25, -0.25, -1.0, 0.5, 0.0, -1.0, -1.0, 0.25, 1.0, 0.25, 0.5, 0.75, -1.0, 0.5, -0.25, 0.5, -1.0, -0.5, 1.0, 0.75, 1.0, 1.0, 0.25, -1.0, -0.25, 1.0, 0.25, 0.0, 0.25, 0.0, -0.25, -0.25, 0.5, -0.75, 0.0, -1.0, 1.0, 1.0, 1.0, 0.0, 0.5, 0.75, -0.25, 0.0, -0.25, 0.75, -0.5, 0.0, -1.0, -1.0, 0.0, -0.5, -0.25, -0.25, ]);
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
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
    render_pass_encoder5010.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.insertDebugMarker("marker");
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout104,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder5000.setStencilReference(1);
    render_pass_encoder5010.insertDebugMarker("marker");
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout501,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.pushDebugGroup("group_marker");
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout505,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout600,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout505,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout502,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout505,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    query503.destroy()
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder1040.popDebugGroup();
    query500.destroy()
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout502,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout504,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    query102.destroy()
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout108,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_bundle_encoder602.pushDebugGroup("group_marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout502]
    });
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout504,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const texture_view1017 = texture101.createView({ label: "texture_view1017" });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    device10.pushErrorScope("internal");
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture500.destroy();
    
    query502.destroy()
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout107,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout501,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    render_pass_encoder5020.insertDebugMarker("marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout109,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5000.endOcclusionQuery()
    query600.destroy()
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1000.insertDebugMarker("marker");
    render_bundle_encoder601.insertDebugMarker("marker");
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout506,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout109,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    query102.destroy()
    const array15 = new Float32Array([0.5, 0.75, 0.0, 1.0, 0.5, -0.25, 0.75, 0.25, 0.25, 0.0, -0.25, 0.25, 0.75, -0.25, 0.75, 0.25, 1.0, 1.0, 0.25, 1.0, 1.0, -1.0, 0.0, -0.5, 0.25, 0.75, 1.0, 1.0, -0.5, 0.75, 0.0, 1.0, -1.0, 0.75, -0.5, -0.25, 1.0, -0.5, -0.25, 0.5, -0.75, -0.75, 1.0, -0.25, -0.25, -0.75, -1.0, -0.5, 0.25, 0.75, 0.25, 0.0, -0.75, -0.75, 0.5, -1.0, 1.0, 1.0, -0.25, 1.0, -0.25, -0.25, -0.25, 1.0, -0.75, -0.75, -0.5, 0.25, 0.5, 0.25, -0.25, 0.5, -0.5, 0.0, 0.75, -1.0, -0.25, -0.5, 0.75, -1.0, 0.25, 0.5, 0.0, -1.0, 0.0, -1.0, -0.75, -0.75, 0.25, -1.0, -0.5, 1.0, 0.5, 0.75, -0.75, -0.25, 1.0, 0.75, 0.25, 1.0, ]);
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout504,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    query600.destroy()
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query102.destroy()
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module606.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout601,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    
    texture503.destroy();
    query100.destroy()
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout505,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    render_pass_encoder5020.pushDebugGroup("group_marker");
    
    render_pass_encoder1010.setStencilReference(1);
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout105,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline5020 = device50.createComputePipeline({
        label: "compute_pipeline5020",
        layout: pipeline_layout503,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setStencilReference(1);
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const sampler109 = device10.createSampler( { label: "sampler109" } );
    render_pass_encoder5020.executeBundles([])
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline5021 = device50.createComputePipeline({
        label: "compute_pipeline5021",
        layout: pipeline_layout505,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline5022 = device50.createComputePipeline({
        label: "compute_pipeline5022",
        layout: pipeline_layout506,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.popDebugGroup();
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout103,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout600,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout109,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_pass_encoder5020.setStencilReference(1);
    
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout104,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    query102.destroy()
    render_pass_encoder5010.insertDebugMarker("marker");
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout600,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout109,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder5010.insertDebugMarker("marker");
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query502
    });
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout103,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    texture502.destroy();
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    const compute_pipeline5023 = device50.createComputePipeline({
        label: "compute_pipeline5023",
        layout: pipeline_layout504,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    var shader_module509_code = "";
    try {
        shader_module509_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module509.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module509 = await device50.createShaderModule({ label: "shader_module509", code: shader_module509_code })
    const sampler605 = device60.createSampler( { label: "sampler605" } );
    const compute_pipeline5024 = device50.createComputePipeline({
        label: "compute_pipeline5024",
        layout: pipeline_layout503,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5025 = device50.createComputePipeline({
        label: "compute_pipeline5025",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout104,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}