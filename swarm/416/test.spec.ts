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
        powerPreference: undefined
    });
    const array0 = new Float32Array([0.5, 1.0, -0.5, 0.25, 0.0, 1.0, -0.5, 0.5, 0.75, -0.75, 0.25, 0.0, -1.0, -1.0, 0.75, -0.5, 0.75, 0.0, 0.5, 0.5, -0.25, -1.0, -0.75, -0.5, 1.0, -0.25, 1.0, -1.0, 0.25, 0.75, -0.5, 0.25, -0.75, -1.0, 0.25, 0.25, -0.5, -1.0, -0.25, -1.0, -0.75, -1.0, -1.0, 0.5, 0.75, 0.75, -0.25, 1.0, -1.0, -0.5, 0.25, 0.5, 0.75, 1.0, 0.25, -0.75, -0.5, 0.5, 0.75, 0.75, -1.0, -1.0, -0.5, -1.0, 0.0, 0.75, -0.25, -1.0, -1.0, -0.75, 0.5, -0.5, 0.0, 0.25, -0.25, 0.75, 1.0, -0.75, -0.75, -0.5, -0.5, 1.0, 1.0, -0.5, -1.0, 0.25, -0.75, -0.75, 0.25, 1.0, 0.0, 1.0, -0.75, 0.25, 0.0, 0.0, 0.0, -1.0, 1.0, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array1 = new Float32Array([0.0, -1.0, -0.5, 1.0, 0.25, -0.75, 0.0, 0.25, 0.25, -0.25, 0.5, 1.0, -0.25, -0.25, -0.5, 1.0, 0.0, -0.75, 0.0, -0.5, 0.75, -0.75, -0.5, -0.25, 0.5, -1.0, 0.75, 0.75, 0.5, 0.75, -0.5, -0.75, -0.25, -0.5, -0.25, 0.0, -0.5, 0.25, 0.0, 0.0, 0.5, -0.25, 0.0, 0.0, 0.0, 0.5, 0.75, -0.25, 1.0, 0.5, 0.25, -0.75, 0.0, 1.0, 1.0, 0.25, 0.5, -0.5, -0.5, 0.75, 0.25, 1.0, -1.0, -0.75, 1.0, 0.0, -0.75, -1.0, 0.0, 0.0, -0.75, 1.0, 1.0, -0.25, -0.25, -1.0, 0.5, 0.5, 0.0, -0.75, -1.0, 0.0, -0.5, 0.75, 0.0, 0.5, -0.75, 0.25, 1.0, 0.75, -1.0, 0.75, 0.25, 0.25, 0.0, -1.0, 0.0, -1.0, 1.0, 0.25, ]);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    buffer000.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.destroy();
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([0.75, -0.75, -0.75, -1.0, -1.0, -1.0, -1.0, -0.75, 0.0, 1.0, 0.25, 0.25, -0.75, 0.0, -0.25, -0.75, 0.0, -0.5, 0.75, 0.5, -1.0, -0.25, -0.75, -0.75, -0.75, 0.25, 0.5, -1.0, 0.0, -0.25, 0.0, 1.0, 0.75, -0.75, -1.0, 0.0, 0.0, -0.5, 0.25, 1.0, 0.0, -0.25, -0.25, 0.75, 0.25, -0.5, 0.0, 0.75, 0.0, 0.5, 0.5, -0.5, 0.0, 0.25, 0.75, -1.0, 0.0, 0.25, -0.25, -0.75, 0.25, 1.0, -0.75, 0.5, -0.75, -0.75, -0.75, 0.0, -1.0, 0.5, -0.75, 0.0, 0.25, -0.25, -1.0, 0.5, 0.0, -0.75, 0.75, 0.0, 1.0, -0.5, -0.75, 0.5, 0.25, -1.0, 1.0, 0.75, -1.0, 1.0, 0.0, 0.75, 0.0, 0.0, -0.75, -0.5, -0.25, 0.75, -0.75, -0.25, ]);
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device60.destroy();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device30.destroy();
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    device50.destroy();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const array3 = new Float32Array([-1.0, 0.75, -0.75, 0.5, -0.5, 0.25, 0.0, -1.0, 0.5, -0.5, 0.5, 0.75, -0.75, 0.5, -0.75, 1.0, 0.5, -0.75, 0.25, -1.0, 0.5, -0.5, 1.0, 0.75, -0.75, 0.0, -0.75, 1.0, 0.25, -1.0, -1.0, -0.5, 1.0, -1.0, 0.75, 0.5, -0.75, 0.5, -0.25, -1.0, 1.0, 0.25, -0.75, 0.5, -0.25, 0.75, 0.5, 0.25, -0.5, 0.25, -0.75, 0.25, -0.25, -0.75, -0.75, 1.0, 0.75, 0.0, 1.0, -0.75, -1.0, -0.75, -0.5, 0.25, -0.25, -0.5, -0.75, -0.5, -0.75, -1.0, -1.0, 0.75, -0.75, -0.25, -0.75, 0.25, -0.75, 0.0, -0.75, -0.25, -0.25, -0.25, -0.5, -0.5, 0.25, 0.0, -1.0, 0.25, 0.75, -0.5, -0.75, 0.25, -1.0, 0.5, -0.25, 0.25, 0.75, -0.5, 0.75, 0.25, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device40.destroy();
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    
    device70.destroy();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
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
    device20.pushErrorScope("validation");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder201.popDebugGroup();
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    device20.destroy();
    
    const array4 = new Float32Array([-1.0, -0.25, -0.5, 1.0, 0.5, -0.5, -0.75, 0.75, 0.75, 0.25, 0.75, 1.0, 0.5, 0.25, 1.0, 0.25, -0.25, -0.5, 0.25, 0.75, 0.75, 0.75, -1.0, -0.75, 1.0, 0.25, -0.5, -1.0, 1.0, 0.25, 0.5, 0.5, 1.0, -1.0, -1.0, 0.75, 0.0, 0.0, -0.25, -0.25, -0.75, -0.75, 0.0, 0.0, -0.5, 1.0, -0.25, 0.75, 0.5, 0.5, -0.75, 0.5, 0.5, 1.0, 0.25, 0.25, -1.0, -0.25, 0.75, 1.0, 0.25, 0.5, -0.5, 0.75, 0.5, 0.75, 0.5, 0.75, -0.75, 1.0, 0.0, -0.75, 0.0, -0.75, -0.25, 0.0, 1.0, 0.75, -0.5, 0.5, -0.25, -0.75, 0.25, -0.25, -1.0, -0.75, 0.0, 0.25, 0.75, -0.75, 0.0, 0.25, 0.25, -0.5, -0.75, -1.0, -1.0, -1.0, 0.5, 0.25, ]);
    device80.destroy();
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    const array5 = new Float32Array([-0.25, -0.75, 0.25, 0.25, 0.75, 1.0, -1.0, 1.0, -0.75, 0.25, -0.25, 0.25, 0.75, -0.5, -0.25, -0.75, -0.25, -0.5, 0.75, -0.75, 0.5, 0.5, 0.75, -1.0, 0.5, 0.75, -0.75, 1.0, 0.5, 0.0, -1.0, -0.75, 0.25, 0.75, 0.5, 0.5, 0.5, -0.5, 0.0, 1.0, 0.25, -0.75, 0.75, 0.25, -0.75, -0.25, 0.0, 0.25, -0.5, -1.0, -0.5, -0.5, 0.5, 0.75, -0.5, -1.0, 0.0, 1.0, 0.25, 0.0, -0.75, -0.25, 0.25, 0.75, 0.25, 0.25, 0.25, 0.75, 0.75, 0.0, 0.25, 0.25, -1.0, -0.25, -0.75, 0.25, -0.25, 1.0, 0.0, 1.0, 1.0, -0.25, -1.0, -0.25, -0.25, 1.0, -1.0, -0.75, -0.25, 0.25, 0.5, -0.5, 0.25, 0.75, -0.5, 0.5, 0.75, 0.25, 0.0, -0.75, ]);
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const array6 = new Float32Array([0.25, -0.25, -0.5, -0.25, 1.0, 0.5, 0.75, 0.5, 0.5, -0.5, 0.25, -1.0, 0.25, -0.5, -0.5, 0.75, -0.25, 0.5, -0.5, 0.5, -0.5, 0.0, 0.75, -0.5, 0.25, 0.75, 1.0, -0.5, -1.0, 1.0, -0.5, 0.25, -0.5, -0.5, 0.25, 1.0, -0.5, 0.5, -0.25, 0.0, -1.0, 0.0, 1.0, 0.25, 0.25, 1.0, -1.0, 0.75, -0.75, 1.0, 0.25, -0.75, 0.75, 0.75, -0.5, -0.5, -0.5, 0.25, 0.25, 0.0, 1.0, 0.0, -0.75, -0.5, 0.25, 0.75, 0.0, 0.25, 1.0, -0.5, -1.0, -0.75, -0.5, 0.75, 0.5, -1.0, -1.0, -0.25, 1.0, -0.25, -0.25, 1.0, -0.75, 0.25, -0.5, -0.75, 0.75, -0.75, 0.75, 0.75, 0.25, 1.0, 0.5, 0.0, 1.0, 0.75, 0.0, -0.75, 0.5, 0.0, ]);
    
    device90.destroy();
    
    const array7 = new Float32Array([0.75, 0.25, -0.75, 0.25, 0.25, -0.25, 1.0, 0.25, 0.0, 0.75, 1.0, -1.0, -0.25, 1.0, -1.0, 0.75, 0.75, 0.25, -1.0, -0.75, 0.5, -0.5, 0.5, 1.0, -1.0, -0.5, -0.25, -0.5, 0.25, -0.75, 0.0, 0.5, -0.25, -0.25, 1.0, 0.25, 0.5, 0.75, 0.0, 0.25, 1.0, 0.0, 0.25, -0.5, 0.75, -0.5, 0.0, -0.75, -1.0, -0.75, -1.0, 1.0, -0.75, -1.0, -0.25, 0.0, -1.0, -0.75, 1.0, 0.75, 1.0, 1.0, 0.0, -0.75, 0.0, 0.5, -1.0, -0.75, 0.25, 1.0, 0.0, 0.5, -0.5, 0.0, -0.75, -1.0, -0.25, -0.75, -0.75, 0.75, -0.75, -0.75, 0.75, -0.75, -0.75, -1.0, 0.25, -0.25, -0.25, 0.5, 0.5, 0.75, 0.25, 0.75, -0.25, 0.25, -0.25, -1.0, 0.0, -0.5, ]);
    
    
    const array8 = new Float32Array([-0.5, -0.25, -0.75, 1.0, -0.5, 0.5, -0.25, -1.0, 0.0, 0.25, -0.75, -0.75, -1.0, -0.75, 1.0, -1.0, 1.0, -0.5, -1.0, 0.5, 0.0, 0.75, -0.75, -1.0, -1.0, 1.0, 0.25, -0.5, -0.75, -0.25, -0.5, -0.25, 0.75, -1.0, -0.25, 0.75, 0.5, -0.75, -0.75, -1.0, 0.0, -0.25, 0.5, -0.25, 0.75, 0.25, 0.75, -1.0, 0.0, 0.75, -0.25, 0.5, -0.75, 0.5, -1.0, 1.0, -0.75, 0.5, 0.25, -0.25, 0.5, 0.75, 0.0, -0.5, -1.0, -0.25, -0.75, -1.0, -0.75, 0.0, -0.25, 0.75, 0.0, -1.0, 0.25, -0.5, -0.25, 0.0, -1.0, 0.75, 1.0, -0.25, -0.25, 0.0, -0.25, 0.5, -0.25, 0.25, 0.25, 0.5, -0.25, 0.75, 1.0, 0.0, -1.0, -0.5, -0.5, 0.25, 0.75, 1.0, ]);
    
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device100.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array9 = new Float32Array([0.5, 0.25, 1.0, 0.75, 0.75, -0.5, 0.75, -0.5, 0.25, 0.5, -1.0, 0.75, 0.25, 0.0, 0.0, -1.0, 1.0, 0.25, -1.0, 1.0, -0.75, 1.0, 1.0, 0.5, -1.0, -0.5, -0.75, 0.25, -0.5, 0.75, -1.0, 0.5, 0.75, -0.75, -1.0, -0.75, 0.75, -0.75, 0.25, 0.0, -0.25, 0.75, 0.25, -0.25, 0.0, 0.5, -0.75, 1.0, 0.5, 0.5, 0.5, 0.5, 0.75, 0.75, -1.0, 0.5, 0.5, -0.75, 0.0, -0.5, 0.25, -1.0, 1.0, 0.5, -0.75, -0.5, 0.0, 0.75, 0.5, 0.25, 1.0, 0.0, 0.5, -0.5, -0.25, -1.0, -0.75, 0.25, 0.0, -0.25, 1.0, -0.5, 0.75, -1.0, -0.25, -0.75, -0.5, 0.25, -1.0, -1.0, 0.25, -1.0, -0.5, 0.75, -0.25, -0.5, 0.0, 0.75, -1.0, 0.0, ]);
    
    
    
    
    
    
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array10 = new Float32Array([-0.25, 0.0, 0.75, 0.75, 1.0, 0.25, -1.0, 0.0, 0.0, 0.25, -0.25, 0.25, 0.25, 0.5, -0.25, 0.0, 0.75, -0.25, 0.5, 0.0, 0.25, 1.0, -0.25, 1.0, 0.25, 0.0, -0.5, 0.5, -1.0, 0.0, -1.0, -0.75, 0.0, 0.75, -0.5, 0.75, 1.0, -1.0, 0.0, 0.0, -0.5, 0.5, -1.0, -1.0, 0.5, -0.25, 0.5, 0.0, -0.5, 0.5, -0.5, -0.75, -0.75, 1.0, -0.5, -0.75, -1.0, -0.5, -0.25, -0.5, 1.0, 0.0, 0.75, 0.25, 0.5, -0.25, 0.75, -1.0, -1.0, -0.25, 0.25, -0.75, -1.0, -0.75, 0.75, 1.0, -0.75, -0.75, 0.0, 0.75, 0.75, 0.5, 0.0, -0.5, -0.5, -0.25, 0.75, 0.25, 0.0, 0.5, 0.75, -0.75, 1.0, -0.5, 0.0, -0.25, 0.0, 0.5, 0.0, -1.0, ]);
    
    
    const array11 = new Float32Array([-0.25, 0.25, 0.75, -1.0, -0.75, -1.0, -0.5, -0.5, -0.5, 0.0, -0.75, 1.0, 0.5, -0.75, 0.0, 0.0, 1.0, -0.75, -0.75, -0.25, -1.0, -0.5, -1.0, -0.75, 1.0, 0.0, -0.75, -0.75, -0.75, 0.75, 0.0, -1.0, 0.75, 0.75, 0.25, 1.0, 0.25, 0.75, -0.75, 0.5, 0.75, -0.5, -0.25, 0.75, -0.75, -0.25, -1.0, 0.0, -1.0, 0.75, -0.5, 0.25, 0.25, 0.0, -0.25, 0.25, 0.0, -0.5, -0.75, -0.75, -0.75, -1.0, 0.75, -0.25, 0.5, -0.25, 0.0, -0.25, 1.0, 0.75, 0.75, 0.0, 0.75, -0.25, -1.0, 0.75, 0.0, -0.75, 0.5, 0.5, 0.75, -1.0, -0.75, -0.5, 0.75, 0.5, -0.25, 0.0, 1.0, -1.0, 0.25, -0.75, -0.25, 1.0, 0.75, 0.25, 0.75, 0.25, 1.0, 0.5, ]);
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const array12 = new Float32Array([0.25, 1.0, -0.5, -0.25, 0.75, 0.0, -0.75, 0.75, -0.25, 1.0, 0.75, 0.5, 0.25, 0.25, -0.5, -0.5, -0.5, -0.75, 0.25, 0.0, 0.75, 0.75, 1.0, 0.0, 0.5, 0.25, 1.0, -1.0, 0.25, -0.75, 1.0, 1.0, -0.75, 0.5, -0.5, -0.75, 0.25, 1.0, 0.5, 0.5, -1.0, -1.0, -1.0, -1.0, 0.5, 1.0, 0.0, 0.0, -1.0, 1.0, -0.5, 0.75, 0.5, 1.0, -1.0, 0.0, -0.5, 0.5, 1.0, 0.0, -0.5, -0.75, -1.0, 1.0, -0.5, -0.5, 0.25, -0.75, -1.0, -1.0, 0.0, 0.5, -1.0, 0.0, -0.75, 0.25, 1.0, -0.5, -0.25, 1.0, 0.75, 0.25, -0.25, 0.0, -0.75, -0.5, 0.75, 0.0, -0.75, 0.0, -0.75, 1.0, -1.0, -0.25, -0.5, -1.0, 0.0, -0.75, 0.25, -0.5, ]);
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    device120.pushErrorScope("internal");
    
    
    
    
    
    
    
    
    
    
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    const render_bundle_encoder1201 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1201",
        colorFormats: ["bgra8unorm"]
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const bind_group_layout1201 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1201",
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
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout1202 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1202",
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
    
    
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1202]
    });
    
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    device130.pushErrorScope("internal");
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
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
    
    render_bundle_encoder1201.pushDebugGroup("group_marker");
    const pipeline_layout1201 = device120.createPipelineLayout({ 
        label: "pipeline_layout1201",
        bindGroupLayouts: [bind_group_layout1200]
    });
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    render_bundle_encoder1300.pushDebugGroup("group_marker");
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder1300.popDebugGroup();
    render_bundle_encoder1300.pushDebugGroup("group_marker");
    
    render_bundle_encoder1201.popDebugGroup();
    
    const compute_pipeline1200 = device120.createComputePipeline({
        label: "compute_pipeline1200",
        layout: pipeline_layout1201,
        compute: {
            module: shader_module1200,
            entryPoint: "main"
        }
    });
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    const compute_pipeline1201 = device120.createComputePipeline({
        label: "compute_pipeline1201",
        layout: pipeline_layout1201,
        compute: {
            module: shader_module1202,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1202 = device120.createComputePipeline({
        label: "compute_pipeline1202",
        layout: pipeline_layout1200,
        compute: {
            module: shader_module1201,
            entryPoint: "main"
        }
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const compute_pipeline1203 = device120.createComputePipeline({
        label: "compute_pipeline1203",
        layout: pipeline_layout1201,
        compute: {
            module: shader_module1201,
            entryPoint: "main"
        }
    });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    device140.destroy();
    
    
    
    
    const compute_pipeline1204 = device120.createComputePipeline({
        label: "compute_pipeline1204",
        layout: pipeline_layout1200,
        compute: {
            module: shader_module1200,
            entryPoint: "main"
        }
    });
    
    
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    const pipeline_layout1202 = device120.createPipelineLayout({ 
        label: "pipeline_layout1202",
        bindGroupLayouts: [bind_group_layout1200]
    });
    const pipeline_layout1203 = device120.createPipelineLayout({ 
        label: "pipeline_layout1203",
        bindGroupLayouts: [bind_group_layout1201]
    });
    const compute_pipeline1205 = device120.createComputePipeline({
        label: "compute_pipeline1205",
        layout: pipeline_layout1200,
        compute: {
            module: shader_module1200,
            entryPoint: "main"
        }
    });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const compute_pipeline1206 = device120.createComputePipeline({
        label: "compute_pipeline1206",
        layout: pipeline_layout1201,
        compute: {
            module: shader_module1202,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder1301 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1301",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    const bind_group_layout1203 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1203",
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
    const compute_pipeline1207 = device120.createComputePipeline({
        label: "compute_pipeline1207",
        layout: pipeline_layout1200,
        compute: {
            module: shader_module1202,
            entryPoint: "main"
        }
    });
    const sampler1302 = device130.createSampler( { label: "sampler1302" } );
    const bind_group_layout1301 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1301",
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
    const render_bundle_encoder1202 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1202",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1208 = device120.createComputePipeline({
        label: "compute_pipeline1208",
        layout: pipeline_layout1200,
        compute: {
            module: shader_module1201,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder1100.pushDebugGroup("group_marker");
    const sampler1303 = device130.createSampler( { label: "sampler1303" } );
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const pipeline_layout1204 = device120.createPipelineLayout({ 
        label: "pipeline_layout1204",
        bindGroupLayouts: [bind_group_layout1201]
    });
    const pipeline_layout1205 = device120.createPipelineLayout({ 
        label: "pipeline_layout1205",
        bindGroupLayouts: [bind_group_layout1202]
    });
    render_bundle_encoder1100.popDebugGroup();
    const bind_group_layout1302 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1302",
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
    const pipeline_layout1300 = device130.createPipelineLayout({ 
        label: "pipeline_layout1300",
        bindGroupLayouts: [bind_group_layout1300]
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout1206 = device120.createPipelineLayout({ 
        label: "pipeline_layout1206",
        bindGroupLayouts: [bind_group_layout1202]
    });
    const compute_pipeline1209 = device120.createComputePipeline({
        label: "compute_pipeline1209",
        layout: pipeline_layout1203,
        compute: {
            module: shader_module1201,
            entryPoint: "main"
        }
    });
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline12010 = device120.createComputePipeline({
        label: "compute_pipeline12010",
        layout: pipeline_layout1200,
        compute: {
            module: shader_module1200,
            entryPoint: "main"
        }
    });
    const pipeline_layout1301 = device130.createPipelineLayout({ 
        label: "pipeline_layout1301",
        bindGroupLayouts: [bind_group_layout1300]
    });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    
    
    var shader_module1203_code = "";
    try {
        shader_module1203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1203 = await device120.createShaderModule({ label: "shader_module1203", code: shader_module1203_code })
    const compute_pipeline12011 = device120.createComputePipeline({
        label: "compute_pipeline12011",
        layout: pipeline_layout1206,
        compute: {
            module: shader_module1202,
            entryPoint: "main"
        }
    });
    
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline12012 = device120.createComputePipeline({
        label: "compute_pipeline12012",
        layout: pipeline_layout1205,
        compute: {
            module: shader_module1203,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout1207 = device120.createPipelineLayout({ 
        label: "pipeline_layout1207",
        bindGroupLayouts: [bind_group_layout1200]
    });
    device110.destroy();
    const compute_pipeline12013 = device120.createComputePipeline({
        label: "compute_pipeline12013",
        layout: pipeline_layout1204,
        compute: {
            module: shader_module1201,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline12014 = device120.createComputePipeline({
        label: "compute_pipeline12014",
        layout: pipeline_layout1205,
        compute: {
            module: shader_module1200,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline12015 = device120.createComputePipeline({
        label: "compute_pipeline12015",
        layout: pipeline_layout1201,
        compute: {
            module: shader_module1202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder1200.pushDebugGroup("group_marker");
    
    
    
    const pipeline_layout1208 = device120.createPipelineLayout({ 
        label: "pipeline_layout1208",
        bindGroupLayouts: [bind_group_layout1201]
    });
    const compute_pipeline12016 = device120.createComputePipeline({
        label: "compute_pipeline12016",
        layout: pipeline_layout1202,
        compute: {
            module: shader_module1201,
            entryPoint: "main"
        }
    });
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline12017 = device120.createComputePipeline({
        label: "compute_pipeline12017",
        layout: pipeline_layout1204,
        compute: {
            module: shader_module1203,
            entryPoint: "main"
        }
    });
    const compute_pipeline12018 = device120.createComputePipeline({
        label: "compute_pipeline12018",
        layout: pipeline_layout1204,
        compute: {
            module: shader_module1200,
            entryPoint: "main"
        }
    });
    
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    
    var shader_module1204_code = "";
    try {
        shader_module1204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1204 = await device120.createShaderModule({ label: "shader_module1204", code: shader_module1204_code })
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    
    const compute_pipeline12019 = device120.createComputePipeline({
        label: "compute_pipeline12019",
        layout: pipeline_layout1206,
        compute: {
            module: shader_module1200,
            entryPoint: "main"
        }
    });
    var shader_module1205_code = "";
    try {
        shader_module1205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1205 = await device120.createShaderModule({ label: "shader_module1205", code: shader_module1205_code })
    const buffer1202 = device120.createBuffer({
        label: "buffer1202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline12020 = device120.createComputePipeline({
        label: "compute_pipeline12020",
        layout: pipeline_layout1208,
        compute: {
            module: shader_module1203,
            entryPoint: "main"
        }
    });
    buffer1200.destroy()
    render_bundle_encoder1201.pushDebugGroup("group_marker");
    device120.destroy();
    
    const array13 = new Float32Array([0.0, 1.0, 0.5, -0.75, -0.25, -0.25, -1.0, -0.25, -1.0, -0.25, -1.0, -0.5, -1.0, -0.5, 0.5, 0.5, -1.0, 0.5, -1.0, 0.25, -0.25, 0.25, -1.0, 1.0, 0.75, -1.0, -0.25, 0.75, -1.0, 0.0, 0.25, 0.25, 0.5, -0.5, -1.0, -0.75, 1.0, 1.0, -0.5, -1.0, 0.75, -0.5, 0.5, -1.0, 0.25, 1.0, 0.5, -1.0, 0.25, -1.0, 0.25, -1.0, -0.25, -1.0, -1.0, -0.25, -0.75, -0.25, -0.25, 0.75, -0.5, 0.25, 0.5, 0.5, 0.5, -1.0, -0.5, 0.75, -0.75, -0.25, -0.5, -0.75, -0.75, 0.0, 0.75, 0.75, -0.5, 0.0, 0.25, -1.0, -0.75, -0.75, -0.75, -1.0, 0.75, 0.5, 1.0, -0.75, -1.0, -0.75, 0.25, -0.5, 0.0, 0.25, 0.5, -0.25, -0.25, -0.75, -1.0, 0.25, ]);
    
    render_bundle_encoder1300.popDebugGroup();
    
    
    
    const pipeline_layout1302 = device130.createPipelineLayout({ 
        label: "pipeline_layout1302",
        bindGroupLayouts: [bind_group_layout1301]
    });
    
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    const array14 = new Float32Array([0.25, -1.0, -1.0, 0.5, 0.0, -1.0, -0.5, -0.75, 0.0, 1.0, 0.25, -0.25, -0.25, 0.0, 0.75, -0.75, -0.25, 0.0, -1.0, 0.25, 1.0, 0.5, 0.75, -0.5, -0.25, 0.0, 0.25, 1.0, 0.0, -0.25, 0.25, 0.25, -1.0, -0.5, -0.75, -0.5, -0.5, 0.25, 0.0, -1.0, -0.5, 1.0, -1.0, -0.75, -0.25, 0.0, 0.75, -0.25, 0.75, 0.0, 0.5, 0.0, 0.75, 0.25, 0.0, -1.0, -0.75, -0.25, 0.5, -0.5, 1.0, 0.5, -1.0, 1.0, -0.25, 0.75, -1.0, -0.25, 0.75, 0.5, -0.5, 1.0, 1.0, 0.25, 0.0, 0.0, -0.75, -0.75, 0.75, -0.5, 0.0, 0.0, -0.5, 0.25, 1.0, -0.25, -1.0, -0.5, -1.0, -0.5, 0.5, -0.75, -0.5, 0.75, 0.5, 1.0, 1.0, -1.0, 0.75, -1.0, ]);
    const pipeline_layout1303 = device130.createPipelineLayout({ 
        label: "pipeline_layout1303",
        bindGroupLayouts: [bind_group_layout1302]
    });
    
    
    
    
    
    const pipeline_layout1304 = device130.createPipelineLayout({ 
        label: "pipeline_layout1304",
        bindGroupLayouts: [bind_group_layout1301]
    });
    device130.pushErrorScope("validation");
    const compute_pipeline1300 = device130.createComputePipeline({
        label: "compute_pipeline1300",
        layout: pipeline_layout1303,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const pipeline_layout1305 = device130.createPipelineLayout({ 
        label: "pipeline_layout1305",
        bindGroupLayouts: [bind_group_layout1301]
    });
    const compute_pipeline1301 = device130.createComputePipeline({
        label: "compute_pipeline1301",
        layout: pipeline_layout1301,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder1300.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder1301.pushDebugGroup("group_marker");
    
    
    const compute_pipeline1302 = device130.createComputePipeline({
        label: "compute_pipeline1302",
        layout: pipeline_layout1303,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline1303 = device130.createComputePipeline({
        label: "compute_pipeline1303",
        layout: pipeline_layout1301,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout1306 = device130.createPipelineLayout({ 
        label: "pipeline_layout1306",
        bindGroupLayouts: [bind_group_layout1301]
    });
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    const pipeline_layout1307 = device130.createPipelineLayout({ 
        label: "pipeline_layout1307",
        bindGroupLayouts: [bind_group_layout1301]
    });
    const compute_pipeline1304 = device130.createComputePipeline({
        label: "compute_pipeline1304",
        layout: pipeline_layout1300,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    const compute_pipeline1305 = device130.createComputePipeline({
        label: "compute_pipeline1305",
        layout: pipeline_layout1302,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    const compute_pipeline1306 = device130.createComputePipeline({
        label: "compute_pipeline1306",
        layout: pipeline_layout1306,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder1302 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1302",
        colorFormats: ["bgra8unorm"]
    });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder1301.popDebugGroup();
    render_bundle_encoder1301.pushDebugGroup("group_marker");
    
    
    buffer1300.destroy()
    
    const compute_pipeline1307 = device130.createComputePipeline({
        label: "compute_pipeline1307",
        layout: pipeline_layout1306,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    const compute_pipeline1308 = device130.createComputePipeline({
        label: "compute_pipeline1308",
        layout: pipeline_layout1305,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    const sampler1501 = device150.createSampler( { label: "sampler1501" } );
    
    
    
    
    const compute_pipeline1309 = device130.createComputePipeline({
        label: "compute_pipeline1309",
        layout: pipeline_layout1302,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout1500 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1500",
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
    const pipeline_layout1308 = device130.createPipelineLayout({ 
        label: "pipeline_layout1308",
        bindGroupLayouts: [bind_group_layout1302]
    });
    const compute_pipeline13010 = device130.createComputePipeline({
        label: "compute_pipeline13010",
        layout: pipeline_layout1307,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline13011 = device130.createComputePipeline({
        label: "compute_pipeline13011",
        layout: pipeline_layout1302,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    const compute_pipeline13012 = device130.createComputePipeline({
        label: "compute_pipeline13012",
        layout: pipeline_layout1306,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    render_bundle_encoder1300.popDebugGroup();
    const compute_pipeline13013 = device130.createComputePipeline({
        label: "compute_pipeline13013",
        layout: pipeline_layout1303,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    const bind_group_layout1303 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1303",
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
    
    
    
    const bind_group_layout1304 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1304",
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
    const compute_pipeline13014 = device130.createComputePipeline({
        label: "compute_pipeline13014",
        layout: pipeline_layout1308,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    
    
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    
    device150.destroy();
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    
    render_bundle_encoder1301.popDebugGroup();
    
    
    const compute_pipeline13015 = device130.createComputePipeline({
        label: "compute_pipeline13015",
        layout: pipeline_layout1306,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    device160.destroy();
    render_bundle_encoder1300.pushDebugGroup("group_marker");
    
    const compute_pipeline13016 = device130.createComputePipeline({
        label: "compute_pipeline13016",
        layout: pipeline_layout1303,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    const compute_pipeline13017 = device130.createComputePipeline({
        label: "compute_pipeline13017",
        layout: pipeline_layout1306,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    const compute_pipeline13018 = device130.createComputePipeline({
        label: "compute_pipeline13018",
        layout: pipeline_layout1305,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder1302.pushDebugGroup("group_marker");
    
    
    
    const compute_pipeline13019 = device130.createComputePipeline({
        label: "compute_pipeline13019",
        layout: pipeline_layout1300,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout1309 = device130.createPipelineLayout({ 
        label: "pipeline_layout1309",
        bindGroupLayouts: [bind_group_layout1302]
    });
    
    const compute_pipeline13020 = device130.createComputePipeline({
        label: "compute_pipeline13020",
        layout: pipeline_layout1307,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    const bind_group_layout1305 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1305",
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
    const compute_pipeline13021 = device130.createComputePipeline({
        label: "compute_pipeline13021",
        layout: pipeline_layout1302,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    const pipeline_layout13010 = device130.createPipelineLayout({ 
        label: "pipeline_layout13010",
        bindGroupLayouts: [bind_group_layout1300]
    });
    render_bundle_encoder1300.popDebugGroup();
    
    
    
    render_bundle_encoder1301.pushDebugGroup("group_marker");
    render_bundle_encoder1300.pushDebugGroup("group_marker");
    const compute_pipeline13022 = device130.createComputePipeline({
        label: "compute_pipeline13022",
        layout: pipeline_layout1303,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline13023 = device130.createComputePipeline({
        label: "compute_pipeline13023",
        layout: pipeline_layout1309,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline13024 = device130.createComputePipeline({
        label: "compute_pipeline13024",
        layout: pipeline_layout1306,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    const compute_pipeline13025 = device130.createComputePipeline({
        label: "compute_pipeline13025",
        layout: pipeline_layout1308,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder1302.popDebugGroup();
    const compute_pipeline13026 = device130.createComputePipeline({
        label: "compute_pipeline13026",
        layout: pipeline_layout1303,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline13027 = device130.createComputePipeline({
        label: "compute_pipeline13027",
        layout: pipeline_layout1307,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline13028 = device130.createComputePipeline({
        label: "compute_pipeline13028",
        layout: pipeline_layout1306,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    const compute_pipeline13029 = device130.createComputePipeline({
        label: "compute_pipeline13029",
        layout: pipeline_layout1306,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    const array15 = new Float32Array([-0.5, 0.0, -0.25, 1.0, 0.5, -0.25, -0.75, 0.0, 0.5, 0.25, -1.0, 0.25, -1.0, 0.75, -1.0, 1.0, 1.0, -1.0, -0.25, 0.75, 0.0, 0.0, 0.0, 0.0, -0.5, -0.5, 0.75, 0.75, -0.75, -0.5, -0.25, -0.75, 1.0, 0.25, -0.5, 0.25, -0.5, 0.0, -0.75, 0.0, -0.5, -1.0, 0.75, -0.5, 0.25, 0.75, -0.5, 0.75, 0.5, 0.0, -0.75, 1.0, -0.5, 0.5, 0.5, 0.0, 0.0, 1.0, 1.0, 0.75, 0.75, -0.75, 0.75, -0.75, -0.5, 0.5, -1.0, 0.25, 1.0, 0.25, 0.75, 0.75, -0.25, -0.75, -0.75, 0.25, 0.75, -1.0, -1.0, 0.0, -0.75, -1.0, 0.75, 0.25, -0.25, -0.25, 0.0, 0.25, 0.5, 1.0, -0.5, -1.0, -0.25, -0.25, -0.25, 0.0, 0.5, 1.0, -0.5, 0.75, ]);
    const compute_pipeline13030 = device130.createComputePipeline({
        label: "compute_pipeline13030",
        layout: pipeline_layout1308,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    const pipeline_layout13011 = device130.createPipelineLayout({ 
        label: "pipeline_layout13011",
        bindGroupLayouts: [bind_group_layout1300]
    });
    
    const compute_pipeline13031 = device130.createComputePipeline({
        label: "compute_pipeline13031",
        layout: pipeline_layout1301,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    const compute_pipeline13032 = device130.createComputePipeline({
        label: "compute_pipeline13032",
        layout: pipeline_layout1308,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout13012 = device130.createPipelineLayout({ 
        label: "pipeline_layout13012",
        bindGroupLayouts: [bind_group_layout1300]
    });
    const pipeline_layout13013 = device130.createPipelineLayout({ 
        label: "pipeline_layout13013",
        bindGroupLayouts: [bind_group_layout1303]
    });
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    const adapter17 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder1300.popDebugGroup();
    
    var shader_module1302_code = "";
    try {
        shader_module1302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1302 = await device130.createShaderModule({ label: "shader_module1302", code: shader_module1302_code })
    const compute_pipeline13033 = device130.createComputePipeline({
        label: "compute_pipeline13033",
        layout: pipeline_layout13011,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    
    const array16 = new Float32Array([0.5, 0.5, 0.75, 1.0, 0.75, -0.75, 0.75, 0.75, 0.0, 1.0, -1.0, 0.75, -0.25, -0.25, -0.75, 0.5, 0.75, 0.5, -0.25, -1.0, 0.0, -0.25, 0.0, -1.0, -0.25, -1.0, 0.0, 1.0, -1.0, 1.0, 0.25, -1.0, 0.75, 1.0, -1.0, -0.5, 0.25, -0.75, -0.75, 0.25, 0.75, -1.0, -0.75, 1.0, -0.75, -0.5, -0.25, 0.75, 0.0, 1.0, 0.75, -0.75, 0.0, 0.5, 1.0, 0.0, 1.0, -1.0, 0.25, 0.5, 0.75, 0.0, -0.25, -0.5, 0.0, -0.5, 1.0, 0.25, -0.25, 1.0, -0.25, 0.25, 1.0, -0.25, -0.75, -1.0, -0.25, -0.5, -0.5, 0.5, -0.75, -0.25, -0.75, 0.5, 0.5, -0.75, 0.25, 0.25, -0.25, -0.75, 0.25, 0.25, -0.5, 0.75, 0.5, -0.25, -0.5, 0.25, -1.0, -0.75, ]);
    const compute_pipeline13034 = device130.createComputePipeline({
        label: "compute_pipeline13034",
        layout: pipeline_layout13010,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    const compute_pipeline13035 = device130.createComputePipeline({
        label: "compute_pipeline13035",
        layout: pipeline_layout1300,
        compute: {
            module: shader_module1302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder1302.pushDebugGroup("group_marker");
    const compute_pipeline13036 = device130.createComputePipeline({
        label: "compute_pipeline13036",
        layout: pipeline_layout1304,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    const adapter18 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline13037 = device130.createComputePipeline({
        label: "compute_pipeline13037",
        layout: pipeline_layout1303,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline13038 = device130.createComputePipeline({
        label: "compute_pipeline13038",
        layout: pipeline_layout1307,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    const compute_pipeline13039 = device130.createComputePipeline({
        label: "compute_pipeline13039",
        layout: pipeline_layout1300,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    const array17 = new Float32Array([-0.5, 0.25, 0.25, 0.25, 0.75, -1.0, 0.25, -1.0, 1.0, 0.5, -0.5, -0.5, -0.5, -0.75, -0.5, -1.0, -0.75, -0.25, -0.25, 0.5, -1.0, 0.25, 1.0, 0.0, 0.75, 0.25, 1.0, -0.25, -0.5, 0.25, -0.5, -1.0, 0.0, 0.5, 0.75, -0.75, -0.75, -0.25, -0.5, -0.75, 0.5, 1.0, 0.0, -0.25, 1.0, 0.75, 1.0, -0.75, -1.0, -1.0, 1.0, -0.75, 0.5, 1.0, 0.25, -0.75, 1.0, -0.25, -0.5, -0.5, 0.75, 1.0, 0.75, 0.0, 0.5, 0.0, 0.5, 0.5, 1.0, 0.75, 0.0, 0.25, -1.0, 0.75, 0.25, -0.75, -0.25, 1.0, 0.25, -0.25, 0.25, 0.75, 0.75, -1.0, 1.0, 0.75, 0.25, -0.5, 0.25, -0.25, 0.75, 0.25, -0.75, -1.0, 0.0, 0.0, -0.75, -0.75, -0.5, 0.0, ]);
    const compute_pipeline13040 = device130.createComputePipeline({
        label: "compute_pipeline13040",
        layout: pipeline_layout13010,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    const buffer1302 = device130.createBuffer({
        label: "buffer1302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const compute_pipeline13041 = device130.createComputePipeline({
        label: "compute_pipeline13041",
        layout: pipeline_layout1303,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    const compute_pipeline13042 = device130.createComputePipeline({
        label: "compute_pipeline13042",
        layout: pipeline_layout1300,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder1302.popDebugGroup();
    const compute_pipeline13043 = device130.createComputePipeline({
        label: "compute_pipeline13043",
        layout: pipeline_layout1307,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    const pipeline_layout13014 = device130.createPipelineLayout({ 
        label: "pipeline_layout13014",
        bindGroupLayouts: [bind_group_layout1304]
    });
    const compute_pipeline13044 = device130.createComputePipeline({
        label: "compute_pipeline13044",
        layout: pipeline_layout1308,
        compute: {
            module: shader_module1302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline13045 = device130.createComputePipeline({
        label: "compute_pipeline13045",
        layout: pipeline_layout13012,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline13046 = device130.createComputePipeline({
        label: "compute_pipeline13046",
        layout: pipeline_layout13014,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    const render_bundle_encoder1800 = device180.createRenderBundleEncoder({
        label: "render_bundle_encoder1800",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline13047 = device130.createComputePipeline({
        label: "compute_pipeline13047",
        layout: pipeline_layout13013,
        compute: {
            module: shader_module1302,
            entryPoint: "main"
        }
    });
    const compute_pipeline13048 = device130.createComputePipeline({
        label: "compute_pipeline13048",
        layout: pipeline_layout1303,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline13049 = device130.createComputePipeline({
        label: "compute_pipeline13049",
        layout: pipeline_layout1303,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    const sampler1304 = device130.createSampler( { label: "sampler1304" } );
    const compute_pipeline13050 = device130.createComputePipeline({
        label: "compute_pipeline13050",
        layout: pipeline_layout13012,
        compute: {
            module: shader_module1302,
            entryPoint: "main"
        }
    });
    const compute_pipeline13051 = device130.createComputePipeline({
        label: "compute_pipeline13051",
        layout: pipeline_layout1300,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    const compute_pipeline13052 = device130.createComputePipeline({
        label: "compute_pipeline13052",
        layout: pipeline_layout1306,
        compute: {
            module: shader_module1302,
            entryPoint: "main"
        }
    });
    buffer1301.destroy()
    const compute_pipeline13053 = device130.createComputePipeline({
        label: "compute_pipeline13053",
        layout: pipeline_layout1304,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline13054 = device130.createComputePipeline({
        label: "compute_pipeline13054",
        layout: pipeline_layout1304,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
    const query1800 = device180.createQuerySet({
        label: "query1800",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline13055 = device130.createComputePipeline({
        label: "compute_pipeline13055",
        layout: pipeline_layout13010,
        compute: {
            module: shader_module1302,
            entryPoint: "main"
        }
    });
    const compute_pipeline13056 = device130.createComputePipeline({
        label: "compute_pipeline13056",
        layout: pipeline_layout1305,
        compute: {
            module: shader_module1302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline13057 = device130.createComputePipeline({
        label: "compute_pipeline13057",
        layout: pipeline_layout13014,
        compute: {
            module: shader_module1302,
            entryPoint: "main"
        }
    });
    const compute_pipeline13058 = device130.createComputePipeline({
        label: "compute_pipeline13058",
        layout: pipeline_layout13012,
        compute: {
            module: shader_module1301,
            entryPoint: "main"
        }
    });
}