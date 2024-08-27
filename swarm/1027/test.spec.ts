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
    
    const array0 = new Float32Array([-0.75, -0.5, 0.25, -0.5, 1.0, 1.0, -0.5, -0.25, -0.5, -0.75, -0.75, 1.0, -0.5, -0.25, 0.75, -0.25, 1.0, 0.75, 0.75, -0.75, -0.75, 0.0, -0.25, 0.5, -1.0, -1.0, -0.25, 0.0, -0.5, -1.0, 0.0, -0.25, 1.0, 1.0, -1.0, -1.0, -1.0, -0.75, -0.75, 0.25, 0.0, 0.5, 0.25, -1.0, -0.25, -0.75, 0.25, -0.5, 0.5, 0.0, 0.75, 0.0, 0.75, -0.25, -0.25, -0.25, 0.5, 0.0, -0.5, -1.0, -1.0, 0.75, 0.5, 0.75, 0.25, -0.5, -1.0, -0.75, 0.25, -0.75, 0.5, 0.0, -1.0, -0.5, 0.5, -0.75, 0.75, 0.5, 0.0, -0.5, 0.0, 0.75, 0.75, 0.0, -0.75, -0.5, 0.75, 0.0, 0.75, -0.25, 0.25, -0.5, 0.75, 0.75, 0.5, 0.75, 1.0, -1.0, 0.75, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.25, -0.25, 0.25, 0.25, 1.0, -0.25, 0.25, -1.0, 0.0, -0.75, -0.25, 0.75, -0.25, 0.75, 0.0, -0.25, -0.75, -1.0, -1.0, -0.5, -0.5, -0.25, 0.0, 1.0, -1.0, 0.25, 0.5, -1.0, 0.75, -0.5, 0.75, 0.5, -1.0, 0.5, 1.0, 0.0, -1.0, -1.0, -1.0, 0.5, -0.25, 0.0, 0.0, -0.25, -1.0, 0.5, 0.25, -0.25, 0.5, 1.0, 0.75, -1.0, -0.25, -1.0, 0.0, -0.75, -0.5, 0.5, -0.25, -0.75, 0.75, 0.5, -0.25, 1.0, -1.0, 0.75, 1.0, -0.5, 0.75, 0.75, -0.5, -1.0, -0.25, 0.75, 1.0, 0.75, 1.0, 0.25, -0.5, 0.75, -0.5, -1.0, -0.25, -1.0, 0.75, 0.75, 0.75, 0.75, -0.25, 0.75, -0.75, -0.75, -0.5, -0.25, 1.0, 1.0, -0.75, 1.0, -0.25, 0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.destroy();
    const array2 = new Float32Array([0.75, 0.5, 0.0, 1.0, -0.75, 0.0, 0.5, -0.5, 0.0, -0.25, -0.25, 0.0, 1.0, 0.5, 0.5, -0.25, 0.75, 0.5, -0.75, 0.5, 1.0, 0.5, 1.0, 0.75, 0.25, -0.25, -0.75, 0.75, -0.25, 1.0, 1.0, 1.0, 0.75, 0.75, 0.25, 1.0, -1.0, 1.0, 0.75, -0.25, 0.75, 0.5, 0.0, 0.25, -1.0, 0.75, 0.5, 1.0, -0.25, -1.0, 0.0, -1.0, -0.25, -0.75, 0.0, -0.5, 0.75, 0.25, 0.0, -0.25, 0.75, -0.75, 0.0, -0.5, 0.75, 0.25, 1.0, 0.25, 0.25, -1.0, 0.25, -0.5, 0.5, -0.75, -0.25, 0.25, 0.5, 1.0, -1.0, -0.75, -0.75, -0.5, -0.5, -0.75, 0.0, -0.25, -0.5, 0.75, -0.5, 0.75, 0.5, 0.25, 1.0, -0.25, -0.25, -0.5, -0.75, 1.0, 0.25, -1.0, ]);
    const array3 = new Float32Array([-0.5, 0.25, -0.75, 0.0, -0.75, -1.0, -1.0, 0.25, -0.25, -0.75, -0.75, 1.0, 0.5, 0.0, -0.75, 1.0, 0.25, 0.75, 0.75, 0.75, 0.75, -0.5, 0.75, -0.5, 0.0, -0.25, -0.5, 0.5, -0.5, 1.0, 0.0, -1.0, -1.0, 1.0, 0.75, -0.25, -0.5, 1.0, -1.0, -0.25, 0.5, -1.0, -1.0, -0.5, 0.5, 0.0, 0.5, 0.25, 0.0, -0.75, -0.25, 0.25, 1.0, -1.0, 1.0, -0.75, -0.25, -0.5, 0.5, 0.75, -1.0, 0.5, -0.25, -0.75, -0.5, -0.25, -0.75, 0.75, 0.75, -0.25, 1.0, -1.0, 0.25, 0.75, 0.5, 0.75, -0.25, -0.75, -0.5, 0.75, -0.25, 0.75, -1.0, 1.0, 0.25, 0.5, -0.5, 0.75, 0.5, 1.0, 0.0, -1.0, -0.5, 0.75, 1.0, 0.75, -1.0, 0.0, 0.25, 0.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    query200.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    texture200.destroy();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    texture201.destroy();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.destroy();
    
    
    
    const array4 = new Float32Array([-0.75, 0.0, 0.0, 0.5, 1.0, 0.0, -0.75, 0.75, 0.5, 0.25, -0.75, 0.0, 0.75, 0.5, 0.5, 0.5, -0.5, -1.0, -0.75, 0.5, 0.75, 0.75, 0.5, -0.25, -0.75, -0.25, -0.5, -0.5, 0.75, 1.0, -1.0, 0.25, 0.25, -0.25, 0.25, 0.0, -0.25, 1.0, -0.75, -1.0, -1.0, 0.5, 0.0, -0.75, -0.25, 1.0, -0.5, -1.0, 0.5, -1.0, 0.0, 0.25, -1.0, -0.75, 0.0, 0.25, 0.0, 0.5, 0.25, 0.0, 0.25, -1.0, -0.5, -0.5, -1.0, 0.5, 0.75, -0.25, -0.25, -0.25, 0.0, 0.75, 1.0, -1.0, -0.25, -0.25, 0.25, 0.0, -1.0, -1.0, 0.0, -0.25, 0.25, 0.0, -1.0, -0.25, -0.5, -0.5, -1.0, -0.5, 0.0, 0.5, 1.0, -0.25, -0.5, -0.5, 0.0, -0.25, 1.0, 0.5, ]);
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const array5 = new Float32Array([0.5, -1.0, 1.0, 0.0, 1.0, 0.5, -0.25, 0.75, -0.5, 0.0, 0.25, 0.5, -0.75, 0.5, 0.0, 0.75, -0.75, -0.5, -0.75, 0.75, 0.5, 0.25, 1.0, -0.25, -1.0, 0.75, 0.0, 0.5, 0.75, 0.5, 0.5, 1.0, -0.5, 1.0, -1.0, 1.0, 0.25, 1.0, 0.0, 0.75, -0.25, -0.25, 0.25, 0.0, -0.75, 0.0, 0.0, 1.0, 1.0, -0.75, 0.25, -0.5, 0.0, 0.25, -0.75, 1.0, 0.0, -0.25, 0.5, -0.5, -0.25, 0.25, 0.75, -0.5, 1.0, 0.5, -0.25, 0.25, 1.0, 0.5, 0.75, 1.0, 0.75, 0.5, -0.5, -0.25, -1.0, -1.0, 1.0, 1.0, -0.5, -0.25, -0.25, 0.25, -0.25, -1.0, 1.0, 0.5, 0.25, -0.25, -0.5, -0.5, -0.5, -1.0, -0.25, 0.25, -0.25, -0.75, 0.25, 0.0, ]);
    const array6 = new Float32Array([-0.5, -0.5, 1.0, 0.75, 0.75, 0.5, -0.25, 0.25, 0.75, 0.25, 0.25, 0.75, -0.5, 0.25, -1.0, 0.5, -0.5, -0.25, -0.75, 0.75, 1.0, -0.5, 0.5, -0.25, -0.5, 1.0, -0.75, 0.5, -1.0, 0.75, -0.75, -0.5, 1.0, -0.5, 0.75, -0.25, 0.0, 1.0, 0.25, -0.5, -1.0, 0.75, 0.75, -0.75, 0.75, 0.75, -1.0, -1.0, 1.0, 0.5, 0.0, 0.0, 0.5, -0.75, -0.25, 0.5, 0.25, 0.0, 0.75, 0.5, 0.25, 0.5, 0.25, -1.0, 0.5, 0.75, -0.5, 0.0, 1.0, -1.0, 0.5, 0.75, -1.0, 0.25, 0.5, 0.5, 0.75, -1.0, 0.5, 0.25, -0.5, 0.0, -0.75, -0.75, 0.5, 1.0, -0.75, -0.25, 0.5, 0.75, 0.5, 0.75, 0.5, -0.25, -0.75, 1.0, 0.5, -0.25, 0.25, 1.0, ]);
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    query300.destroy()
    const array7 = new Float32Array([0.5, 0.75, -1.0, 1.0, 1.0, -0.5, 1.0, -0.25, -0.75, -1.0, -0.75, -0.5, 0.0, 0.25, -0.5, 0.25, 0.0, -1.0, 0.75, 0.5, 0.5, 0.5, 0.25, -0.75, 0.25, 0.75, -0.5, 0.0, 1.0, 0.25, -0.5, 0.75, 0.25, -0.75, -0.25, -1.0, -0.5, -0.75, -0.75, -0.5, 0.5, -1.0, -0.75, 0.5, 0.25, 0.5, 0.25, 0.75, 0.0, 0.75, 0.25, -0.25, 0.5, 1.0, 0.25, 0.0, 0.0, -1.0, -0.75, -1.0, 0.5, 0.75, 1.0, -0.25, -0.5, 1.0, 1.0, -0.75, -0.5, 0.25, 0.25, 0.0, -1.0, 0.5, 1.0, 0.0, 0.75, 0.25, -0.25, 1.0, -0.25, 1.0, 0.25, 1.0, 1.0, 0.25, -1.0, -0.5, 1.0, 1.0, -1.0, -0.5, -0.75, 0.0, 1.0, 0.0, 0.5, -1.0, 0.75, 0.25, ]);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device30.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    
    query301.destroy()
    device20.destroy();
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    texture400.destroy();
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    render_bundle_encoder400.insertDebugMarker("marker");
    const array8 = new Float32Array([0.0, -0.75, 0.5, 0.0, -0.75, 0.25, -0.75, 0.5, 0.5, -1.0, -0.25, 0.0, 0.0, -0.5, -1.0, -0.25, 0.25, 0.25, 0.75, 0.75, 0.0, 0.75, -0.5, 1.0, 0.0, 0.0, -0.5, 0.25, 0.25, 0.75, 0.0, -1.0, 0.5, 0.75, -0.75, -1.0, -0.5, -0.75, 0.75, 1.0, -0.25, 0.75, -0.5, 0.75, 0.0, -0.5, 0.0, -0.5, 0.0, -0.25, 0.5, 0.25, -1.0, -0.75, 0.25, 0.25, -0.75, 0.25, 0.75, 1.0, 0.25, 0.25, 0.25, -1.0, 0.0, 0.0, 0.25, 0.0, -1.0, -0.5, 0.75, 1.0, 0.75, 0.25, -0.5, -0.5, 0.75, -0.75, 0.0, 0.25, 0.75, 0.75, -0.5, 0.5, 0.25, -0.5, -0.5, -0.25, 0.75, 0.0, -0.5, -0.5, -1.0, -0.25, -0.5, 0.25, 0.0, 0.25, 0.5, -1.0, ]);
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
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
    
    render_bundle_encoder400.insertDebugMarker("marker");
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
    
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.destroy();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array9 = new Float32Array([-1.0, 0.75, -0.75, -0.5, -0.75, -0.5, 0.75, -0.5, 0.0, -0.25, 0.5, 0.75, 0.5, 0.25, -1.0, -0.25, 0.25, 0.5, 0.0, 0.75, 1.0, 0.75, 0.25, 0.0, 1.0, -1.0, -0.25, 1.0, 0.25, -0.25, 0.75, -0.25, -0.75, -0.5, -0.25, -0.75, -0.75, 0.25, 0.5, -0.25, 0.0, -0.25, -0.5, -0.25, 0.0, 1.0, -0.75, 0.0, 0.5, -0.5, -0.75, -0.5, -1.0, 1.0, -0.25, 0.0, 0.25, 0.25, 0.25, 1.0, 0.5, -1.0, -0.5, 1.0, 0.75, 0.25, 1.0, -0.5, 0.0, -1.0, 0.75, 0.25, -1.0, -0.5, 1.0, 0.75, -0.25, 0.5, 1.0, -0.75, -0.75, 0.75, 0.0, 0.75, 0.5, 0.0, -0.25, 0.75, -0.5, 0.75, -1.0, -0.25, -1.0, -1.0, -0.25, -0.5, 0.25, 0.0, -0.75, 0.0, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    device10.destroy();
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query202.destroy()
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.destroy();
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    
    device00.destroy();
    
    device10.destroy();
    device50.destroy();
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    query700.destroy()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    device70.destroy();
    
    
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    query000.destroy()
    
    const array10 = new Float32Array([0.0, 0.25, 0.0, 0.5, 0.0, 0.25, 0.0, 0.5, 0.0, -0.75, 0.5, -0.75, 1.0, -0.5, -0.75, 0.75, 0.0, 0.0, -1.0, -0.25, 0.75, 0.5, 0.25, -0.75, 0.0, -1.0, 0.75, -0.75, -0.5, 0.5, 0.75, -0.25, 0.25, -0.5, 0.25, -0.75, 0.25, 0.5, -0.5, -1.0, 0.0, 0.75, 0.75, 1.0, -1.0, 0.25, 0.5, -1.0, -1.0, 0.5, 1.0, 0.5, 0.5, -0.5, -0.5, 0.25, -0.25, 0.25, -0.5, 0.0, 0.25, -0.75, -0.25, 1.0, -0.5, 0.25, 0.5, 0.25, 0.75, -0.25, -1.0, -0.5, 1.0, 0.75, 0.75, -0.75, 0.75, -0.5, 0.25, 0.0, -0.5, -0.75, 0.25, -1.0, 0.0, 0.25, -0.5, -0.75, -1.0, 0.25, 0.25, 0.75, 0.5, 0.0, 1.0, -0.75, -0.25, 0.0, -0.75, 0.75, ]);
    
    
    device10.destroy();
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query300.destroy()
    
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const array11 = new Float32Array([-0.5, 0.25, -0.75, 1.0, 0.25, 0.25, 0.25, 0.75, 1.0, 0.75, -1.0, 1.0, 0.25, -0.75, 0.5, 0.5, 1.0, -0.5, -0.75, -0.25, 0.5, -0.5, 0.25, -1.0, 0.0, -1.0, 0.0, 0.25, 0.75, -0.75, 0.25, -0.75, -0.25, 0.0, -0.5, 0.25, -0.25, 0.5, -0.25, 0.5, -0.75, 0.75, -0.25, -0.5, 0.75, -0.5, 0.0, 1.0, -0.5, -0.25, 0.75, -0.75, -0.5, 0.0, -0.5, -0.75, -0.5, 1.0, 0.25, -0.25, -1.0, 0.0, 0.5, -0.5, -0.75, 0.75, 0.5, 1.0, -1.0, 0.0, 0.0, 0.75, 0.25, -0.75, 0.25, -0.25, -0.75, 0.25, -0.75, 0.5, 1.0, -1.0, -0.5, 0.5, 0.5, -0.25, 0.75, 0.0, 0.75, 0.75, 1.0, 0.75, 0.75, 1.0, 1.0, 0.75, -0.25, 0.25, 0.0, 1.0, ]);
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    texture000.destroy();
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.destroy();
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    const array12 = new Float32Array([0.25, -1.0, 0.5, -0.5, -0.5, 1.0, 0.25, 1.0, 0.25, -1.0, 0.5, -0.75, 0.25, -0.25, 0.25, 1.0, 0.75, -0.25, -0.5, 0.0, -0.25, -0.25, -1.0, 0.0, -1.0, -0.25, 0.75, -1.0, -1.0, 0.5, 0.0, 0.5, 0.75, 0.75, 0.0, 1.0, 0.25, -0.25, -0.5, -0.5, -0.75, 0.75, -1.0, 0.25, 0.25, 0.25, -1.0, 0.0, -0.25, 1.0, 0.25, -1.0, 0.5, 1.0, -0.75, 0.0, -1.0, 0.5, -0.5, -0.75, 0.5, 0.0, 0.25, -1.0, 0.25, 0.5, 0.75, -0.75, 0.75, -1.0, 0.75, 0.75, -0.75, -1.0, 0.5, 1.0, -0.5, 1.0, 0.0, 0.75, 0.5, 0.25, 0.75, -0.75, 0.5, 1.0, -0.25, 0.0, -1.0, 0.5, 1.0, -1.0, -1.0, 0.0, 1.0, 0.25, -0.25, 0.25, 0.75, 0.0, ]);
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
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
    
    query200.destroy()
    
    
    
    
    
    
    device70.destroy();
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
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
    
    
    
    const array13 = new Float32Array([0.5, 0.25, -0.75, -0.5, -1.0, 0.25, 0.75, 0.0, -0.25, -0.5, -0.75, -1.0, 0.75, 0.0, 1.0, 0.25, 0.5, 0.5, -0.75, -0.5, -1.0, 0.0, 0.25, 1.0, -0.75, -0.75, 0.5, -0.5, 0.75, 0.5, 0.25, -0.75, 1.0, 1.0, -0.25, -1.0, 0.25, 0.25, 1.0, 0.75, 1.0, -0.5, -1.0, 0.75, 0.25, 0.75, -1.0, 0.75, -1.0, 1.0, 0.5, -1.0, 0.25, -1.0, -1.0, -1.0, 0.25, -0.25, -0.75, 0.5, 1.0, 0.0, 0.5, 0.75, -0.75, 0.25, 0.25, 0.75, 0.5, 0.75, -0.5, -0.5, 0.5, 1.0, -1.0, -1.0, 0.0, -0.5, -1.0, 0.0, -0.5, -0.75, 0.25, -0.75, -0.5, 1.0, 1.0, 0.0, 0.25, -0.25, -0.5, 0.0, -1.0, -0.5, 0.25, -0.5, 1.0, 0.75, -0.5, 0.75, ]);
    const array14 = new Float32Array([0.5, -0.75, 1.0, -1.0, -0.25, -0.25, -0.5, 0.75, -0.5, 0.25, -0.75, 0.25, 1.0, 0.5, 0.5, 0.25, 0.0, -0.25, -0.25, 0.25, -0.5, -0.75, 0.75, 1.0, 0.75, -1.0, -0.25, 0.75, -0.75, 0.0, 0.0, 0.0, 0.0, 0.5, 0.75, -1.0, -0.5, -0.75, 0.75, 0.75, -0.75, 0.5, 0.25, 0.5, -0.25, 0.25, -1.0, -1.0, 1.0, 0.5, -0.25, 1.0, -0.5, 1.0, 0.5, -0.75, 1.0, 1.0, 1.0, 0.0, 0.75, 0.0, 0.5, 0.75, -0.25, 0.5, 0.75, -0.75, 0.75, 0.0, 0.75, 1.0, -0.75, -0.75, -0.75, -0.75, -0.25, -1.0, -0.25, 1.0, -1.0, 0.5, 1.0, 1.0, -0.25, -0.5, 1.0, -1.0, -0.5, 0.0, -0.5, 1.0, 0.75, 0.0, 0.5, -1.0, -0.25, -0.75, 0.75, -1.0, ]);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    render_bundle_encoder402.insertDebugMarker("marker");
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    
    
    
    
    
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    query600.destroy()
    
    
    render_bundle_encoder700.insertDebugMarker("marker");
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device80.destroy();
    
    
    
    
    
    
    
    query201.destroy()
    texture100.destroy();
    
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    
    
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    
    device80.queue.writeBuffer(buffer801, 0, array6, 0, array6.length);
    query000.destroy()
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    device90.destroy();
    
    
    
    
    
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array15 = new Float32Array([-0.5, -0.25, -1.0, 1.0, -1.0, 0.0, -0.5, -0.5, -0.25, -0.75, -0.25, 0.75, 1.0, -0.75, 1.0, -0.5, 0.75, -1.0, -0.5, -0.5, -0.25, -1.0, -0.25, 0.25, 0.0, 1.0, -0.25, -0.75, 0.75, -1.0, 0.25, -0.5, 1.0, 0.75, 0.0, -0.75, 0.25, -0.25, 0.75, -0.5, 0.0, 0.5, 0.25, 0.5, -0.75, -0.25, -1.0, -0.5, 0.75, 0.75, -0.75, -0.5, 0.25, 0.5, -0.5, -0.75, -1.0, 0.0, -1.0, 0.75, -1.0, -0.5, -0.5, 0.25, -0.25, 0.25, -0.25, -0.5, 0.75, 0.75, 0.5, -0.5, -0.75, 0.0, 0.75, -0.5, -0.75, -0.25, 0.0, -1.0, -0.75, 0.75, 1.0, -1.0, -0.5, -0.25, -0.25, 0.75, -1.0, -0.5, -1.0, 1.0, -0.75, 0.5, 0.5, 0.25, 1.0, 0.5, 1.0, -0.25, ]);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device10.destroy();
    
    
    
    
    
    
    
    
    
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device00.destroy();
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const array16 = new Float32Array([-0.5, 0.25, -0.5, -0.5, 0.75, -0.5, -0.25, -0.25, 0.0, -0.75, -0.75, 0.0, -0.25, -0.25, 1.0, 0.75, -1.0, -1.0, -1.0, -0.75, -0.75, 0.5, 0.5, -0.5, -0.5, -0.5, 0.75, 0.0, -0.75, -1.0, -0.75, -0.5, -1.0, -0.25, -0.5, -0.5, -0.5, -0.25, 0.5, -1.0, -0.5, -0.25, -1.0, 0.0, 0.75, 1.0, -0.25, 1.0, -1.0, -0.25, -0.5, -0.75, 0.0, 0.25, 1.0, 0.75, -0.5, 0.75, 0.25, 0.0, 1.0, -1.0, -0.25, -1.0, -0.5, 0.75, 0.5, 0.0, -0.25, 0.25, 0.0, 0.75, 0.5, -0.75, -0.5, 0.75, -0.25, 0.25, -0.25, 0.75, -0.75, 0.25, 0.25, 0.75, 0.75, 0.75, -0.5, 0.0, -0.5, -0.25, 1.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.0, 0.75, 0.5, -0.25, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query601.destroy()
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    device60.destroy();
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
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
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    render_bundle_encoder000.popDebugGroup();
    
    const array17 = new Float32Array([0.5, -0.75, 0.25, 1.0, 0.5, -0.25, -0.25, 0.25, -0.25, 0.5, 0.5, 0.0, 1.0, 0.25, 0.75, 1.0, 0.75, 0.0, -0.5, 1.0, 0.25, -0.5, -1.0, 0.5, 0.75, -0.5, -0.25, -0.75, 0.75, 1.0, -1.0, 1.0, 1.0, -1.0, -0.75, 0.0, -0.75, 0.0, -0.5, -0.5, -0.75, -1.0, 0.5, -0.25, 0.5, 0.0, -0.5, 0.25, -0.25, 0.5, 0.5, 0.75, 0.0, 0.25, 1.0, 0.75, 0.75, -0.5, 0.75, -0.25, -1.0, 0.5, 0.75, -1.0, -0.25, 0.75, 0.75, -0.75, -0.75, 0.75, -1.0, 0.75, 1.0, 0.5, -0.25, -0.25, 0.0, 0.75, 0.5, -0.25, -1.0, 0.0, 0.25, -0.5, 0.5, -0.25, -1.0, -0.25, -0.75, 0.75, -0.75, -1.0, -0.25, 0.5, -0.25, -1.0, 0.5, 0.0, -0.5, 0.75, ]);
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
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device120.destroy();
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array18 = new Float32Array([-0.75, 0.5, 0.5, 0.75, 0.75, 0.75, -0.5, 1.0, 0.25, 0.25, -0.75, 0.25, 0.75, 0.25, 0.0, -0.5, 0.75, 0.25, -0.25, 1.0, -1.0, -0.25, 0.25, 0.0, 0.75, 0.25, -1.0, -0.25, 0.25, -0.75, -0.5, 0.5, 0.5, -0.25, -1.0, -1.0, 0.0, -0.75, 0.5, -0.25, -0.75, -0.5, -0.5, -1.0, 1.0, -0.75, 0.25, 0.75, 0.5, -1.0, 0.75, 0.25, 0.75, -0.25, 0.0, 0.25, 0.0, -0.25, 0.75, -0.25, -0.25, -0.5, 0.5, -0.75, -1.0, 0.0, 0.0, 0.75, 1.0, -0.5, -0.75, -0.5, -0.75, -0.25, -0.25, -0.75, 0.75, 0.75, 0.0, -0.25, 1.0, -0.5, -0.5, -0.75, -0.25, -0.25, -0.75, 0.25, -1.0, 1.0, -0.25, 0.0, 1.0, 0.75, 0.25, -0.75, 0.0, -0.25, -0.25, -0.75, ]);
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    device70.destroy();
    render_bundle_encoder1000.insertDebugMarker("marker");
    const array19 = new Float32Array([-1.0, -0.25, 0.5, -1.0, -0.5, 0.75, 1.0, -0.5, 0.5, -0.5, 0.25, -0.5, -0.5, -1.0, -1.0, 0.75, -0.75, -0.25, 0.25, 1.0, 0.5, -0.75, -1.0, 0.5, 1.0, -1.0, 1.0, 0.75, 0.75, 0.25, 0.0, 0.5, -1.0, 0.5, 0.5, 0.0, 0.25, 0.75, -0.75, -1.0, 0.5, 0.5, 0.0, 0.5, 0.75, 0.5, -0.25, 0.25, 0.75, 0.0, 0.25, 0.25, -0.75, 0.5, 0.0, 0.25, 0.25, 0.25, -0.5, -0.5, -1.0, -1.0, -0.75, 0.5, 0.75, 0.0, 0.0, 1.0, -0.5, -0.75, 1.0, -0.75, 0.25, 0.75, 0.25, 0.25, 0.5, 0.25, -1.0, 0.0, 0.0, -1.0, 0.0, 0.0, 0.0, 0.75, 0.25, 0.25, 0.5, -0.25, 0.25, 0.25, -0.75, 0.25, 1.0, 0.5, -1.0, -1.0, 1.0, 0.25, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    
    device40.destroy();
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    render_bundle_encoder1000.popDebugGroup();
    
    render_bundle_encoder001.insertDebugMarker("marker");
    device100.queue.writeBuffer(buffer1000, 0, array10, 0, array10.length);
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    device100.queue.writeBuffer(buffer1000, 0, array11, 0, array11.length);
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device100.queue.writeBuffer(buffer1000, 0, array15, 0, array15.length);
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    const array20 = new Float32Array([0.25, -0.25, 1.0, -0.75, 0.0, 1.0, -1.0, 0.0, -1.0, 0.25, 1.0, 0.5, -0.5, 0.5, 0.5, 0.25, 0.75, -0.5, -0.25, 0.5, 0.75, 1.0, -1.0, 0.25, 0.75, 0.25, -0.5, 1.0, 0.75, -0.25, 0.25, -0.75, 1.0, -1.0, 0.75, -0.75, 1.0, 0.0, 0.5, 0.75, 1.0, -1.0, 0.25, -0.5, -0.5, 0.75, 0.0, -1.0, -0.75, 0.25, -1.0, -0.75, 0.5, -0.25, -0.75, 0.5, -0.25, -0.25, -0.75, -1.0, 1.0, -0.5, 0.25, 0.25, 0.75, 0.5, -0.75, 0.0, -1.0, 0.75, -0.25, 0.25, -0.25, -0.25, -0.25, 1.0, -0.75, -0.5, -0.5, -0.75, 0.75, -0.25, -1.0, 0.75, 0.25, 0.75, 0.5, -0.5, 0.75, -0.25, -0.5, -0.25, 1.0, -0.25, 1.0, 0.0, 0.25, -0.75, 0.25, -0.75, ]);
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    device100.queue.writeBuffer(buffer1000, 0, array8, 0, array8.length);
    
    device100.queue.writeBuffer(buffer1000, 0, array12, 0, array12.length);
    
    
    device100.destroy();
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    const render_bundle_encoder1600 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1600",
        colorFormats: ["bgra8unorm"]
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const render_pipeline4010 = device40.createRenderPipeline({
        label: "render_pipeline4010",
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
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    
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
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    
    render_bundle_encoder1600.insertDebugMarker("marker");
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const sampler1600 = device160.createSampler( { label: "sampler1600" } );
    const render_pipeline1103 = device110.createRenderPipeline({
        label: "render_pipeline1103",
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
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    const render_pipeline1600 = device160.createRenderPipeline({
        label: "render_pipeline1600",
        vertex: {
            module: shader_module1600,
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
            module: shader_module1600,
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
    
    
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
}