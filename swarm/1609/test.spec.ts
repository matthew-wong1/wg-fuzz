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
    const array0 = new Float32Array([-0.25, -0.75, -0.25, -0.25, -1.0, 1.0, 1.0, -0.75, -0.75, -1.0, 1.0, 0.25, 1.0, -0.5, 0.5, 1.0, 0.25, 0.5, -0.5, -0.25, 1.0, 0.75, 1.0, -0.25, 0.5, 0.5, 0.0, 0.0, 1.0, -0.25, 0.75, 0.0, 0.5, 0.25, 0.0, -0.5, -0.5, 0.5, 1.0, 0.25, -0.5, 1.0, 1.0, -0.5, -1.0, -0.25, -0.75, 1.0, 0.75, 0.0, 0.5, 0.75, -0.5, 1.0, -0.25, -0.25, 0.75, -0.75, 0.0, 0.25, -0.75, -0.25, -0.75, -1.0, 0.25, 0.0, 0.25, 0.0, 0.75, 0.5, 0.5, -1.0, -0.5, -0.75, -0.5, 0.5, -0.5, -0.5, -0.5, 0.0, 1.0, -1.0, -0.25, 1.0, 0.5, 1.0, -0.75, 0.25, 1.0, 1.0, 0.25, -0.75, 0.25, 0.75, 1.0, -1.0, 0.25, -1.0, 0.25, -0.25, ]);
    const array1 = new Float32Array([-0.25, 0.25, 0.75, 0.5, 0.75, -0.25, 1.0, 1.0, -0.75, -0.5, -0.5, -0.75, 1.0, 0.5, -0.25, -0.25, 0.0, -0.75, -0.5, 0.75, 0.0, 0.0, 0.75, 0.75, -0.5, -1.0, 0.5, -0.5, -0.5, 0.25, 1.0, 0.25, 0.0, 0.5, -0.75, 1.0, 0.25, -0.25, 0.25, 0.25, 0.25, 0.75, 0.0, -0.25, -0.75, -0.5, 1.0, 0.0, -0.5, -1.0, -0.25, -0.75, 0.5, -1.0, -1.0, -0.75, -0.25, -1.0, 0.5, -0.75, 1.0, 1.0, 1.0, 0.5, 0.25, 0.0, 0.25, 0.25, -0.75, 0.75, 0.25, -0.75, 0.0, -0.5, 0.75, -0.5, 0.5, 0.75, 0.0, -0.75, -0.5, 0.75, 0.0, 0.25, 1.0, 0.75, 0.5, 0.0, 0.25, 1.0, -0.75, 0.5, 0.75, -0.25, -0.25, 0.5, 0.5, 0.25, -0.5, 0.25, ]);
    const array2 = new Float32Array([-0.5, 0.25, 0.0, -0.75, 1.0, 0.75, -0.25, -0.25, 0.5, -0.75, -0.25, -0.25, -0.25, 0.0, 0.75, -0.5, 0.0, 0.5, 0.5, 0.5, -1.0, -1.0, 0.25, -0.25, -0.25, -1.0, -0.25, 0.25, -0.75, -0.25, -0.75, -1.0, -1.0, 1.0, -0.25, -0.25, -0.75, 0.5, 0.25, -0.5, 0.25, -1.0, 0.0, 0.25, 0.0, 0.5, -1.0, 0.5, -0.25, -0.75, 0.5, 1.0, 0.75, -0.5, -0.25, 0.0, -0.25, -0.25, 0.25, -0.5, 0.0, 0.0, -0.25, -1.0, -1.0, 1.0, -0.5, -0.5, 0.75, -0.5, 0.5, 1.0, -0.75, -1.0, 0.25, -1.0, -0.75, 1.0, -0.25, 0.0, 1.0, 0.0, 1.0, -1.0, -0.5, -0.5, 0.0, -0.5, -0.25, -0.5, -0.75, 0.0, 0.25, -1.0, -0.75, 1.0, 0.25, 0.5, 0.0, 0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device00.destroy();
    
    const array3 = new Float32Array([0.25, 0.5, -0.25, 0.75, -0.25, 0.25, -0.5, -0.5, 1.0, -1.0, 0.5, -1.0, 0.25, 1.0, 0.5, 0.0, -1.0, 0.75, 0.25, 0.25, -0.25, 0.75, 0.0, -0.25, 0.75, -0.75, 0.0, 0.75, -0.25, 0.25, -0.5, 0.75, -1.0, -0.25, 0.25, -0.25, -0.25, 0.0, -0.25, 0.75, -0.5, 1.0, 0.25, -0.75, -1.0, 1.0, -1.0, 0.5, -0.5, -1.0, -0.25, -0.75, 0.0, 1.0, -1.0, 0.0, -1.0, 0.5, 1.0, -0.5, 0.0, -0.75, 0.25, 0.25, 1.0, 0.25, 1.0, -0.25, 0.5, 0.25, 0.25, 0.75, -0.75, 0.25, 0.75, 1.0, 0.5, -0.75, 1.0, -0.5, 0.25, 1.0, -0.75, -1.0, 0.0, -0.75, 0.5, -1.0, 0.5, -0.25, 1.0, -1.0, 0.75, -0.75, 0.25, -0.75, 1.0, -0.5, -0.75, 0.75, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array4 = new Float32Array([1.0, -0.5, -0.75, -1.0, -1.0, 1.0, 1.0, -1.0, 1.0, 0.25, -1.0, 0.5, -0.25, -0.5, 0.25, 1.0, -0.5, -0.25, 0.75, 0.75, 0.25, 1.0, 1.0, -0.25, 1.0, -0.25, -0.75, 0.75, 0.5, -0.25, 0.25, 0.5, -1.0, 0.25, -0.5, 0.25, 0.75, 0.0, 1.0, -0.25, -0.25, -0.5, 0.5, 0.0, -0.75, 0.5, 0.75, -1.0, -0.25, -0.25, -1.0, -0.5, -0.5, 1.0, -0.25, -1.0, -1.0, -0.25, 0.25, 1.0, 0.75, -0.25, 1.0, 0.75, -0.5, 0.0, -1.0, -0.5, -0.25, -1.0, 0.75, -0.5, 0.5, -0.5, 0.25, 0.75, 0.5, 0.75, -0.5, -0.25, -0.5, 1.0, -0.25, 0.75, 1.0, 1.0, 0.75, 0.0, -0.5, 0.25, 0.75, -1.0, 0.75, -0.5, -0.25, 0.25, -0.5, -0.25, 1.0, 0.75, ]);
    const array5 = new Float32Array([-0.5, 0.25, 0.75, 1.0, 1.0, 0.5, 0.25, -0.5, -0.25, -0.75, 0.0, 0.5, -0.25, 0.75, 0.0, 0.25, -0.5, -0.25, 0.75, -0.25, -1.0, 1.0, -0.25, 1.0, -0.75, 0.0, 0.5, -1.0, 0.75, 0.25, -0.5, 0.0, -1.0, -0.25, -0.5, -0.25, -0.5, -0.75, -1.0, 0.0, -0.75, -1.0, 0.25, 0.0, 1.0, -1.0, 0.5, 0.75, 0.0, 0.75, 0.5, -0.25, 1.0, 0.0, 0.0, 0.0, -0.5, 1.0, 0.5, -0.75, -0.75, -1.0, 0.25, -0.5, -1.0, 0.75, -0.75, -0.5, 1.0, 0.25, 0.0, 0.25, 0.25, -0.75, -0.5, 0.0, -0.75, 0.5, -0.75, 0.0, 0.75, -0.5, 0.5, 0.75, -1.0, -0.75, 0.5, 0.5, 0.5, -0.25, -1.0, -0.5, -0.75, 1.0, 0.25, 0.25, 0.5, -0.5, -0.5, 0.25, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.pushErrorScope("internal");
    const array6 = new Float32Array([1.0, 0.25, -1.0, 1.0, 0.75, 0.25, 0.75, -0.75, 0.75, -0.75, -0.75, 0.5, 0.5, 0.0, 0.5, 1.0, -1.0, -0.75, 0.5, 0.5, 0.5, 0.0, -0.5, -0.5, -0.75, 0.75, -0.25, -0.5, -0.75, 1.0, 0.25, 1.0, -1.0, 0.25, 1.0, -0.75, 1.0, 1.0, -0.25, 1.0, 0.25, -1.0, -1.0, -1.0, 0.25, 0.0, 0.5, 0.75, -0.5, 0.25, -0.5, 0.25, 1.0, 0.75, 0.75, -0.5, -0.25, 0.0, -1.0, -1.0, 1.0, -0.5, -0.25, -0.25, 1.0, -0.5, -0.25, 0.0, 0.75, -0.5, 0.5, 0.5, -1.0, -0.75, 0.0, 1.0, -1.0, 1.0, 0.25, 1.0, 1.0, -0.75, 1.0, -0.75, -0.75, -0.25, -0.5, -0.5, -0.5, 1.0, 0.5, -0.25, 0.0, 1.0, -1.0, -0.5, 0.0, 0.5, 0.5, -0.75, ]);
    
    
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.pushErrorScope("internal");
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
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
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    device40.pushErrorScope("internal");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.destroy();
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.destroy();
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device40.destroy();
    
    buffer000.destroy()
    
    
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.pushErrorScope("validation");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    texture100.destroy();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8sint",
        dimension: "2d"
    });
    
    
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.destroy();
    
    device30.destroy();
    device40.pushErrorScope("out-of-memory");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    device50.queue.submit([]);
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
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
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    const array7 = new Float32Array([-1.0, -0.75, 1.0, -1.0, -0.75, -0.75, -0.25, -0.75, 0.0, 0.0, 1.0, 0.5, 0.75, 0.0, 0.25, 1.0, 1.0, -0.75, 0.75, 0.75, 0.5, 0.75, -0.75, 0.25, 0.5, -0.5, 0.0, 0.0, -1.0, 0.0, 0.0, -0.25, -0.5, 0.5, 0.5, -1.0, -0.75, -0.75, 1.0, 0.25, -0.75, 0.75, 0.75, -0.5, 0.0, 0.0, 0.75, -0.25, -0.75, 0.75, 0.0, 0.75, 0.75, -1.0, -1.0, -0.25, 0.0, 0.25, -1.0, -0.25, -0.25, 0.75, 0.75, -0.5, -0.75, 0.5, -1.0, 0.75, 1.0, -1.0, 0.25, -1.0, 0.75, 0.0, 0.25, 0.75, 0.75, 0.0, -1.0, 0.25, 0.75, 0.5, -0.25, -1.0, 0.25, -1.0, -0.75, 1.0, -0.25, -0.25, 0.75, -0.25, 1.0, -1.0, 0.25, -0.25, 0.5, 0.25, 0.25, 0.5, ]);
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    texture101.destroy();
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
    buffer102.destroy()
    
    device50.destroy();
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    texture100.destroy();
    
    const array8 = new Float32Array([0.75, -0.75, 0.0, 0.75, -0.25, 1.0, 0.5, 0.0, -0.75, 0.5, -0.25, 0.25, 0.25, 1.0, -0.75, 1.0, -1.0, 0.5, -0.75, 0.0, -0.5, 0.25, -1.0, -0.25, -0.75, 0.25, 0.75, 0.0, 1.0, -1.0, 0.25, 0.5, 0.5, -1.0, 0.0, -0.5, 0.5, -0.75, 0.25, 0.0, -1.0, 1.0, -0.75, -0.25, 0.25, 0.0, 1.0, -1.0, -0.75, 0.0, -0.5, 0.5, 0.0, 0.5, 0.5, 0.0, 0.5, -0.75, -0.25, 0.0, 0.0, 0.0, -0.75, -0.5, 0.5, 1.0, 0.5, 0.0, -0.25, 0.0, 0.75, -1.0, -0.5, 0.25, -0.25, -0.25, 0.25, -0.25, 0.0, -1.0, 0.5, 0.5, 1.0, -1.0, -1.0, 0.0, 0.25, 1.0, 0.75, -0.25, 1.0, 0.0, -0.75, -1.0, -0.25, -0.5, 0.0, -1.0, 0.25, 0.25, ]);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.destroy();
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    render_bundle_encoder102.popDebugGroup();
    device10.destroy();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer700.destroy()
    device50.destroy();
    
    device70.destroy();
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const array9 = new Float32Array([1.0, 0.25, 0.25, -1.0, 0.0, 1.0, 0.5, 0.75, -0.75, 0.25, 0.25, 0.75, 1.0, -0.75, 0.25, 0.0, 0.0, 0.5, -1.0, 0.25, 0.5, 0.75, -0.5, 1.0, 0.0, 0.5, 0.5, 0.5, 0.25, 0.5, 0.0, -0.25, 0.0, -0.75, -1.0, 0.5, 1.0, -1.0, 0.25, 0.5, -0.5, 0.0, -0.75, 0.5, -0.5, -0.75, -1.0, -0.75, 1.0, 0.75, 0.25, -0.5, 0.5, 0.5, 0.25, 0.5, 1.0, 0.25, 0.25, 0.75, 0.5, 0.25, -1.0, 0.75, -1.0, 0.5, -0.75, -1.0, 0.25, 0.25, 0.75, 0.25, -1.0, -0.25, -0.75, -1.0, -1.0, -1.0, 0.25, 0.0, -0.5, -0.25, 1.0, -0.75, -0.75, -1.0, 0.75, 0.75, 0.5, 0.75, 0.25, 1.0, -0.5, 0.0, 0.0, -0.25, 0.5, 0.75, -1.0, 1.0, ]);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const array10 = new Float32Array([0.5, 0.25, -0.75, -0.75, 1.0, -0.5, 1.0, -1.0, 0.25, -0.5, 0.75, 0.5, 0.5, -0.25, -1.0, 0.75, 0.0, 0.0, 1.0, 0.75, 0.25, -0.75, 0.25, 0.25, 0.75, 1.0, 0.25, 0.5, 0.25, 0.5, -0.5, -0.75, -0.5, 0.25, -1.0, -0.5, -0.25, 0.5, 0.0, 1.0, -0.5, -1.0, 0.25, -0.5, 0.5, -1.0, 0.25, 0.75, -1.0, -0.75, -0.25, -1.0, 0.25, 0.5, -1.0, -0.5, -0.25, -0.25, -1.0, -0.5, 1.0, -1.0, 0.25, -1.0, -0.25, -1.0, -0.5, 1.0, 0.5, 0.0, -0.25, 0.0, -1.0, -0.25, 0.75, -0.5, 0.5, 0.25, 0.75, -0.25, -1.0, 0.25, -0.75, 0.25, 1.0, -0.5, 0.25, 0.25, 0.5, -0.75, 0.0, -0.75, -1.0, -1.0, 0.0, -0.5, 0.0, -0.75, 0.25, 1.0, ]);
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
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
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeTexture({ texture: texture300 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const array11 = new Float32Array([-0.25, 0.25, -0.25, -0.75, -1.0, 0.25, 0.75, -0.75, 0.75, 0.25, -0.25, 1.0, -1.0, 0.0, -0.25, -0.25, -1.0, 0.5, 0.75, 0.75, -1.0, -0.25, -0.75, -1.0, -0.25, -1.0, -0.25, -0.25, 0.25, -0.75, 1.0, -0.25, 0.75, -0.75, 1.0, 0.5, 1.0, 0.5, 0.25, -0.75, -0.75, -0.5, -0.5, 0.25, -1.0, -0.75, 0.75, 0.5, -0.5, -0.5, -1.0, 0.75, -0.75, 0.75, 0.75, -0.25, 0.5, 0.0, -0.25, 1.0, 0.75, -0.25, 0.0, 1.0, -0.5, -1.0, 1.0, 0.25, -0.75, 0.25, -0.75, -0.5, -0.5, -1.0, -0.75, -0.5, 0.25, 0.5, -0.75, 0.75, -1.0, -1.0, -1.0, 0.25, 0.0, 0.25, 0.0, 0.25, 0.75, -0.25, 0.75, 0.5, -0.5, -0.5, 1.0, 0.5, 0.75, -0.75, 0.25, 0.5, ]);
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
    
    
    
    const array12 = new Float32Array([-0.5, 0.5, -1.0, 0.5, -0.5, -0.75, 0.75, 0.75, 0.5, -0.5, 0.25, 1.0, -0.25, -1.0, -0.25, 1.0, -0.75, 0.75, 0.75, -0.75, -0.75, 0.5, 1.0, -0.75, -1.0, 1.0, -0.25, 1.0, 0.75, 1.0, -0.25, 0.5, 0.25, -0.5, 0.25, -0.25, 0.75, 1.0, -1.0, 0.0, -0.75, 0.75, -0.25, 1.0, -0.75, -0.5, 0.25, 0.75, 0.75, 0.5, 0.25, -0.5, 0.0, 0.75, -0.25, -0.75, 0.75, -0.25, -0.75, 0.0, 0.0, 0.0, -0.5, -0.75, -1.0, 0.0, -0.5, -0.25, 0.75, -0.5, -0.75, 0.75, 0.25, -1.0, -1.0, 0.75, 0.5, 1.0, 1.0, 0.75, 0.25, 0.25, 0.25, -1.0, -0.5, -0.5, 0.5, -1.0, -1.0, 0.75, -1.0, 0.5, 0.5, 0.75, -0.5, -0.5, 0.75, -0.5, -1.0, 0.25, ]);
    
    device90.queue.submit([]);
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder800.insertDebugMarker("marker");
    device30.destroy();
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout801]
    });
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout801]
    });
    device80.destroy();
    device90.destroy();
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    texture100.destroy();
    
    
    device50.pushErrorScope("out-of-memory");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const pipeline_layout803 = device80.createPipelineLayout({ 
        label: "pipeline_layout803",
        bindGroupLayouts: [bind_group_layout802]
    });
    device90.destroy();
    
    
    
    
    const array13 = new Float32Array([0.0, 0.5, 0.25, 0.25, -0.25, 0.0, 0.0, 0.0, -0.75, 0.0, -0.75, 0.25, 0.5, 1.0, 0.0, -0.25, -0.75, -0.75, -1.0, 0.5, 0.75, -0.75, 1.0, 1.0, -0.75, -1.0, 0.25, -0.25, -0.75, 0.0, -0.25, 0.75, 0.25, -0.75, -0.25, 0.75, -0.25, 0.5, 0.75, -0.25, -1.0, 0.25, 0.25, 0.5, -0.25, -0.75, -0.5, -0.5, 1.0, 0.25, -0.25, -0.25, 1.0, 0.25, -0.5, -0.25, -0.25, 0.5, -0.25, -1.0, 1.0, -0.25, 0.75, 0.25, 0.5, -0.75, 0.5, 1.0, 1.0, -0.5, -1.0, 0.75, 1.0, 0.75, 1.0, -1.0, 0.75, 0.0, 0.0, -1.0, -0.75, 1.0, 0.25, -0.25, 0.75, -0.75, -0.75, 0.25, -0.75, 0.0, 1.0, 0.25, -0.5, 0.25, -0.5, 0.75, -0.5, 0.5, -0.5, -0.75, ]);
    
    
    device00.queue.writeTexture({ texture: texture000 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array14 = new Float32Array([-0.25, -1.0, 1.0, 1.0, -0.25, 1.0, -0.75, -0.25, 0.25, -0.5, -1.0, -1.0, -0.25, 0.0, 0.25, 1.0, 0.75, -0.25, 0.25, 0.75, -0.25, -0.75, 1.0, -0.25, 0.25, 0.5, 0.75, 0.5, 0.25, -1.0, -0.25, -0.75, -1.0, 0.0, -0.25, -0.25, -0.75, -0.5, -0.25, 0.25, 0.0, -0.25, 1.0, -0.75, 1.0, -0.5, -1.0, -0.25, -0.5, 1.0, -0.75, -0.25, -0.25, 0.0, 0.75, -0.25, 1.0, -1.0, 0.75, -0.75, 0.75, -1.0, 1.0, -0.5, 0.0, -0.5, -0.75, 0.75, 1.0, -0.75, -0.75, -1.0, 0.75, 0.75, -0.25, -0.5, 0.25, -0.5, -0.25, -0.75, -1.0, -0.25, -0.75, 1.0, -1.0, 0.25, 0.25, -0.75, 1.0, 0.25, 1.0, 0.25, 1.0, 0.75, 1.0, 0.25, 0.0, 0.25, -1.0, -0.25, ]);
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    buffer900.destroy()
    
    const array15 = new Float32Array([-1.0, -0.75, 0.25, 1.0, 0.0, -0.25, -0.25, 0.0, 0.0, -0.25, -0.5, -0.5, -0.75, -0.5, 0.0, -0.5, 0.75, -0.25, 1.0, -0.5, 0.25, 1.0, -0.25, -0.5, -1.0, 0.0, -1.0, 0.25, -0.5, 0.5, 0.5, -0.5, 1.0, -1.0, -0.5, 0.25, 0.5, -0.5, 0.0, -0.75, 0.5, 0.25, 0.0, -0.75, 1.0, 1.0, 1.0, -0.75, 0.5, 0.25, -0.75, -1.0, 0.5, -0.25, -0.25, -1.0, 0.25, -1.0, -0.25, -0.5, 0.0, -1.0, 0.0, -0.75, 0.25, 0.5, 1.0, 1.0, -0.5, 0.25, 1.0, -1.0, -0.5, -1.0, -0.5, 0.75, -0.25, 1.0, 1.0, -1.0, 0.25, 1.0, -0.5, -0.75, -0.25, 0.5, 0.5, 0.0, -0.25, 0.0, 0.0, 0.0, -0.5, 1.0, -0.75, 0.0, -1.0, -0.75, 0.25, 0.5, ]);
    
    
    
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device20.destroy();
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
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device110.destroy();
    device00.queue.writeTexture({ texture: texture000 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    device50.queue.writeTexture({ texture: texture501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const array16 = new Float32Array([0.0, 1.0, 1.0, 0.5, 1.0, 0.5, 0.75, 0.5, -0.5, 1.0, 0.25, 1.0, -1.0, -1.0, 0.25, -0.5, 1.0, -0.5, 0.5, -0.5, -0.25, 0.5, 1.0, -0.75, 1.0, -0.75, -0.5, -1.0, -0.75, -0.75, -1.0, 1.0, -1.0, 0.75, 0.25, -0.5, 0.0, 0.25, -0.5, -0.25, -1.0, 0.75, -0.75, 0.5, -0.25, -0.75, 1.0, 0.25, 0.75, -0.25, -0.25, -0.75, 0.25, 0.5, 0.5, 0.5, 0.5, -0.5, 1.0, 1.0, 0.75, 0.25, 0.75, -0.25, -0.75, 0.75, -0.75, 1.0, 0.0, 1.0, 1.0, 1.0, 1.0, 0.25, -0.25, 0.75, 0.25, 0.25, 0.25, -0.5, -1.0, -0.5, 0.25, -0.75, -0.25, 0.75, -0.75, 0.0, 0.75, -0.75, 0.0, 0.5, 0.5, -0.5, 1.0, 0.75, 0.25, 1.0, -0.25, -0.5, ]);
    
    
    
    
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array17 = new Float32Array([-1.0, 0.5, -0.75, 1.0, -1.0, -1.0, -0.75, 0.0, 0.0, -0.25, 0.75, -1.0, 1.0, 0.25, -0.25, -0.75, 0.75, 0.0, -0.25, 0.5, 1.0, -0.25, 0.75, 1.0, 1.0, 0.75, -0.5, 0.5, -1.0, 0.75, 0.25, -0.25, -1.0, -0.25, -0.75, -0.75, 0.5, -0.5, 0.75, -0.75, -0.5, 0.5, 0.5, 0.25, 0.5, -0.25, -1.0, -1.0, -1.0, 1.0, -0.75, 0.25, -1.0, 0.75, 0.25, 0.0, 0.5, -0.5, -0.75, 1.0, -0.25, 0.75, -0.5, 0.5, -0.75, 1.0, 0.0, 0.25, 0.5, 0.5, -1.0, 1.0, 0.25, 1.0, 0.75, 0.75, 0.5, -0.25, -0.75, 0.25, -0.75, -0.25, -0.75, 0.25, -0.75, 0.5, 0.25, 1.0, 1.0, 0.25, -0.5, -0.5, -0.75, -0.25, 0.0, 1.0, 0.75, 0.5, -0.25, 0.0, ]);
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    
    device120.pushErrorScope("out-of-memory");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    
    
    device120.pushErrorScope("out-of-memory");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device20.destroy();
    device120.queue.writeTexture({ texture: texture1201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1201 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.destroy();
    texture1200.destroy();
    
    
    device120.queue.writeTexture({ texture: texture1201 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.destroy();
    buffer1200.destroy()
    
    device120.queue.writeTexture({ texture: texture1201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1202 = device120.createTexture({
        label: "texture1202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device120.queue.writeTexture({ texture: texture1201 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1200]
    });
    
    texture1202.destroy();
    device120.queue.writeTexture({ texture: texture1201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    render_bundle_encoder1200.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array18 = new Float32Array([-0.75, -0.5, -1.0, -1.0, 0.75, 0.5, -1.0, 0.5, 0.25, -0.75, -0.75, 0.75, 1.0, 0.0, 0.25, -0.25, 0.0, 0.5, 0.75, -1.0, 0.5, -0.75, 0.25, -1.0, 0.75, -0.75, 0.75, -0.75, 1.0, 0.0, 0.0, 0.0, 1.0, -0.5, -0.75, 1.0, 0.0, -0.25, -0.5, 0.5, -0.25, -0.75, -0.25, 0.25, 0.0, 0.75, 0.5, 1.0, -0.75, 0.0, 1.0, -0.75, -0.75, 0.25, 0.75, -0.25, 1.0, 0.75, 0.5, -1.0, -1.0, -0.5, 0.5, -0.25, 0.0, 0.0, -0.75, -0.75, -0.75, 0.75, -1.0, -0.75, 1.0, 0.25, -0.75, 1.0, -0.5, 0.5, 0.0, 0.25, 1.0, -0.25, -0.5, -0.75, -0.5, 0.25, 0.25, -0.25, -0.75, 0.75, 0.75, -1.0, -0.5, -0.5, 0.75, -0.5, -0.75, 0.25, -1.0, -0.75, ]);
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder1200.popDebugGroup();
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    device00.pushErrorScope("validation");
    
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1201 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device120.queue.writeTexture({ texture: texture1201 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture300.destroy();
    device120.queue.writeTexture({ texture: texture1201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1201 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1201.destroy();
    const pipeline_layout1201 = device120.createPipelineLayout({ 
        label: "pipeline_layout1201",
        bindGroupLayouts: [bind_group_layout1200]
    });
    
    render_bundle_encoder401.popDebugGroup();
    device70.pushErrorScope("internal");
    
    const buffer1202 = device120.createBuffer({
        label: "buffer1202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device90.pushErrorScope("validation");
    device120.pushErrorScope("internal");
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture1203 = device120.createTexture({
        label: "texture1203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm",
        dimension: "2d"
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
    
    device120.destroy();
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    texture500.destroy();
    
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder1100.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture100 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    
    
    
    
    
    
    
    
    
    buffer1201.destroy()
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    device100.destroy();
    
    
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    const array19 = new Float32Array([0.25, 0.75, 0.5, 1.0, 1.0, 0.5, -0.25, -0.75, 1.0, -1.0, -0.5, -1.0, -0.5, -1.0, 1.0, -0.75, -1.0, 0.75, -0.25, 1.0, 0.75, -1.0, 0.75, 0.75, 0.0, -0.5, 0.5, -0.25, -1.0, -1.0, -1.0, -0.25, -0.25, 0.0, -1.0, 0.0, -0.5, -0.5, 0.5, 0.5, 0.0, -1.0, -0.25, 0.75, 1.0, -0.25, 1.0, -0.25, 1.0, 0.0, -0.25, 0.0, 0.0, 0.25, 1.0, -0.25, 0.25, -0.75, -1.0, 1.0, 0.5, 0.25, 0.5, -0.5, 0.25, 0.25, 1.0, -1.0, -1.0, 0.75, 0.5, -0.75, -0.75, -0.25, 0.5, -0.5, 0.25, -0.25, 0.75, -0.25, -0.5, 0.5, 0.75, 0.5, -0.5, -0.5, 0.0, 0.25, 1.0, -0.25, 0.5, 0.0, 0.75, 0.75, -0.25, -0.5, -0.25, -1.0, 0.0, -1.0, ]);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
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
    
    device00.queue.writeTexture({ texture: texture000 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    
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
    const pipeline_layout1202 = device120.createPipelineLayout({ 
        label: "pipeline_layout1202",
        bindGroupLayouts: [bind_group_layout1200]
    });
    
    
    const array20 = new Float32Array([0.5, 1.0, 0.75, 0.75, 0.0, -0.75, 0.5, -0.25, -0.75, 0.25, 0.75, -0.25, 0.0, -1.0, 0.5, -0.25, 0.5, 0.75, 1.0, -0.75, 0.25, 0.25, -0.5, 0.25, -0.5, -0.5, -0.75, 0.75, 0.0, -0.75, 0.0, -0.25, -1.0, -0.25, 1.0, 0.75, -0.5, 0.0, 0.75, -0.75, 0.75, 0.25, 0.5, -0.75, 0.25, 0.5, 0.75, 0.5, 0.25, 0.5, -1.0, 0.0, 0.75, -0.75, 0.75, 0.5, -0.75, 0.75, 0.75, -0.5, 0.25, 0.5, 0.75, -0.5, 0.75, -0.75, 1.0, 0.5, -1.0, 1.0, -0.25, 0.0, 0.0, -1.0, -0.25, 1.0, 0.5, -0.75, -0.25, -0.25, 0.5, 0.25, 0.0, -0.25, -0.75, -0.5, -0.75, -0.75, 0.75, -0.5, -0.5, 1.0, -0.75, 0.75, 0.0, 1.0, 0.0, -0.25, -1.0, 0.0, ]);
}