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
    const array0 = new Float32Array([1.0, 1.0, -0.75, -0.25, 0.75, 0.25, 0.25, 0.0, 1.0, 0.0, 0.5, 1.0, 0.25, -1.0, 0.0, -0.25, 0.5, 0.25, -1.0, 0.0, 0.0, -1.0, 0.5, -0.5, 0.5, 0.5, 0.25, 0.75, 0.25, -0.25, -0.5, -0.25, -0.5, 1.0, 1.0, -0.5, -0.25, -0.25, 0.75, 0.75, 0.25, -0.25, 0.5, -0.25, -0.5, -0.75, 1.0, 1.0, -0.75, -1.0, 0.0, 0.25, -0.25, -0.25, -0.75, 0.0, -0.25, 0.0, -0.5, 0.5, 1.0, 0.5, 0.0, -1.0, 0.0, -0.75, 0.5, -1.0, -1.0, -1.0, -0.5, -0.5, 0.0, -0.5, -0.5, -0.25, 0.75, 0.75, 0.75, 1.0, -1.0, -1.0, -0.25, 0.0, 1.0, 0.0, -0.75, 0.5, 0.25, 0.0, 0.25, -0.5, -0.5, -0.75, 0.0, -0.75, -0.75, -1.0, -0.75, -0.25, ]);
    
    
    
    
    const array1 = new Float32Array([-0.5, -0.75, 1.0, -0.5, -0.25, 1.0, -0.5, -0.75, 1.0, -1.0, 1.0, -1.0, -0.5, 0.25, -1.0, 0.25, 0.5, 0.0, 0.5, 0.5, 0.25, -0.75, 0.0, 1.0, 0.0, 0.0, 0.75, -1.0, -0.75, -0.5, -1.0, -1.0, -0.25, 0.5, 0.5, -1.0, -0.5, 1.0, 0.5, -0.5, 0.0, 0.25, 0.5, 0.75, 0.0, -0.5, -0.5, 0.0, -0.75, -0.25, 0.75, 0.25, 0.0, -0.25, -0.5, 1.0, -1.0, 0.5, -0.75, 0.25, 0.5, -0.25, -1.0, -0.5, 0.75, -0.5, 0.25, -0.5, 0.0, 0.75, 0.75, 0.25, 1.0, 0.75, 0.75, 0.0, 0.75, 0.0, -0.25, 1.0, 0.5, -0.75, 0.75, 0.25, -0.25, 1.0, 0.5, 0.5, -0.75, -0.5, -1.0, 0.75, 0.5, 0.25, -0.25, -0.75, -0.25, -0.5, 0.0, 0.5, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    device00.pushErrorScope("internal");
    
    
    
    
    const array2 = new Float32Array([1.0, -1.0, 0.25, 1.0, 0.25, 0.75, 0.25, -1.0, -1.0, 0.0, 0.75, 0.0, -0.5, -0.75, -0.5, 0.25, 0.5, -0.25, -1.0, -0.25, -1.0, 1.0, 0.25, -0.25, -0.25, -0.75, 1.0, 0.5, 1.0, 0.0, 1.0, 0.25, 0.5, 0.75, 0.0, -0.5, 0.0, 0.25, -0.5, 0.0, 1.0, 0.25, -0.5, 0.25, -0.25, -0.25, 0.0, 0.25, 1.0, 1.0, 0.0, -0.75, 0.5, -0.5, 0.25, 0.25, -1.0, -0.5, -0.25, 0.25, 0.75, -0.25, 0.5, 0.0, -1.0, -0.75, 0.5, -0.75, -0.75, -0.75, 0.5, 0.25, 0.75, -0.5, -0.25, 0.0, -0.5, 1.0, 0.75, 0.5, -0.5, -0.5, 0.25, 0.5, 0.0, 0.0, -0.25, 0.75, -0.5, 0.5, 0.25, -1.0, -0.5, -0.5, 0.0, 0.0, -0.75, -0.75, -1.0, -0.75, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    device10.pushErrorScope("internal");
    
    
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array3 = new Float32Array([-0.25, 0.5, -0.25, 0.0, 0.0, 0.5, 0.5, -0.5, 1.0, 0.25, 0.5, 0.5, -0.5, 1.0, 1.0, 0.0, -0.5, 1.0, -1.0, 0.75, 0.0, -0.25, 0.0, 0.5, 0.75, 1.0, -0.25, -1.0, 0.0, 0.25, 1.0, 0.5, -0.25, 0.5, 1.0, 0.75, 0.5, -0.75, -0.25, 0.5, 1.0, 0.25, 1.0, -0.75, -0.5, -0.5, -0.75, -1.0, -0.25, 0.5, 0.5, 0.25, 0.25, 0.0, 0.75, 0.25, -0.75, 1.0, -0.25, -0.25, 0.25, 1.0, 0.5, 0.5, 1.0, -0.25, -0.25, 0.5, -0.25, 0.25, 0.75, -0.75, -1.0, 0.0, -0.5, -1.0, 0.0, -1.0, 0.5, 0.0, 0.75, 0.75, 0.5, -0.75, 0.75, -0.25, 0.0, -0.75, 0.25, -1.0, -1.0, 0.75, -0.25, 1.0, 1.0, -1.0, 0.75, 1.0, 1.0, 0.5, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.destroy();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth16unorm",
        dimension: "2d"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.destroy();
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
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.destroy();
    
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array4 = new Float32Array([-0.5, 0.5, -1.0, 0.5, 0.25, 0.0, -0.75, -0.75, -0.25, 0.0, -1.0, 0.0, -0.25, 0.75, 1.0, -0.5, -0.5, 1.0, -0.5, 0.75, -0.25, -0.25, -0.25, 1.0, 0.5, -0.5, 0.75, 0.5, -0.75, -1.0, -0.5, 0.75, -0.25, -0.5, 0.0, -0.25, -1.0, 0.75, 0.75, -1.0, -0.75, 0.0, 0.25, -1.0, -0.5, 1.0, 1.0, 0.25, 0.5, 0.0, 0.5, -0.75, 0.5, -0.5, -0.5, -0.5, 1.0, 0.25, 0.25, 0.25, -1.0, 0.25, 0.25, -0.5, -1.0, -0.5, -1.0, -0.25, -0.25, -1.0, -0.5, -0.5, -0.25, -0.5, 1.0, 0.0, -1.0, 1.0, 0.75, -1.0, 0.75, 1.0, 1.0, -0.25, 0.75, -0.5, -0.25, 0.5, -1.0, 0.25, 0.0, -0.5, 1.0, 1.0, 0.25, -0.75, 0.25, -0.5, 1.0, 0.5, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device10.destroy();
    
    
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    query300.destroy()
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout302]
    });
    const array5 = new Float32Array([-0.5, -0.75, -0.75, -1.0, 0.5, -0.5, 1.0, 0.0, -0.5, 0.0, 0.25, -1.0, -1.0, 0.5, 0.25, 0.0, 0.0, 1.0, -0.5, 1.0, 1.0, 0.75, 0.5, 1.0, 0.0, -0.75, 0.0, 0.75, 0.5, 1.0, 0.5, -0.5, -0.5, 0.75, -0.75, -1.0, 1.0, -1.0, -1.0, -0.5, 0.75, 0.75, -0.25, 0.5, 0.0, 0.25, -0.75, 1.0, -0.25, 0.25, -0.75, 0.5, 0.75, -0.75, -1.0, 0.5, 1.0, 0.5, -0.75, -0.25, 0.25, 0.5, -0.75, -1.0, 0.25, -0.75, 0.5, 0.0, 0.25, 0.0, 0.0, 0.5, 0.75, -0.5, -0.25, 1.0, -0.75, -0.75, -0.5, 0.75, 1.0, 0.5, -0.5, 0.5, 0.5, -0.5, 1.0, 0.75, 0.25, 0.75, 1.0, -1.0, -0.5, 0.25, 0.5, 0.5, 0.0, 0.75, 0.5, 0.25, ]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const array6 = new Float32Array([-0.75, -1.0, 0.5, 0.5, -0.75, -0.5, -0.5, -0.25, -1.0, -0.25, 0.0, 0.0, 0.0, 0.25, -0.25, 0.5, 0.25, 0.25, -0.75, -0.75, -0.75, -0.5, 1.0, 0.5, 1.0, -0.75, -0.75, 1.0, -1.0, 1.0, -0.5, -0.25, 0.25, -0.75, 0.75, 0.0, 0.75, 0.0, -0.25, -0.75, -1.0, 1.0, -1.0, -0.25, -0.75, 0.25, -0.5, -0.25, 0.25, 0.0, -0.25, -0.5, -0.5, -1.0, -0.75, 0.5, 0.5, 0.0, -1.0, -0.75, 0.0, -0.75, -1.0, -0.25, -0.5, 0.25, -0.25, -0.25, 0.75, -0.5, -0.5, -0.25, 1.0, -0.75, -0.75, -0.25, -0.25, 0.25, 0.25, -0.5, 0.25, 1.0, 0.75, 0.0, 1.0, 1.0, -0.5, -0.25, 0.0, -0.25, -0.25, -0.75, -0.25, 0.5, 0.5, -0.25, 1.0, 0.75, 0.25, 0.25, ]);
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    
    device30.destroy();
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device40.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device50.pushErrorScope("out-of-memory");
    device60.destroy();
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
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
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    buffer100.destroy()
    device40.destroy();
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    
    
    device50.destroy();
    
    
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    const array7 = new Float32Array([-1.0, -0.5, -0.75, 0.75, -0.75, -0.25, -1.0, 1.0, -0.25, 0.0, 0.5, 0.25, 0.0, -0.75, -0.5, 1.0, 0.75, 1.0, -0.5, 0.25, 0.5, -0.5, 1.0, 1.0, 0.75, -1.0, 0.0, -0.5, 0.25, -0.25, -1.0, -0.75, -1.0, 0.25, 1.0, 0.75, 0.0, -1.0, 1.0, -0.75, 0.75, -0.75, 0.5, -0.5, 0.5, 0.0, 0.5, 0.75, -1.0, 0.75, 0.0, 0.0, 0.5, -1.0, 0.25, 0.75, 1.0, 0.75, 0.5, 1.0, -0.25, 0.75, 0.25, -1.0, 0.5, 0.5, 0.25, 0.5, 0.25, -1.0, -0.5, -1.0, -0.5, 0.75, 0.5, -0.25, 0.75, 1.0, 0.75, 0.75, -1.0, -1.0, 0.0, -1.0, 0.25, -0.25, 0.0, -0.25, -0.75, -0.25, -1.0, -0.25, 0.5, -0.75, 0.0, 0.25, 0.5, -0.75, 0.75, 0.5, ]);
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array8 = new Float32Array([0.0, 0.75, 0.5, -0.25, 0.5, 0.0, -0.75, 0.25, -0.5, -0.5, 0.75, 0.25, -1.0, -0.25, 0.75, -0.25, 1.0, 0.0, 0.0, -0.25, -0.25, 0.75, -0.25, 0.25, -0.75, 1.0, 0.75, -0.5, 0.5, 0.5, -0.75, -0.75, -0.25, -0.75, 0.0, 0.25, -0.75, 0.0, 0.25, 0.5, 0.0, -0.25, -0.75, -0.25, 0.75, 0.75, 1.0, 0.0, -0.25, -0.25, -0.75, -0.75, 0.25, -1.0, 1.0, 1.0, -0.5, -0.75, 1.0, -0.5, 0.0, 0.75, 1.0, -0.5, 0.75, 0.5, 0.75, -0.5, 0.0, -0.5, -0.75, 0.0, -0.5, 0.5, -0.25, 1.0, 0.0, 0.5, 0.75, 0.75, -0.5, 0.75, 0.5, 0.25, 0.75, 1.0, -1.0, 0.75, -0.25, -0.5, -0.5, 0.75, 1.0, -0.5, 0.0, 0.0, 0.25, 0.75, 1.0, -0.25, ]);
    buffer801.destroy()
    
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
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
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    query800.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    device80.queue.writeBuffer(buffer800, 0, array7, 0, array7.length);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    
    
    
    
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.destroy();
    query800.destroy()
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer001.destroy()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    device120.pushErrorScope("validation");
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    
    device80.pushErrorScope("validation");
    const bind_group_layout1101 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1101",
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
    device20.queue.submit([]);
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const bind_group_layout1102 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1102",
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
    buffer800.destroy()
    
    
    
    
    device70.destroy();
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const bind_group_layout1103 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1103",
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
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1103]
    });
    const pipeline_layout1101 = device110.createPipelineLayout({ 
        label: "pipeline_layout1101",
        bindGroupLayouts: [bind_group_layout1102]
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
    
    
    
    const pipeline_layout1102 = device110.createPipelineLayout({ 
        label: "pipeline_layout1102",
        bindGroupLayouts: [bind_group_layout1101]
    });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const array9 = new Float32Array([-0.75, 0.0, -0.5, 0.5, 0.25, 0.75, 0.75, -1.0, 0.75, 1.0, -0.5, 0.5, -0.75, 0.75, -0.5, -0.25, 0.25, -0.75, 0.5, -0.5, 1.0, 0.75, 0.75, 1.0, 0.0, -1.0, 0.5, 0.25, 0.75, -0.5, 0.25, 0.5, 0.0, 0.0, 1.0, -1.0, -1.0, 0.25, -0.5, -0.25, 0.0, 0.25, 0.5, -1.0, -0.25, -0.25, 0.5, -0.5, 0.0, -1.0, -1.0, 0.0, -0.25, 0.5, 1.0, 0.0, -0.25, -0.25, -0.25, -0.75, 0.0, 0.25, 0.25, 0.5, -0.25, -1.0, 0.75, 0.5, 1.0, 0.25, 0.75, 0.75, 0.75, -0.5, -0.75, -0.5, -0.25, -0.5, -0.25, -0.5, 0.5, -0.25, -0.5, -0.75, -1.0, 0.5, 0.75, -0.75, 0.75, -0.5, -1.0, 0.0, 0.25, -0.25, -0.5, -0.75, -1.0, 0.25, -1.0, 0.0, ]);
    
    
    const pipeline_layout1103 = device110.createPipelineLayout({ 
        label: "pipeline_layout1103",
        bindGroupLayouts: [bind_group_layout1100]
    });
    
    
    
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    
    
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device110.pushErrorScope("out-of-memory");
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout1104 = device110.createPipelineLayout({ 
        label: "pipeline_layout1104",
        bindGroupLayouts: [bind_group_layout1100]
    });
    
    
    
    
    device110.destroy();
    
    
    
    
    const pipeline_layout1105 = device110.createPipelineLayout({ 
        label: "pipeline_layout1105",
        bindGroupLayouts: [bind_group_layout1102]
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    device100.pushErrorScope("out-of-memory");
    const array10 = new Float32Array([-0.5, 0.75, 1.0, 0.0, 0.5, -0.25, 0.0, -0.5, 0.75, -0.25, 0.0, 0.25, -1.0, -0.75, 1.0, 0.75, 0.0, -0.25, 0.25, 1.0, -0.25, -1.0, 0.5, -0.25, 0.5, -0.75, -0.25, -0.75, 1.0, -0.25, 0.75, -1.0, 0.5, 1.0, -1.0, 0.5, 0.0, -1.0, -1.0, 0.0, -0.5, 0.0, -1.0, 0.5, 1.0, 0.0, -1.0, 0.5, 0.75, 0.25, -0.5, 0.75, -0.75, -0.5, -1.0, 0.0, -0.25, 1.0, 1.0, 0.5, 0.5, 0.25, -0.5, -0.25, 0.0, 1.0, 1.0, 0.0, 0.75, 1.0, -1.0, -0.25, 1.0, -0.25, -0.25, 0.0, -0.75, 1.0, 0.5, -1.0, 0.75, -0.75, 1.0, -0.5, -0.5, -0.5, 0.5, 0.0, -0.5, -0.75, -0.75, -0.25, 0.75, -0.75, -0.75, 0.25, 0.0, 0.5, -1.0, 1.0, ]);
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device120.pushErrorScope("internal");
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    device70.destroy();
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    buffer1000.destroy()
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32sint",
        dimension: "2d"
    });
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device120.queue.writeBuffer(buffer1201, 0, array8, 0, array8.length);
    
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    device100.destroy();
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device120.queue.submit([]);
    device120.queue.writeBuffer(buffer1200, 0, array0, 0, array0.length);
    const adapter18 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    
    device120.queue.writeBuffer(buffer1201, 0, array2, 0, array2.length);
    device120.queue.writeBuffer(buffer1201, 0, array4, 0, array4.length);
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    query1400.destroy()
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    
    const render_bundle_encoder1401 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1401",
        colorFormats: ["bgra8unorm"]
    });
    query1400.destroy()
    
    query1400.destroy()
    
    
    device30.destroy();
    
    device120.queue.writeBuffer(buffer1201, 0, array1, 0, array1.length);
    
    device120.queue.writeBuffer(buffer1201, 0, array5, 0, array5.length);
    
    device60.destroy();
    device120.queue.submit([]);
    buffer1201.destroy()
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    device130.destroy();
    device10.destroy();
    
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
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    
    render_bundle_encoder1400.pushDebugGroup("group_marker");
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
    const bind_group_layout1501 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1501",
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
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const query1401 = device140.createQuerySet({
        label: "query1401",
        type: "occlusion",
        count: 32,
    });
    
    const bind_group_layout1502 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1502",
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
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    render_bundle_encoder1401.insertDebugMarker("marker");
    device120.destroy();
    const render_bundle_encoder1700 = device170.createRenderBundleEncoder({
        label: "render_bundle_encoder1700",
        colorFormats: ["bgra8unorm"]
    });
    device150.pushErrorScope("internal");
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module1402_code = "";
    try {
        shader_module1402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1402 = await device140.createShaderModule({ label: "shader_module1402", code: shader_module1402_code })
    
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder1401.pushDebugGroup("group_marker");
    var shader_module1700_code = "";
    try {
        shader_module1700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1700 = await device170.createShaderModule({ label: "shader_module1700", code: shader_module1700_code })
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder1400.popDebugGroup();
    device170.pushErrorScope("validation");
    var shader_module1403_code = "";
    try {
        shader_module1403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1403 = await device140.createShaderModule({ label: "shader_module1403", code: shader_module1403_code })
    
    
    
    render_bundle_encoder400.popDebugGroup();
    const query1501 = device150.createQuerySet({
        label: "query1501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder1700.insertDebugMarker("marker");
    const bind_group_layout1700 = device170.createBindGroupLayout({ 
        label: "bind_group_layout1700",
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
    const buffer1700 = device170.createBuffer({
        label: "buffer1700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    
    
    
    
    
    
    var shader_module1501_code = "";
    try {
        shader_module1501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1501 = await device150.createShaderModule({ label: "shader_module1501", code: shader_module1501_code })
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    device150.pushErrorScope("out-of-memory");
    
    
    const buffer1202 = device120.createBuffer({
        label: "buffer1202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture1401 = device140.createTexture({
        label: "texture1401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8sint",
        dimension: "2d"
    });
    device00.destroy();
    
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer1400.destroy()
    device140.pushErrorScope("validation");
    render_bundle_encoder1401.popDebugGroup();
    
    const texture1700 = device170.createTexture({
        label: "texture1700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    
    
    const pipeline_layout1106 = device110.createPipelineLayout({ 
        label: "pipeline_layout1106",
        bindGroupLayouts: [bind_group_layout1100]
    });
    device170.queue.writeBuffer(buffer1700, 0, array4, 0, array4.length);
    query1501.destroy()
    var shader_module1502_code = "";
    try {
        shader_module1502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1502 = await device150.createShaderModule({ label: "shader_module1502", code: shader_module1502_code })
    
    const render_bundle_encoder1501 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1501",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout1600 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1600",
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
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device170.destroy();
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout801]
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    const buffer1600 = device160.createBuffer({
        label: "buffer1600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    const query1900 = device190.createQuerySet({
        label: "query1900",
        type: "occlusion",
        count: 32,
    });
    buffer1500.destroy()
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device160.pushErrorScope("out-of-memory");
    var shader_module1701_code = "";
    try {
        shader_module1701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1701 = await device170.createShaderModule({ label: "shader_module1701", code: shader_module1701_code })
    render_bundle_encoder1401.pushDebugGroup("group_marker");
    device190.pushErrorScope("validation");
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    
    
    
    const query1600 = device160.createQuerySet({
        label: "query1600",
        type: "occlusion",
        count: 32,
    });
    
    const texture1601 = device160.createTexture({
        label: "texture1601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder1502 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1502",
        colorFormats: ["bgra8unorm"]
    });
    device160.queue.writeTexture({ texture: texture1601 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture1602 = device160.createTexture({
        label: "texture1602",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device170.queue.writeTexture({ texture: texture1700 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1500.insertDebugMarker("marker");
    device190.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device150.queue.writeBuffer(buffer1500, 0, array9, 0, array9.length);
    device160.queue.writeBuffer(buffer1600, 0, array2, 0, array2.length);
    device160.queue.writeTexture({ texture: texture1601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device160.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}