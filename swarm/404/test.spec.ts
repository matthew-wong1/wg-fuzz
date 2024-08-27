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
    const array0 = new Float32Array([-0.25, 0.0, -1.0, 0.0, 0.25, 0.75, -1.0, -1.0, -0.25, 0.5, 0.5, 0.75, 0.5, 1.0, 0.0, 0.5, 0.75, -0.75, -1.0, 0.5, 0.25, -0.5, -0.25, 0.25, 0.0, -0.75, 0.75, -1.0, -0.25, 0.25, -1.0, 0.75, 1.0, 0.75, -0.75, 0.0, -0.5, 0.75, 0.25, 0.75, -0.25, 1.0, 1.0, 0.5, -1.0, 0.5, 0.0, 0.0, -0.5, -0.75, -0.75, -0.25, 0.0, -0.25, -0.25, -0.75, -1.0, -0.25, -0.5, -0.75, 0.0, -0.75, -0.75, -1.0, 0.25, -1.0, 0.0, 1.0, 0.0, 0.25, 0.25, -0.5, 1.0, 0.5, 0.5, -0.25, 0.0, 0.5, -0.25, -0.75, 0.75, 0.75, 0.25, -0.5, -0.5, -0.75, 0.5, 0.75, 0.75, -0.75, 0.5, -1.0, -0.25, 0.5, -0.25, -1.0, 0.0, -0.5, -0.75, 0.75, ]);
    const array1 = new Float32Array([0.0, -0.5, 0.75, 1.0, -0.5, 0.0, 1.0, -0.25, -0.75, -0.75, -0.75, 0.5, -1.0, 0.5, -0.5, -1.0, 1.0, 1.0, -0.5, -0.75, -0.5, 0.25, -0.75, -0.75, -0.75, 0.25, -0.75, -1.0, -0.5, -1.0, 0.0, -1.0, -1.0, 1.0, 0.0, -1.0, -0.5, 0.5, -0.75, -0.5, 1.0, -0.75, 0.0, 0.75, -0.25, 0.0, -0.25, 0.0, 0.75, 0.5, 0.0, 0.0, -0.25, 1.0, 0.5, -0.75, 0.75, -0.75, 1.0, 0.5, 0.75, -0.5, -1.0, -0.25, 0.75, 0.5, -0.75, 0.75, -0.25, 1.0, -0.5, -0.5, -1.0, 0.0, -1.0, 0.5, -0.25, 0.25, 0.0, -0.25, 0.25, 0.25, -0.75, -1.0, -1.0, -0.75, 0.75, -0.5, -0.5, 0.25, 0.75, 0.0, -1.0, 0.75, 0.0, 1.0, 0.0, 0.5, -0.5, 0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device30.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const array2 = new Float32Array([0.25, 0.5, -0.5, 0.75, -1.0, 0.75, 1.0, 1.0, -0.5, -0.25, 0.5, -0.75, -0.5, -0.75, 1.0, 0.75, 1.0, -0.75, -0.5, 0.25, 0.0, 0.5, 0.25, -0.5, 0.0, 0.25, -1.0, 0.75, -1.0, -0.75, -0.25, -0.75, 1.0, -0.5, -0.5, 0.0, 0.5, 0.5, 0.25, 0.75, 0.75, 1.0, 0.25, -0.25, -0.75, -0.25, -1.0, -0.25, 1.0, 1.0, -0.75, -0.75, 1.0, 0.25, -0.25, 0.0, -0.25, -1.0, 0.0, -0.75, 0.75, -1.0, -0.25, 0.5, 0.0, -0.5, -0.75, -0.75, 0.25, 0.0, -0.5, 0.25, 0.25, 0.75, 0.75, -0.5, 1.0, -1.0, -1.0, -0.75, -1.0, -0.75, 0.0, -0.25, -0.5, 0.0, 1.0, -0.25, 1.0, -0.25, 0.75, -0.5, 1.0, -1.0, -0.5, 0.25, 0.5, 1.0, 0.0, 0.5, ]);
    const array3 = new Float32Array([1.0, 0.0, -0.75, 1.0, 0.25, -0.5, 0.0, 0.75, 0.0, -1.0, -0.5, 1.0, 0.25, 0.0, 0.0, 0.0, -1.0, -0.5, 0.25, -0.25, 0.25, -1.0, -0.5, 0.0, -1.0, 1.0, -0.25, -0.25, -0.25, -0.75, 0.5, 0.75, 1.0, 0.25, -1.0, -0.75, 0.75, 0.25, 0.5, 0.75, 0.75, 0.5, 1.0, -0.25, 0.75, 0.25, 0.5, 0.75, 1.0, 0.0, -1.0, -0.25, 1.0, -0.25, -0.25, 0.25, -0.5, 0.0, 0.5, -0.25, -0.75, -0.5, 0.25, -1.0, -1.0, -0.5, 0.75, -0.5, 0.5, -0.25, -0.5, -0.25, -0.5, -0.25, 1.0, 0.25, -0.75, 1.0, -1.0, 1.0, -0.5, -0.25, -0.75, 0.75, -0.25, 0.75, -0.75, -0.75, -0.25, 1.0, 0.25, 0.25, 0.25, 1.0, -1.0, -0.75, 1.0, 0.0, 0.25, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const array4 = new Float32Array([-0.5, 0.5, 1.0, 0.5, 0.5, -0.5, -0.75, 0.75, 0.25, -1.0, -0.25, 1.0, -0.25, 1.0, 0.0, 1.0, -0.5, 0.25, 0.25, 0.75, -1.0, 0.5, -0.5, -0.25, -0.5, 1.0, -0.5, 1.0, 0.0, -0.5, -0.75, -0.5, 0.0, -1.0, 1.0, 0.25, -0.5, 0.25, -1.0, -0.5, 1.0, 0.25, 0.0, -0.5, -0.5, -0.25, 0.25, 0.5, 0.0, 0.0, -0.5, -0.25, 0.0, -0.5, 0.75, 0.75, -0.25, 0.75, -0.75, -0.5, -1.0, 0.75, -1.0, 0.75, -0.5, -0.5, -0.75, -1.0, 0.75, 0.25, 0.5, -0.75, 0.75, -0.25, 1.0, 1.0, -0.5, -0.5, -1.0, 0.25, 0.25, 0.75, 0.5, 0.0, 0.5, 0.0, 0.25, -1.0, -1.0, 0.25, -0.5, 0.5, 0.25, -0.5, -1.0, -0.5, 0.25, 0.25, 0.75, 0.75, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const array5 = new Float32Array([-1.0, 0.0, 0.75, -0.5, -0.25, -0.5, -0.5, 0.5, -0.75, 0.25, 0.75, -1.0, 0.0, 0.0, 0.0, 0.0, 0.0, -0.25, 0.5, 0.25, -0.75, 0.25, -0.25, 0.0, 0.75, -1.0, 0.25, 0.75, -1.0, -0.75, 0.5, -0.25, -1.0, 1.0, 0.0, -1.0, 0.5, 0.5, -0.5, 0.75, 0.5, 0.75, 0.0, -0.25, -0.25, 0.0, 0.25, -0.5, -0.25, -0.5, -0.5, 0.0, -1.0, -0.5, -0.5, 1.0, -0.5, 0.5, -0.5, 0.25, -1.0, 0.0, -1.0, -0.5, 0.75, -1.0, 0.5, 0.5, -0.5, -0.5, -0.5, 0.75, 0.75, 0.75, -0.5, 0.5, -0.25, -0.25, -0.5, -0.75, 1.0, -0.5, -0.75, 0.5, 0.0, 0.0, 0.75, 0.25, 1.0, -0.75, -0.75, 1.0, 0.25, -1.0, -0.5, 0.25, 0.25, -0.5, 0.75, -0.5, ]);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    device00.destroy();
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
    device40.destroy();
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.destroy();
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.destroy();
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.destroy();
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    const array6 = new Float32Array([0.0, -0.25, 0.25, 0.5, -0.25, 0.0, 0.5, -0.75, -0.5, -0.75, -0.75, 0.5, -0.5, -1.0, 1.0, 0.75, 0.75, -0.75, -1.0, 0.5, -0.5, 0.0, -0.5, 0.0, 1.0, -0.5, -0.25, 1.0, -0.25, -0.25, 1.0, 1.0, -0.25, 0.0, 0.5, -0.75, -0.5, -0.75, -1.0, -0.25, 1.0, 0.25, 0.5, 0.5, 0.25, -0.5, -1.0, -0.25, 1.0, 0.75, -0.5, -1.0, -0.75, 0.0, 0.75, -0.25, 0.0, -0.25, 0.5, -0.75, 0.0, -1.0, 0.0, -0.25, -0.5, -0.5, 0.5, -0.5, 0.5, -1.0, -0.75, 1.0, -0.75, 0.75, -0.25, -0.25, -1.0, -0.75, 0.75, 0.0, 0.5, -0.75, 0.0, 0.0, 1.0, -0.25, -0.75, 0.75, -1.0, -0.25, 0.5, 0.25, 0.75, -1.0, -0.75, 0.75, 0.0, 0.0, 0.5, 1.0, ]);
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    texture600.destroy();
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device60.destroy();
    
    
    
    
    
    const array7 = new Float32Array([0.25, -0.25, -0.25, 0.5, 0.0, 0.0, 0.5, 0.0, 0.5, -0.75, 0.0, 1.0, 0.75, -1.0, -0.5, -0.5, -0.75, 0.5, -1.0, 0.0, -1.0, 0.5, 0.0, -0.75, -0.5, -0.5, -0.5, 0.25, -0.25, -1.0, 0.25, 1.0, 0.0, 0.75, 0.0, -1.0, -1.0, -1.0, 1.0, 0.75, 1.0, 1.0, 0.25, -0.75, 0.75, 0.5, -0.75, -1.0, 1.0, 0.0, -0.25, 0.25, 0.75, -0.75, 1.0, 0.0, -0.75, -0.5, 0.0, 0.25, 0.5, 0.0, -0.5, 0.0, -0.25, 0.0, 0.5, -0.75, 0.0, -0.5, 0.25, 0.75, 0.25, -0.5, 1.0, -0.5, -0.5, 0.75, 1.0, 0.5, 0.0, 0.75, -0.75, -0.25, 0.75, 0.25, -0.5, -0.75, 0.0, 0.0, 1.0, -0.25, 0.0, -0.25, 0.25, -1.0, 0.5, -0.75, 0.25, -0.75, ]);
    
    
    
    
    const array8 = new Float32Array([0.5, -0.75, 1.0, 0.75, -1.0, -0.25, 0.5, -0.5, 0.25, -0.25, -0.5, 0.0, 0.25, 0.0, -0.75, 0.0, 1.0, 0.75, 0.0, -0.25, -0.75, 0.75, -0.75, 0.5, 0.75, 0.25, 0.75, 0.0, 1.0, 0.25, -0.75, -0.75, -1.0, -0.5, -0.25, 0.25, -0.5, 1.0, -1.0, -1.0, 1.0, -0.75, 0.25, -0.25, 0.0, -1.0, 0.0, 0.75, 1.0, 0.75, -0.25, -0.25, 0.5, -0.25, -1.0, 1.0, -0.5, -0.25, -0.75, -0.25, 0.0, 0.0, 1.0, 0.0, -0.75, -0.75, 1.0, 0.5, -0.25, -0.5, 1.0, 0.75, 1.0, 1.0, 0.25, 0.25, -1.0, -1.0, -0.5, 0.25, 0.5, -0.75, -0.5, -0.25, 0.75, 0.75, 0.0, 0.75, -0.5, 0.75, 0.5, 0.0, -0.5, 0.75, -1.0, 0.5, -1.0, 0.25, 0.5, 0.0, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array9 = new Float32Array([0.25, 0.75, 0.5, 0.25, -0.25, 0.0, 0.75, 1.0, 0.25, 1.0, 0.25, 0.5, -0.75, 0.0, 1.0, 0.25, -0.75, -0.25, 0.0, -0.75, -0.5, -0.25, -0.75, -0.25, 0.75, 0.5, 0.25, -1.0, 1.0, 0.75, -0.5, 0.5, -0.5, 0.75, 0.75, 0.25, -0.25, -0.5, -0.25, -0.5, 0.0, 0.5, -0.75, -0.25, -0.5, 0.25, 0.5, 0.75, 0.0, -0.5, -1.0, 0.75, 0.75, -0.5, 0.5, -0.5, -0.25, 0.75, 1.0, 0.25, -0.25, 0.25, -0.5, 0.75, -0.25, -0.75, -0.5, -0.75, 0.0, -1.0, 0.5, -0.25, 0.0, -0.25, 0.75, -0.75, 0.75, 1.0, -0.25, 0.25, 0.75, -1.0, -0.5, -0.25, -0.5, 0.0, -0.5, 0.75, 1.0, -0.75, -1.0, 0.75, 0.75, -0.25, 0.5, 0.0, 1.0, -1.0, 0.25, -0.5, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array10 = new Float32Array([0.5, -1.0, 0.75, -0.5, 0.75, 0.0, 0.0, -0.75, -1.0, -1.0, 1.0, -1.0, 1.0, -1.0, 1.0, -0.75, 1.0, 0.25, -0.25, 0.5, 0.0, 0.5, 0.5, -0.25, -0.25, 0.25, 0.0, 0.75, 0.5, -1.0, -0.5, 0.0, 0.5, -0.75, 1.0, 0.0, 0.5, 0.0, 1.0, 0.25, 1.0, 0.5, 0.0, 0.25, 1.0, 0.5, -0.75, 1.0, 0.5, -0.75, 0.75, 0.5, -0.25, 0.5, -0.5, -1.0, -0.25, -1.0, -0.5, 0.0, -0.25, 1.0, 0.0, 0.25, 0.0, -0.75, 0.25, 0.0, 0.5, 1.0, 0.0, -1.0, 1.0, 0.0, 0.25, -1.0, -0.75, 0.0, 1.0, 0.5, 0.0, -0.5, -0.5, 1.0, -0.5, 0.5, 0.25, -0.25, 0.75, -0.75, -0.75, -0.75, 0.5, -0.5, 0.5, 1.0, -0.5, -1.0, -0.75, -0.5, ]);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device70.destroy();
    
    
    device90.destroy();
    
    
    
    
    
    
    
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    
    
    
    
    
    
    const array11 = new Float32Array([0.75, -0.5, -0.75, 1.0, 0.75, 0.75, 0.25, 0.25, 0.25, -0.5, -0.75, 0.75, -0.25, 0.0, -1.0, -1.0, -0.5, 0.5, 0.25, -0.5, 0.5, -0.75, 0.25, 1.0, 0.25, -0.5, -0.25, -0.75, 0.75, -0.5, -1.0, 0.0, 1.0, 0.25, 0.0, -0.5, 0.75, 0.0, 1.0, 0.0, -0.75, 0.5, 0.0, -0.75, 0.5, -0.25, 0.0, 0.25, -0.5, -0.5, -0.75, 0.25, 0.75, -0.5, 1.0, 0.5, -0.25, 0.5, -0.25, -0.75, 0.75, -0.75, 0.5, 0.25, -1.0, -0.75, 0.25, -0.25, 0.5, -0.75, 0.0, 1.0, 0.75, -1.0, -0.5, 1.0, 0.5, -0.25, -0.25, -1.0, -0.25, -0.5, 0.25, 0.5, 0.0, -0.5, 0.25, -0.75, 1.0, 0.0, -0.25, -1.0, -0.75, -0.75, -0.5, -0.5, 0.25, -0.25, 0.25, 0.25, ]);
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    query800.destroy()
    
    
    
    
    const array12 = new Float32Array([-0.25, 0.25, 0.75, -0.25, -0.5, -0.75, -0.75, 0.25, -1.0, -1.0, -1.0, 0.75, -0.75, 0.25, -0.25, 0.25, 0.0, 0.75, 0.75, -0.75, 0.25, 1.0, -0.75, -0.5, 0.25, -1.0, 0.0, 0.25, -0.25, -0.75, 1.0, 0.5, -0.75, -1.0, 0.75, 0.75, -0.25, 0.25, -0.5, 1.0, -0.75, -0.5, 0.0, -0.5, -0.25, 0.25, 0.25, -0.25, -0.25, -0.25, -1.0, -1.0, -0.5, -1.0, 0.75, 0.0, -0.75, 0.75, 0.25, 0.75, 0.5, 0.0, 0.5, -0.5, 0.25, 1.0, 1.0, 0.0, -0.75, -0.75, -0.75, 0.0, 0.75, 0.25, -1.0, 0.0, 0.0, -0.75, -0.25, 1.0, -0.25, 0.5, -0.5, 0.0, 0.5, -0.5, -0.5, -0.75, -1.0, -0.25, 0.0, -0.25, 1.0, 0.25, 0.75, -0.75, 0.75, -1.0, -0.75, 0.5, ]);
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    
    
    
    
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
    device80.queue.writeBuffer(buffer800, 0, array8, 0, array8.length);
    
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    
    device80.queue.writeBuffer(buffer800, 0, array9, 0, array9.length);
    device80.queue.writeBuffer(buffer800, 0, array12, 0, array12.length);
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    query800.destroy()
    device80.queue.writeBuffer(buffer800, 0, array9, 0, array9.length);
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device80.queue.writeBuffer(buffer800, 0, array8, 0, array8.length);
    device80.queue.writeBuffer(buffer800, 0, array12, 0, array12.length);
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device80.queue.writeBuffer(buffer800, 0, array11, 0, array11.length);
    buffer800.destroy()
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device80.destroy();
    
    
    
    
    
    
    
    
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    device120.destroy();
    
    
    
    
    
    
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm",
        dimension: "2d"
    });
    
    
    
    
    const array13 = new Float32Array([0.5, -0.75, 1.0, 0.0, 0.25, 0.5, 0.75, 0.5, 0.5, 0.75, -0.5, -1.0, 0.75, 0.25, -1.0, -0.75, -0.5, 0.75, -0.75, -0.75, 0.5, 1.0, -0.75, 0.5, 0.0, 0.25, -1.0, -0.5, -0.5, 0.5, 0.75, -0.75, 0.25, 0.0, -0.5, 0.25, -1.0, -0.75, -0.5, 1.0, 0.25, -0.25, 0.75, -0.75, -0.25, -0.75, -0.5, -0.25, 0.25, -1.0, -1.0, 0.25, -1.0, -0.25, 0.25, -0.25, -1.0, -0.5, -0.5, 0.25, 1.0, -1.0, -0.25, 0.75, -0.25, 0.0, -0.5, 0.5, 0.5, -1.0, 0.75, 1.0, -1.0, -0.25, -0.5, -0.75, -0.25, 0.75, 0.5, -1.0, 1.0, 0.25, 1.0, 0.0, -0.25, -0.75, 1.0, 0.25, -0.75, 0.25, -0.25, -0.75, 0.5, 0.25, 0.25, -0.25, -0.5, 0.5, 0.0, -1.0, ]);
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32uint",
        dimension: "2d"
    });
    
    const array14 = new Float32Array([0.5, -0.5, 1.0, 0.75, 1.0, -0.25, 0.75, 1.0, 0.75, 0.0, -0.5, -0.25, 0.25, 0.0, 0.25, 0.75, -0.25, 1.0, 0.0, 1.0, 0.25, -0.75, -0.5, -1.0, 0.5, 0.0, 0.5, 0.5, -1.0, 0.25, 0.0, -0.75, -1.0, -0.75, 0.75, -0.25, -0.5, 0.5, -0.75, -0.5, -0.75, 0.5, -0.5, -0.25, -0.5, 0.75, -1.0, -0.25, 0.75, 0.25, 0.0, -1.0, -0.25, -0.5, -0.5, -0.75, -1.0, 1.0, 0.25, 1.0, 0.25, 0.0, 0.75, 0.75, 0.0, -0.5, 0.25, 0.75, 0.25, 1.0, -0.25, 1.0, -0.5, 1.0, 0.25, 0.25, -0.25, 1.0, 0.25, -0.75, 0.0, 0.75, -1.0, 0.0, 1.0, 1.0, 0.0, -0.75, 0.25, 1.0, 0.0, -0.25, -0.75, -0.5, 0.0, 0.25, -0.5, -0.5, 0.5, 0.0, ]);
    const array15 = new Float32Array([0.25, 0.0, 0.5, -0.25, 0.5, 0.0, 0.0, 0.75, -0.25, 0.5, -0.5, 0.25, 0.0, 0.5, 1.0, 0.25, 0.75, 0.25, -0.25, 0.5, -0.5, 0.75, -1.0, 0.75, 0.0, 0.75, -0.75, 0.25, 0.75, 0.75, 0.0, -0.25, -0.75, 0.5, -0.25, -0.75, 0.25, -0.5, 0.5, 1.0, 0.75, -0.25, -0.25, 0.25, -0.5, -0.5, 0.5, 0.25, -0.25, 0.25, 0.25, -0.75, -0.75, -0.5, 0.0, -0.75, 0.75, 1.0, 0.75, -0.75, 0.25, -0.5, -0.75, 1.0, 1.0, 0.0, 0.5, -0.75, -0.5, -0.75, 0.0, 0.0, -0.25, 1.0, -0.25, -0.75, -1.0, -0.75, 0.0, -0.25, -0.5, 0.75, 0.25, -0.5, 1.0, -1.0, 0.75, 0.5, 1.0, 1.0, -0.75, 0.5, 1.0, 0.25, -0.5, -0.5, -0.75, -0.25, 0.75, -1.0, ]);
    const array16 = new Float32Array([1.0, 0.75, 0.5, -0.75, -0.5, 0.75, -0.75, 0.0, -0.75, -1.0, 0.75, 0.75, 0.75, -0.25, 0.75, 1.0, 0.75, 0.5, 0.25, 0.5, 0.5, 1.0, 0.5, -0.75, -0.75, 0.5, 0.75, 1.0, 0.75, 0.75, 0.0, 0.5, -0.5, 0.5, -0.75, 0.25, 0.5, 1.0, 0.25, 1.0, -0.5, 0.25, 0.75, 0.25, -0.75, 0.25, -0.25, 0.0, -0.75, 0.75, -0.5, -0.5, -0.25, 1.0, -0.5, 0.75, 0.5, -0.5, 0.75, 0.5, 0.0, 0.75, -0.5, -1.0, 1.0, -0.25, -0.75, -0.75, -0.5, 0.0, 0.5, 0.25, -1.0, 0.0, -0.75, 0.5, -0.75, 0.75, -0.75, 0.5, -1.0, -1.0, 0.5, 0.75, 1.0, 0.75, 0.5, -0.5, 1.0, 0.0, 1.0, -0.25, 0.25, -0.5, -1.0, -0.25, 0.0, -0.25, -1.0, 0.75, ]);
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    const array17 = new Float32Array([-1.0, -0.5, -1.0, -0.75, -0.5, -0.25, 0.25, 0.0, 0.75, 0.0, -1.0, -1.0, 0.0, 1.0, 1.0, 1.0, 0.25, 0.0, -0.25, -1.0, 1.0, -0.5, 0.0, -0.25, -0.5, 0.5, 1.0, -0.25, -0.5, 0.0, -0.5, -1.0, -1.0, 0.0, -0.75, -0.5, 0.0, -0.75, 0.5, 1.0, 1.0, 0.0, -0.75, 0.0, -0.25, -1.0, 0.5, -0.5, -0.25, -1.0, -1.0, -0.5, -1.0, 0.75, -1.0, -1.0, 0.5, 1.0, -1.0, 0.0, 0.0, -0.75, -0.5, 0.25, 0.75, -1.0, -0.75, 0.25, 0.75, 0.25, -0.5, 0.25, 0.5, -1.0, -0.25, -0.75, -1.0, -0.75, 0.25, -0.25, 0.0, -0.25, 1.0, 1.0, -0.5, 0.5, -1.0, -0.5, 0.5, -0.25, 0.75, -1.0, 0.25, -0.75, 0.0, -1.0, 0.0, -0.25, 1.0, 0.0, ]);
    
    
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    const texture_view10001 = texture1000.createView({ label: "texture_view10001" });
    
    texture1001.destroy();
    
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
    const texture1102 = device110.createTexture({
        label: "texture1102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture1103 = device110.createTexture({
        label: "texture1103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const texture1003 = device100.createTexture({
        label: "texture1003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture1102.destroy();
    
    texture1101.destroy();
    
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    texture1002.destroy();
    
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
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    texture1003.destroy();
    
    
    
    
    
    device100.destroy();
    
    
    const texture_view11030 = texture1103.createView({ label: "texture_view11030" });
    
    texture1100.destroy();
    
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    device110.queue.writeBuffer(buffer1100, 0, array3, 0, array3.length);
    device110.queue.writeBuffer(buffer1100, 0, array6, 0, array6.length);
    
    
    device110.queue.writeBuffer(buffer1100, 0, array15, 0, array15.length);
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
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
    device110.queue.writeBuffer(buffer1100, 0, array5, 0, array5.length);
    
    device110.queue.writeBuffer(buffer1100, 0, array8, 0, array8.length);
    
    device110.queue.writeBuffer(buffer1100, 0, array1, 0, array1.length);
    
    device110.destroy();
    
    
    
    
    
    
    
    
    const array18 = new Float32Array([0.75, 0.5, -0.75, 0.75, 1.0, 0.75, 0.25, 0.75, -0.25, -1.0, 0.25, -0.75, -0.25, -1.0, 1.0, -0.25, 0.75, -0.5, -0.75, -0.5, 0.75, 0.75, -0.5, 1.0, -1.0, -1.0, -0.25, -1.0, -1.0, 0.0, -1.0, 0.0, 1.0, -1.0, -0.5, 0.75, 0.0, -0.75, -0.75, 0.5, -0.25, -0.25, 0.5, 0.75, 1.0, 1.0, -0.25, 0.0, 0.5, 0.75, -1.0, 1.0, 0.0, 0.75, 0.25, -1.0, 0.75, 0.5, -1.0, -0.75, -0.5, -0.75, 1.0, -0.25, -0.25, -0.5, -0.75, 0.0, 0.75, -0.5, -0.5, 1.0, 0.5, -0.25, -0.75, 0.0, 1.0, 0.5, -1.0, 1.0, 0.0, -1.0, 0.5, -0.5, 0.5, 0.0, 0.5, 0.75, -1.0, 0.5, 0.5, 0.0, 0.25, 1.0, 1.0, -0.5, 0.25, -1.0, 0.0, -0.25, ]);
    
    
    
    const array19 = new Float32Array([0.0, 0.25, -1.0, 0.5, 0.0, -0.25, 0.5, 0.0, 1.0, -1.0, 0.25, -0.75, 0.5, -0.5, 0.5, 0.0, -1.0, 0.0, 0.5, -0.5, -0.75, 0.0, 1.0, 0.0, 0.0, 0.5, 0.75, 1.0, 0.75, -1.0, -0.5, 0.5, 0.75, -0.25, -0.5, 1.0, 1.0, 0.25, 0.5, -0.25, 0.5, -0.75, -0.25, 0.5, 0.0, 0.0, -0.5, 0.75, -0.75, -0.25, -0.75, -0.5, -0.5, -0.25, 0.0, -0.5, -1.0, 0.0, -0.25, 0.25, -1.0, -0.75, -0.25, -0.75, 0.5, 0.5, -0.75, 0.0, 0.5, 0.75, 0.5, 0.75, 0.5, 0.0, 1.0, 0.5, -0.25, 0.5, 0.75, -0.25, 0.0, 0.25, 0.25, -0.25, 1.0, -0.25, 0.75, 1.0, 0.5, 0.0, 0.5, 0.0, 0.5, 0.0, 1.0, 1.0, 0.5, -0.25, 0.75, -0.5, ]);
    
    
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    
    device130.destroy();
    
    
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array20 = new Float32Array([0.5, -0.5, 0.75, 0.5, 0.0, 0.75, 0.0, -1.0, 0.0, 0.5, 0.5, 0.5, 0.0, 0.75, 0.5, -0.75, 1.0, -0.5, 1.0, -0.25, -1.0, -0.5, -0.25, -0.5, -0.25, 0.75, 0.5, 0.75, 1.0, 0.0, -0.75, 0.25, 0.75, -1.0, -0.25, -1.0, 0.25, -1.0, 0.75, 0.5, -0.75, 0.0, 0.5, -0.75, -0.25, 0.5, 0.75, 0.75, -0.5, -0.25, -0.75, 0.5, 0.0, -0.5, 1.0, 0.5, 1.0, 0.0, 0.25, 0.0, -1.0, -0.75, 1.0, 0.75, 1.0, 0.75, 0.0, 0.75, -0.5, 0.75, -0.25, -1.0, 0.25, -0.25, -0.25, -0.25, -0.5, -1.0, -0.25, -1.0, -0.75, 0.5, 0.75, 0.25, 0.75, 1.0, -0.75, 1.0, 0.5, 0.0, -0.75, 1.0, 0.5, 0.25, 0.75, -0.25, 1.0, -1.0, 0.25, -0.25, ]);
    const array21 = new Float32Array([0.5, -1.0, -0.25, -1.0, -0.25, -0.5, 0.25, 0.0, 0.75, 0.5, 0.0, 1.0, -0.75, 0.0, -1.0, 0.75, -0.5, 0.5, 1.0, 0.75, 1.0, -0.25, -1.0, 0.0, -0.25, -0.25, -0.25, 0.25, 0.25, 0.5, 0.25, 0.75, -0.25, 0.75, -1.0, 1.0, 0.5, -0.25, -0.25, -0.25, -0.25, 1.0, 0.0, 0.5, 0.5, -1.0, -0.75, 0.25, 1.0, 1.0, 0.75, 1.0, 0.5, 1.0, -1.0, 0.5, -0.25, -1.0, -0.25, -1.0, 0.5, 1.0, 1.0, -0.5, -0.25, -0.25, -1.0, -0.75, -0.25, 1.0, 0.5, -0.5, 0.75, 0.75, -0.25, 0.5, 0.0, 0.5, 0.5, -0.25, -0.25, 1.0, 0.5, 0.25, 0.25, 0.5, 0.5, 0.0, -0.75, 0.75, 0.75, 1.0, 0.0, 0.0, 1.0, 0.25, -0.5, 1.0, -0.25, -0.5, ]);
    
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    
    device140.destroy();
    
    
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    
    
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    const query1600 = device160.createQuerySet({
        label: "query1600",
        type: "occlusion",
        count: 32,
    });
    
    query1600.destroy()
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8unorm",
        dimension: "2d"
    });
    
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device160.destroy();
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device150.queue.writeTexture({ texture: texture1500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    
    const array22 = new Float32Array([-0.25, -0.25, -0.25, -0.75, 0.75, -0.25, -1.0, 1.0, 0.25, 0.75, 0.75, -0.75, 0.25, 1.0, 0.25, -0.25, -0.75, 1.0, -0.5, 0.25, -1.0, 0.5, 1.0, 0.75, -0.5, -1.0, -0.5, -1.0, 0.5, -0.75, -0.75, -0.25, -0.5, -0.5, 0.25, 1.0, 0.25, 0.5, 0.0, -0.25, 0.5, -0.25, 0.25, -1.0, 0.25, -0.5, 0.0, 0.0, 0.25, -0.5, 0.5, -0.5, -0.75, -0.5, 0.0, -0.25, 0.5, -0.75, -1.0, 1.0, -1.0, 0.5, 0.5, -0.25, 0.5, 1.0, -1.0, 0.5, 0.0, -0.75, 0.25, 0.0, -0.25, 0.5, -0.5, -0.5, -0.75, -0.25, 0.25, 0.5, -0.5, 1.0, -0.25, 0.0, 0.5, 0.25, -0.75, 0.0, -0.25, -0.25, 0.75, 0.0, 0.25, 0.75, -1.0, 0.0, -1.0, -0.75, -0.25, -0.5, ]);
    
    device150.queue.writeTexture({ texture: texture1500 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    
    device150.queue.writeTexture({ texture: texture1500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1500 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device150.queue.writeTexture({ texture: texture1500 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.destroy();
    const buffer1700 = device170.createBuffer({
        label: "buffer1700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
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
    
    
    const buffer1701 = device170.createBuffer({
        label: "buffer1701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const array23 = new Float32Array([0.5, 0.5, 0.0, 1.0, -0.75, -0.5, 0.25, -0.5, -1.0, 1.0, -0.25, 0.75, -0.75, -0.5, 0.25, -0.5, 0.5, 0.75, -1.0, 1.0, 0.5, -1.0, 0.75, 0.5, -1.0, 0.0, 1.0, -0.5, 0.25, 0.0, -0.25, 0.5, 0.5, 0.0, 1.0, 0.0, 0.0, 0.75, 0.75, 0.0, 0.0, -1.0, 0.5, 0.25, 0.75, 0.5, 1.0, -0.25, 0.25, 1.0, -0.5, -0.25, -0.5, 1.0, -0.75, 0.5, -0.5, -0.25, -1.0, 0.25, 0.5, -0.25, 0.25, 0.0, 1.0, -0.25, 1.0, 0.75, -0.25, -1.0, -1.0, 1.0, -0.75, 1.0, -0.25, -0.75, 0.75, -0.75, 0.75, -0.5, 0.25, 0.0, -1.0, 1.0, -0.25, 0.0, 0.75, 0.5, -1.0, -0.5, 0.25, -0.75, -0.25, 0.0, 0.25, -0.5, -1.0, -0.5, -0.75, -0.5, ]);
    const buffer1702 = device170.createBuffer({
        label: "buffer1702",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module1700_code = "";
    try {
        shader_module1700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1700 = await device170.createShaderModule({ label: "shader_module1700", code: shader_module1700_code })
    var shader_module1701_code = "";
    try {
        shader_module1701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1701 = await device170.createShaderModule({ label: "shader_module1701", code: shader_module1701_code })
    const render_bundle_encoder1700 = device170.createRenderBundleEncoder({
        label: "render_bundle_encoder1700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    const array24 = new Float32Array([0.25, 0.25, -0.75, 0.5, 0.75, 1.0, 0.0, -0.5, 0.25, 0.75, 0.5, 0.25, -1.0, 0.5, 0.0, -0.75, -1.0, -0.75, -0.25, 1.0, 0.5, -0.75, 0.75, 0.75, 0.25, -0.25, 0.25, -0.75, -0.75, -0.25, -0.25, 0.75, -0.75, 0.0, 0.75, -0.25, 0.0, 1.0, -0.5, 0.25, 1.0, -0.25, -0.75, -0.75, 0.25, -0.75, 0.0, -1.0, 0.0, -0.5, -0.25, 0.0, -0.75, 0.25, -0.25, 0.75, 1.0, -1.0, 0.5, -0.25, -1.0, 0.75, -0.75, 0.5, 0.25, -0.5, -0.5, 0.75, -0.75, 1.0, 0.25, 0.75, -0.5, 0.5, 0.75, -0.25, 1.0, -1.0, 1.0, -0.5, 0.25, 0.5, -0.75, 0.25, 0.0, -0.25, 0.25, -1.0, 1.0, 0.75, -0.75, -0.75, 0.0, 1.0, 0.25, -0.25, 1.0, 0.25, 0.5, -0.75, ]);
    
    var shader_module1702_code = "";
    try {
        shader_module1702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1702 = await device170.createShaderModule({ label: "shader_module1702", code: shader_module1702_code })
    
    
    
    
    
    var shader_module1703_code = "";
    try {
        shader_module1703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1703 = await device170.createShaderModule({ label: "shader_module1703", code: shader_module1703_code })
    
    const render_pipeline1700 = device170.createRenderPipeline({
        label: "render_pipeline1700",
        vertex: {
            module: shader_module1701,
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
            module: shader_module1701,
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
    const query1700 = device170.createQuerySet({
        label: "query1700",
        type: "occlusion",
        count: 32,
    });
    
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    
    
    
    var shader_module1800_code = "";
    try {
        shader_module1800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1800 = await device180.createShaderModule({ label: "shader_module1800", code: shader_module1800_code })
    buffer1701.destroy()
    
    
    render_bundle_encoder1700.insertDebugMarker("marker");
    
    
    
    
    const texture1700 = device170.createTexture({
        label: "texture1700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query1800 = device180.createQuerySet({
        label: "query1800",
        type: "occlusion",
        count: 32,
    });
    var shader_module1704_code = "";
    try {
        shader_module1704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1704 = await device170.createShaderModule({ label: "shader_module1704", code: shader_module1704_code })
    query1800.destroy()
    
    
}