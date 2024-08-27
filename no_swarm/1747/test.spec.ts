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
    
    
    
    const array0 = new Float32Array([0.25, -0.75, -0.5, 0.25, 1.0, 0.5, 0.25, 0.25, -1.0, 1.0, 0.25, 0.5, 0.5, 0.0, -0.5, -0.25, -0.5, 0.5, -0.75, 0.5, 0.75, 0.25, 0.75, -0.25, 0.25, 0.25, 0.75, -0.75, 0.0, 1.0, 1.0, 0.5, -1.0, 0.75, 1.0, 0.75, -1.0, -0.25, -0.5, 0.25, -0.5, 1.0, 0.0, 0.75, 0.25, -0.5, 0.0, -0.25, 0.25, -1.0, 0.25, 0.75, -1.0, 0.0, 1.0, 0.25, 0.75, 0.25, 0.25, 0.75, -0.25, 1.0, 0.5, -0.5, 0.5, 1.0, -0.5, -0.75, -1.0, -0.5, -1.0, 0.5, -0.75, 0.0, 0.25, 0.75, 0.25, -0.5, -0.25, 1.0, -0.5, -0.75, 0.0, -0.5, 0.5, -0.25, 0.25, 0.0, -0.25, 0.0, 0.75, -0.5, 0.0, 0.75, -0.75, 0.0, -0.25, 0.0, 0.5, 0.0, ]);
    const array1 = new Float32Array([1.0, -0.5, 1.0, -0.75, 1.0, 0.25, -0.75, -0.25, 0.0, -0.5, 0.75, -0.25, 0.25, 0.75, 1.0, 0.75, 0.25, 0.0, 1.0, 0.5, 0.25, 0.5, -0.5, -0.75, -0.25, 0.25, 0.5, 0.0, -0.75, -0.75, 0.0, -0.25, -0.75, 1.0, -0.75, -0.5, -0.25, 0.25, 0.75, 0.25, 0.25, 0.25, 0.75, -0.5, -0.75, -0.25, 0.0, -0.5, 0.75, 0.25, 0.5, 1.0, 0.0, -0.25, -0.5, 0.5, -1.0, -0.25, -1.0, 0.75, 0.0, -0.5, -0.25, -1.0, 0.5, -0.5, 0.0, 0.0, 1.0, 1.0, 1.0, 0.0, 0.75, 1.0, -0.75, 0.5, 1.0, 0.0, 1.0, -0.75, -0.25, 0.25, 1.0, -0.75, -0.5, -1.0, 0.75, -0.5, -0.75, 0.0, 0.5, 0.25, 0.5, 0.75, -0.25, -1.0, -0.5, -0.75, 0.75, -0.5, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    
    device20.queue.submit([]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    texture201.destroy();
    const array2 = new Float32Array([0.75, -0.25, -0.5, 0.0, -0.5, -0.75, -1.0, 0.5, 0.25, 0.0, -0.75, -0.75, 0.75, 0.0, -0.75, 1.0, 0.0, 1.0, -0.25, 0.5, 1.0, 0.5, 0.25, 0.5, 1.0, -0.75, 0.75, -0.5, 0.25, -0.5, 0.75, -0.75, -0.5, -0.25, -0.75, -0.25, 0.75, -0.25, 0.75, 1.0, 0.75, 0.0, 0.25, 0.25, -0.25, -0.25, 0.75, -0.25, -0.75, 0.25, 0.75, 0.25, -1.0, 1.0, -0.5, 0.0, 1.0, 0.75, -0.5, -0.75, -0.25, 0.5, -0.75, -0.25, 0.0, -0.25, -1.0, -0.5, 0.5, 0.25, -0.5, -0.5, -0.5, 0.75, -0.25, 1.0, 0.75, 0.75, 1.0, -0.25, 0.5, 0.0, -0.75, 0.0, -0.5, 0.5, -0.25, -0.25, 0.25, 1.0, 0.25, 0.5, -0.5, -0.75, 0.25, -0.25, 0.5, -0.25, 0.25, -0.25, ]);
    device00.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture200.destroy();
    
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
    
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array3 = new Float32Array([0.75, 0.75, -0.5, 0.75, -0.25, 0.5, -1.0, 0.5, -0.25, 0.75, 0.25, -0.5, 0.25, 0.75, 0.25, -0.5, 1.0, 1.0, 0.75, -1.0, 0.0, 0.25, -0.5, -0.75, 0.25, -0.25, 0.25, 0.75, -0.5, 0.25, 0.5, 0.0, 1.0, -1.0, 1.0, -0.25, 0.5, 0.0, 0.5, 1.0, -1.0, 0.5, -1.0, -0.25, -0.75, -1.0, -0.75, -0.25, 0.25, -0.5, 1.0, 1.0, -0.25, -0.75, 1.0, 0.75, 0.5, -0.75, -0.5, 0.75, 0.75, 0.25, 0.75, 0.5, -1.0, -0.25, -0.25, -0.5, -0.75, -0.75, 1.0, -1.0, -1.0, 0.0, 0.25, -1.0, -0.25, 0.0, 1.0, 0.0, 0.75, 0.0, -0.75, 0.0, 0.0, 0.25, 0.75, -0.5, 0.75, -1.0, 0.5, 0.25, -0.5, 0.75, 1.0, 0.0, 0.25, 0.5, 0.25, -0.25, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device20.destroy();
    const array4 = new Float32Array([-0.25, 1.0, 1.0, -0.5, 0.0, 0.5, 0.5, 1.0, -1.0, 0.0, -0.5, -1.0, 1.0, -0.5, 0.75, -1.0, -0.25, -1.0, -0.75, -0.5, -0.25, 0.25, -0.5, 1.0, -0.75, 0.75, 0.5, 0.0, 0.0, 0.75, 0.25, -0.25, 0.75, 0.5, 0.75, 0.25, 0.25, -1.0, 0.5, 0.25, 1.0, -0.75, -0.75, 0.5, -0.25, 0.25, 0.5, 0.5, -0.5, 0.0, -0.75, 0.5, -0.25, 1.0, -0.5, 0.25, 0.0, -0.75, 0.25, -0.75, -0.25, -0.5, 0.25, -0.75, 0.25, -1.0, -1.0, 0.75, -0.5, 0.75, 0.0, -0.75, 0.75, 0.5, -0.5, -0.5, 1.0, 1.0, 0.25, -0.25, 0.0, 0.0, -0.5, -1.0, -1.0, 0.0, 1.0, 1.0, -0.75, 0.25, -1.0, 0.0, 0.5, -0.75, 0.5, 0.75, -0.25, 0.25, 1.0, -0.75, ]);
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([-0.5, 1.0, 0.5, -0.25, -0.75, -0.75, -0.25, -0.25, -0.5, -0.75, -0.25, 0.25, -0.5, 0.25, -1.0, 0.25, -0.5, 1.0, 1.0, 0.5, -0.25, -1.0, -0.75, 0.0, 0.5, 0.5, 0.25, 0.25, 0.25, 0.75, 0.5, 0.25, 0.5, 1.0, 1.0, -0.5, -0.25, 0.5, 0.25, -1.0, 1.0, 0.5, 0.25, 0.5, 0.0, -0.25, -1.0, -1.0, -1.0, -0.75, 0.25, 0.75, -0.25, -0.5, 0.75, -1.0, -0.5, 1.0, -0.5, 0.0, 1.0, 0.25, 0.25, -1.0, 0.25, 0.75, -0.25, 0.25, 1.0, 1.0, 1.0, 0.75, -1.0, 0.75, 0.25, -1.0, 0.0, -0.5, -1.0, 1.0, -1.0, 0.75, 1.0, -0.75, 1.0, -1.0, -0.75, 0.0, 0.0, 0.0, -0.5, 0.25, -0.25, -0.5, 0.5, 1.0, 1.0, -0.25, -0.75, -0.25, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const array6 = new Float32Array([0.5, 0.0, -1.0, 0.25, -0.75, 1.0, -1.0, -1.0, -0.5, 0.75, -0.5, -0.5, -0.75, -1.0, -1.0, 0.0, 0.25, -0.25, -1.0, 1.0, -1.0, -0.25, 0.5, -0.25, 0.5, -0.5, -0.75, 0.75, -1.0, -0.25, -1.0, 0.0, 1.0, 0.5, 1.0, 0.75, -1.0, 0.25, 0.25, -1.0, -1.0, 0.75, 0.25, 0.75, -0.5, 0.25, -0.25, -0.75, -0.5, -0.5, -0.75, -1.0, 0.25, 0.75, 0.0, 0.5, 0.75, -1.0, 1.0, 0.75, 0.25, 1.0, -0.75, 0.5, 1.0, -1.0, 0.0, -1.0, -0.5, -0.75, -0.5, 0.25, -0.75, 0.5, -0.5, -0.5, -0.25, 0.5, -0.75, 0.5, -0.75, 0.5, 0.5, 0.5, 0.25, -0.25, 0.25, 0.5, 0.25, -0.75, 0.5, -0.75, -1.0, -1.0, 0.0, 0.5, 0.0, 0.5, 0.5, 0.5, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    device10.pushErrorScope("validation");
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.destroy();
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    
    
    
    const array7 = new Float32Array([-0.25, 1.0, -0.25, -0.5, 0.0, -0.25, 0.0, -0.25, -0.5, -1.0, 0.25, 0.75, -0.5, 0.5, -0.75, 0.5, -0.75, -0.25, -0.75, 0.0, 0.75, 0.25, 0.5, 0.5, 0.5, -0.75, -0.75, 0.5, 0.75, 0.75, 0.25, 0.0, 0.0, 0.75, -0.75, 1.0, 1.0, 0.0, 0.0, 0.5, 0.75, -0.5, 0.25, 1.0, 0.25, -1.0, 0.75, 0.0, -0.75, -0.5, -1.0, 0.25, 0.0, -1.0, -0.5, -0.25, 0.75, -0.25, -1.0, 0.25, 1.0, 1.0, 0.0, 1.0, -0.25, -0.25, 0.75, -0.5, -0.25, 0.25, -0.25, -1.0, 0.25, -0.25, 0.0, 1.0, 0.5, 0.0, -1.0, 1.0, -0.75, -0.75, 0.5, 0.5, -0.25, 1.0, 0.0, -0.5, -0.25, 0.0, 1.0, 0.5, -0.25, 0.75, -1.0, -1.0, 0.25, 0.75, 0.75, 0.25, ]);
    
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    const array8 = new Float32Array([0.75, 0.0, 0.75, 0.75, -0.5, 0.25, 0.75, 0.75, 0.5, 0.5, -0.75, -0.25, -0.25, 0.5, -0.25, -0.25, 1.0, -0.5, 1.0, 1.0, 0.25, 1.0, 0.0, 0.25, 0.75, 0.25, -0.5, 0.75, -0.5, 0.5, -0.75, -0.25, 1.0, 0.25, 0.0, 0.5, 0.25, 0.75, -1.0, -0.75, 1.0, 0.75, 0.25, -0.5, -0.25, -0.25, 1.0, 0.5, -0.75, -0.25, -0.75, 1.0, 1.0, -0.5, 0.25, 0.25, -1.0, -0.75, 0.5, 1.0, 0.0, 0.25, 0.75, -1.0, 1.0, -1.0, -1.0, 0.25, -1.0, -0.25, -0.25, -0.75, 0.75, -0.25, -1.0, 0.5, 0.0, -1.0, 0.25, -0.25, 0.5, -0.25, -1.0, -0.75, 1.0, -1.0, -0.75, 1.0, 0.25, -0.75, -1.0, -1.0, 1.0, -0.5, -0.5, 1.0, 0.75, 0.0, -0.5, 0.0, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer100.destroy()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const array9 = new Float32Array([-0.75, 0.5, -0.25, -1.0, -0.5, 1.0, -1.0, 1.0, -0.75, -0.5, 1.0, 0.5, 1.0, -1.0, -0.5, 0.25, 0.5, 0.25, -0.25, -1.0, 0.5, 1.0, -0.5, 0.75, -0.75, 0.0, 0.75, 0.0, 1.0, 0.0, -1.0, 0.0, 1.0, 0.0, 0.25, 1.0, 0.75, -0.5, -0.5, -0.25, 0.0, -0.75, -1.0, 0.75, 1.0, -0.75, -1.0, 0.5, 0.75, 0.0, -1.0, 0.0, -0.5, -0.5, 0.75, -0.25, 0.25, -0.25, -0.25, 0.5, -0.25, 1.0, -0.5, -1.0, 0.25, 0.5, -1.0, -0.75, 0.5, 0.25, 0.25, -0.75, 1.0, 0.75, 1.0, 0.75, -1.0, -1.0, -0.5, -1.0, -0.75, -0.5, 1.0, -1.0, 0.5, 0.5, 0.75, -0.75, 0.25, 1.0, -0.75, 0.25, -0.25, -0.5, -0.75, -0.25, 0.5, 1.0, -0.25, -0.5, ]);
    device00.pushErrorScope("out-of-memory");
    
    
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
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device60.destroy();
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
    
    texture000.destroy();
    const array10 = new Float32Array([-0.25, 1.0, -0.75, -0.25, -1.0, 0.0, 1.0, -0.5, 0.5, 0.75, -0.75, 0.0, 0.0, 0.75, -0.75, -1.0, -0.25, 1.0, -0.75, -0.25, 0.25, -0.5, 0.25, 1.0, -0.5, -1.0, -1.0, 0.75, 1.0, 1.0, -0.75, -1.0, -1.0, -0.25, 0.0, 0.5, -0.75, -1.0, 0.5, -0.5, 0.5, 0.0, -1.0, 0.0, -1.0, 0.75, 1.0, 0.75, -0.5, -0.5, 0.5, 1.0, -0.25, 1.0, 0.25, 0.5, 0.75, -0.25, -0.75, 1.0, -0.25, 0.5, 0.0, 0.5, -0.5, -1.0, -1.0, 1.0, -1.0, -0.5, 0.25, -1.0, 0.5, 0.0, 0.25, -1.0, -1.0, 0.5, -0.25, -0.5, -0.25, 0.25, 1.0, -0.5, -0.25, 0.0, -0.25, 0.0, 0.75, -0.5, 0.5, -0.75, 0.0, -0.75, 0.0, -0.75, 0.5, -0.25, -0.75, -1.0, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
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
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array11 = new Float32Array([0.0, 0.25, 0.75, 0.75, -0.25, 0.5, 0.5, 0.0, 0.75, -0.25, 0.0, -0.75, -1.0, -0.75, 1.0, 0.5, -0.75, -0.5, 0.25, -0.75, 0.5, 0.5, 0.25, 0.25, 0.25, 0.25, 0.25, -1.0, 0.75, -0.25, 1.0, -1.0, -1.0, -0.5, 1.0, 0.75, -1.0, -0.5, -0.75, 0.25, 0.25, -0.5, 0.25, 0.75, -0.25, 1.0, 0.25, -0.5, 0.5, 0.75, -0.75, 0.25, 0.0, 0.0, -0.5, 0.75, 0.5, 0.0, 1.0, -1.0, 0.75, 1.0, 1.0, 0.25, 0.75, -1.0, -1.0, -0.25, -0.25, 0.0, -1.0, -1.0, 1.0, -0.5, 1.0, 0.75, 0.5, 1.0, 0.25, 0.0, -0.5, -0.5, -0.5, -1.0, 0.0, -1.0, 1.0, -0.5, -1.0, 0.0, 1.0, 0.5, -0.25, -0.5, 0.0, -1.0, 0.0, -0.75, 0.25, 0.0, ]);
    buffer500.destroy()
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device50.destroy();
    
    
    
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device30.destroy();
    query600.destroy()
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device30.pushErrorScope("out-of-memory");
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    texture700.destroy();
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
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
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
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
    
    
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture500.destroy();
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    device70.queue.writeTexture({ texture: texture701 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    texture701.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    const render_pipeline802 = device80.createRenderPipeline({
        label: "render_pipeline802",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    texture702.destroy();
    const render_pipeline803 = device80.createRenderPipeline({
        label: "render_pipeline803",
        vertex: {
            module: shader_module802,
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
            module: shader_module802,
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
    device70.pushErrorScope("out-of-memory");
    
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
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
    device70.queue.writeTexture({ texture: texture703 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder700.pushDebugGroup("mygroupmarker")
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const render_pass_encoder7000 = command_encoder700.beginRenderPass({
        label: "render_pass_encoder7000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7010,
            },
        ],
        occlusionQuerySet: query700
    });
    command_encoder800.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    command_encoder100.insertDebugMarker("mymarker");
    device70.queue.writeTexture({ texture: texture703 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query701.destroy()
    const texture_view7030 = texture703.createView({ label: "texture_view7030" });
    const texture_view7031 = texture703.createView({ label: "texture_view7031" });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_pipeline804 = device80.createRenderPipeline({
        label: "render_pipeline804",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    const array12 = new Float32Array([0.75, 0.75, 0.0, -0.75, -0.5, 0.25, 0.0, 0.75, 0.0, 0.5, -0.5, -0.75, 1.0, 0.75, 0.0, 0.75, -0.5, -0.75, 1.0, 1.0, -0.5, 0.25, 1.0, 0.5, 0.25, 0.5, 1.0, -1.0, 1.0, -0.25, 0.25, 0.5, 0.0, 0.75, -0.25, -1.0, -1.0, 0.5, -0.25, -0.75, 1.0, -0.75, -0.75, 0.25, 0.75, 1.0, -1.0, -0.75, -0.5, -1.0, 0.5, -0.75, 0.75, 0.75, -0.5, -0.5, -0.5, 0.25, 0.75, -0.5, 0.5, 0.75, 1.0, -0.5, -0.25, 0.25, -0.5, 0.0, -0.75, 0.5, -0.75, 0.0, 1.0, 0.5, -0.25, -0.75, 0.25, 0.0, -0.75, 0.75, 0.0, -0.25, -0.25, 1.0, -0.25, 0.25, 0.0, 0.5, -0.75, -1.0, 0.75, -0.5, -0.25, 0.75, 1.0, 0.5, 1.0, 1.0, -1.0, -0.75, ]);
    render_pass_encoder7000.executeBundles([])
    
    device70.queue.writeTexture({ texture: texture703 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    query601.destroy()
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    device70.queue.writeTexture({ texture: texture703 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture703 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query700.destroy()
    render_pass_encoder7000.pushDebugGroup("group_marker");
    
    
    
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout701]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    device70.queue.writeTexture({ texture: texture703 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    render_pass_encoder7000.executeBundles([])
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
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder800.insertDebugMarker("mymarker");
    const texture704 = device70.createTexture({
        label: "texture704",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8uint",
        dimension: "2d"
    });
    device70.queue.writeTexture({ texture: texture703 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout702,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    texture704.destroy();
    const texture705 = device70.createTexture({
        label: "texture705",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    const command_buffer100 = command_encoder100.finish();
    device70.queue.writeTexture({ texture: texture703 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.queue.writeTexture({ texture: texture705 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder800.insertDebugMarker("mymarker");
    render_pass_encoder7000.setScissorRect(0, 0, texture701.width / 2, texture701.height / 2);
    
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
    render_pass_encoder7000.setStencilReference(1);
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    texture705.destroy();
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout702,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout702]
    });
    const render_pass_encoder7010 = command_encoder701.beginRenderPass({
        label: "render_pass_encoder7010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7031,
            },
        ],
        occlusionQuerySet: query700
    });
    
    device70.queue.writeTexture({ texture: texture703 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder800.setPipeline(render_pipeline804);
    device20.queue.writeTexture({ texture: texture202 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout702]
    });
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    buffer800.destroy()
    
    render_bundle_encoder700.insertDebugMarker("marker");
    render_pass_encoder7000.popDebugGroup();
    const command_buffer702 = command_encoder702.finish();
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
    render_pass_encoder7010.setStencilReference(1);
    texture703.destroy();
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout706 = device70.createPipelineLayout({ 
        label: "pipeline_layout706",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    command_encoder800.insertDebugMarker("mymarker");
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    const render_pipeline805 = device80.createRenderPipeline({
        label: "render_pipeline805",
        vertex: {
            module: shader_module802,
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
            module: shader_module802,
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
    
    device80.pushErrorScope("validation");
    render_pass_encoder7000.insertDebugMarker("marker");
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    command_encoder700.insertDebugMarker("mymarker");
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    compute_pass_encoder8000.popDebugGroup()
    const render_pass_encoder7030 = command_encoder703.beginRenderPass({
        label: "render_pass_encoder7030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7010,
            },
        ],
        occlusionQuerySet: query701
    });
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout703,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const render_pass_encoder7001 = command_encoder700.beginRenderPass({
        label: "render_pass_encoder7001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7031,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder7001.setScissorRect(0, 0, texture703.width / 2, texture703.height / 2);
    
    render_bundle_encoder700.popDebugGroup();
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder7001.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder801.pushDebugGroup("mygroupmarker")
    render_pass_encoder7030.setStencilReference(1);
    render_pass_encoder7000.insertDebugMarker("marker");
    device70.queue.writeTexture({ texture: texture703 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder7010.setScissorRect(0, 0, texture703.width / 2, texture703.height / 2);
    command_encoder801.clearBuffer(buffer800);
    compute_pass_encoder8000.insertDebugMarker("marker")
    
    
    const compute_pipeline705 = device70.createComputePipeline({
        label: "compute_pipeline705",
        layout: pipeline_layout701,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const render_pass_encoder7031 = command_encoder703.beginRenderPass({
        label: "render_pass_encoder7031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7031,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout707 = device70.createPipelineLayout({ 
        label: "pipeline_layout707",
        bindGroupLayouts: [bind_group_layout700]
    });
    render_pass_encoder7030.setScissorRect(0, 0, texture701.width / 2, texture701.height / 2);
    command_encoder801.popDebugGroup()
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const pipeline_layout708 = device70.createPipelineLayout({ 
        label: "pipeline_layout708",
        bindGroupLayouts: [bind_group_layout702]
    });
    query701.destroy()
    
    device80.queue.submit([]);
    
    const compute_pipeline706 = device70.createComputePipeline({
        label: "compute_pipeline706",
        layout: pipeline_layout705,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder7001.setStencilReference(1);
    query701.destroy()
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device80.queue.writeTexture({ texture: texture800 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline707 = device70.createComputePipeline({
        label: "compute_pipeline707",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder7031.setStencilReference(1);
    device80.queue.writeTexture({ texture: texture800 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder7030.setViewport(0, 0, texture701.width / 2, texture701.height / 2, 0, 1);
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    texture701.destroy();
    const render_pipeline806 = device80.createRenderPipeline({
        label: "render_pipeline806",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    const render_pipeline807 = device80.createRenderPipeline({
        label: "render_pipeline807",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    const compute_pipeline708 = device70.createComputePipeline({
        label: "compute_pipeline708",
        layout: pipeline_layout703,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder7001.insertDebugMarker("marker");
    device70.queue.writeTexture({ texture: texture703 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.queue.writeTexture({ texture: texture800 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture703 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder7000.setViewport(0, 0, texture701.width / 2, texture701.height / 2, 0, 1);
    query702.destroy()
    render_pass_encoder7030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query701.destroy()
    render_pass_encoder7010.setScissorRect(0, 0, texture703.width / 2, texture703.height / 2);
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    render_pass_encoder7000.pushDebugGroup("group_marker");
    render_pass_encoder7000.executeBundles([])
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    const array13 = new Float32Array([-0.5, 0.25, -0.5, -0.25, 0.0, -1.0, -0.25, 0.75, 0.0, 0.0, -0.25, -1.0, 0.0, -0.75, -0.5, -0.25, 0.5, -1.0, 0.75, -0.5, -1.0, -0.75, 0.75, 0.25, 0.5, -0.5, -1.0, -0.75, 0.5, 0.25, -0.25, -1.0, 0.0, -1.0, 1.0, -0.5, -0.75, 0.5, -0.5, -0.5, 0.75, 0.5, 1.0, 0.75, 0.25, 0.5, 1.0, 1.0, -0.75, 0.25, 0.5, 0.5, 0.25, -0.5, -0.25, -0.75, -1.0, -1.0, 0.25, 1.0, 1.0, -0.75, -0.5, -0.5, 0.5, 0.25, -0.25, 0.25, -0.5, 0.0, 1.0, 0.25, 0.5, -0.75, 1.0, 0.0, 0.5, 0.0, 0.5, -0.75, 0.25, -1.0, -1.0, -0.25, 0.25, -0.75, 0.0, -1.0, -0.5, -0.75, 0.5, -0.5, -1.0, 0.0, -1.0, -0.75, -0.5, 1.0, -0.75, -1.0, ]);
    render_pass_encoder7000.setViewport(0, 0, texture701.width / 2, texture701.height / 2, 0, 1);
    const compute_pipeline709 = device70.createComputePipeline({
        label: "compute_pipeline709",
        layout: pipeline_layout704,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder7031.setScissorRect(0, 0, texture703.width / 2, texture703.height / 2);
    const compute_pipeline7010 = device70.createComputePipeline({
        label: "compute_pipeline7010",
        layout: pipeline_layout701,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const array14 = new Float32Array([-0.5, -0.25, 0.25, 0.25, -0.5, -0.25, 0.75, -0.75, 0.5, -0.25, 0.0, 0.5, -0.75, 0.5, -0.25, -0.5, 0.5, -0.5, 0.5, -0.75, 1.0, 1.0, 0.0, 1.0, -0.75, -0.5, -0.25, 1.0, 0.5, 0.5, 0.25, 0.5, -0.25, -0.5, 0.0, 0.0, 1.0, -0.5, -0.75, 0.25, 1.0, 0.0, 0.25, 0.75, 1.0, -0.75, 0.0, -0.5, 0.0, 0.75, 0.0, 1.0, -1.0, 0.0, 0.25, -0.75, -0.5, 0.0, 0.25, 0.75, 0.25, 0.5, -0.75, 0.5, -0.75, 0.5, 0.75, 0.75, -1.0, -0.75, -0.75, -0.75, -0.75, 0.0, -0.5, 0.5, 0.0, 0.5, -0.75, -0.75, -0.25, 1.0, 0.25, 1.0, -1.0, -0.25, 0.25, -0.25, 0.0, -0.5, 0.0, -0.5, 1.0, 0.25, -0.5, 0.25, -0.5, 0.25, -1.0, 0.5, ]);
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    const compute_pipeline7011 = device70.createComputePipeline({
        label: "compute_pipeline7011",
        layout: pipeline_layout707,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder8000.insertDebugMarker("marker")
    render_pass_encoder7001.setViewport(0, 0, texture703.width / 2, texture703.height / 2, 0, 1);
    render_pass_encoder7010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder7001.setStencilReference(1);
    const compute_pipeline7012 = device70.createComputePipeline({
        label: "compute_pipeline7012",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    render_pass_encoder7010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder7000.setViewport(0, 0, texture701.width / 2, texture701.height / 2, 0, 1);
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module703,
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
            module: shader_module703,
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
    render_pass_encoder7010.setViewport(0, 0, texture703.width / 2, texture703.height / 2, 0, 1);
    const render_pipeline808 = device80.createRenderPipeline({
        label: "render_pipeline808",
        vertex: {
            module: shader_module804,
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
            module: shader_module804,
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
    render_pass_encoder7030.setStencilReference(1);
    render_pass_encoder7001.setStencilReference(1);
    render_pass_encoder7000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder8000.insertDebugMarker("marker")
    texture100.destroy();
    render_bundle_encoder800.pushDebugGroup("group_marker");
    device70.queue.writeTexture({ texture: texture705 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer703 = command_encoder703.finish();
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder8000.insertDebugMarker("marker")
    render_pass_encoder7031.setPipeline(render_pipeline700);
    render_pass_encoder7000.pushDebugGroup("group_marker");
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module705.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    render_pass_encoder7010.setViewport(0, 0, texture703.width / 2, texture703.height / 2, 0, 1);
    
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: render_pipeline804.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer801,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer802,
                },
            },
        ],
    });

    render_bundle_encoder800.setBindGroup(0, bind_group800);
    const compute_pipeline7013 = device70.createComputePipeline({
        label: "compute_pipeline7013",
        layout: pipeline_layout705,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline7014 = device70.createComputePipeline({
        label: "compute_pipeline7014",
        layout: pipeline_layout700,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const compute_pipeline7015 = device70.createComputePipeline({
        label: "compute_pipeline7015",
        layout: pipeline_layout701,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const compute_pipeline7016 = device70.createComputePipeline({
        label: "compute_pipeline7016",
        layout: pipeline_layout704,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline7017 = device70.createComputePipeline({
        label: "compute_pipeline7017",
        layout: pipeline_layout701,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    
    device70.queue.writeTexture({ texture: texture703 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.pushErrorScope("validation");
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    buffer801.destroy()
    const compute_pipeline7018 = device70.createComputePipeline({
        label: "compute_pipeline7018",
        layout: pipeline_layout708,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    render_pass_encoder7031.setScissorRect(0, 0, texture703.width / 2, texture703.height / 2);
    device80.queue.writeBuffer(buffer802, 0, array11, 0, array11.length);
    device80.queue.writeBuffer(buffer802, 0, array8, 0, array8.length);
    const compute_pipeline7019 = device70.createComputePipeline({
        label: "compute_pipeline7019",
        layout: pipeline_layout704,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    query401.destroy()
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer700,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer701,
                },
            },
        ],
    });

    render_pass_encoder7031.setBindGroup(0, bind_group700);
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_pass_encoder7000.setScissorRect(0, 0, texture701.width / 2, texture701.height / 2);
    render_pass_encoder7001.setPipeline(render_pipeline700);
    render_pass_encoder7000.setScissorRect(0, 0, texture701.width / 2, texture701.height / 2);
    
    render_pass_encoder7001.insertDebugMarker("marker");
    render_pass_encoder7030.setStencilReference(1);
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    render_pass_encoder7010.setPipeline(render_pipeline700);
    render_bundle_encoder800.setVertexBuffer(0, buffer801);
    render_pass_encoder7030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout802]
    });
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_pass_encoder7000.setPipeline(render_pipeline701);
    const pipeline_layout709 = device70.createPipelineLayout({ 
        label: "pipeline_layout709",
        bindGroupLayouts: [bind_group_layout702]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    render_pass_encoder7000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    device90.queue.submit([]);
    render_pass_encoder7031.setVertexBuffer(0, buffer702);
    const command_buffer701 = command_encoder701.finish();
    const command_buffer801 = command_encoder801.finish();
    render_pass_encoder7031.setIndexBuffer(buffer702, "uint16");
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer703,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer704,
                },
            },
        ],
    });

    render_pass_encoder7001.setBindGroup(0, bind_group701);
    render_pass_encoder7031.drawIndirect(buffer702, 0);
    render_pass_encoder7031.drawIndexed(3);
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder7030.setPipeline(render_pipeline700);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder7031.popDebugGroup();
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group702 = device70.createBindGroup({
        label: "bind_group702",
        layout: render_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer705,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer706,
                },
            },
        ],
    });

    render_pass_encoder7000.setBindGroup(0, bind_group702);
    const buffer707 = device70.createBuffer({
        label: "buffer707",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer708 = device70.createBuffer({
        label: "buffer708",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group703 = device70.createBindGroup({
        label: "bind_group703",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer707,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer708,
                },
            },
        ],
    });

    render_pass_encoder7030.setBindGroup(0, bind_group703);
    render_pass_encoder7000.setVertexBuffer(0, buffer706);
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder7031.end();
    render_pass_encoder7010.endOcclusionQuery()
    render_pass_encoder7000.drawIndirect(buffer702, 0);
    render_pass_encoder7000.end();
    const buffer709 = device70.createBuffer({
        label: "buffer709",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7010 = device70.createBuffer({
        label: "buffer7010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group704 = device70.createBindGroup({
        label: "bind_group704",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer709,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7010,
                },
            },
        ],
    });

    render_pass_encoder7010.setBindGroup(0, bind_group704);
    device70.queue.submit([command_buffer702, command_buffer703, ]);
    const command_buffer400 = command_encoder400.finish();
    compute_pass_encoder8000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder7031.end();
    render_pass_encoder7010.setVertexBuffer(0, buffer707);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder7030.setVertexBuffer(0, buffer706);
    render_pass_encoder7010.drawIndirect(buffer702, 0);
    device10.queue.submit([command_buffer100, ]);
    command_encoder800.popDebugGroup()
    render_pass_encoder7000.end();
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder7031.drawIndirect(buffer705, 0);
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder7030.draw(3);
    render_pass_encoder7030.end();
    render_pass_encoder7001.setVertexBuffer(0, buffer7010);
    render_pass_encoder7031.drawIndexedIndirect(buffer702, 0);
    render_pass_encoder7001.drawIndirect(buffer702, 0);
    render_pass_encoder7000.drawIndirect(buffer700, 0);
    device70.queue.submit([command_buffer702, ]);
    device40.queue.submit([]);
    render_pass_encoder7001.end();
    const command_buffer300 = command_encoder300.finish();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder7000.draw(3);
    render_pass_encoder7000.end();
    render_pass_encoder7010.drawIndirect(buffer709, 0);
    render_pass_encoder7010.end();
    command_encoder700.popDebugGroup()
    device70.queue.submit([]);
    device110.queue.submit([]);
    const command_buffer700 = command_encoder700.finish();
    render_pass_encoder7000.draw(3);
    compute_pass_encoder8000.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder7010.popDebugGroup();
    render_pass_encoder7031.drawIndexedIndirect(buffer702, 0);
    render_pass_encoder7030.setIndexBuffer(buffer705, "uint16");
    render_pass_encoder7030.drawIndexed(3);
    render_pass_encoder7001.draw(3);
    render_pass_encoder7031.drawIndirect(buffer708, 0);
    render_pass_encoder7010.popDebugGroup();
    render_pass_encoder7030.popDebugGroup();
    render_pass_encoder7010.draw(3);
    render_pass_encoder7031.popDebugGroup();
    render_pass_encoder7030.setIndexBuffer(buffer707, "uint16");
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder7031.end();
    render_pass_encoder7001.popDebugGroup();
    render_pass_encoder7030.drawIndexedIndirect(buffer703, 0);
    device110.queue.submit([]);
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder7000.popDebugGroup();
    device40.queue.submit([]);
    device70.queue.submit([command_buffer701, ]);
}