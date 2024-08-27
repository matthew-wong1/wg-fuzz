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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array0 = new Float32Array([-1.0, -0.75, 0.0, 0.5, -0.75, 0.75, 0.75, 1.0, 0.0, -0.75, 0.5, 0.0, 0.75, 0.75, -0.25, -0.5, -0.25, 0.75, 1.0, -0.75, 0.75, -0.75, 1.0, 0.75, -1.0, 0.75, 0.0, -0.25, 0.25, 0.25, -1.0, -1.0, -0.5, 0.0, 1.0, -0.75, 0.25, -0.5, -0.25, 0.25, -0.5, -0.25, 1.0, -1.0, 0.5, 0.5, 1.0, 0.0, 0.25, 1.0, 0.25, 1.0, 0.25, 0.5, -0.5, -0.25, 0.0, 0.25, -1.0, 0.75, -0.75, 0.75, -0.25, -1.0, -0.5, 0.25, 1.0, 0.0, 0.5, -1.0, -1.0, 0.0, 1.0, 0.25, -0.75, 0.0, -1.0, 1.0, 0.25, 0.25, 0.25, -1.0, 0.5, 0.75, 0.5, 0.25, 0.0, 0.0, -1.0, -0.75, 1.0, -0.5, 0.0, 1.0, -0.5, -1.0, 1.0, 0.0, -0.75, 1.0, ]);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    buffer000.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    buffer001.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device00.destroy();
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
    
    
    
    
    query200.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const array1 = new Float32Array([0.25, -1.0, 0.5, -0.75, 0.25, 0.75, -0.75, -1.0, 0.25, 0.0, -1.0, -0.25, -0.25, 0.0, -0.75, 0.0, -1.0, 0.75, -0.75, 0.5, -0.5, -0.25, -0.5, -0.75, 0.0, -0.75, 1.0, 1.0, 0.0, 0.25, -0.25, -0.5, 0.75, 0.25, 0.0, 0.75, -0.75, -0.5, -0.75, 0.0, -1.0, 0.5, 0.5, -0.5, -1.0, 1.0, -1.0, -0.5, 0.25, 1.0, -0.25, 0.5, 1.0, 0.75, -1.0, 1.0, 0.75, -0.25, -1.0, -0.25, -0.25, 0.75, 0.0, 0.0, 0.75, 0.5, -0.5, 0.75, -1.0, -1.0, -0.75, -0.5, 0.75, 1.0, -0.25, 0.0, -0.5, 0.75, 0.25, -1.0, 0.25, -0.75, 0.25, -1.0, -0.75, 0.75, 0.5, 0.25, 0.0, -0.25, 0.5, -0.5, -0.5, -0.25, -0.75, -0.25, -0.75, 1.0, -0.75, 0.75, ]);
    
    device30.destroy();
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device20.destroy();
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32float",
        dimension: "2d"
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device40.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const array2 = new Float32Array([-1.0, -1.0, -0.25, -0.5, 0.25, 0.25, -0.5, 0.5, -0.5, -0.75, -0.25, 0.25, -0.25, 0.5, 0.25, 0.75, 1.0, 0.0, -0.5, 0.0, 0.0, -0.75, -0.5, 0.5, 1.0, 0.25, -0.75, -1.0, -0.5, -0.75, 0.75, 0.5, -0.75, 0.25, 0.75, 0.0, 1.0, -0.75, 0.75, -1.0, -0.25, -0.25, 0.25, 0.25, 0.25, -0.5, 1.0, -1.0, 0.5, -1.0, -0.5, -0.25, -0.25, 0.5, 1.0, 0.5, 0.0, -0.5, 0.5, -1.0, 0.5, -1.0, -0.5, -1.0, 0.0, 0.0, 0.75, 0.0, -0.75, 1.0, 0.75, -0.75, -0.75, 0.75, 0.0, -1.0, 0.75, 0.25, 0.25, 0.5, 0.75, -0.75, 1.0, 0.0, 1.0, -0.5, 0.75, 0.5, 0.75, 1.0, -0.25, 0.0, -1.0, -0.5, 1.0, -0.75, 0.0, 0.75, 0.5, 1.0, ]);
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
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([-0.5, -0.5, -0.25, 0.75, -1.0, 1.0, 1.0, 1.0, 0.0, -0.75, 0.75, 0.75, 1.0, 0.75, 1.0, 0.25, -0.5, -0.75, 0.0, -0.5, -0.5, 0.0, 0.0, 1.0, -0.25, 0.0, 0.25, 0.5, -0.25, -1.0, -0.5, -0.75, 0.75, -0.75, 0.5, -0.5, -1.0, -0.25, 0.75, -0.25, 0.5, -0.25, -0.5, 0.25, 0.5, -1.0, 0.0, -0.75, -0.5, 0.5, -0.5, -1.0, 0.0, -1.0, 1.0, 0.75, 0.5, -0.25, -0.5, -1.0, -0.5, -0.75, 0.75, 1.0, 0.0, -0.25, -1.0, -1.0, 0.75, -0.25, -0.75, 0.0, -0.25, 1.0, 0.5, -1.0, 0.0, 1.0, -1.0, 1.0, 0.25, 1.0, 1.0, 0.75, 1.0, 0.75, -1.0, -0.75, 0.25, -0.25, 0.0, 0.0, 0.75, 0.25, -1.0, 0.0, 1.0, 1.0, 0.0, -0.5, ]);
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    query100.destroy()
    texture500.destroy();
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
    device10.destroy();
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    buffer500.destroy()
    query501.destroy()
    
    
    
    query501.destroy()
    
    render_bundle_encoder500.insertDebugMarker("marker");
    device50.destroy();
    const array4 = new Float32Array([-1.0, 0.25, 0.0, 0.5, 0.0, 0.75, 0.25, -0.25, -0.25, -0.25, -0.25, -0.75, -0.5, 1.0, -1.0, 0.25, 0.0, -0.5, -0.75, 0.75, 1.0, -0.75, -0.75, -0.25, -0.5, 0.75, 0.25, 0.25, 0.0, 0.0, 1.0, 0.25, 0.75, -0.25, 1.0, 0.75, 0.25, -0.75, 1.0, -1.0, 0.5, 0.0, -0.25, 1.0, 0.0, -1.0, -0.25, 0.75, 0.5, -1.0, 1.0, 0.75, -0.5, -0.75, 1.0, -0.5, 0.0, -0.75, -0.25, 0.0, 0.25, -1.0, 1.0, 0.5, -0.5, 0.5, 0.5, 0.75, 0.25, 0.25, 1.0, 1.0, 1.0, 0.75, 0.0, 1.0, 1.0, 1.0, -1.0, 0.75, 0.25, 0.25, 0.25, 0.5, 1.0, 0.5, 0.25, -0.5, -0.5, 1.0, 1.0, -0.75, -0.25, -0.5, 0.25, 0.0, 0.5, -1.0, -0.25, 0.25, ]);
    
    
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device60.destroy();
    
    
    
    const array5 = new Float32Array([1.0, -0.5, 0.25, -1.0, -0.25, -0.5, -0.75, 0.75, -0.75, 1.0, -0.25, 0.0, -0.25, 0.75, 1.0, 0.0, -0.5, -0.75, 0.5, -1.0, -0.25, -0.75, -1.0, -0.25, 0.0, -0.75, 0.0, 0.75, 0.5, 0.25, 0.25, 1.0, 0.75, 0.5, 0.25, -0.75, -0.25, 0.25, -1.0, 0.75, 0.0, -0.75, 0.0, -1.0, 0.5, 0.0, 0.5, -1.0, 0.75, 1.0, -0.25, 0.5, -0.25, -1.0, -1.0, 0.25, 0.25, -1.0, -1.0, 0.25, 1.0, 0.75, -0.5, 0.25, 0.75, -0.25, -0.5, -0.25, 0.0, -0.25, 0.5, 0.0, -0.5, -0.5, 0.5, 1.0, -1.0, 1.0, 0.5, -1.0, -0.5, 0.0, -1.0, -0.25, 0.75, 0.5, 0.75, 0.75, -0.5, -1.0, 0.75, -1.0, 0.25, 0.5, -1.0, 0.75, 0.0, 0.75, -0.5, 0.75, ]);
    
    
    
    const array6 = new Float32Array([-1.0, -0.25, 0.0, -0.25, 0.5, -0.75, -0.25, 0.5, -0.5, 0.5, 1.0, 0.75, 0.0, 0.0, -0.25, -0.5, -1.0, -0.25, -0.75, -0.75, 0.75, 0.0, 0.75, 0.5, 0.5, -0.75, -0.25, -0.25, 0.0, -0.25, 0.75, -1.0, -0.75, -0.25, -1.0, 0.0, 0.25, -0.75, 0.0, 0.0, -0.75, -0.75, 0.25, -0.5, 0.75, -0.25, 1.0, 1.0, 1.0, -0.75, 0.5, 0.25, 0.0, -0.25, 0.25, -1.0, -1.0, -0.25, 0.0, 0.5, 0.25, -1.0, -1.0, 0.75, -0.5, 0.75, -0.5, 0.5, 0.0, 0.75, 0.75, 0.0, 0.0, 0.0, 0.0, -0.75, -0.5, 0.5, 0.75, 0.25, -1.0, 0.5, 0.5, 0.0, -0.75, 1.0, -0.25, -0.25, -0.5, 0.75, 0.5, 1.0, -0.25, 1.0, 0.75, -1.0, 0.25, -0.5, 0.25, -0.5, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    
    
    const array7 = new Float32Array([-0.75, 0.75, 0.25, -0.75, -1.0, 0.5, 1.0, 0.0, 0.75, 1.0, 1.0, -0.75, 0.5, 0.75, 0.75, -0.75, 0.5, -0.5, 0.5, -1.0, 0.75, -0.25, -0.25, 0.75, 0.5, 0.25, -0.5, 0.0, 0.75, 0.25, -0.75, -0.75, -0.5, -0.5, 0.25, -0.75, -1.0, 0.5, -0.25, -0.75, 0.75, 0.0, 0.25, 0.5, 0.25, 0.0, 0.75, -0.75, -0.5, 0.0, 0.75, 1.0, 0.5, 0.25, 0.0, 0.0, 0.75, 0.5, 1.0, -0.25, 0.5, -0.25, -0.5, 0.5, -0.5, 0.75, -1.0, 0.25, 0.25, -0.75, -0.75, -1.0, 0.0, 1.0, -0.75, 0.5, -0.5, -1.0, 0.5, -0.5, -0.25, 0.25, 0.75, -0.25, -0.25, -0.75, 1.0, 1.0, -1.0, -0.5, 1.0, 0.75, 0.0, -0.75, -1.0, 0.25, 0.75, -0.25, -0.75, -0.5, ]);
    
    device70.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array8 = new Float32Array([0.75, 0.5, 0.0, 1.0, -0.5, 1.0, -0.25, 0.75, -1.0, -0.5, 0.0, -0.5, 0.75, -0.25, -0.5, 0.0, 0.25, 0.75, 0.5, 0.25, -0.75, 0.75, -0.5, 0.5, 0.0, -1.0, 1.0, -0.75, -1.0, 1.0, 0.25, -0.5, 0.25, -0.75, 0.25, -0.25, -1.0, 0.25, 0.0, 0.5, 0.25, -0.5, 0.25, -0.25, 0.25, -0.25, 0.75, 0.0, -0.75, -1.0, 1.0, 1.0, -1.0, 0.0, -0.25, -0.5, -0.5, -0.5, 1.0, -1.0, -1.0, -0.5, -0.75, -0.25, 1.0, 0.25, 0.75, -0.25, -0.5, 0.0, 0.25, 0.0, 0.75, 0.0, 0.25, 0.25, 0.0, -0.25, 0.0, 0.25, -0.5, 0.5, 0.0, -1.0, 0.0, 0.75, -0.75, 0.75, -1.0, 0.25, -0.5, 0.25, 1.0, 1.0, 0.75, 0.25, 0.25, -0.75, -0.75, -1.0, ]);
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device80.destroy();
    
    
    
    
    
    
    
    
    const array9 = new Float32Array([-1.0, 0.25, -0.25, -0.25, -0.25, 0.0, 0.5, -0.75, 1.0, 0.0, 0.75, 0.75, 0.5, 0.25, 0.25, -0.5, -1.0, 0.75, 0.0, 0.75, 0.25, -0.25, 0.25, 0.5, 0.0, 1.0, 0.5, 0.5, -1.0, -0.75, -0.25, 0.25, -0.5, -0.75, 0.5, 0.25, 1.0, -1.0, 1.0, 0.75, -0.25, -0.5, -0.75, -0.75, -0.25, 1.0, -0.25, 0.25, -1.0, -1.0, 0.5, 0.5, 0.25, 0.25, 1.0, -0.25, 0.25, -1.0, -0.5, 0.75, 0.0, -0.25, -0.75, -0.5, 0.25, -0.25, -0.25, 0.5, 0.25, -0.25, -0.25, -1.0, -1.0, 1.0, -1.0, 1.0, -1.0, 1.0, -1.0, -0.75, -1.0, 0.5, 0.25, 0.0, -0.25, -0.25, -0.25, 1.0, -1.0, 0.25, -0.25, -1.0, 0.0, -0.75, -0.25, 0.5, -0.75, -0.5, 0.75, -0.5, ]);
    
    
    
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array10 = new Float32Array([-1.0, -1.0, 0.5, -0.25, 0.0, 0.0, 0.0, 1.0, -1.0, 0.0, -1.0, -0.75, 0.25, 0.5, 0.25, -1.0, -0.25, -0.5, 0.5, 0.5, -0.25, 0.5, -0.75, 0.75, 1.0, -0.25, 0.5, 0.5, -0.5, 0.75, -0.25, 0.5, 0.5, 1.0, 0.5, 0.5, 0.75, 1.0, -1.0, -0.25, 0.25, 0.5, -0.25, 1.0, 0.0, -1.0, 0.75, 0.0, 0.5, -0.75, -0.75, 0.75, 1.0, -0.25, -0.25, -0.25, 0.75, 0.0, 0.25, -0.5, -0.25, 0.5, -1.0, 0.0, 0.5, 0.25, 0.25, 0.5, 0.5, -0.75, 1.0, 0.0, 0.0, -1.0, -0.75, -0.25, 0.25, -0.75, 0.5, 0.5, -0.5, -1.0, 0.5, 0.75, 1.0, -0.75, 1.0, -0.25, 0.75, 1.0, -0.25, 0.5, 1.0, -0.5, 0.25, -0.75, 0.25, -1.0, 0.25, 1.0, ]);
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
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
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    device90.pushErrorScope("validation");
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    device110.destroy();
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    texture1000.destroy();
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
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
    
    
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer1200.destroy()
    const buffer1202 = device120.createBuffer({
        label: "buffer1202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    
    
    
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    device120.pushErrorScope("out-of-memory");
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device100.destroy();
    buffer1201.destroy()
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module1203_code = "";
    try {
        shader_module1203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1203 = await device120.createShaderModule({ label: "shader_module1203", code: shader_module1203_code })
    buffer900.destroy()
    
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module1204_code = "";
    try {
        shader_module1204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1204 = await device120.createShaderModule({ label: "shader_module1204", code: shader_module1204_code })
    var shader_module1205_code = "";
    try {
        shader_module1205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1205 = await device120.createShaderModule({ label: "shader_module1205", code: shader_module1205_code })
    buffer1202.destroy()
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    device130.destroy();
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    
    render_bundle_encoder901.pushDebugGroup("group_marker");
    render_bundle_encoder900.pushDebugGroup("group_marker");
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder901.insertDebugMarker("marker");
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    render_bundle_encoder901.insertDebugMarker("marker");
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    
    query900.destroy()
    
    
    var shader_module1206_code = "";
    try {
        shader_module1206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1206 = await device120.createShaderModule({ label: "shader_module1206", code: shader_module1206_code })
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    query901.destroy()
    
    texture1200.destroy();
    
    
    const sampler1202 = device120.createSampler( { label: "sampler1202" } );
    
    query1200.destroy()
    
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    render_bundle_encoder901.insertDebugMarker("marker");
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query1201.destroy()
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
        powerPreference: undefined
    });
    
    render_bundle_encoder902.insertDebugMarker("marker");
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    
    query901.destroy()
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    device90.pushErrorScope("internal");
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query1202 = device120.createQuerySet({
        label: "query1202",
        type: "occlusion",
        count: 32,
    });
    
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query902.destroy()
    texture902.destroy();
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    
    
    const sampler903 = device90.createSampler( { label: "sampler903" } );
    
    
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout902]
    });
    query1201.destroy()
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1200]
    });
    query902.destroy()
    const compute_pipeline1200 = device120.createComputePipeline({
        label: "compute_pipeline1200",
        layout: pipeline_layout1200,
        compute: {
            module: shader_module1205,
            entryPoint: "main"
        }
    });
    
    var shader_module1207_code = "";
    try {
        shader_module1207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1207 = await device120.createShaderModule({ label: "shader_module1207", code: shader_module1207_code })
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    
    const compute_pipeline1201 = device120.createComputePipeline({
        label: "compute_pipeline1201",
        layout: pipeline_layout1200,
        compute: {
            module: shader_module1206,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder1200.insertDebugMarker("marker");
    var shader_module1208_code = "";
    try {
        shader_module1208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1208 = await device120.createShaderModule({ label: "shader_module1208", code: shader_module1208_code })
    render_bundle_encoder902.insertDebugMarker("marker");
    render_bundle_encoder900.insertDebugMarker("marker");
    const compute_pipeline1202 = device120.createComputePipeline({
        label: "compute_pipeline1202",
        layout: pipeline_layout1200,
        compute: {
            module: shader_module1208,
            entryPoint: "main"
        }
    });
    const buffer1203 = device120.createBuffer({
        label: "buffer1203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer1203.destroy()
    
    const buffer1401 = device140.createBuffer({
        label: "buffer1401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query901.destroy()
    
    const compute_pipeline1203 = device120.createComputePipeline({
        label: "compute_pipeline1203",
        layout: pipeline_layout1200,
        compute: {
            module: shader_module1201,
            entryPoint: "main"
        }
    });
    buffer1401.destroy()
    const array11 = new Float32Array([0.5, 0.5, 0.75, -0.25, 0.75, -1.0, 1.0, -0.5, 1.0, 0.5, 0.75, -0.25, 1.0, -1.0, 1.0, 0.25, 1.0, 0.5, 0.0, 1.0, -0.5, -0.75, -0.5, 0.5, 0.75, -0.5, 0.0, -0.5, -0.75, -0.25, -0.75, -1.0, 0.0, -0.5, 1.0, -0.5, -0.75, 0.0, 0.0, 0.0, 0.25, 1.0, 0.75, 0.75, -1.0, -1.0, -0.5, 0.75, 0.0, 0.75, 0.5, -0.5, 0.25, -0.75, 1.0, -0.25, 0.25, 0.75, -1.0, 0.25, -1.0, 1.0, 1.0, -0.75, 0.75, 0.5, -0.5, 0.25, 0.25, -0.75, -0.25, 0.25, -0.25, 0.0, 0.5, 1.0, 0.75, -1.0, -1.0, 0.75, -0.5, -0.25, -1.0, -1.0, -1.0, -1.0, 0.25, 0.0, 0.0, 0.0, 0.0, -0.75, -0.25, 0.25, 1.0, 0.25, 1.0, -1.0, -0.25, 1.0, ]);
    const buffer1402 = device140.createBuffer({
        label: "buffer1402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const texture_view9010 = texture901.createView({ label: "texture_view9010" });
    render_bundle_encoder1200.insertDebugMarker("marker");
    
    
    
    const buffer1403 = device140.createBuffer({
        label: "buffer1403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device140.queue.writeBuffer(buffer1402, 0, array8, 0, array8.length);
    const buffer1204 = device120.createBuffer({
        label: "buffer1204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query1200.destroy()
    const compute_pipeline1204 = device120.createComputePipeline({
        label: "compute_pipeline1204",
        layout: pipeline_layout1200,
        compute: {
            module: shader_module1208,
            entryPoint: "main"
        }
    });
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer1204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1204.unmap();
        console.log(new Float32Array(data));
    }
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const render_bundle_encoder1201 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    device140.queue.writeBuffer(buffer1402, 0, array10, 0, array10.length);
    
    device120.queue.writeBuffer(buffer1204, 0, array6, 0, array6.length);
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    
    
    render_bundle_encoder1200.pushDebugGroup("group_marker");
    query1200.destroy()
    device140.queue.writeBuffer(buffer1402, 0, array0, 0, array0.length);
    
    
    const texture_view9011 = texture901.createView({ label: "texture_view9011" });
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline900 = device90.createComputePipeline({
        label: "compute_pipeline900",
        layout: pipeline_layout900,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline901 = device90.createComputePipeline({
        label: "compute_pipeline901",
        layout: pipeline_layout900,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    
    device120.queue.writeBuffer(buffer1204, 0, array9, 0, array9.length);
    
    device120.queue.writeBuffer(buffer1204, 0, array10, 0, array10.length);
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view9012 = texture901.createView({ label: "texture_view9012" });
    render_bundle_encoder902.pushDebugGroup("group_marker");
    buffer902.destroy()
    device140.queue.writeBuffer(buffer1402, 0, array7, 0, array7.length);
    buffer1400.destroy()
    device140.pushErrorScope("out-of-memory");
    var shader_module1209_code = "";
    try {
        shader_module1209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1209 = await device120.createShaderModule({ label: "shader_module1209", code: shader_module1209_code })
    query1200.destroy()
    
    
    const pipeline_layout902 = device90.createPipelineLayout({ 
        label: "pipeline_layout902",
        bindGroupLayouts: [bind_group_layout902]
    });
    device120.queue.writeBuffer(buffer1204, 0, array9, 0, array9.length);
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    buffer901.destroy()
    const query1203 = device120.createQuerySet({
        label: "query1203",
        type: "occlusion",
        count: 32,
    });
    device120.queue.writeBuffer(buffer1204, 0, array3, 0, array3.length);
    device140.queue.writeBuffer(buffer1402, 0, array7, 0, array7.length);
    
    const sampler1501 = device150.createSampler( { label: "sampler1501" } );
    device140.queue.writeBuffer(buffer1402, 0, array3, 0, array3.length);
    
    const bind_group_layout1400 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1400",
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
    
    query902.destroy()
    
    
    device120.queue.writeBuffer(buffer1204, 0, array8, 0, array8.length);
    const texture_view12010 = texture1201.createView({ label: "texture_view12010" });
    device120.queue.writeBuffer(buffer1204, 0, array6, 0, array6.length);
    const compute_pipeline1205 = device120.createComputePipeline({
        label: "compute_pipeline1205",
        layout: pipeline_layout1200,
        compute: {
            module: shader_module1203,
            entryPoint: "main"
        }
    });
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder1201.pushDebugGroup("group_marker");
    const texture_view9013 = texture901.createView({ label: "texture_view9013" });
    query902.destroy()
    const texture_view12011 = texture1201.createView({ label: "texture_view12011" });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module1501_code = "";
    try {
        shader_module1501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1501 = await device150.createShaderModule({ label: "shader_module1501", code: shader_module1501_code })
    device140.pushErrorScope("internal");
    render_bundle_encoder901.insertDebugMarker("marker");
    
    
    device120.queue.writeBuffer(buffer1204, 0, array11, 0, array11.length);
    const compute_pipeline1206 = device120.createComputePipeline({
        label: "compute_pipeline1206",
        layout: pipeline_layout1200,
        compute: {
            module: shader_module1200,
            entryPoint: "main"
        }
    });
    device140.queue.writeBuffer(buffer1402, 0, array4, 0, array4.length);
    
    
    
    
    device140.queue.writeBuffer(buffer1402, 0, array6, 0, array6.length);
    query1200.destroy()
    const pipeline_layout1400 = device140.createPipelineLayout({ 
        label: "pipeline_layout1400",
        bindGroupLayouts: [bind_group_layout1400]
    });
    const pipeline_layout1401 = device140.createPipelineLayout({ 
        label: "pipeline_layout1401",
        bindGroupLayouts: [bind_group_layout1400]
    });
    const query903 = device90.createQuerySet({
        label: "query903",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device140.queue.writeBuffer(buffer1402, 0, array8, 0, array8.length);
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}