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
    const array0 = new Float32Array([0.0, -0.25, 0.25, -1.0, -0.25, -0.75, 1.0, -0.5, 0.75, -1.0, 0.0, -0.25, -0.25, 1.0, 0.5, -0.25, -0.75, 0.75, -0.5, 0.25, 0.75, 0.5, 0.5, -0.25, -1.0, 0.75, -0.5, 0.25, 0.5, -1.0, 0.25, -0.25, -0.75, -0.75, -0.25, 0.0, 0.0, -0.25, 0.25, -0.75, -0.75, -1.0, -1.0, 0.5, 0.75, -0.5, 0.75, 1.0, -0.5, 0.25, 0.25, 0.5, -0.5, -0.75, 1.0, -0.25, 0.75, -0.25, -1.0, -0.25, 0.75, 0.25, 0.75, 0.75, -1.0, 1.0, -0.75, 0.75, -1.0, -0.25, 1.0, 1.0, -0.25, 0.0, 0.25, -0.5, 1.0, 0.5, -0.5, -0.75, -0.5, 0.75, -0.25, -0.5, -1.0, 0.0, 1.0, 0.25, -0.5, -1.0, -1.0, 0.75, -1.0, 1.0, 0.75, -0.25, 1.0, -0.75, 1.0, -1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const array1 = new Float32Array([-0.75, -0.5, -0.25, 0.5, 0.75, 0.0, -1.0, 0.75, 0.75, 0.0, -0.25, 0.5, -0.5, 0.25, 1.0, -0.5, -1.0, 0.0, 0.25, -1.0, -0.5, -0.25, 1.0, 0.75, -0.25, 0.5, -0.75, 0.75, 1.0, -0.25, -0.5, -1.0, -0.5, 0.75, 0.5, -0.25, -0.5, 0.0, -0.25, 0.75, 0.5, -0.75, 0.5, 0.75, -1.0, 0.25, -0.75, 0.5, -0.75, 0.0, 1.0, 0.25, 0.75, 1.0, -1.0, 0.75, -1.0, -0.5, 0.0, -1.0, 1.0, 0.5, -1.0, 0.75, 0.0, -0.75, 0.75, 1.0, 0.75, -0.5, -1.0, 0.5, 0.75, -0.75, -1.0, 0.5, 1.0, 0.75, 0.0, -0.5, -0.75, 0.5, 0.75, 1.0, 0.25, 0.75, -0.25, 0.0, 0.0, 1.0, 1.0, -0.75, 0.75, -0.5, 0.5, 1.0, -0.5, 0.75, 0.0, 0.0, ]);
    
    const array2 = new Float32Array([1.0, 0.25, 0.0, 0.5, 0.75, 0.5, -0.5, -0.25, 0.75, 1.0, 1.0, -0.5, 1.0, 0.25, -0.5, 0.25, 0.0, 0.5, -0.5, 0.0, 0.75, 0.75, -0.25, 0.0, -1.0, 0.0, 0.0, 0.25, -0.25, -0.25, 0.0, 1.0, 1.0, -0.25, -0.5, -1.0, -0.75, 1.0, -0.75, 0.25, 0.75, 0.25, 0.75, 0.25, 0.5, -0.75, 1.0, -0.5, 0.5, -0.75, -0.25, -0.5, 0.25, -0.5, 1.0, 1.0, 0.25, 0.25, 0.5, -0.75, -1.0, 0.75, -1.0, 0.5, 0.25, -0.5, 0.25, 0.5, -1.0, 0.75, -0.5, 0.5, 1.0, -0.75, 0.75, -0.5, -1.0, 0.25, -0.25, 0.5, -0.25, 0.0, 0.5, -0.5, -1.0, 0.75, 0.0, -0.25, -0.5, 0.5, -1.0, 0.0, -1.0, -0.25, -0.5, -0.75, 1.0, 0.75, -1.0, -0.75, ]);
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const array3 = new Float32Array([-1.0, 0.75, -0.75, -1.0, -0.5, -0.25, 0.0, -0.5, -0.25, 0.0, 0.75, 1.0, 1.0, -0.25, -1.0, -0.75, 0.5, -1.0, 0.0, 0.0, 0.75, 0.25, -0.5, 0.75, 0.0, -0.5, -1.0, -1.0, 0.25, -0.75, 0.25, -0.25, 0.75, 0.75, 0.25, 1.0, -1.0, 1.0, 0.75, -1.0, 1.0, 1.0, 0.0, 0.75, 0.0, -0.75, 0.0, -0.75, -0.5, 0.25, 0.0, 0.25, -0.25, -1.0, 0.5, 0.5, -1.0, 0.25, -0.25, 0.75, 0.25, 0.0, -1.0, 0.75, -0.5, -0.75, 0.75, 0.5, -1.0, 0.75, 0.0, -0.5, 0.5, 0.25, 0.5, -0.5, 1.0, -0.5, 0.0, 0.0, 0.5, 1.0, 0.75, 0.5, -0.25, 0.5, -0.75, -0.25, -0.75, -1.0, 0.25, 0.75, -0.75, -1.0, -0.25, 0.25, 1.0, 1.0, 0.0, -0.5, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const array4 = new Float32Array([0.25, -0.25, -1.0, 0.25, 0.0, -1.0, -0.5, -0.5, 1.0, 0.0, -0.75, 1.0, 0.75, 1.0, 0.25, 0.5, -0.5, 1.0, 1.0, -0.25, 0.25, 1.0, -1.0, 1.0, 0.25, 0.0, 0.75, -0.5, 1.0, 0.75, 1.0, -0.75, 1.0, -0.75, -0.75, -0.75, 1.0, 0.5, 0.75, 0.5, 0.25, -0.75, 0.75, 0.0, 0.5, -1.0, -1.0, -0.5, 0.0, -1.0, -0.25, -0.25, -1.0, 0.5, -0.5, 0.75, -0.25, -0.5, 0.25, 0.0, -0.25, 0.75, -0.75, 0.75, -0.25, -0.75, 0.0, -0.25, -0.75, -0.5, -1.0, -0.5, -0.75, -0.75, 0.25, -1.0, 1.0, -0.75, 0.75, 0.0, 0.0, -0.75, 0.0, 1.0, 1.0, 0.5, -1.0, -1.0, -0.75, 1.0, 0.75, -1.0, -0.5, -1.0, -0.5, 1.0, 0.0, 0.5, 1.0, 1.0, ]);
    device20.destroy();
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array5 = new Float32Array([1.0, 1.0, -0.25, 0.0, -0.25, -0.5, -0.75, -1.0, -0.75, -0.75, -0.75, -0.5, 0.0, -0.25, -0.25, 0.5, 0.0, -1.0, 0.5, -1.0, -1.0, 0.5, -0.5, 0.75, -0.75, 0.75, 1.0, 0.0, 0.0, -1.0, 0.0, -0.75, 0.25, -0.25, 0.75, 1.0, 0.25, -0.25, -1.0, 0.25, 0.75, 0.75, -1.0, -1.0, -0.75, 0.25, -0.25, -1.0, -0.75, -1.0, 0.5, -0.25, 1.0, 0.0, 0.75, -0.5, -0.25, 0.75, 0.25, -0.75, -0.5, -0.5, -0.25, 0.25, 1.0, 0.75, 0.75, -0.75, 0.0, -1.0, -0.75, 0.75, -0.25, -0.25, -1.0, -0.75, 0.0, 0.5, 0.0, -0.25, 0.0, -0.5, 0.25, 0.5, -1.0, 0.5, 0.25, 0.0, 0.0, 1.0, -0.5, 0.0, -0.5, -1.0, 0.75, 0.5, 1.0, -0.5, 0.75, 0.25, ]);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    
    device10.destroy();
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device30.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const array6 = new Float32Array([0.75, -0.75, 0.75, -0.25, -1.0, 0.0, 1.0, 0.25, 0.0, -1.0, 0.25, -1.0, -1.0, 0.25, -0.25, -1.0, -0.25, -0.75, 0.0, 1.0, 1.0, -0.25, -1.0, 0.75, -1.0, 1.0, 0.75, 0.0, -0.75, -1.0, -0.25, -1.0, -0.25, 0.5, 1.0, -1.0, 0.25, -1.0, 0.75, 0.5, -0.5, 0.75, -0.25, -0.75, 0.5, -0.5, -0.25, 0.5, -0.25, -0.5, 0.5, 0.75, -1.0, 0.5, -0.5, 0.25, -0.75, -0.75, 0.25, -1.0, -0.25, 0.5, -0.75, 1.0, -0.75, -0.5, -1.0, 1.0, 0.5, 1.0, 0.25, 0.0, -0.75, 0.75, -0.25, -0.25, 0.0, 0.25, 1.0, 0.75, 1.0, -0.75, -0.5, 0.25, -0.5, 0.5, 0.5, 0.5, 0.75, -0.75, 0.5, 0.5, -0.25, 0.75, 0.0, -0.75, 1.0, 0.25, -0.5, 0.5, ]);
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const array7 = new Float32Array([-0.5, -0.25, 0.75, -0.5, 0.5, -0.25, -0.75, 0.5, -0.5, 0.75, 0.25, -0.5, 0.0, 0.75, 0.0, -0.25, -1.0, -1.0, 0.75, -0.5, -0.25, -1.0, 1.0, 0.5, 0.0, -0.5, 0.75, -0.75, 0.0, 0.75, -0.5, 1.0, -0.75, 1.0, -0.25, 0.5, 1.0, -0.75, 0.5, 1.0, 0.5, -1.0, 0.5, 0.5, 1.0, -0.5, 0.75, -0.75, -0.75, 0.0, -0.5, 0.0, 0.5, 0.25, 0.5, -0.5, 0.25, -0.25, 0.25, 0.0, 0.75, 1.0, -1.0, 0.75, 0.75, -0.25, -0.75, -0.75, 0.5, 0.0, -0.5, -0.25, -1.0, -1.0, 0.5, -0.75, -0.25, -0.75, 0.75, 1.0, -0.75, -0.25, -0.75, -0.25, -1.0, -0.5, 1.0, 0.5, 1.0, -0.75, -1.0, 1.0, -0.25, -0.75, 0.5, 1.0, 0.75, -0.5, -0.5, 0.75, ]);
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device60.destroy();
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const array8 = new Float32Array([0.5, -0.5, -1.0, 1.0, 0.75, -1.0, 1.0, -0.75, 0.0, -0.75, -1.0, -1.0, 0.25, -0.75, -0.75, 0.5, -0.25, 0.75, 0.0, 0.25, 0.25, 0.5, -1.0, 0.0, 1.0, 0.25, -0.25, 0.25, 0.75, -0.75, -1.0, -0.5, -0.75, -0.5, 0.0, -0.25, -0.25, 1.0, 0.5, 1.0, -0.5, 0.75, -0.5, -1.0, 0.5, 1.0, 0.0, -1.0, -0.75, 0.75, 0.75, -0.25, 0.25, 1.0, 0.0, 0.0, 0.5, -1.0, -0.5, 0.0, -1.0, -1.0, 0.0, 0.0, 0.5, -1.0, -0.75, -0.75, -0.25, -1.0, -0.75, 1.0, 0.25, 0.0, 0.0, 1.0, -0.75, 0.25, -0.75, -0.5, -0.75, 0.0, 0.0, -0.5, 0.5, 0.0, 0.25, 0.75, 1.0, 0.5, -1.0, 1.0, -0.5, -1.0, -1.0, 0.5, 0.25, 0.25, 0.75, 0.5, ]);
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture500.destroy();
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const array9 = new Float32Array([-0.5, 1.0, -1.0, -1.0, 0.25, -0.5, 0.25, 1.0, -0.25, 0.5, -0.5, 0.25, -0.75, 0.25, -0.75, -1.0, -0.5, -1.0, 0.25, -1.0, 0.25, -0.25, -0.25, 0.75, 0.0, 0.25, 1.0, 0.0, -0.25, 0.75, -1.0, 0.25, -0.25, 0.0, -0.75, 0.5, -0.75, -1.0, 0.25, 0.25, -1.0, 0.75, -0.5, 0.25, 0.0, 0.25, -0.25, 0.75, 0.25, -0.25, -0.25, 0.5, -0.25, -0.5, 0.5, -0.75, 0.75, -1.0, 0.75, 0.75, -1.0, -0.5, -0.5, 0.25, -0.75, 0.5, 0.75, -1.0, -1.0, 1.0, -0.25, -0.25, 0.5, -1.0, 0.75, 1.0, 1.0, 0.25, 0.0, -0.25, -1.0, 0.0, -0.75, -1.0, -0.5, -1.0, -0.75, 1.0, 0.0, 0.75, -0.5, -0.25, -0.75, 0.75, 0.5, 0.25, 0.25, 0.0, 0.5, 0.75, ]);
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    const array10 = new Float32Array([0.5, -0.5, 0.75, 1.0, 0.0, -1.0, 0.5, 0.25, -0.75, -1.0, -1.0, 1.0, 0.25, 1.0, 0.25, 0.0, -0.25, 0.25, -0.5, -0.75, -1.0, -0.25, 0.5, -0.75, -1.0, 0.0, 1.0, 0.0, -0.25, 1.0, 0.75, 0.0, 0.5, -0.5, -1.0, 0.0, -0.75, 1.0, 1.0, -0.75, 0.5, 0.25, 0.75, 0.75, 1.0, -0.75, -0.5, 0.5, -0.25, 1.0, -0.75, -0.75, 0.5, 0.25, -1.0, -0.25, 0.0, -1.0, -1.0, -1.0, 0.75, -0.5, 0.75, -1.0, 0.5, 0.25, 0.25, -0.5, 0.0, 0.5, 0.25, 0.75, 1.0, -0.5, 0.0, 1.0, 0.75, -1.0, 1.0, -0.75, -0.75, -1.0, 0.0, 1.0, 0.5, 0.25, -0.5, 1.0, 0.5, 1.0, -0.75, 0.75, -1.0, -0.5, 1.0, -1.0, -0.75, 1.0, 1.0, 0.0, ]);
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    
    render_bundle_encoder500.popDebugGroup();
    
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture001.destroy();
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    device10.destroy();
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    const array11 = new Float32Array([-1.0, 0.75, -0.75, 0.5, -0.75, -1.0, 0.75, 0.5, 0.0, 0.5, -0.75, -0.5, 0.25, -0.25, 0.25, -1.0, -0.5, -1.0, -1.0, -0.25, -0.25, -0.75, -0.75, -0.75, 0.0, 0.75, 0.75, -0.25, 1.0, -0.25, -1.0, -0.75, 0.5, 1.0, -0.5, 0.75, -0.25, -0.5, -1.0, -1.0, 0.75, -1.0, -1.0, -0.25, 1.0, -0.75, 0.5, -0.5, -1.0, -0.25, 0.0, -0.75, -0.75, 0.0, -0.75, 0.5, 0.75, 1.0, 1.0, -0.25, 0.75, 0.5, -0.25, -0.5, -0.25, -0.75, 0.25, 0.0, -0.75, 1.0, -0.25, -0.75, 0.75, -1.0, -0.5, 0.75, -0.5, 0.5, -0.75, 0.0, -0.25, -0.75, -0.5, 1.0, 0.75, 0.25, -1.0, -0.5, 0.75, -0.5, 0.25, 0.25, -0.25, -1.0, 0.0, -0.75, -0.5, 0.25, -0.75, 1.0, ]);
    
    
    device10.destroy();
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    device70.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device50.destroy();
    const array12 = new Float32Array([0.5, 0.0, -0.25, 0.0, 0.0, 0.25, -0.5, -1.0, -0.25, 0.5, -0.5, 0.75, -0.75, 0.5, 0.0, 0.25, -0.75, 0.75, 0.25, -0.75, 1.0, -0.5, 1.0, -0.5, -0.75, 0.75, -0.75, -0.5, 0.5, -0.75, 0.25, 0.5, -0.75, 0.75, 1.0, 0.5, -0.25, -0.5, -0.5, -1.0, -0.75, -0.75, -0.25, 0.0, 0.5, -0.75, 1.0, -0.75, 0.75, 0.75, -0.75, -0.5, 0.0, 0.25, 0.5, -0.5, 0.25, -1.0, 0.5, 0.5, -0.75, -0.25, -0.25, 0.5, -0.25, 0.5, 0.5, -0.75, -0.75, 0.25, -0.5, -0.25, 1.0, -0.5, 0.25, -1.0, -0.5, 1.0, 0.25, 0.25, 0.5, -0.75, -1.0, -0.5, -1.0, -0.5, 0.75, 0.75, -0.75, -0.75, -1.0, 0.0, -1.0, -0.5, 1.0, 0.75, 0.75, 0.5, 0.25, 0.75, ]);
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    
    
    
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device90.destroy();
    device60.queue.writeTexture({ texture: texture600 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    device90.queue.writeTexture({ texture: texture900 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    query100.destroy()
    device60.queue.writeTexture({ texture: texture600 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array13 = new Float32Array([0.5, -0.75, 0.0, 0.25, -1.0, -0.5, -0.25, 0.75, -0.25, 0.75, -0.5, -0.5, 0.0, 1.0, -1.0, -0.75, 0.25, 0.75, -0.5, 0.75, 0.25, -0.5, -1.0, -1.0, -0.75, 0.75, 0.25, 0.75, 0.25, -0.5, 0.25, -1.0, 0.75, 1.0, 0.25, 0.75, 0.25, 0.75, -0.75, 0.5, 0.25, 0.5, -0.75, 0.75, 0.75, 0.25, -0.75, -0.75, -0.75, -0.25, -1.0, 0.5, 0.5, -1.0, -0.5, 0.75, 0.5, 1.0, 0.75, 0.75, 0.0, -1.0, 0.75, 0.5, 0.75, -0.75, -0.25, 0.75, -0.75, 0.75, -0.5, 0.0, -0.25, -0.5, 0.75, 0.25, -0.5, 0.5, -1.0, -0.5, -1.0, 0.25, -0.75, 0.5, 0.75, 0.0, 0.75, -0.75, -0.75, 0.5, -0.5, 0.25, -1.0, 0.5, 0.75, -0.5, -0.5, -0.25, 0.0, 0.0, ]);
    
    
    device90.queue.writeTexture({ texture: texture900 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    
    
    
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device80.destroy();
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    texture100.destroy();
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    device90.destroy();
    
    const array14 = new Float32Array([0.25, -0.5, -0.75, -0.75, 0.5, -0.5, -0.5, 0.5, -1.0, 0.75, 0.25, 0.75, -0.75, 1.0, -0.75, 0.0, -1.0, 0.5, -0.25, 0.0, -1.0, 1.0, 0.0, 1.0, -0.75, 0.75, -0.75, 0.5, -0.25, 0.5, -0.5, 0.5, -1.0, 1.0, -0.25, 0.5, 0.75, -0.25, -0.5, -1.0, 1.0, -0.75, -0.75, 0.0, 0.5, 1.0, 0.25, -1.0, 0.5, 0.5, -0.5, -1.0, -0.5, 0.0, 0.75, -0.25, 0.75, 0.0, -0.75, 0.5, 0.25, -0.25, -0.5, 0.75, 0.5, 0.25, -0.75, -1.0, 0.25, 0.75, 0.0, 0.75, -1.0, 0.75, 1.0, -0.75, -0.25, -0.25, -0.5, -1.0, -0.25, -0.5, 0.75, 0.5, 1.0, 0.0, -0.75, 0.5, 0.5, 0.75, 0.25, -0.5, -0.75, -0.25, -0.25, -0.75, -1.0, -0.25, 1.0, -1.0, ]);
    
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    
    device50.destroy();
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    query1001.destroy()
    const query1002 = device100.createQuerySet({
        label: "query1002",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    device90.queue.writeTexture({ texture: texture900 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query1001.destroy()
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query1003 = device100.createQuerySet({
        label: "query1003",
        type: "occlusion",
        count: 32,
    });
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    render_bundle_encoder601.insertDebugMarker("marker");
    const render_bundle_encoder1002 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1002",
        colorFormats: ["bgra8unorm"]
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    query1002.destroy()
    
    
    
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    render_bundle_encoder1000.insertDebugMarker("marker");
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    texture900.destroy();
    
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    render_bundle_encoder1001.insertDebugMarker("marker");
    device100.destroy();
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    
    
    
    
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    
    
    
    const render_pipeline1100 = device110.createRenderPipeline({
        label: "render_pipeline1100",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const render_pipeline1101 = device110.createRenderPipeline({
        label: "render_pipeline1101",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device110.queue.writeTexture({ texture: texture1100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture600 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array15 = new Float32Array([-0.75, -0.25, -0.25, -1.0, 0.75, 1.0, 0.5, -0.25, 0.5, 1.0, 0.0, -0.75, 0.75, -0.5, -0.75, 1.0, 0.0, -0.5, 0.5, 0.25, 0.0, 1.0, 0.75, 0.0, 0.25, -0.5, -0.75, 0.5, -0.75, 0.5, 0.75, 0.25, -0.5, -0.5, -0.75, -1.0, -1.0, 0.5, 0.75, 0.0, 0.25, -1.0, 0.5, -0.75, -0.75, 0.25, -1.0, -1.0, 1.0, -0.25, 0.0, -0.5, 0.75, 1.0, 0.25, -1.0, -1.0, 1.0, -1.0, 0.5, 0.5, 0.0, -0.25, -0.5, 0.75, -1.0, 1.0, 0.5, -0.5, 1.0, -1.0, 0.5, -0.75, 0.75, 0.25, -0.75, 0.0, 0.25, 0.75, 0.75, 0.0, 0.75, -0.25, -0.25, 0.75, 0.0, 1.0, -0.5, -0.5, 0.5, 0.5, -0.75, -0.25, -0.5, 0.5, -0.5, 0.75, 0.25, 0.25, 0.0, ]);
    
    device40.destroy();
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    device110.queue.writeTexture({ texture: texture1100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    device110.queue.writeTexture({ texture: texture1100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline1102 = device110.createRenderPipeline({
        label: "render_pipeline1102",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    var shader_module1103_code = "";
    try {
        shader_module1103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1103 = await device110.createShaderModule({ label: "shader_module1103", code: shader_module1103_code })
    device110.queue.writeTexture({ texture: texture1100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline1103 = device110.createRenderPipeline({
        label: "render_pipeline1103",
        vertex: {
            module: shader_module1103,
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
            module: shader_module1103,
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
    device110.queue.writeTexture({ texture: texture1101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device110.queue.writeTexture({ texture: texture1100 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1002 = device100.createSampler( { label: "sampler1002" } );
    device110.queue.writeTexture({ texture: texture1101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device110.queue.writeTexture({ texture: texture1100 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    device110.queue.writeTexture({ texture: texture1100 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline1104 = device110.createRenderPipeline({
        label: "render_pipeline1104",
        vertex: {
            module: shader_module1101,
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
            module: shader_module1101,
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
    device110.queue.writeTexture({ texture: texture1101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device110.queue.writeTexture({ texture: texture1101 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1104_code = "";
    try {
        shader_module1104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1104 = await device110.createShaderModule({ label: "shader_module1104", code: shader_module1104_code })
    
    device110.queue.writeTexture({ texture: texture1100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query1003.destroy()
    device110.queue.writeTexture({ texture: texture1100 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module1105_code = "";
    try {
        shader_module1105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1105 = await device110.createShaderModule({ label: "shader_module1105", code: shader_module1105_code })
    const render_pipeline1200 = device120.createRenderPipeline({
        label: "render_pipeline1200",
        vertex: {
            module: shader_module1200,
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
            module: shader_module1200,
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.destroy();
    device110.destroy();
    const sampler1202 = device120.createSampler( { label: "sampler1202" } );
    
    
    device20.destroy();
    
    device110.queue.writeTexture({ texture: texture1100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device110.queue.writeTexture({ texture: texture1101 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder600.popDebugGroup();
    
    render_bundle_encoder600.insertDebugMarker("marker");
    device120.destroy();
    
    
    
    device60.queue.writeTexture({ texture: texture600 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1000.destroy();
    
    
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    
    
    
    
    device60.destroy();
    
    device60.queue.writeTexture({ texture: texture600 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const array16 = new Float32Array([-1.0, -0.75, -0.75, -0.25, 0.75, -0.75, -1.0, 0.5, -0.25, 0.75, -1.0, 0.5, 0.25, 1.0, 0.5, -1.0, -0.25, -1.0, 0.5, 0.5, 0.75, -0.75, 0.75, -0.5, 0.75, 0.75, 1.0, -0.75, 0.75, -0.75, 1.0, -0.25, 0.75, 0.0, 0.75, 1.0, 0.0, -0.25, 0.5, -0.25, -0.5, 1.0, 1.0, 0.0, -0.75, 0.0, -0.5, -0.25, -0.5, 0.5, 0.25, -0.75, 0.5, 0.0, -0.5, -1.0, 1.0, -1.0, 1.0, 1.0, 0.75, -0.25, 0.0, -0.25, -0.5, -0.5, -1.0, -0.25, 0.5, 1.0, 1.0, -0.25, 0.25, -0.5, 0.25, 0.0, -1.0, 0.0, -0.5, -0.75, 0.5, -0.25, 0.75, 0.5, 0.25, 0.75, -1.0, 0.25, -0.25, 1.0, 0.25, -0.25, 0.5, -0.25, -1.0, -0.75, -0.5, 1.0, -1.0, 1.0, ]);
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1203_code = "";
    try {
        shader_module1203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1203 = await device120.createShaderModule({ label: "shader_module1203", code: shader_module1203_code })
    device110.queue.writeTexture({ texture: texture1100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device90.queue.writeTexture({ texture: texture900 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device70.destroy();
    
    
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    device20.destroy();
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const array17 = new Float32Array([-1.0, 0.0, 0.5, 0.75, -0.5, -1.0, -0.25, -0.5, 0.25, -0.75, -0.5, 0.75, 0.0, -1.0, 0.75, 0.5, 0.75, 0.5, -1.0, -0.25, 0.75, 1.0, 0.25, 0.75, 0.5, 0.0, 1.0, -0.25, 1.0, 0.5, 0.5, 0.75, 0.5, 0.25, 0.75, 0.0, 0.25, 0.75, -0.5, 0.75, -0.25, 0.75, -0.25, 0.75, -1.0, 1.0, 0.5, -1.0, 0.5, -0.75, -0.75, 0.25, 0.75, -0.75, -0.75, 0.5, -0.75, 0.0, 0.0, 0.75, -1.0, 0.75, -1.0, 0.0, 0.5, 0.0, 0.5, -1.0, -0.25, 0.0, 0.0, 0.0, 0.5, -0.25, 0.5, 0.25, 0.5, -0.25, -1.0, 0.5, 0.0, 0.25, 1.0, -0.75, -1.0, -0.75, 0.0, 0.5, -1.0, -0.25, -0.25, -0.75, 0.25, 0.5, -1.0, 0.0, 0.5, 0.75, -0.5, -1.0, ]);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    
    
    
    device70.queue.writeTexture({ texture: texture700 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    const render_bundle_encoder1401 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1401",
        colorFormats: ["bgra8unorm"]
    });
    
    const array18 = new Float32Array([-0.25, 0.0, -0.5, 0.0, 0.5, 1.0, -0.25, 0.5, 0.5, 0.0, 0.5, 1.0, 1.0, -1.0, 1.0, -0.5, -0.5, 1.0, -1.0, 1.0, 0.0, 0.25, -0.25, 0.0, 1.0, -1.0, -0.75, -1.0, 0.5, -0.25, -0.5, 0.25, -1.0, 0.0, 0.5, -0.75, -0.5, -0.75, -0.75, -1.0, 1.0, 0.75, 0.75, 0.0, -0.5, 0.25, 0.75, -1.0, -0.5, 0.0, 0.75, 1.0, 0.75, 0.0, 1.0, -0.5, 0.25, 0.25, -0.5, -1.0, 1.0, 0.5, -0.25, -0.25, -0.5, -1.0, 0.5, 0.5, 0.25, -0.25, 0.0, 0.0, -1.0, 0.25, 0.0, 0.25, -0.25, 0.75, -0.25, 0.75, -1.0, 1.0, -0.25, 1.0, 0.75, 0.25, -0.5, -1.0, 0.0, -0.5, -1.0, 0.75, -0.75, 0.25, 1.0, -0.75, -1.0, -0.75, 0.0, -0.75, ]);
    render_bundle_encoder1401.insertDebugMarker("marker");
    texture700.destroy();
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_bundle_encoder1400.popDebugGroup();
    render_bundle_encoder1400.insertDebugMarker("marker");
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture400.destroy();
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const render_bundle_encoder1402 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1402",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device110.queue.writeTexture({ texture: texture1101 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device140.destroy();
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    render_bundle_encoder1002.insertDebugMarker("marker");
    query101.destroy()
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    
    
    const array19 = new Float32Array([-1.0, 0.75, 0.25, -1.0, 0.75, 0.75, -0.5, 0.75, -1.0, 1.0, -0.25, 0.75, 0.0, 0.75, 1.0, 1.0, -1.0, -1.0, 0.25, 0.5, 0.0, -0.5, -0.25, -1.0, 0.0, -1.0, -0.25, 1.0, -0.5, -0.75, 0.5, 0.75, -0.25, -0.25, 0.5, 0.5, 0.75, 0.75, -0.5, 0.5, -1.0, -1.0, -1.0, -0.75, 0.5, 0.25, -0.25, 0.0, -0.75, 0.25, 0.5, -0.25, 0.0, 0.25, -0.25, 0.5, -0.5, -1.0, 0.5, -0.5, -0.25, -0.5, 0.75, -0.5, 0.5, 0.75, 0.75, 1.0, -0.25, -0.75, 0.75, -0.25, 1.0, -0.5, -1.0, 0.0, -0.25, -0.25, 0.5, 0.25, 0.25, -0.5, 0.0, 1.0, -0.5, 0.0, -0.5, 0.75, -0.5, -0.25, -0.75, 0.5, -0.25, -1.0, -0.25, 0.0, 0.5, -0.25, -0.25, -0.5, ]);
    
    
    
    const render_pipeline1500 = device150.createRenderPipeline({
        label: "render_pipeline1500",
        vertex: {
            module: shader_module1500,
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
            module: shader_module1500,
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
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    
    var shader_module1501_code = "";
    try {
        shader_module1501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1501 = await device150.createShaderModule({ label: "shader_module1501", code: shader_module1501_code })
    render_bundle_encoder1002.insertDebugMarker("marker");
    const sampler1501 = device150.createSampler( { label: "sampler1501" } );
}