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
    
    
    
    const array0 = new Float32Array([-0.25, 0.5, -0.5, -0.5, -0.75, -0.75, 0.75, 1.0, -0.25, 0.25, 1.0, -1.0, 0.25, 0.0, 1.0, -1.0, 1.0, 1.0, -0.5, 0.25, 0.75, -0.5, 0.75, -0.5, 1.0, 0.75, -0.5, -0.25, -0.25, 1.0, 0.75, -1.0, -1.0, -0.5, 0.0, 0.5, 0.0, -0.25, -0.5, -0.75, -0.5, 1.0, 0.75, -0.5, 0.25, 0.75, -0.5, -1.0, 0.25, -1.0, -0.75, 0.0, -0.25, 1.0, 0.25, 0.5, -0.5, -1.0, 1.0, 0.5, -0.75, -0.25, -1.0, -0.75, -0.5, 0.25, -0.25, 1.0, -0.25, -0.5, -1.0, 0.0, 0.75, 1.0, 0.25, -0.5, 0.0, 0.25, 0.5, -1.0, 1.0, -0.25, 0.25, 0.0, 0.5, -0.5, -0.25, 0.0, -0.5, 0.0, -0.25, 0.5, -0.25, -1.0, -0.5, 0.0, -0.75, 0.25, 0.5, -0.25, ]);
    
    
    
    
    const array1 = new Float32Array([0.5, 0.75, -0.25, 0.25, 0.75, 0.25, -0.25, 0.25, 0.25, 0.5, -0.5, 0.5, 0.5, 0.5, -0.5, 0.0, 1.0, -0.25, 0.5, 0.25, -0.75, -0.75, -0.5, 0.25, -0.5, 0.75, -0.75, 0.25, 1.0, 0.0, 0.5, -0.25, -0.75, -0.5, 0.0, 0.5, -0.5, 0.75, 0.75, 0.75, -0.5, -0.5, -0.75, -0.25, 0.75, 1.0, 1.0, 0.25, -1.0, -0.25, 0.25, 0.25, 0.5, 1.0, -1.0, 1.0, -0.25, 1.0, -0.25, 0.5, -1.0, 0.5, -0.25, -0.25, 0.0, 0.75, 0.25, -0.25, 0.75, -0.5, 0.25, -1.0, 0.0, 0.0, 1.0, 0.5, 0.25, 0.5, -1.0, -1.0, -0.25, 0.75, 0.0, 1.0, -0.25, 0.0, 1.0, -0.5, 1.0, 0.5, -1.0, 0.5, 0.25, 0.5, 1.0, 0.25, 0.75, -0.75, -0.75, 0.75, ]);
    const array2 = new Float32Array([-0.75, -0.25, 0.75, -0.5, 0.5, 1.0, 0.75, -0.75, 0.25, 0.0, -0.25, -1.0, -0.5, -0.25, 0.75, -0.75, -0.25, -0.25, 0.75, 0.75, -0.75, -0.25, 1.0, -1.0, -0.25, 0.0, -0.5, 0.25, -0.75, 0.0, -0.25, 1.0, 0.25, 0.0, -0.5, -0.25, 0.0, 0.25, 0.0, -0.5, -1.0, 0.25, 0.75, -0.25, 1.0, -1.0, 0.75, -0.75, -0.5, -1.0, -1.0, -0.5, -0.5, -0.25, -0.25, -1.0, 0.5, 0.25, 0.75, 0.0, -0.25, 1.0, 0.75, -0.25, -0.5, -0.5, -0.75, 1.0, 0.5, -0.75, 0.5, -0.5, -1.0, -0.5, -0.5, 0.0, 0.5, -0.5, 0.75, 0.5, -0.25, -1.0, 0.25, -0.75, 0.0, -0.75, -0.5, 1.0, -1.0, 0.0, 1.0, 0.0, 0.0, -0.25, -0.25, 0.75, 0.25, 0.0, 0.25, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([-0.5, -0.25, 1.0, 0.0, 0.75, 1.0, -0.75, 0.0, 0.0, 0.25, 0.75, 0.5, 1.0, 1.0, -1.0, 1.0, -0.75, 1.0, -0.25, -0.5, 1.0, 0.25, 0.25, 1.0, 0.0, 1.0, -0.5, 1.0, -0.5, -0.5, -0.75, -0.75, -0.5, -1.0, -0.5, 0.5, -0.75, -1.0, 0.0, 0.0, 0.75, -0.25, -0.5, 0.0, 0.0, 0.5, -1.0, 0.0, 0.5, 0.0, 0.75, 0.75, -0.5, -1.0, -0.5, 0.75, 0.25, -1.0, -0.5, 1.0, -0.75, -1.0, -0.75, 0.25, -0.5, -1.0, 0.75, -0.75, 0.0, -0.25, -0.75, -0.75, 0.0, 0.25, 0.75, -0.5, 0.5, -1.0, -0.75, -0.75, 0.0, -0.5, -1.0, 0.0, -0.75, 0.5, -0.5, 0.25, 0.0, -0.25, 0.0, -0.5, -0.75, 0.75, -1.0, 0.25, 0.0, 0.75, 1.0, -1.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array4 = new Float32Array([-1.0, 0.5, -0.25, -0.25, -1.0, -0.5, -0.25, 0.0, 0.5, 0.5, -0.25, 0.5, 0.75, 1.0, -0.75, 1.0, 0.25, -0.25, 0.5, -0.5, -0.25, 0.75, -0.75, -0.75, 0.0, 0.25, -1.0, -0.25, -0.75, 0.25, 0.0, 0.75, 0.25, 0.5, 1.0, 0.25, 1.0, 0.0, 0.25, 1.0, 1.0, 0.25, -0.25, 0.75, -0.25, -0.75, -0.75, 0.5, -0.75, -1.0, 0.75, 0.0, -1.0, 0.0, 0.5, 0.75, -0.25, 0.5, 0.0, 0.5, -0.5, -0.75, -0.5, -0.25, -1.0, 0.5, -1.0, -0.75, -0.25, 0.75, -0.5, 0.25, 0.75, -1.0, 0.25, 1.0, 0.0, -0.5, 1.0, 1.0, -0.75, -0.5, -0.25, -0.75, -0.75, -0.25, 1.0, 0.0, 0.5, 0.75, -1.0, 0.75, 0.5, -0.5, -1.0, -1.0, -0.5, -0.25, 0.75, 1.0, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device30.pushErrorScope("validation");
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device00.pushErrorScope("internal");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    device30.destroy();
    
    
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer200.destroy()
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
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
    
    
    
    device20.pushErrorScope("out-of-memory");
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.pushErrorScope("internal");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    query200.destroy()
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    query000.destroy()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    texture200.destroy();
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    texture000.destroy();
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const array5 = new Float32Array([1.0, -1.0, -0.75, -0.25, 0.5, -1.0, -1.0, 1.0, 1.0, 0.25, -0.5, 1.0, 0.5, 0.0, 0.75, 0.25, 0.5, 0.75, 0.5, 1.0, 0.5, -0.25, -0.5, 1.0, 0.0, -0.25, 0.25, -0.75, 1.0, 0.25, -1.0, 0.5, 0.0, -0.5, -0.25, -0.75, -0.75, -0.75, -0.75, 0.25, 0.75, 0.25, -0.5, 0.75, -1.0, 0.75, -0.5, -0.75, -0.75, -0.25, 0.25, -1.0, 1.0, 0.5, -0.75, 1.0, 0.75, -0.75, 0.25, -0.5, 0.25, 0.75, -0.75, 0.5, 0.0, 0.5, 0.25, -0.75, 0.25, 0.75, -0.75, -0.75, -0.75, 0.25, 1.0, -0.25, 1.0, -1.0, 1.0, 0.25, 0.75, -1.0, 0.0, 0.5, -0.75, 0.5, 0.25, -0.75, -0.25, 0.75, 1.0, -1.0, 0.0, 0.25, -0.5, -0.5, -0.5, 0.0, 1.0, -1.0, ]);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8unorm",
        dimension: "2d"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    device00.pushErrorScope("out-of-memory");
    
    
    buffer201.destroy()
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    device20.destroy();
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    
    
    query000.destroy()
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    query000.destroy()
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    query000.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    device10.destroy();
    
    buffer000.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    query300.destroy()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device30.destroy();
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    
    device00.pushErrorScope("validation");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer001.destroy()
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8sint",
        dimension: "2d"
    });
    texture002.destroy();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.destroy();
    
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.pushErrorScope("validation");
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
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device50.destroy();
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    buffer400.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.pushErrorScope("out-of-memory");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    texture400.destroy();
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query400.destroy()
    buffer400.destroy()
    const array6 = new Float32Array([0.0, -1.0, -0.25, -0.25, -0.75, 0.25, -1.0, 0.5, 0.5, -0.25, -0.25, -0.25, 0.25, -0.25, 0.25, -0.25, -0.75, 0.0, -1.0, 0.0, 0.5, 0.75, -1.0, 0.75, 0.75, -0.75, -0.25, -0.5, 0.75, -0.25, -0.5, 0.5, 0.25, -0.75, 0.25, -1.0, 0.5, 1.0, -1.0, 1.0, 0.75, 0.5, -0.25, 0.5, -0.75, 0.25, -1.0, 0.5, -0.5, 0.0, 0.5, -1.0, 1.0, 0.5, -1.0, -0.5, 0.0, -0.75, 0.0, -1.0, -0.25, -1.0, 0.75, -0.5, -0.5, 1.0, -0.5, 0.75, -0.5, 0.75, -1.0, 0.75, -0.25, -0.75, -0.5, -0.75, 0.75, 0.5, 1.0, -0.25, -0.25, 0.75, -0.75, 0.75, -0.5, 1.0, -0.25, 0.75, 0.25, 0.0, -1.0, 0.25, -0.5, 1.0, -0.5, -0.25, 0.25, 0.25, -0.75, -0.25, ]);
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    device40.queue.submit([]);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    buffer401.destroy()
    texture000.destroy();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    query400.destroy()
    device40.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query000.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    buffer600.destroy()
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    
    device60.destroy();
    
    
    query500.destroy()
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const array7 = new Float32Array([0.25, 1.0, 0.5, 0.5, 0.75, 0.25, 0.75, -0.25, 0.25, 1.0, -0.5, 0.0, -0.25, -0.75, 0.75, -0.25, -0.75, 0.75, 1.0, 0.0, -0.25, -0.75, 0.75, 0.75, 0.5, 0.5, -0.5, -1.0, -0.5, 1.0, 1.0, 1.0, 0.75, 0.0, 0.25, -0.75, 0.0, 0.0, -0.25, 0.0, 1.0, 0.5, 0.5, 1.0, 0.0, 0.75, 0.25, 0.5, 0.75, 0.25, 0.25, -1.0, 0.5, 0.75, -0.5, -1.0, 0.0, 0.25, -0.75, 1.0, -0.25, 0.75, 0.5, -1.0, -0.25, -0.25, -0.75, 0.5, 0.0, -0.5, -0.5, 0.25, 1.0, -0.25, 0.25, 0.5, -0.5, 0.25, -1.0, -0.75, 0.5, 0.0, 0.5, -0.25, -0.25, -0.5, 0.75, 0.25, -1.0, -0.25, -0.5, -0.75, -0.5, 0.0, 0.75, 0.0, 1.0, 1.0, -0.75, 0.0, ]);
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeTexture({ texture: texture700 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device70.destroy();
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query500.destroy()
    
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
    const array8 = new Float32Array([-1.0, -0.75, 0.25, -0.5, 0.75, 1.0, -0.25, 1.0, -1.0, 0.75, -0.5, 1.0, -1.0, -0.5, -1.0, -1.0, 0.0, -0.5, 0.5, -0.5, 0.0, 0.5, 0.5, 1.0, 0.25, -0.5, 0.25, -0.75, -0.75, -0.75, -0.75, 0.5, -0.25, -0.75, 0.5, 0.75, 0.5, 1.0, 0.0, -1.0, -0.5, -0.25, 0.75, 0.75, -0.25, 0.5, -0.5, 1.0, -0.5, 1.0, 1.0, 0.5, 1.0, -0.25, 0.25, 0.25, 1.0, -0.5, 0.5, -0.25, 0.0, -0.5, -1.0, 1.0, 0.5, -0.5, -1.0, -1.0, -0.5, -0.75, 1.0, 0.0, 0.25, 0.75, 0.0, 0.5, 1.0, -0.5, 1.0, 0.25, 0.25, -0.25, 0.75, -1.0, -0.5, 0.75, -0.5, -0.75, 0.75, 0.25, -1.0, 0.75, 0.0, -0.25, 0.25, -0.75, -1.0, -0.5, 0.5, -0.75, ]);
    
    
    
    
    query100.destroy()
    device10.pushErrorScope("validation");
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    
    
    
    
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
    
    
    
    
    texture300.destroy();
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    texture300.destroy();
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32uint",
        dimension: "2d"
    });
    const array9 = new Float32Array([0.5, 0.5, 1.0, -0.5, 0.25, 0.75, 0.0, 0.75, 0.25, -0.75, -0.75, -0.75, -0.25, 0.5, 0.5, 0.75, 0.75, -0.5, -0.75, -0.75, 0.75, 0.5, 0.5, -0.25, 0.75, 1.0, 1.0, 0.5, -1.0, 0.5, -0.75, 0.75, 0.0, -0.25, 0.75, 0.0, 0.25, 1.0, -1.0, 0.0, 1.0, -0.25, -0.75, 0.0, -0.75, -0.25, -0.75, 1.0, -1.0, 0.75, -0.25, 1.0, 0.25, 1.0, 0.75, -1.0, 1.0, -0.25, 0.0, 0.5, 1.0, -1.0, 1.0, -1.0, 0.75, 0.5, 0.5, -1.0, 0.0, -0.25, -0.25, 0.0, 0.5, 1.0, -0.5, -0.25, -1.0, -0.25, -0.25, -0.5, -0.75, -0.25, -0.25, -0.5, 1.0, 1.0, 1.0, 1.0, -0.5, 0.0, 0.0, -0.75, 0.0, 1.0, 0.25, 0.75, 1.0, 0.5, 0.25, 0.75, ]);
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const array10 = new Float32Array([0.5, 0.75, 1.0, 0.25, -0.25, 1.0, -0.5, 0.5, 0.5, -0.5, 0.5, 0.0, -0.75, -0.75, 0.25, 1.0, 0.75, 0.25, -0.25, -0.5, -0.25, -0.5, -0.75, 0.75, 0.5, -0.75, 0.75, -0.25, -1.0, -0.5, -0.5, -1.0, 0.25, -0.5, 0.5, 0.25, -0.5, 0.0, 0.5, -0.25, -0.25, -0.5, 0.5, -1.0, 0.0, 0.75, -0.5, 0.0, 0.0, 1.0, -0.5, -0.25, 0.75, -0.5, -0.5, -0.25, -1.0, 0.5, 0.5, 1.0, -0.5, 0.75, -0.5, 0.5, -1.0, 0.75, -1.0, -1.0, -0.25, -0.25, -1.0, -0.75, -0.75, -0.5, 0.75, 1.0, 1.0, 0.0, 0.0, 0.75, 0.75, -0.25, 1.0, 0.75, 0.25, -0.25, 0.25, 0.25, -0.5, 0.75, 0.75, 1.0, -0.25, -0.5, -0.5, -1.0, 1.0, 0.0, -1.0, -0.5, ]);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout203]
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    query801.destroy()
    const array11 = new Float32Array([0.0, 0.25, -1.0, 0.25, 0.75, -0.75, 0.75, 1.0, 1.0, -0.25, -0.25, -0.5, -0.5, 0.75, 0.75, 0.75, -0.25, 0.0, 0.5, 0.25, -0.75, 0.5, -0.25, -0.25, 1.0, -0.25, 0.0, 0.5, 0.0, 1.0, -0.25, 0.75, 0.5, 0.5, -0.75, 0.5, 0.0, -1.0, 0.75, -0.75, 1.0, -0.25, -1.0, 0.5, -0.25, 0.5, 0.75, 0.75, 0.75, 1.0, -1.0, -0.75, -0.75, -0.5, -1.0, -0.5, 0.75, -0.25, -1.0, 0.25, 1.0, 0.5, -0.25, -0.75, 1.0, 1.0, 1.0, 0.25, 0.5, 0.25, -0.75, 0.75, 1.0, 1.0, 0.0, 0.0, -0.5, 0.5, 0.0, -0.5, 0.0, -1.0, -1.0, 0.0, 0.75, -0.25, 0.0, -0.75, 0.0, -0.25, -0.5, 0.0, 0.0, -0.75, -0.25, 1.0, -0.5, 0.75, 0.25, -0.5, ]);
    buffer402.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout206,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    query801.destroy()
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    
    device80.queue.writeBuffer(buffer800, 0, array10, 0, array10.length);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    render_bundle_encoder800.insertDebugMarker("marker");
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
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
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device70.destroy();
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    
    
    buffer202.destroy()
    device50.queue.writeTexture({ texture: texture501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
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
    query800.destroy()
    texture701.destroy();
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    render_bundle_encoder801.insertDebugMarker("marker");
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
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
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    
    device80.queue.writeBuffer(buffer801, 0, array6, 0, array6.length);
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    device80.queue.writeBuffer(buffer801, 0, array7, 0, array7.length);
    device80.queue.writeBuffer(buffer801, 0, array9, 0, array9.length);
    device80.queue.writeBuffer(buffer801, 0, array7, 0, array7.length);
    device70.queue.writeTexture({ texture: texture700 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device90.pushErrorScope("internal");
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    query801.destroy()
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    device80.queue.writeBuffer(buffer801, 0, array10, 0, array10.length);
    const device100 = await adapter10!.requestDevice({ label: "device100" });
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
    
    
    device80.queue.writeBuffer(buffer801, 0, array1, 0, array1.length);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device80.queue.writeBuffer(buffer801, 0, array7, 0, array7.length);
    device80.queue.writeBuffer(buffer801, 0, array1, 0, array1.length);
    render_bundle_encoder901.insertDebugMarker("marker");
    
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    query800.destroy()
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    query802.destroy()
    const array12 = new Float32Array([-1.0, 0.25, -1.0, -0.75, 0.5, -0.25, 0.75, 0.75, 0.75, -0.25, -1.0, 0.25, 0.25, 1.0, -0.75, -1.0, 0.0, 0.25, 0.5, 0.75, -0.25, -0.75, 0.25, 1.0, 0.0, -1.0, 1.0, 0.75, -1.0, 1.0, 1.0, 1.0, -0.25, 0.5, -0.5, 0.0, 0.75, -0.5, -0.75, -0.5, -1.0, -0.75, -1.0, 0.75, -0.75, 0.25, 0.0, 0.0, 0.75, -0.25, 0.75, -1.0, 0.0, 1.0, -1.0, -0.5, 0.0, -1.0, 0.75, -0.5, 1.0, -0.25, 0.75, 0.0, -0.75, 0.0, 1.0, 0.5, -0.5, -0.5, 0.5, -0.5, 0.5, 0.5, 1.0, 0.0, -0.75, -0.75, -0.5, -0.5, 0.25, 0.25, 0.75, 0.75, -0.5, 0.0, 0.5, -0.5, -0.5, 0.75, -0.75, 0.25, 1.0, 0.25, 0.25, -0.25, -0.25, 0.75, 1.0, -1.0, ]);
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout201]
    });
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device100.queue.writeBuffer(buffer1000, 0, array7, 0, array7.length);
    
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
    
    
    
    
    
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.writeBuffer(buffer801, 0, array3, 0, array3.length);
    device70.queue.writeTexture({ texture: texture700 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.pushErrorScope("internal");
    device00.destroy();
    
    
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}