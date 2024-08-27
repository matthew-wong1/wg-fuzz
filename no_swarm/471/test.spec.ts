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
    const array0 = new Float32Array([-1.0, -0.5, 0.0, 0.75, 0.75, -0.75, 0.0, 0.25, 0.25, -0.5, 0.75, -0.75, -1.0, 0.75, -0.75, 0.0, -0.75, -1.0, 0.75, -0.75, -0.25, 0.25, 1.0, -0.5, 1.0, 0.25, -0.25, 1.0, 1.0, -0.75, 0.5, 0.5, 1.0, 0.75, 0.0, 0.75, 0.5, -0.75, -0.25, 0.25, -1.0, -0.75, -0.5, 0.0, 0.0, -0.5, 0.75, 0.5, 0.5, 1.0, 0.75, 0.25, 0.0, -1.0, -0.25, 0.25, 0.75, 0.75, 0.25, -0.25, -0.5, -0.75, 1.0, -0.5, -1.0, 0.75, -0.25, -0.5, -0.5, -0.5, 0.25, 0.5, 1.0, 0.0, 0.25, -0.5, 0.5, 1.0, 0.75, 1.0, 0.25, -0.75, 0.25, 0.75, 0.25, 0.5, -0.25, 0.75, 1.0, -0.75, 0.75, -1.0, -0.75, 0.0, 0.5, 0.5, -0.75, 0.25, 0.5, -0.5, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([-0.25, 1.0, -0.25, -1.0, -0.75, 0.0, -0.25, 0.75, -0.25, 1.0, 0.25, -0.25, -1.0, 0.5, 0.75, -0.25, 1.0, 0.5, 1.0, 1.0, -0.75, 0.75, 0.0, 0.75, 0.25, 0.75, -0.75, -0.5, 1.0, 0.25, 0.75, 0.25, -0.25, 0.5, 0.75, -0.5, -0.75, 0.25, 0.75, -0.5, 0.0, 0.25, -1.0, -0.75, -0.5, -0.75, 1.0, 0.5, -0.75, -0.25, -0.75, 0.0, -0.25, -1.0, -0.25, -1.0, -1.0, 0.25, 0.25, -1.0, 0.25, 0.5, 0.0, -0.75, 0.5, 0.0, 0.0, -0.5, -0.75, 0.5, 0.25, -0.5, 0.25, -0.5, 0.5, -0.5, 0.0, -1.0, 0.25, 0.0, 0.75, 0.0, 0.5, -0.75, 0.75, -1.0, 0.75, 0.75, 0.0, 0.25, 0.25, -0.25, -1.0, -1.0, 0.25, 0.5, -1.0, 0.75, -1.0, 0.0, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([0.0, 1.0, -0.25, -1.0, -0.5, 0.75, -0.75, -1.0, 0.75, 1.0, -1.0, 0.75, -1.0, -0.25, 1.0, 0.75, -0.5, -1.0, 0.0, 0.0, 0.25, 0.0, -0.5, 0.0, -0.5, -0.75, 0.0, 0.75, 0.25, 0.5, -1.0, -1.0, -0.75, -0.5, 0.25, -1.0, -0.5, -0.25, -0.5, -0.5, 0.75, 0.25, 0.75, -0.75, 0.0, 0.75, -1.0, -1.0, 0.25, 0.0, -0.25, -0.75, 1.0, 0.0, 0.5, 0.75, 0.5, -1.0, 0.25, -0.5, 0.25, 0.5, 0.0, -0.5, -0.5, 1.0, -0.75, 0.75, 0.75, -0.5, 0.25, -1.0, 1.0, 0.25, -1.0, 0.0, 0.75, -0.25, -0.5, 0.0, 0.75, 1.0, -0.5, 1.0, -1.0, 0.0, 0.0, -1.0, -0.75, -1.0, 0.0, -0.5, -0.5, 1.0, -0.25, 1.0, 0.75, -0.5, 1.0, -0.75, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([-0.75, -0.25, 1.0, 0.0, 0.25, 0.5, 1.0, 0.75, 0.75, -0.75, -0.5, 0.0, 0.75, 0.25, 1.0, -1.0, 0.5, -0.25, 0.5, 0.5, 0.25, 1.0, 1.0, 1.0, -0.5, 0.5, -0.75, 0.5, -1.0, 0.75, -0.5, 0.0, -0.5, 0.0, -0.25, 0.5, -1.0, -0.25, -0.75, -1.0, -0.75, 0.0, 0.25, 1.0, -0.75, 0.0, 0.75, -0.75, -0.5, -0.5, -1.0, -0.5, -1.0, 0.25, -0.75, 0.5, -1.0, 0.75, 0.0, 1.0, 0.75, 0.75, -1.0, 0.25, 0.75, 1.0, -0.25, 0.25, 1.0, -0.25, -0.75, 0.0, -0.25, 0.25, -0.75, -0.25, -1.0, 0.0, -0.25, -1.0, -0.25, 0.75, 1.0, 0.75, 0.5, -0.5, 0.25, -0.5, -1.0, -0.75, -0.75, 0.25, 0.25, 0.0, -0.25, 0.0, 0.5, 0.25, 0.75, -0.5, ]);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
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
        bindGroupLayouts: [bind_group_layout100]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const array4 = new Float32Array([0.75, 0.0, 0.0, 0.0, -0.75, 0.0, -0.5, -0.75, 0.25, -0.25, 0.25, 1.0, 0.5, 0.25, -0.25, 0.75, 0.75, 0.75, -0.75, -1.0, 0.5, 0.5, 1.0, 0.75, 1.0, 1.0, 0.5, 1.0, 1.0, 0.0, 0.25, 0.75, 1.0, 0.75, 1.0, 0.75, -0.25, 0.25, -0.5, -1.0, -1.0, 0.75, -1.0, 1.0, -0.75, 1.0, 1.0, 1.0, 0.75, -0.75, -1.0, 0.5, 0.75, 1.0, 0.75, -0.5, -0.25, 0.5, -0.5, 0.25, 0.5, -0.25, -0.75, -0.5, 0.0, 0.0, 0.5, 0.25, 0.75, -0.5, 0.25, 0.5, 1.0, -0.25, 0.75, -0.75, -0.25, 1.0, 0.25, -0.5, 0.5, 0.75, -1.0, -0.5, -0.75, 0.5, 0.75, -0.25, 0.0, 1.0, -0.5, 0.75, -0.5, 1.0, -0.75, -1.0, -0.75, -0.75, 0.75, 1.0, ]);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.popDebugGroup();
    device10.destroy();
    device30.destroy();
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const array5 = new Float32Array([0.0, -0.75, 0.25, 0.75, -0.25, -0.5, 0.25, 1.0, 1.0, -0.75, -0.25, -0.25, -0.25, 0.0, 1.0, 0.5, 0.75, -0.75, -1.0, 1.0, 0.75, -1.0, 0.5, -0.25, 0.75, 0.75, 0.5, -0.75, 0.75, 0.25, -0.5, 0.5, -0.25, -1.0, -1.0, -1.0, 1.0, -0.75, 0.0, -0.75, 0.25, 0.5, -0.25, -0.25, -1.0, 0.0, -0.75, -0.75, -0.5, 0.75, 0.75, 1.0, -1.0, 0.0, -0.5, 0.25, -1.0, -0.25, -0.25, 0.75, -0.5, 1.0, 0.25, 0.0, 0.25, -0.75, 1.0, 0.5, 1.0, 0.5, 0.75, -0.5, -1.0, -0.5, 0.25, -0.5, 1.0, 0.25, 0.0, 0.25, 0.0, 0.75, -1.0, 0.75, -1.0, 0.75, 0.0, -0.25, -0.5, -1.0, 0.25, 0.0, 0.75, -0.5, 1.0, -1.0, -0.25, -0.75, 0.0, 0.25, ]);
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder202.popDebugGroup();
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.insertDebugMarker("marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    texture201.destroy();
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.destroy();
    
    
    const array6 = new Float32Array([-0.75, 1.0, 0.75, 0.25, 0.5, -0.75, 0.25, 1.0, -1.0, -1.0, -0.25, -1.0, -0.5, 1.0, -0.5, -0.5, 0.5, -0.75, -1.0, 0.0, -0.5, 0.75, -1.0, -1.0, -1.0, -1.0, 1.0, 1.0, 0.5, -0.5, 1.0, -0.75, -1.0, -0.5, -1.0, 0.0, -1.0, 0.75, -0.5, 0.75, -0.5, 0.75, 1.0, -1.0, -0.25, -0.5, 0.5, 0.25, 0.25, -0.5, 0.5, -1.0, -0.5, 0.75, 0.5, -0.25, 0.75, -0.25, 1.0, 0.5, 1.0, 0.0, 0.75, 0.75, -0.5, 0.25, -1.0, 0.5, 1.0, 0.25, 1.0, 1.0, -1.0, 1.0, 0.75, 1.0, 0.75, 0.0, 0.25, 1.0, 0.0, -0.75, 1.0, 0.75, 0.75, -0.5, 0.75, 0.5, 0.5, 0.5, 0.0, -0.5, 0.25, 0.75, 1.0, -0.5, 0.5, -0.5, 1.0, 0.75, ]);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth32float",
        dimension: "2d"
    });
    
    
    device40.pushErrorScope("validation");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    
    
    const array7 = new Float32Array([1.0, -0.25, 0.25, -0.25, 0.75, -0.5, -0.75, 1.0, 0.0, 0.25, -0.5, -0.5, 1.0, 0.0, 0.75, 0.0, 0.25, -0.75, -1.0, 0.25, 0.75, 0.0, -0.25, 1.0, 0.25, -0.75, 0.25, 0.0, -0.5, 0.25, -0.25, -0.5, 0.5, 0.25, -0.5, 0.5, 0.75, 1.0, -0.75, 0.75, 0.0, 0.25, -0.25, 1.0, 0.5, 0.25, -1.0, 0.75, -0.75, -0.75, -0.75, -0.5, 0.75, 0.25, -0.75, 0.0, -0.5, 0.75, 1.0, -0.75, -1.0, -0.25, -0.75, 0.75, -0.25, -0.25, 1.0, -0.5, 0.5, 0.5, -0.25, 0.0, -0.5, 0.5, -0.75, -0.25, 0.75, -1.0, 0.75, -0.5, 0.75, -0.25, 1.0, -0.75, -0.75, 0.0, -1.0, 0.25, 0.5, 0.5, -1.0, -0.25, -1.0, 0.0, -0.25, 0.5, 0.25, 0.0, 1.0, 0.0, ]);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    
    
    buffer401.destroy()
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const command_buffer400 = command_encoder400.finish();
    
    device40.queue.submit([command_buffer400, ]);
    command_encoder401.insertDebugMarker("mymarker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture400.destroy();
    
    command_encoder401.insertDebugMarker("mymarker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
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
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    
    
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4010.setPipeline(render_pipeline400);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_pass_encoder4010.setStencilReference(1);
    query401.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder401.popDebugGroup();
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder4010.insertDebugMarker("marker");
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    buffer400.destroy()
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    device40.pushErrorScope("internal");
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query400
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    query400.destroy()
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    buffer403.destroy()
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_pass_encoder4010.insertDebugMarker("marker");
    query400.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array8 = new Float32Array([0.5, 0.5, 0.0, 0.25, -1.0, 0.75, 0.75, 0.75, -0.75, -1.0, 0.75, -0.5, 0.75, -0.25, 0.5, -1.0, -1.0, -0.25, 0.75, -0.75, 0.0, -0.75, -0.75, 0.0, -0.25, -1.0, -0.5, -0.75, 0.5, 0.25, -0.5, -0.25, -1.0, -0.25, -0.5, 1.0, 0.25, -0.25, 0.25, 1.0, -0.25, -0.5, 0.0, 0.75, 0.0, 0.75, 0.25, -0.5, 0.25, 0.0, -0.5, -0.5, 0.5, -0.25, -0.75, 0.75, -0.25, -0.75, -0.75, 0.0, 0.0, 0.75, -1.0, -0.75, 1.0, 0.75, 0.5, 0.75, 1.0, 0.5, 1.0, -1.0, 0.0, 1.0, 0.75, 0.5, 0.0, 0.75, 0.5, 1.0, -0.75, -0.25, -0.5, 0.25, 1.0, -0.25, 0.0, -1.0, -0.5, -0.75, -0.75, 0.25, -0.25, 0.5, 0.25, 0.75, 0.5, 1.0, -0.25, -0.5, ]);
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    render_bundle_encoder401.popDebugGroup();
    render_bundle_encoder401.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer406, 0, array4, 0, array4.length);
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
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
    
    device40.queue.writeBuffer(buffer406, 0, array8, 0, array8.length);
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer406, 0, array4, 0, array4.length);
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    buffer406.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4020.setPipeline(compute_pipeline403);
    
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query402
    });
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    render_pass_encoder4030.insertDebugMarker("marker");
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder4030.executeBundles([])
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group401);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    query400.destroy()
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder4040.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    buffer408.destroy()
    render_pass_encoder4040.setPipeline(render_pipeline401);
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_pass_encoder4040.pushDebugGroup("group_marker");
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_pass_encoder4030.setPipeline(render_pipeline401);
    
    buffer402.destroy()
    render_pass_encoder4040.setStencilReference(1);
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    query400.destroy()
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    render_pass_encoder4040.setBindGroup(0, bind_group402);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group403);
    const array9 = new Float32Array([0.0, -0.25, 0.25, 0.0, 0.75, -1.0, 0.25, 1.0, -1.0, -0.5, 0.75, -1.0, -1.0, 1.0, -0.25, -0.75, -0.25, 1.0, 1.0, 0.25, -0.75, -0.25, 0.0, -1.0, -1.0, 0.75, -1.0, -1.0, 1.0, 1.0, -0.5, 1.0, 1.0, 0.0, -0.75, 0.25, -0.5, 0.5, 0.5, -1.0, 0.75, -0.5, 0.0, 0.75, -1.0, 0.75, -0.75, 0.5, 0.5, -0.25, 0.25, -1.0, -0.5, -0.25, -0.25, 1.0, 1.0, 0.5, -0.75, 1.0, 0.0, -0.25, 0.5, 0.25, -0.75, -0.75, 0.75, 1.0, 1.0, -0.75, -0.25, 0.25, 1.0, 0.5, 0.5, 0.5, 0.25, 0.0, 0.0, -0.5, 0.0, 1.0, 0.25, -0.5, -0.75, 0.75, 0.0, -1.0, 0.5, 1.0, 0.25, 0.75, 0.25, -1.0, -0.5, 0.25, 0.0, -0.75, -0.5, 0.75, ]);
    buffer4010.destroy()
    render_pass_encoder4010.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    render_pass_encoder4030.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    query401.destroy()
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    render_bundle_encoder401.popDebugGroup();
    
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    query400.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    render_pass_encoder4030.pushDebugGroup("group_marker");
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    device50.destroy();
    
    buffer405.destroy()
    
    const render_pass_encoder4050 = command_encoder405.beginRenderPass({
        label: "render_pass_encoder4050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query401
    });
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer601, 0, array7, 0, array7.length);
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    buffer407.destroy()
    
    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder4050.setPipeline(render_pipeline400);
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    render_pass_encoder4030.popDebugGroup();
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    render_pass_encoder4050.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    buffer4012.destroy()
    render_pass_encoder4050.pushDebugGroup("group_marker");
    render_pass_encoder4030.pushDebugGroup("group_marker");
    query403.destroy()
    render_bundle_encoder400.popDebugGroup();
    
    
    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder4030.insertDebugMarker("marker");
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4050.popDebugGroup();
    query403.destroy()
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4016,
                },
            },
        ],
    });

    render_pass_encoder4050.setBindGroup(0, bind_group404);
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    
    
    buffer4013.destroy()
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    
    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4018,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group405);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder4060 = command_encoder406.beginComputePass({ label: "compute_pass_encoder4060" });
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4019, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4019, 0);
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder4030.popDebugGroup();
    query600.destroy()
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4040.popDebugGroup();
    device40.queue.writeBuffer(buffer4019, 0, array1, 0, array1.length);
    render_pass_encoder4040.setVertexBuffer(0, buffer401);
    render_pass_encoder4030.insertDebugMarker("marker");
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module606,
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
            module: shader_module606,
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
    render_pass_encoder4040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder4040.pushDebugGroup("group_marker");
    
    device40.queue.writeBuffer(buffer4019, 0, array5, 0, array5.length);
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.setVertexBuffer(0, buffer401);
    buffer4017.destroy()
    compute_pass_encoder4020.insertDebugMarker("marker")
    buffer4014.destroy()
    
    buffer600.destroy()
    query600.destroy()
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4060.setPipeline(compute_pipeline408);
    buffer4016.destroy()
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    device40.queue.writeBuffer(buffer4019, 0, array5, 0, array5.length);
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module606,
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
            module: shader_module606,
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
    
    
    device40.queue.writeBuffer(buffer4019, 0, array3, 0, array3.length);
    
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4040.setStencilReference(1);
    device40.queue.writeBuffer(buffer4019, 0, array6, 0, array6.length);
    
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6000.setPipeline(compute_pipeline603);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const sampler407 = device40.createSampler( { label: "sampler407" } );
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: compute_pipeline603.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group600);
    render_pass_encoder4010.pushDebugGroup("group_marker");
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4020.insertDebugMarker("marker")
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeBuffer(buffer4019, 0, array1, 0, array1.length);
    device40.queue.writeBuffer(buffer4019, 0, array9, 0, array9.length);
    render_pass_encoder4010.setStencilReference(1);
    
    render_bundle_encoder401.setIndexBuffer(buffer402, "uint16");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const command_encoder407 = device40.createCommandEncoder({ label: "command_encoder407" });
    render_bundle_encoder600.setPipeline(render_pipeline601);
    
    const render_pass_encoder4070 = command_encoder407.beginRenderPass({
        label: "render_pass_encoder4070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query403
    });
    render_pass_encoder4070.executeBundles([])
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_bundle_encoder601.setPipeline(render_pipeline601);
    render_bundle_encoder402.popDebugGroup();
    buffer4018.destroy()
    render_bundle_encoder602.pushDebugGroup("group_marker");
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    render_pass_encoder4070.executeBundles([])
    
    render_pass_encoder4070.pushDebugGroup("group_marker");
    render_pass_encoder4030.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    buffer409.destroy()
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout402,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.setPipeline(render_pipeline401);
    
    device60.pushErrorScope("out-of-memory");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer602.destroy()
    render_pass_encoder4030.pushDebugGroup("group_marker");
    
    device40.queue.writeBuffer(buffer4019, 0, array2, 0, array2.length);
    
    const sampler408 = device40.createSampler( { label: "sampler408" } );
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module607.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    render_pass_encoder4050.setStencilReference(1);
    
    render_pass_encoder4030.insertDebugMarker("marker");
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout401,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    render_pass_encoder4040.setStencilReference(1);
    
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    render_bundle_encoder602.setPipeline(render_pipeline601);
    
    
    
    render_bundle_encoder602.popDebugGroup();
    render_pass_encoder4070.setStencilReference(1);
    
    render_bundle_encoder400.setVertexBuffer(0, buffer401);
    render_bundle_encoder601.insertDebugMarker("marker");
    device40.pushErrorScope("internal");
    device40.queue.writeBuffer(buffer4019, 0, array4, 0, array4.length);
    
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    
    compute_pass_encoder4020.end();
    render_pass_encoder4040.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder600.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    render_bundle_encoder602.insertDebugMarker("marker");
    render_bundle_encoder401.drawIndexed(3);
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: undefined
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
    render_pass_encoder4010.setVertexBuffer(0, buffer401);
    render_pass_encoder4040.setStencilReference(1);
    render_bundle_encoder402.popDebugGroup();
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer4011.destroy()
    
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    compute_pass_encoder4060.pushDebugGroup("group_marker")
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
    render_pass_encoder4020.setPipeline(render_pipeline405);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer604, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer604, 0);
    render_pass_encoder4070.setPipeline(render_pipeline402);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4050.setVertexBuffer(0, buffer401);
    render_pass_encoder4070.popDebugGroup();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: compute_pipeline408.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4021,
                },
            },
        ],
    });

    compute_pass_encoder4060.setBindGroup(0, bind_group406);
    render_pass_encoder4050.draw(3);
    render_pass_encoder4040.setIndexBuffer(buffer402, "uint16");
    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4023,
                },
            },
        ],
    });

    render_pass_encoder4030.setBindGroup(0, bind_group407);
    render_pass_encoder4010.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4010.drawIndexedIndirect(buffer4019, 0);
    render_pass_encoder4040.popDebugGroup();
    const uint32_4060 = new Uint32Array(3);

    uint32_4060[0] = 100;
    uint32_4060[1] = 1;
    uint32_4060[2] = 1;

    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4024, 0, uint32_4060, 0, uint32_4060.length);

    compute_pass_encoder4060.dispatchWorkgroupsIndirect(buffer4024, 0);
    render_pass_encoder4040.draw(3);
    compute_pass_encoder6000.end();
    compute_pass_encoder4060.popDebugGroup()
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder4030.setVertexBuffer(0, buffer401);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4030.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4010.end();
    compute_pass_encoder4060.end();
    render_pass_encoder4030.drawIndirect(buffer4024, 0);
    const command_buffer406 = command_encoder406.finish();
    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: render_pipeline405.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4026,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group408);
    render_pass_encoder4050.end();
    render_pass_encoder4040.end();
    const command_buffer401 = command_encoder401.finish();
    const command_buffer404 = command_encoder404.finish();
    const command_buffer405 = command_encoder405.finish();
    render_pass_encoder4020.setVertexBuffer(0, buffer401);
    render_pass_encoder4020.drawIndirect(buffer4024, 0);
    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4028,
                },
            },
        ],
    });

    render_pass_encoder4070.setBindGroup(0, bind_group409);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder4070.setVertexBuffer(0, buffer401);
    render_pass_encoder4070.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4070.drawIndirect(buffer4019, 0);
    render_pass_encoder4030.end();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4070.end();
    device40.queue.submit([command_buffer404, command_buffer405, ]);
    const command_buffer403 = command_encoder403.finish();
    const command_buffer407 = command_encoder407.finish();
    render_pass_encoder4020.end();
    const command_buffer402 = command_encoder402.finish();
    device40.queue.submit([command_buffer406, command_buffer407, ]);
    device40.queue.submit([command_buffer403, ]);
}