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
    
    
    const array0 = new Float32Array([-0.5, 0.5, -1.0, 0.5, 1.0, -1.0, -0.5, -0.5, 0.5, 0.0, -0.75, -0.25, -1.0, 0.5, 0.0, 0.75, 0.0, 0.75, 0.25, -0.25, 0.75, 0.25, 0.0, 0.25, -1.0, 1.0, -0.75, -0.5, -0.5, -0.5, -1.0, -0.5, -0.5, -0.5, 0.25, 0.5, 0.0, 0.25, -0.75, 0.25, 0.25, 0.25, -0.25, -0.5, 0.0, 1.0, 0.75, -0.5, 0.75, 0.25, 1.0, -0.75, 0.0, -0.75, -1.0, -0.25, 0.25, 1.0, 1.0, -0.75, -1.0, -0.25, -0.25, -0.5, -0.25, 0.5, 0.25, -1.0, 0.25, -0.5, -0.5, 0.25, 0.5, -1.0, -0.5, 1.0, -1.0, 0.75, 0.75, -0.75, -0.75, -0.25, 0.75, -0.5, 1.0, 0.5, 0.25, 0.75, -0.75, -0.5, -0.25, 0.5, 0.75, 0.0, -0.25, 0.0, -0.25, 0.5, 0.75, 0.0, ]);
    const array1 = new Float32Array([-1.0, -0.5, -1.0, -0.25, 0.25, -0.25, 1.0, 1.0, -0.25, 0.0, 1.0, -0.25, -0.25, 0.0, 0.5, -0.75, -0.75, 0.25, -1.0, -0.75, -0.5, 0.75, 0.0, -0.75, -0.25, -0.5, -0.75, -0.5, 1.0, 0.75, -1.0, 0.75, 0.25, -0.25, -0.75, 0.0, 0.25, 0.75, 0.0, 0.0, -0.75, -0.75, 0.75, -0.25, 0.5, 1.0, -0.75, 0.25, -0.5, 1.0, 0.75, 0.25, 0.5, 1.0, -0.25, -1.0, 0.5, 0.75, 0.25, -0.5, -0.25, -1.0, 0.0, -0.75, -0.5, -0.5, -0.75, -0.75, -1.0, 0.0, 0.5, 0.25, 0.75, -0.25, 1.0, 0.5, -1.0, -0.5, 1.0, 0.0, -0.5, -0.5, 0.5, 0.25, 0.0, -0.25, -0.25, 1.0, -0.25, -0.25, 0.5, -0.5, 0.25, -0.25, -0.5, 1.0, 1.0, 1.0, -1.0, 0.5, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    
    device10.destroy();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    const array2 = new Float32Array([0.75, -0.5, 0.25, -1.0, 0.5, 0.5, -0.75, 0.75, 0.0, 0.5, 0.25, 0.5, 0.25, 1.0, 0.0, 0.0, 0.0, -0.75, 0.75, 0.5, 0.75, 0.25, 0.0, 0.75, -0.25, 0.5, 0.75, 0.75, -1.0, -1.0, 0.5, -0.25, 0.0, 0.25, 1.0, -0.25, 0.0, -0.75, 0.0, -0.5, -0.75, -0.5, 0.25, 0.25, -0.5, 0.5, 0.75, 0.0, 0.75, 0.5, -0.5, -0.5, -0.5, -0.75, 1.0, -0.75, -0.5, -1.0, -1.0, 0.0, 0.0, 1.0, 0.75, 0.75, 1.0, 0.25, 0.5, -0.75, -1.0, 0.25, -0.5, -0.75, 0.25, -0.75, 0.5, -1.0, 1.0, 0.5, 0.75, -1.0, -0.75, 0.0, 0.25, -1.0, -0.5, -0.75, 0.0, 1.0, 0.75, 1.0, -0.5, -1.0, -1.0, 0.75, 0.75, -0.75, 1.0, 0.25, 0.25, -0.75, ]);
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array3 = new Float32Array([-1.0, 0.75, 0.25, 1.0, 1.0, -1.0, 0.0, -1.0, 0.25, -0.75, -1.0, -1.0, -0.25, 0.0, 0.75, 0.0, 0.5, 0.0, 1.0, 0.0, 0.75, 0.25, -0.5, -0.5, 0.5, -1.0, 0.0, 0.0, -0.25, 0.0, -0.5, 0.5, -0.75, 0.25, 0.0, 0.5, 0.0, 0.5, -1.0, 0.5, 0.5, -1.0, 0.25, 0.75, 0.75, -0.75, 0.75, 1.0, -0.25, -1.0, 0.25, -1.0, -1.0, 0.25, 0.0, 0.25, -0.25, -0.5, 0.5, 0.0, 0.75, 0.75, 0.0, -0.25, 0.75, 0.25, 0.25, 0.0, -0.25, -0.5, -1.0, -0.25, 0.0, 0.0, 0.75, 0.25, 0.5, 1.0, 0.0, -0.25, -0.5, -1.0, -0.75, -0.5, -1.0, 0.0, 0.25, -0.75, -0.5, 0.75, 0.5, -0.75, -0.75, -0.75, 1.0, -0.25, 1.0, 0.75, -0.25, 0.5, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.destroy();
    
    
    
    texture200.destroy();
    device30.destroy();
    
    const array4 = new Float32Array([0.0, 1.0, 0.75, -0.75, 0.0, -1.0, 0.75, 0.25, 0.5, 0.25, -0.75, 0.25, 1.0, 0.0, -0.5, 0.5, 0.75, 0.25, -0.5, 0.0, 1.0, -0.25, -0.75, -0.5, 0.5, -0.25, 0.75, 0.75, -0.25, 0.5, -0.75, 1.0, -1.0, -1.0, 0.5, 0.0, -0.25, 0.5, 1.0, -0.25, -0.5, -0.25, -1.0, -1.0, -0.5, 0.5, 0.75, -1.0, -0.75, -0.75, 0.25, 1.0, 0.5, 0.25, 1.0, -0.5, 0.25, 0.5, 0.5, -0.75, 0.25, 0.75, -0.75, -1.0, -1.0, 1.0, -0.25, -1.0, 0.0, -0.25, -1.0, -1.0, -1.0, -0.5, 0.0, 0.0, 1.0, 0.25, 0.5, 0.75, -0.25, -0.75, -1.0, 0.75, -0.5, -1.0, -1.0, 0.5, -0.5, 0.5, -1.0, -0.25, -1.0, -0.25, 0.0, 1.0, 0.5, 0.5, -0.75, 0.25, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const array5 = new Float32Array([-1.0, 0.75, 0.0, 1.0, 1.0, 1.0, 0.25, -1.0, 0.25, 0.5, 0.25, 1.0, 0.0, 0.0, 0.5, 1.0, -1.0, 1.0, -1.0, -0.5, 1.0, -0.25, 0.75, 0.75, -0.5, 0.25, -0.25, -0.5, 0.0, 0.5, 1.0, 1.0, 0.75, -0.75, 0.25, -0.5, 0.25, 0.25, 0.75, 0.0, 0.5, 0.25, 0.75, 0.25, -0.5, -0.5, 1.0, 0.5, 0.25, 0.5, -0.75, 0.75, 0.25, 1.0, 0.25, -0.25, 0.75, 1.0, 0.5, -0.25, -0.5, -0.25, 0.75, 0.5, 0.75, 1.0, -0.25, 0.75, 0.75, 0.25, 0.25, 1.0, -0.75, -0.5, -0.75, -1.0, 0.0, 1.0, -0.25, 0.75, -0.75, 0.0, -0.25, 0.0, 0.5, -0.25, -0.25, -0.25, 1.0, 0.5, -1.0, -1.0, 0.25, 0.5, 0.75, -1.0, 1.0, 0.75, 0.75, -0.5, ]);
    device10.destroy();
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8uint",
        dimension: "2d"
    });
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    render_bundle_encoder400.insertDebugMarker("marker");
    texture400.destroy();
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_bundle_encoder401.pushDebugGroup("group_marker");
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
    
    const array6 = new Float32Array([-0.25, 0.0, 0.25, 0.75, 0.75, 0.25, -0.25, 0.25, -0.75, 0.5, 0.5, -0.75, 0.5, 0.0, 0.0, -0.75, -0.5, -1.0, -0.75, -1.0, -1.0, 0.0, -0.75, 0.5, -1.0, 0.75, 1.0, -1.0, -0.75, 0.25, 0.5, 1.0, 0.5, -0.75, -0.75, 0.75, -0.25, -0.25, -0.25, 0.75, 0.5, -1.0, 0.25, -0.25, 0.5, -1.0, 0.75, -1.0, 0.25, 1.0, -0.25, 0.5, 1.0, 0.0, 0.0, 1.0, 0.0, -0.5, 0.75, 0.75, -0.5, -0.5, -0.25, 0.75, -0.75, 0.5, -1.0, 0.5, -0.5, 0.5, -0.5, 0.5, 1.0, 0.75, -0.75, -0.25, -1.0, 0.75, 0.0, -0.25, 0.5, 0.75, -0.25, 0.0, -0.25, 0.0, 1.0, 0.5, -0.75, 0.25, 0.25, 0.75, -1.0, -0.25, -0.75, 0.5, -0.5, 1.0, -0.25, 0.5, ]);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder401.popDebugGroup();
    device40.destroy();
    
    
    
    
    
    
    
    
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    query401.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    buffer500.destroy()
    
    
    
    
    
    const array7 = new Float32Array([-0.25, 1.0, -0.75, 0.25, 0.5, -0.25, -0.25, 0.5, -0.75, 0.75, 1.0, 1.0, 1.0, 0.0, 0.0, 0.25, 0.25, 0.25, -1.0, -0.75, 0.5, 1.0, 0.25, -0.5, 1.0, -0.75, 1.0, 0.25, 0.0, -1.0, 0.75, -1.0, 0.75, 1.0, -0.5, 0.5, -0.5, 0.25, -1.0, 0.0, 0.25, 0.5, -0.25, -0.25, 1.0, 0.75, 0.25, 1.0, 0.5, 0.25, 0.0, 0.75, 0.25, 0.5, -0.5, -0.5, -0.75, -0.25, -0.5, 0.5, -0.5, -0.75, -0.25, 0.75, -0.75, -0.5, 0.75, 0.25, -0.5, 0.5, 1.0, 0.75, -0.5, 0.25, -1.0, -0.5, 1.0, 1.0, 0.5, 1.0, 0.5, -0.25, 0.5, 0.75, 0.5, 0.5, 0.25, -1.0, 0.75, 0.75, 0.5, 0.0, -1.0, 0.75, 0.25, -0.5, 0.5, 0.5, 0.75, -0.75, ]);
    query500.destroy()
    
    
    query400.destroy()
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const array8 = new Float32Array([1.0, -1.0, 0.0, -0.25, 1.0, -0.5, 0.25, -0.5, -0.25, -0.5, -1.0, 1.0, -0.5, 0.75, 0.25, -1.0, 0.0, 0.75, 0.25, 0.0, 0.75, 0.5, -0.25, -0.5, 1.0, 1.0, -0.25, -1.0, 0.75, 0.5, 0.5, -0.5, 0.0, -0.5, 1.0, -0.5, -1.0, -0.75, -0.5, 1.0, -0.25, -0.5, -1.0, 1.0, 0.25, 0.5, -1.0, 0.75, 1.0, -0.75, -1.0, 0.75, -0.25, -0.5, 0.0, 0.25, -0.25, -0.25, -1.0, 0.75, -0.5, -1.0, -0.25, 0.25, 0.0, -0.75, 0.5, 0.25, 0.75, -0.5, 0.0, 0.75, 0.75, 0.25, -0.25, 0.25, -0.5, -0.25, 0.5, -0.25, -1.0, -0.5, -0.5, 0.25, -1.0, 0.75, -1.0, 0.5, 0.25, -0.75, -0.5, 1.0, 0.75, 0.0, 0.75, 1.0, 0.75, -0.5, 0.0, 0.25, ]);
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
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    
    query500.destroy()
    
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder500.copyBufferToTexture(
        {
            buffer: buffer500
        },
        {
            texture: texture500
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    const command_buffer500 = command_encoder500.finish();
    device50.pushErrorScope("internal");
    render_bundle_encoder500.insertDebugMarker("marker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    command_encoder501.insertDebugMarker("mymarker");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const command_buffer501 = command_encoder501.finish();
    command_encoder502.pushDebugGroup("mygroupmarker")
    
    query500.destroy()
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
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
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    device50.queue.submit([command_buffer500, ]);
    
    command_encoder502.resolveQuerySet(
        query500,
        0,
        32,
        buffer501,
        0
    )
    buffer503.destroy()
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_bundle_encoder500.popDebugGroup();
    
    device50.pushErrorScope("out-of-memory");
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    buffer502.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("out-of-memory");
    
    buffer000.destroy()
    render_pass_encoder5020.insertDebugMarker("marker");
    
    
    render_pass_encoder5020.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    device40.queue.writeTexture({ texture: texture402 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    
    query201.destroy()
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    render_pass_encoder5020.executeBundles([])
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query501
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5040.pushDebugGroup("group_marker");
    const array9 = new Float32Array([-0.5, 0.25, -1.0, -0.75, -1.0, -0.25, 0.5, -0.75, -0.75, 0.75, -1.0, 0.0, 0.0, 0.25, -1.0, 0.25, -0.25, -1.0, -0.75, 0.75, 0.25, -0.5, -1.0, 0.75, 0.25, 0.5, -1.0, 0.75, -0.5, 0.0, 1.0, -0.75, -1.0, 1.0, -0.75, 1.0, -1.0, -0.25, -0.5, 0.0, 0.5, 1.0, 0.5, -0.25, 0.0, 0.75, -0.5, -0.5, 0.75, -1.0, -0.5, 1.0, 0.75, 0.0, -0.5, 1.0, 0.5, -0.5, -1.0, -1.0, 0.25, -1.0, -0.5, 0.75, 0.0, 0.0, 0.5, 0.25, -0.25, 0.25, 0.75, -1.0, 0.25, 0.75, 0.75, -0.5, -0.5, -0.25, 0.75, -1.0, -0.75, 1.0, 0.25, 1.0, -0.25, -1.0, -1.0, 0.0, 0.5, 0.0, -0.5, -0.75, -1.0, -0.75, 0.5, -1.0, -0.5, 0.25, -0.25, -1.0, ]);
    device20.pushErrorScope("validation");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder5030.insertDebugMarker("marker");
    render_pass_encoder5030.setStencilReference(1);
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
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
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder500.popDebugGroup();
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    {
        await buffer504.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer504.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer504.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_pass_encoder5040.insertDebugMarker("marker");
    query500.destroy()
    render_pass_encoder5030.setStencilReference(1);
    texture501.destroy();
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_pass_encoder5031 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
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
    command_encoder505.resolveQuerySet(
        query500,
        0,
        32,
        buffer503,
        0
    )
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer501.destroy()
    
    render_pass_encoder5031.setStencilReference(1);
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device50.queue.writeBuffer(buffer505, 0, array6, 0, array6.length);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder5050 = command_encoder505.beginRenderPass({
        label: "render_pass_encoder5050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder5030.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5040.setStencilReference(1);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device00.pushErrorScope("validation");
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_bundle_encoder500.popDebugGroup();
    render_pass_encoder5050.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
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
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    command_encoder503.resolveQuerySet(
        query501,
        0,
        32,
        buffer505,
        0
    )
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder5040.setStencilReference(1);
    
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    
    render_pass_encoder5030.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder5031.pushDebugGroup("group_marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    command_encoder200.pushDebugGroup("mygroupmarker")
    render_pass_encoder5031.setStencilReference(1);
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_pass_encoder5020.executeBundles([])
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_pass_encoder5031.popDebugGroup();
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_pass_encoder5031.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    buffer502.destroy()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_pass_encoder5030.setStencilReference(1);
    render_pass_encoder5030.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder5040.executeBundles([])
    
    
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5030.setStencilReference(1);
    render_bundle_encoder300.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5050.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5050.executeBundles([])
    render_pass_encoder5040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device50.queue.writeBuffer(buffer505, 0, array5, 0, array5.length);
    buffer504.destroy()
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device60.destroy();
    
    
    render_pass_encoder5031.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    command_encoder700.insertDebugMarker("mymarker");
    query500.destroy()
    texture700.destroy();
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_bundle_encoder500.popDebugGroup();
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    
    render_pass_encoder5030.insertDebugMarker("marker");
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    render_pass_encoder5050.setStencilReference(1);
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer503.destroy()
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const texture_view5030 = texture503.createView({ label: "texture_view5030" });
    render_pass_encoder5040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    device00.pushErrorScope("validation");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    query800.destroy()
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    
    render_pass_encoder5020.pushDebugGroup("group_marker");
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder7000 = command_encoder700.beginRenderPass({
        label: "render_pass_encoder7000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: undefined
    });
    {
        await buffer700.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer700.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer700.unmap();
        console.log(new Float32Array(data));
    }
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    texture502.destroy();
    render_pass_encoder5030.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    
    
    
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    compute_pass_encoder5020.insertDebugMarker("marker")
    
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5020.executeBundles([])
    render_pass_encoder5040.insertDebugMarker("marker");
    render_pass_encoder5020.endOcclusionQuery()
    
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    command_encoder400.insertDebugMarker("mymarker");
    
    render_pass_encoder5031.executeBundles([])
    device70.queue.writeBuffer(buffer700, 0, array9, 0, array9.length);
    
    command_encoder503.resolveQuerySet(
        query502,
        0,
        32,
        buffer505,
        0
    )
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    render_pass_encoder5050.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device80.pushErrorScope("out-of-memory");
    render_pass_encoder5031.pushDebugGroup("group_marker");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture503 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder800.pushDebugGroup("mygroupmarker")
    query500.destroy()
    render_pass_encoder7000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer505, 0, array6, 0, array6.length);
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
    query501.destroy()
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    device70.queue.writeTexture({ texture: texture701 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.writeBuffer(buffer700, 0, array9, 0, array9.length);
    device80.queue.writeBuffer(buffer801, 0, array2, 0, array2.length);
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device70.queue.writeBuffer(buffer700, 0, array9, 0, array9.length);
    
    render_pass_encoder7000.setViewport(0, 0, texture700.width / 2, texture700.height / 2, 0, 1);
    const texture_view5040 = texture504.createView({ label: "texture_view5040" });
    query501.destroy()
    render_pass_encoder7000.executeBundles([])
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    render_pass_encoder7000.executeBundles([])
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5030.endOcclusionQuery()
    command_encoder504.copyBufferToTexture(
        {
            buffer: buffer500
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder800.insertDebugMarker("marker");
    render_pass_encoder5050.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder7000.pushDebugGroup("group_marker");
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    
    buffer800.destroy()
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    
    device70.pushErrorScope("out-of-memory");
    device50.queue.writeBuffer(buffer506, 0, array5, 0, array5.length);
    render_pass_encoder5020.insertDebugMarker("marker");
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
    const sampler506 = device50.createSampler( { label: "sampler506" } );
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    render_pass_encoder5020.executeBundles([])
    render_pass_encoder5030.endOcclusionQuery()
    render_bundle_encoder800.pushDebugGroup("group_marker");
    render_pass_encoder5040.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_bundle_encoder700.popDebugGroup();
    render_pass_encoder5050.insertDebugMarker("marker");
    
    device80.queue.submit([]);
    render_pass_encoder5031.popDebugGroup();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer503 = command_encoder503.finish();
    command_encoder800.popDebugGroup()
    render_pass_encoder5040.endOcclusionQuery()
    const command_buffer701 = command_encoder701.finish();
    const command_buffer700 = command_encoder700.finish();
    device70.queue.submit([command_buffer701, ]);
    device50.queue.submit([command_buffer501, ]);
    const command_buffer800 = command_encoder800.finish();
    render_pass_encoder5040.popDebugGroup();
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder5020.popDebugGroup()
    device50.queue.submit([command_buffer503, ]);
    device70.queue.submit([command_buffer700, command_buffer701, ]);
    device50.queue.submit([]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder5031.popDebugGroup();
    render_pass_encoder5020.endOcclusionQuery()
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder7000.popDebugGroup();
}