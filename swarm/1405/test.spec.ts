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
    const array0 = new Float32Array([-0.25, 1.0, -0.75, -1.0, 1.0, -0.25, 0.75, 0.25, -0.25, -0.5, -1.0, -0.25, 0.25, 0.5, 0.75, 0.75, 0.75, 0.5, -0.25, -0.75, 0.25, -0.5, -1.0, -0.75, 0.5, -0.25, -0.25, 1.0, -1.0, 0.75, -0.5, -1.0, 0.0, -0.5, 0.5, -0.25, 1.0, -0.5, 1.0, 0.0, -0.75, -0.5, 0.5, -1.0, 0.75, -1.0, -0.5, 0.75, 0.5, 0.25, -0.25, -0.5, 0.25, -0.75, -1.0, 0.0, 0.0, 1.0, 0.5, 1.0, 1.0, -1.0, 0.0, 0.5, 0.0, -0.75, 0.75, 0.75, 0.25, -1.0, -0.5, 1.0, -0.75, -0.75, 0.5, 0.5, 0.25, 0.0, 0.25, 0.0, 0.25, 0.75, 0.0, -0.5, 0.25, -0.5, 0.25, 0.5, 0.25, 1.0, -0.25, 1.0, -0.5, 1.0, 0.75, 0.75, -1.0, 1.0, -0.75, 0.75, ]);
    const array1 = new Float32Array([1.0, 0.5, 0.5, 0.5, 0.0, 1.0, -0.5, 0.25, -0.5, 1.0, -0.5, -0.5, -0.25, 0.0, -0.5, -1.0, -0.75, 0.5, -0.75, 0.25, 0.0, -1.0, 0.75, 0.0, 1.0, -0.5, 1.0, 1.0, -0.5, -0.5, 0.0, 0.25, 1.0, 0.0, -0.5, 0.75, -0.5, -0.75, -0.5, -0.25, -0.25, 0.75, -0.25, 0.0, -0.75, 0.0, 0.5, 0.0, -1.0, -0.5, -1.0, -0.75, -0.75, 1.0, 0.5, -0.75, 1.0, 0.5, 0.5, -1.0, 1.0, 0.0, 0.0, 0.5, 0.75, 0.5, -0.5, 1.0, 0.5, 0.5, 0.5, 0.25, 1.0, -1.0, 0.0, 0.75, 0.75, -0.25, -0.75, 1.0, 1.0, 0.25, -1.0, -0.75, 1.0, 1.0, -1.0, -0.75, -0.75, 0.5, 1.0, -0.75, -0.5, 1.0, -1.0, -0.25, -0.75, -0.75, 0.5, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array2 = new Float32Array([0.75, 1.0, 0.25, 0.0, 0.5, 0.75, 1.0, 0.75, 0.0, 0.25, 0.0, 0.75, 0.75, 0.75, -0.75, 0.0, -0.25, 0.5, -0.75, 0.0, -0.75, -1.0, 0.75, 0.25, 0.75, 0.0, -0.75, -0.25, -0.5, 0.0, 0.0, 0.5, 0.0, -1.0, -1.0, 0.5, 0.5, 0.0, 0.0, 0.25, -0.75, -0.75, 0.5, -0.25, -0.25, 0.75, 0.5, 0.75, 0.25, 0.75, -0.25, -0.5, -1.0, 0.0, 0.25, -0.5, 0.75, 0.75, -0.25, -1.0, 0.5, -0.75, -0.25, 0.0, -0.5, 0.25, 0.75, 0.0, 0.5, -0.75, 0.75, -1.0, 0.25, 0.25, -1.0, -0.5, 0.5, -0.75, 1.0, 0.75, -0.25, -1.0, -0.25, 0.25, 0.25, -1.0, -0.5, -1.0, 1.0, 0.75, -1.0, 1.0, 0.25, 1.0, 0.25, 0.0, -0.25, -0.75, -1.0, -0.75, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("internal");
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.destroy();
    const array3 = new Float32Array([0.75, 0.75, -0.5, 0.25, 0.5, -0.75, 0.75, 0.75, -0.25, -0.75, 0.5, -0.25, 0.0, 0.5, 0.25, -0.5, 0.25, 0.75, 0.25, -0.25, 0.25, -0.75, -1.0, 0.5, -0.75, 0.5, -0.75, 0.0, 0.75, 0.0, -0.75, -1.0, -0.75, 0.25, -1.0, 1.0, -0.25, 1.0, 0.75, -0.5, 0.75, -0.25, -1.0, 0.0, 0.75, 0.25, 0.25, 0.75, -0.75, 0.0, 0.0, -0.75, -0.25, -0.5, 0.5, -0.75, -0.25, -1.0, -0.5, 0.25, 1.0, 0.0, -0.75, -0.75, 0.0, 0.5, 0.0, -0.5, -0.5, 1.0, 0.75, 0.0, 0.25, -0.25, 0.0, -1.0, -0.75, -0.5, -0.5, 1.0, 1.0, 0.25, 0.75, -0.75, 0.75, 0.25, 0.5, -0.75, -0.5, 1.0, -1.0, 0.5, 0.5, 0.75, -1.0, 0.0, -1.0, -1.0, -0.5, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array4 = new Float32Array([0.0, 0.0, -0.5, -0.75, 1.0, -0.5, 0.0, -1.0, 0.5, 0.75, 0.0, -0.5, -0.25, -0.5, 0.25, 0.25, 0.75, 0.0, 0.25, -1.0, 0.25, -0.25, -0.75, -0.75, -1.0, -1.0, 1.0, -1.0, -0.25, -0.75, -0.25, -0.25, 0.5, 1.0, -0.75, -1.0, 0.0, 1.0, 0.5, 0.75, -0.75, 1.0, 1.0, -0.25, 0.25, 0.5, -1.0, -0.5, -0.75, 0.0, -0.5, 1.0, 0.5, 0.75, -0.25, 0.25, 0.5, -0.25, 0.25, 0.75, 0.0, 1.0, 0.0, -0.25, -1.0, 0.75, -0.5, 0.75, 0.75, 1.0, 0.0, -0.25, -0.5, 0.75, -0.25, -0.5, 1.0, 0.25, 0.75, -1.0, -1.0, 0.0, -0.75, 0.5, 0.75, -0.5, 0.5, -0.25, -0.75, 0.25, 1.0, 0.25, 0.75, 0.25, -0.75, -0.75, 0.25, -1.0, -0.75, 0.5, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    device30.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const array5 = new Float32Array([-0.5, -0.25, -0.75, -0.5, -0.25, 0.75, 0.25, -1.0, 0.0, 0.75, 0.75, 1.0, -0.5, -0.25, -0.75, 0.25, 0.75, -0.25, -0.5, 1.0, -0.5, -0.5, -0.5, -1.0, 1.0, 0.25, -0.5, 0.25, 0.75, -0.25, -0.5, 0.0, -1.0, 0.5, 1.0, 1.0, 0.5, -0.5, 1.0, 0.0, -0.5, 0.0, -1.0, -0.75, 1.0, 0.75, 0.5, -0.5, 0.5, -0.25, -0.5, 0.0, 0.5, 0.5, 0.5, 0.25, -0.25, -1.0, 0.5, -0.75, 0.5, -1.0, -1.0, 1.0, -0.75, 0.75, 0.5, 0.75, 0.5, 0.5, 1.0, 1.0, 0.5, 0.25, 1.0, -0.5, 1.0, 0.25, 1.0, 1.0, 0.0, 0.0, -1.0, 0.0, 1.0, 0.25, -0.75, 0.5, 1.0, 0.5, 0.5, 1.0, 0.75, 0.5, 0.5, 0.0, -1.0, -0.5, 0.75, 0.25, ]);
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder400.popDebugGroup();
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device40.destroy();
    
    
    
    
    
    
    
    
    
    const array6 = new Float32Array([-1.0, -1.0, 0.5, -0.75, 0.0, 0.5, -0.5, 0.5, 0.75, 0.5, 0.0, 0.75, 0.75, -0.75, 0.25, 0.75, 0.25, -0.5, -0.25, -1.0, -0.5, -0.75, -1.0, 0.25, 0.5, 0.25, 0.25, 0.25, 0.5, 0.5, -1.0, 0.0, 0.0, 0.25, 1.0, 0.5, 0.5, 0.75, 0.5, -1.0, 0.25, 0.5, -0.25, 0.75, -0.5, 0.5, 0.0, 1.0, -0.25, -0.25, -0.75, -1.0, -0.25, -1.0, 1.0, 0.25, 1.0, 0.5, -0.5, 0.0, 0.75, -0.25, -0.25, 0.25, -0.75, -0.25, 0.0, -1.0, -0.25, 1.0, 0.75, 0.5, 1.0, 0.0, 1.0, -0.5, 0.5, 0.5, 0.0, 0.0, -0.75, 0.25, -0.75, -0.25, 0.5, -0.5, -0.75, -0.5, 1.0, -0.5, 0.5, 0.75, 0.5, 1.0, 1.0, 0.5, 0.5, 0.75, -0.5, -0.75, ]);
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array7 = new Float32Array([-0.5, 0.5, -1.0, 0.5, -0.5, -0.25, 1.0, -0.5, 0.25, 0.5, 0.5, -0.5, -0.5, 0.5, 1.0, 1.0, 1.0, 0.0, 0.5, -0.75, 1.0, -0.5, 1.0, 0.0, -0.5, -0.75, -0.5, 0.0, 0.75, -1.0, 0.75, 0.25, 0.0, -0.75, 0.75, 1.0, 0.5, -0.75, -0.25, -0.5, -0.75, 0.0, 0.5, 0.5, 1.0, 0.25, -0.75, -0.75, -0.5, -0.5, 0.25, 0.75, -0.5, 0.75, -0.25, -0.5, 0.75, 0.0, -0.75, -0.75, -0.5, -0.25, 0.25, 0.75, 0.75, 0.75, 0.75, -0.5, -0.75, -0.75, 0.5, -0.75, -0.5, -0.5, -0.5, -0.25, -1.0, -1.0, -0.25, -0.75, -1.0, 1.0, -0.75, 1.0, 0.25, 0.25, -0.75, -1.0, 0.0, 0.0, 1.0, 0.75, -0.75, -1.0, -0.5, -0.75, -0.5, -0.5, 0.75, 1.0, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device30.destroy();
    
    
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device10.pushErrorScope("validation");
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    device50.pushErrorScope("validation");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device50.popErrorScope().then((error) => {
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
    const array8 = new Float32Array([1.0, -0.25, -1.0, 0.5, -1.0, 0.75, 0.5, -0.5, -0.5, 1.0, -0.75, 0.25, 0.0, 1.0, 1.0, 0.75, -0.75, 0.75, -0.75, -0.25, -0.25, -0.75, 0.5, -0.5, 0.0, -1.0, 1.0, -0.5, -0.75, -0.5, 0.0, -0.25, 0.25, 1.0, 1.0, -0.75, -1.0, 0.0, 1.0, 0.75, 0.25, 0.25, 0.75, 0.75, -0.5, -0.25, -0.25, 0.75, 1.0, -0.25, 0.75, -0.5, -1.0, 0.75, -1.0, 0.25, 0.25, 0.25, 0.5, -0.25, 0.75, -0.25, -0.5, 1.0, 0.25, 0.0, 0.5, -1.0, 0.25, 0.5, 0.75, 0.75, 1.0, 0.25, 0.75, 0.5, 0.25, 0.5, -0.5, -1.0, -1.0, 1.0, 0.0, 1.0, 0.75, 1.0, -0.5, 0.25, 0.0, -0.75, 0.75, 0.0, 0.75, 1.0, 0.5, 1.0, -1.0, 0.25, -0.25, -0.5, ]);
    render_bundle_encoder000.popDebugGroup();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    query500.destroy()
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    device10.pushErrorScope("validation");
    
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
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
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
    device50.pushErrorScope("validation");
    
    
    
    
    
    buffer502.destroy()
    
    buffer503.destroy()
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module102,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module102,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
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
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    
    render_bundle_encoder500.popDebugGroup();
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module101,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module101,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query501 = device50.createQuerySet({
        label: "query501",
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
    render_bundle_encoder400.pushDebugGroup("group_marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module102,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module102,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    device10.destroy();
    
    
    query500.destroy()
    const array9 = new Float32Array([-0.75, 0.5, 0.25, -0.25, -0.25, -0.5, 0.0, 1.0, 0.5, -0.5, -0.25, 0.75, 0.75, -0.75, -0.75, 0.75, 0.25, 1.0, -1.0, 1.0, 1.0, 0.5, 1.0, -1.0, -0.5, 1.0, 0.0, -0.75, -1.0, -0.25, 0.75, 0.25, 1.0, 0.75, 1.0, 0.75, 1.0, 0.5, -1.0, 0.5, 0.5, 0.5, 1.0, 0.0, 0.75, -1.0, -0.25, 0.5, 0.75, -0.5, 1.0, -0.75, -1.0, 0.25, 0.25, -0.5, 1.0, 0.25, -0.25, -0.5, 0.75, 0.75, 0.75, -0.75, -1.0, -0.75, 0.75, 0.5, 0.5, 1.0, 0.0, 0.0, -0.75, 1.0, -0.5, -0.5, 0.5, 0.75, 0.75, -0.75, 1.0, 1.0, 0.0, 1.0, 0.25, 0.5, 1.0, 0.25, 0.25, 0.75, 0.5, 0.75, 0.0, -0.5, -0.5, -0.25, -1.0, -0.75, -1.0, -0.5, ]);
    query501.destroy()
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
    device50.pushErrorScope("out-of-memory");
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module506,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module506,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    buffer500.destroy()
    
    
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
    buffer504.destroy()
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module502,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module502,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
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
    
    {
        await buffer501.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer501.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer501.unmap();
        console.log(new Float32Array(data));
    }
    
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
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout503]
    });
    
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    query501.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout502]
    });
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module506,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module506,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    device40.destroy();
    
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module507,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module507,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout503]
    });
    const array10 = new Float32Array([-1.0, 0.25, 0.75, 0.25, 1.0, 1.0, -0.5, -1.0, -0.75, 0.5, -0.75, 0.0, -0.5, 1.0, 0.75, 0.75, 0.75, -1.0, -1.0, -0.25, 0.25, 0.25, 0.0, -0.5, -0.5, 0.25, -0.25, 1.0, 0.25, 0.5, -0.5, -1.0, -0.75, 0.0, 0.75, -1.0, 0.0, 1.0, 0.5, 0.0, 1.0, 0.0, 1.0, -0.75, -0.75, 0.25, 0.25, -1.0, 1.0, -0.75, 0.75, -0.5, -0.5, 0.25, -1.0, 1.0, -0.25, -0.75, 0.25, -0.5, 0.5, 0.75, 0.0, -1.0, 0.25, -0.25, -0.5, 0.0, -1.0, 0.25, 0.75, -0.25, 0.0, 0.25, -0.75, 0.75, 0.25, -0.25, -0.5, -0.25, 0.0, 0.25, 0.0, -1.0, 0.0, -0.5, -1.0, 0.25, -0.25, 0.75, 0.0, -0.5, -0.75, -1.0, 0.0, -0.25, -0.25, -1.0, -0.25, 0.25, ]);
    query501.destroy()
    
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    buffer501.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout502]
    });
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    query100.destroy()
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const array11 = new Float32Array([-0.5, -0.5, 1.0, 0.75, -0.25, 0.0, 0.25, 0.0, -1.0, -1.0, -0.5, -0.25, -1.0, 0.25, 0.25, -1.0, 0.5, -0.5, 0.0, 0.0, -0.5, -0.75, -0.5, -0.75, 0.25, -0.5, 0.75, 0.25, 0.0, -0.5, -0.75, 0.25, -1.0, 1.0, -1.0, 0.75, 0.75, -0.5, -0.25, 0.25, 0.5, 0.5, -0.75, -0.5, 1.0, 0.75, 0.25, 1.0, 0.25, -0.25, -0.25, 1.0, -0.75, 0.75, 0.25, 0.0, 1.0, -0.25, 0.0, 0.25, 0.75, -0.25, -1.0, 0.5, -0.25, -1.0, -0.75, 0.5, -0.25, 0.25, 1.0, 0.5, 0.5, 0.25, 0.25, 0.25, 0.0, -1.0, 0.75, -0.75, -0.25, 1.0, 0.0, 0.75, -0.5, 0.25, -1.0, 0.75, -0.5, 0.75, -1.0, 0.0, -1.0, -0.25, -0.25, 0.5, 0.5, 0.0, -0.25, -1.0, ]);
    query400.destroy()
    
    
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module507,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module507,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array12 = new Float32Array([0.0, 0.5, 1.0, 0.25, 0.0, 0.5, 0.0, 0.5, 0.0, 0.5, 0.5, -0.25, -0.25, 1.0, 0.5, 0.5, -0.5, -0.75, -1.0, -0.75, 0.25, -0.75, 0.0, -0.25, 0.0, 0.75, -0.5, -0.75, 0.5, 0.25, -1.0, 0.25, 0.75, -0.75, -0.25, 0.75, -0.5, -0.5, -0.5, -0.25, -0.75, 1.0, 0.75, 0.25, -0.75, 0.25, 0.75, -0.75, -1.0, -1.0, -0.75, 0.5, 0.5, 0.5, 0.0, 0.75, 0.25, 0.25, 0.25, -1.0, 0.25, -1.0, 0.0, -0.5, -0.25, -0.5, 1.0, -0.75, -0.5, 0.0, 0.75, -0.75, -0.25, -0.75, 0.5, -0.5, 0.25, -1.0, -0.5, -0.25, 0.5, -0.25, -1.0, -0.75, -0.5, -0.25, -0.75, 1.0, -0.75, -0.75, 1.0, -0.25, 0.75, -0.5, 0.0, 0.5, -0.25, -0.25, 0.0, -0.75, ]);
    
    query502.destroy()
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module507,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module507,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device50.destroy();
    
    
    device40.pushErrorScope("out-of-memory");
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query400.destroy()
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const array13 = new Float32Array([0.5, -0.25, -0.75, -0.25, 1.0, -1.0, 0.5, 0.75, 0.25, 0.75, -0.5, 0.0, 0.25, -1.0, -1.0, -0.25, 0.25, -1.0, -0.25, 0.25, 1.0, -0.25, 0.25, 0.5, -0.5, 0.25, 0.25, -0.75, -0.25, -0.75, 1.0, -0.25, -0.75, 0.5, 0.0, 1.0, 0.75, 0.0, -0.75, 0.5, -0.25, 0.5, -1.0, -1.0, 0.0, 0.25, -0.75, 0.75, -0.25, 0.5, -0.5, -0.25, -0.75, -0.5, -0.5, 0.25, -0.5, 0.25, 0.5, -1.0, 0.75, 0.0, 1.0, -0.5, 0.5, 0.0, 1.0, -0.75, -0.5, -1.0, -0.75, -1.0, -1.0, 0.0, -0.5, 0.5, 0.0, 1.0, -1.0, 0.75, -0.75, 0.75, -0.5, 1.0, 0.0, -0.75, 0.5, -0.25, -0.5, 0.25, 0.75, 0.25, 1.0, 0.25, 0.5, 0.5, 1.0, 0.75, 0.5, -0.25, ]);
    const array14 = new Float32Array([0.25, -0.25, 0.75, 0.75, 0.5, -0.25, 1.0, -0.25, 1.0, -1.0, 1.0, 0.75, -0.5, 0.5, -0.75, 0.5, -0.75, 0.0, 0.0, 0.5, -1.0, 0.0, 0.0, 0.25, 0.5, 0.25, 1.0, 1.0, 0.0, 1.0, -0.5, 0.25, -0.25, 0.75, -0.25, 0.0, -0.75, 0.0, -0.5, -0.25, 1.0, 1.0, 0.5, 0.25, 1.0, 0.25, -0.75, 0.25, 0.25, 0.0, 0.0, -0.25, 0.75, 1.0, -1.0, 1.0, 0.75, -0.25, 0.75, -0.75, 1.0, -0.25, 1.0, -1.0, 0.25, -1.0, -0.75, 0.0, 0.0, 0.25, -1.0, 0.25, 0.5, 0.75, 0.5, -0.25, 0.5, 0.5, -0.75, 0.25, 1.0, 1.0, 0.0, 0.75, 0.5, 0.25, -0.5, 0.0, -0.25, 0.75, -1.0, 0.25, -0.25, 0.0, 0.0, 1.0, 0.25, -0.25, 0.0, -0.75, ]);
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    query100.destroy()
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const array15 = new Float32Array([-0.25, 0.75, -0.75, -0.25, 1.0, 0.5, -0.75, -0.5, -0.75, 0.25, 1.0, 0.0, -0.25, 0.25, 0.0, 0.5, 1.0, -0.75, 0.75, 0.25, -0.25, 0.75, 0.25, 0.75, -1.0, 0.0, -0.75, 1.0, 0.5, 0.5, -1.0, 1.0, -1.0, 0.75, -0.5, -0.5, 0.25, 0.25, 0.5, 0.75, 0.75, 0.25, 0.0, 0.75, 1.0, 0.0, -1.0, 0.25, -0.5, 0.0, -0.5, 0.75, -1.0, 0.75, 0.25, 0.0, 0.5, 0.0, 1.0, -1.0, 0.75, 0.75, -0.5, -0.5, 0.0, -0.5, 0.75, 0.0, -0.75, 1.0, 0.25, 0.25, 0.75, -0.5, -0.75, -0.5, -1.0, 0.25, -0.5, 0.25, -1.0, -0.25, -0.75, 0.0, 0.5, 0.25, -0.75, 0.5, -1.0, 0.0, 0.75, 0.0, 0.5, -0.25, 0.5, -0.25, 1.0, -0.75, 0.0, -1.0, ]);
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
    
    
    
    buffer600.destroy()
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    device60.destroy();
    
    
    
    buffer602.destroy()
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder100.popDebugGroup();
    buffer801.destroy()
    
    
    
    buffer800.destroy()
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    
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
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    
    
    
    {
        await buffer800.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer800.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer800.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    device80.pushErrorScope("internal");
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module804.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    
    
    
    buffer802.destroy()
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module805.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module803,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module803,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    render_bundle_encoder801.pushDebugGroup("group_marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    render_bundle_encoder800.popDebugGroup();
    query800.destroy()
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder801.popDebugGroup();
    device60.pushErrorScope("internal");
    query801.destroy()
    device90.destroy();
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device80.pushErrorScope("out-of-memory");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    query800.destroy()
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    device70.destroy();
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module803,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module803,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    query800.destroy()
    const query804 = device80.createQuerySet({
        label: "query804",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder801.pushDebugGroup("group_marker");
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
        vertex: {
            module: shader_module508,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module508,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const query805 = device80.createQuerySet({
        label: "query805",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder802.pushDebugGroup("group_marker");
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    query100.destroy()
    
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_bundle_encoder801.popDebugGroup();
    const render_pipeline802 = device80.createRenderPipeline({
        label: "render_pipeline802",
        vertex: {
            module: shader_module803,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module803,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device50.destroy();
    query800.destroy()
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder100.popDebugGroup();
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query804.destroy()
    const array16 = new Float32Array([0.75, 0.75, 0.0, 0.75, 0.5, 0.0, 0.5, -0.75, -0.75, 0.5, 0.75, 0.25, 0.5, 0.0, -0.5, -1.0, 0.25, 0.5, 0.75, 1.0, -1.0, -0.5, 0.75, 0.75, -1.0, -0.25, -0.75, -1.0, 0.0, 0.25, -0.25, 1.0, 0.0, 1.0, -0.75, 0.0, 0.75, 0.25, 0.0, 0.25, -0.25, -0.75, 0.5, 0.25, 1.0, 0.75, -0.5, 0.25, 0.5, 0.25, 1.0, -1.0, 0.0, -0.25, -0.5, -1.0, 0.25, -1.0, -0.75, -0.25, 0.0, 0.5, 1.0, -1.0, 1.0, -0.75, -0.75, -0.75, -1.0, 0.5, -1.0, 0.5, 0.75, -0.5, -0.25, 1.0, 1.0, 0.75, 1.0, 0.5, 1.0, 1.0, -1.0, 0.5, 0.5, 1.0, 0.25, -0.5, -0.75, 0.5, 1.0, 0.5, -0.25, 0.25, 0.5, 1.0, 1.0, 0.25, -0.75, 1.0, ]);
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    query800.destroy()
    query804.destroy()
    query804.destroy()
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    query802.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    device110.destroy();
    
    render_bundle_encoder802.pushDebugGroup("group_marker");
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    query504.destroy()
    
    buffer1100.destroy()
    
    query805.destroy()
    
    
    
    query800.destroy()
    render_bundle_encoder800.popDebugGroup();
    
    
    render_bundle_encoder400.popDebugGroup();
    
    const array17 = new Float32Array([-0.25, 0.25, -0.25, -0.5, 0.5, 0.0, 0.5, -0.5, -0.5, 0.5, -0.5, -0.5, 1.0, 0.5, -0.75, -0.25, -0.5, -0.25, 0.5, 0.0, -1.0, -1.0, -0.25, 0.25, -0.75, 0.5, -1.0, 0.0, -0.75, 0.5, -1.0, 0.0, 0.25, 0.5, -0.25, -0.5, -0.25, -0.25, -0.5, 1.0, 0.5, 0.0, -0.25, 0.5, -1.0, 1.0, 0.5, 0.5, 1.0, 1.0, 0.0, 0.25, -0.5, -0.75, -0.5, -0.5, -1.0, -0.75, -1.0, 0.5, -0.5, 0.0, 1.0, -1.0, -0.5, -0.75, -1.0, 0.5, 0.75, 0.0, -0.5, -1.0, -0.25, 0.0, -1.0, 0.5, -1.0, 0.0, -0.75, 0.75, 0.25, -0.5, 0.75, -0.75, -0.5, 1.0, -1.0, 1.0, -0.25, 0.0, 1.0, 1.0, 0.0, 1.0, 0.0, -0.5, 0.25, 1.0, -0.5, -0.5, ]);
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout500]
    });
    query803.destroy()
    
    
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    device120.pushErrorScope("out-of-memory");
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device40.destroy();
    render_bundle_encoder802.popDebugGroup();
    query803.destroy()
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder800.popDebugGroup();
    query804.destroy()
    
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    
    
    query600.destroy()
    const buffer804 = device80.createBuffer({
        label: "buffer804",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module202,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module202,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
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
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}