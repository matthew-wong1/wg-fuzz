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
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const array0 = new Float32Array([0.5, 0.5, -0.25, 0.5, 1.0, -0.75, 0.0, -0.75, -0.5, -0.5, 0.5, -1.0, -0.75, -0.75, -0.5, 0.5, -0.75, -0.25, -0.25, 0.0, -0.25, -1.0, -0.75, 0.0, -0.5, -0.5, 1.0, -0.5, -1.0, -0.75, 0.0, 0.25, -0.5, -0.75, -0.5, -0.75, 0.75, -0.5, 1.0, 1.0, 0.5, 1.0, 0.5, 1.0, -0.75, 0.75, 0.25, -0.75, 0.25, 1.0, 0.0, -0.25, -0.75, 1.0, 1.0, -0.5, -1.0, 0.25, 0.0, 0.5, -0.25, -0.75, 0.25, 0.25, 0.25, -0.5, -0.75, 0.25, 0.25, -1.0, -0.5, 0.25, 0.25, 0.5, -0.5, 0.25, 1.0, -1.0, 1.0, 0.25, -0.75, -1.0, 0.5, 0.5, 1.0, 0.75, 0.25, 0.75, -0.5, 0.25, -1.0, -0.75, 1.0, 0.0, -0.25, 0.75, -0.75, -1.0, 0.5, -0.25, ]);
    
    
    
    
    
    const array1 = new Float32Array([0.0, 1.0, 0.75, -0.75, -0.25, -0.25, 1.0, 0.0, 0.25, -1.0, 0.5, -0.75, 0.5, -0.25, -1.0, -1.0, -1.0, 0.5, -0.75, 0.75, 0.25, 0.75, 0.75, 0.25, 0.0, 0.0, 0.25, -0.75, 1.0, -0.5, 0.0, -1.0, 0.0, -1.0, 0.0, -0.25, -0.25, -1.0, -0.75, 0.75, 0.5, -0.75, 0.0, 0.25, 0.0, 0.5, 0.75, 0.0, -0.5, -0.75, 0.25, -1.0, -0.5, 1.0, 0.5, -0.5, 0.25, -1.0, -0.25, 1.0, 0.75, -0.25, 0.75, 0.25, 0.0, 0.0, -0.75, 0.0, 0.75, 0.75, -0.5, 0.0, -0.5, 0.0, -0.5, 0.5, 1.0, 1.0, 1.0, -1.0, 1.0, -1.0, 0.75, 0.25, 1.0, -0.75, -0.5, 0.0, 0.0, -0.5, 0.75, -0.5, 0.25, 0.5, 1.0, -0.25, -0.5, -0.25, 0.0, 0.0, ]);
    const array2 = new Float32Array([1.0, 0.25, -0.75, -0.75, -0.75, -0.5, 0.75, 0.0, 0.0, -0.25, -0.25, -0.5, 0.5, 0.5, 1.0, -1.0, -0.25, -1.0, 0.5, 1.0, -0.75, -0.5, 0.25, 0.5, -0.25, 0.0, -1.0, 0.75, -0.75, -0.25, -0.5, 0.25, -1.0, -0.5, -0.5, 1.0, 0.5, 0.0, 0.5, 0.5, -0.25, 0.25, 0.0, 0.25, -0.25, 0.5, -1.0, 1.0, 0.0, 0.75, -0.5, 0.0, 0.25, -0.5, -1.0, -0.25, 1.0, -0.75, 0.0, -0.5, 0.25, 0.0, 0.5, -1.0, 0.75, 0.0, -0.25, -0.25, -0.5, -0.5, 0.0, 0.0, -1.0, -1.0, 0.75, 1.0, 0.25, 0.75, -0.25, 0.0, 0.0, 0.25, -0.75, 0.0, -0.25, 1.0, -0.5, -1.0, 0.25, -0.5, -0.75, 0.0, 0.5, -0.75, 0.5, 0.75, 1.0, -1.0, 0.25, -0.25, ]);
    const array3 = new Float32Array([0.0, 0.5, 0.0, 0.25, 0.5, 0.75, 0.0, 0.75, -0.25, -0.75, 1.0, 1.0, -1.0, 0.75, 0.75, 0.75, -0.25, -1.0, -0.5, -0.25, -0.5, -0.25, 0.75, 0.5, -0.75, 0.5, -1.0, -1.0, 0.25, 0.75, 1.0, 0.75, 0.0, 0.75, 1.0, 0.0, -0.25, -0.5, -0.25, 0.5, 0.25, -0.25, 0.0, 1.0, 0.25, -0.25, 1.0, -0.25, 0.5, 0.0, 0.0, 0.25, -0.5, 0.0, -1.0, -0.5, 0.25, 0.0, 0.0, 0.5, -0.25, 0.25, 0.75, 0.25, -0.5, 0.5, 0.0, -1.0, -1.0, 0.5, 1.0, -1.0, 0.0, 1.0, 0.0, 0.5, 0.25, 0.25, -0.5, -0.5, -0.75, 0.25, 0.5, -1.0, -0.25, 0.25, -1.0, -0.25, 1.0, -0.75, 0.25, 0.75, 1.0, 0.5, -0.25, -1.0, 0.0, 0.0, 0.25, -0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
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
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("validation");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.destroy();
    const array4 = new Float32Array([-0.75, 0.5, 0.75, -0.75, 0.0, -1.0, 0.0, 1.0, 0.25, 0.5, -0.5, 0.0, -1.0, -1.0, 0.5, -0.5, -1.0, -0.5, 1.0, -0.25, 0.5, 0.5, -0.75, 0.75, -0.75, 1.0, 0.75, 0.5, 0.0, -1.0, 1.0, -0.5, -0.25, 0.0, 0.0, 0.25, -0.25, 1.0, 0.5, 0.75, -0.5, -0.75, 0.75, -1.0, 0.0, 0.5, -0.25, 0.25, 0.75, 0.5, 0.75, 0.75, -0.5, -0.5, 1.0, -0.75, 0.5, -0.75, 0.5, -1.0, 0.0, -1.0, -0.5, -1.0, 0.5, 0.25, 0.25, 0.25, -0.5, -0.75, -0.25, -0.25, 0.5, -0.5, 0.75, -0.25, 0.0, 0.5, -0.5, 0.0, -0.5, 0.75, 0.75, 0.5, -0.75, 1.0, -0.75, 0.0, 0.25, 1.0, 0.75, 0.0, -1.0, -1.0, -0.75, 0.75, -0.25, -0.75, 0.0, 0.0, ]);
    texture000.destroy();
    query000.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("internal");
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    query000.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    texture002.destroy();
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    
    
    
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("out-of-memory");
    device10.pushErrorScope("out-of-memory");
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device50.destroy();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device00.pushErrorScope("validation");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const array5 = new Float32Array([1.0, -0.25, -0.75, -0.75, -0.25, -0.75, -0.25, 0.5, 0.25, 1.0, -1.0, 0.0, 0.0, 1.0, 0.25, 0.0, 1.0, 1.0, -0.25, 0.0, -0.25, 0.25, 0.75, 0.25, -0.5, 0.75, -1.0, 0.75, -1.0, -0.5, 1.0, -0.75, -0.75, 0.0, 0.5, 1.0, -0.75, 1.0, -0.5, -0.75, -1.0, 0.75, -1.0, -0.5, 0.0, 0.75, -0.75, 0.0, 0.5, -1.0, 0.25, 1.0, -0.25, -1.0, 0.25, 0.5, -0.5, 0.0, 0.0, -0.25, -0.75, -0.25, 0.25, 0.75, -1.0, 0.5, 0.0, 1.0, 1.0, -0.5, 0.0, 0.5, -0.75, 0.25, -0.75, -0.25, 0.75, 0.0, 0.25, 0.0, 1.0, -0.25, -0.25, 0.5, 0.5, 1.0, -0.75, 0.5, 0.75, -0.5, 0.5, 0.0, 0.0, -0.5, -0.5, 0.25, 0.25, -1.0, -0.75, 0.75, ]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    
    
    
    
    buffer400.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer400.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer401.destroy()
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    buffer301.destroy()
    device40.destroy();
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    texture001.destroy();
    
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    
    texture001.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture300.destroy();
    
    texture003.destroy();
    
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_bundle_encoder001.setPipeline(render_pipeline001);
    render_bundle_encoder002.setPipeline(render_pipeline001);
    render_bundle_encoder003.setPipeline(render_pipeline002);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    buffer300.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    
    
    
    
    query200.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.destroy();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const array6 = new Float32Array([0.5, 0.25, -0.75, 0.75, 0.75, -1.0, 0.75, 1.0, -0.25, 1.0, -0.25, 0.25, 0.75, 0.25, 0.75, 1.0, 0.25, 0.0, 0.5, -0.75, 0.0, 0.75, -0.75, -0.75, 0.25, 0.75, 0.75, 1.0, -1.0, 0.5, 0.75, 0.0, 0.0, 0.0, 0.5, -0.75, 0.25, -0.75, 0.0, 0.75, -1.0, 1.0, 0.0, -0.75, 0.5, 1.0, 1.0, 0.75, 0.75, 0.25, 1.0, -0.75, 0.0, -1.0, -0.75, -0.5, -0.5, -1.0, -1.0, -0.25, -0.75, 0.5, -0.75, -0.75, -0.25, 0.5, -0.75, 0.0, 0.75, 0.25, 0.25, 0.25, 0.75, -0.75, 0.0, 0.0, 1.0, 0.0, 0.5, 0.0, -1.0, 0.25, -0.25, -0.5, -0.25, -1.0, 0.75, -0.5, -0.25, 1.0, 1.0, 1.0, 0.25, -0.5, 0.5, 1.0, -0.5, 0.0, 0.5, 0.25, ]);
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
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device50.destroy();
    
    
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    texture007.destroy();
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    
    device60.destroy();
    
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    
    
    query100.destroy()
    const array7 = new Float32Array([0.75, -0.75, 0.0, -1.0, -0.75, -1.0, -1.0, 0.75, 1.0, 1.0, 0.25, -0.25, 0.75, 0.25, 0.5, -0.5, 1.0, -0.75, 1.0, 0.0, 0.0, -1.0, 0.0, 0.0, -0.75, 1.0, -0.75, -1.0, -0.25, 0.75, -0.25, -0.25, -0.25, 0.0, 1.0, -1.0, 0.25, 0.25, -0.5, 0.75, -1.0, -0.25, 0.0, -0.75, 1.0, 0.25, -0.5, -0.5, 0.25, 0.25, -1.0, -0.5, 1.0, 0.75, -0.5, -0.25, -0.75, -0.5, 1.0, 1.0, 0.25, 0.0, 0.5, -0.75, 0.25, 0.25, 1.0, -0.25, 0.75, -1.0, -0.25, -0.25, 1.0, 0.25, 0.75, -0.75, 1.0, 0.5, -0.25, -1.0, -0.25, -0.5, -0.75, -0.25, 0.0, -0.75, -0.5, 0.5, -0.25, -1.0, 0.75, -0.5, 0.25, 0.75, 1.0, -0.75, 0.0, 0.75, 0.75, 0.5, ]);
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer000.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    
    const array8 = new Float32Array([1.0, 0.5, 0.5, 0.75, 0.75, 0.75, -1.0, 0.5, 0.0, 0.75, 0.75, -0.5, -0.75, 0.5, 0.0, -1.0, -0.75, 0.0, 0.75, -1.0, 0.75, -0.5, 0.25, 0.5, -0.25, 0.5, 0.75, -0.25, -1.0, 0.25, 0.5, -0.25, -1.0, 1.0, 1.0, 0.0, -1.0, 0.0, 0.5, 0.5, -0.75, 0.5, -1.0, 1.0, -0.25, 0.0, 0.5, 0.75, 0.75, 0.75, 0.25, 0.75, -0.5, 0.0, -0.5, -0.75, 0.5, -1.0, 0.25, -0.25, -0.5, 0.0, -0.75, 0.25, 0.0, -0.25, 0.75, -0.5, -0.75, 1.0, -0.75, 1.0, 0.5, 0.0, 1.0, 0.25, 0.75, -0.5, 0.5, -0.75, 0.0, -0.5, -0.5, -0.5, 0.25, 0.25, 0.5, 1.0, 0.0, 1.0, -0.25, -0.25, -0.75, 0.25, -0.5, 0.5, 1.0, 0.75, -0.75, 0.5, ]);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    render_bundle_encoder003.setBindGroup(0, bind_group000);
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    
    
    
    
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    
    device80.pushErrorScope("out-of-memory");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    device70.destroy();
    
    const array9 = new Float32Array([-1.0, 1.0, -0.5, 0.25, -1.0, -1.0, -1.0, -0.25, 0.75, 0.25, 0.5, 0.0, 1.0, 0.5, 1.0, 0.75, 0.5, 1.0, 0.25, 1.0, -1.0, -1.0, -0.5, 0.75, -1.0, 0.0, -0.75, -0.75, 0.0, 0.0, 1.0, 0.75, -0.25, -1.0, 0.75, 0.5, 0.0, 0.0, 1.0, 1.0, 0.25, 0.0, 0.75, -0.5, -1.0, -0.25, -0.75, 0.25, -1.0, -1.0, 0.25, 1.0, 0.5, 0.5, 0.75, 0.75, -0.75, 1.0, 0.5, -0.5, 0.25, 0.5, -1.0, 0.25, -0.5, -0.5, -0.5, 0.25, -1.0, 0.0, -1.0, 0.75, 1.0, -1.0, 0.5, 1.0, -0.5, 0.25, 0.0, 1.0, -0.5, -0.5, 0.0, 1.0, -0.5, -0.5, 0.5, 0.75, -0.75, 0.0, 0.0, 0.25, -0.25, 1.0, 0.25, -0.5, 0.0, 1.0, -0.75, 1.0, ]);
    
    
    
    
    
    
    const array10 = new Float32Array([-0.75, 0.5, -0.5, -0.75, 1.0, 0.5, -0.25, -0.75, 0.5, 0.25, -0.75, 1.0, -0.75, -0.75, 0.25, -0.25, -1.0, 0.75, 0.5, 1.0, 0.0, 0.0, 0.25, -0.5, 0.5, 1.0, -0.75, -0.75, -0.25, 0.75, 0.0, -0.75, 0.25, 0.25, 0.5, -0.25, -0.25, 0.5, -0.75, 0.0, 1.0, -1.0, -0.75, -1.0, 0.5, -0.25, -0.25, 0.5, 0.25, -1.0, 0.75, -0.75, -1.0, -0.75, 0.25, -0.75, 1.0, 1.0, 0.0, 1.0, 1.0, -1.0, -0.75, 0.25, 0.75, 0.25, 0.75, 1.0, 1.0, 0.75, -0.25, -0.5, 0.0, 1.0, -0.75, 1.0, 0.5, 0.75, 0.75, 0.5, 0.5, 0.75, 1.0, -0.5, -0.25, -0.25, 1.0, 0.0, -1.0, -0.25, 0.5, -0.5, -0.75, -0.5, -0.25, 0.5, -0.5, -0.75, -0.25, 0.5, ]);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    
    
    
    device80.queue.writeBuffer(buffer800, 0, array8, 0, array8.length);
    query001.destroy()
    device80.queue.writeBuffer(buffer800, 0, array10, 0, array10.length);
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
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
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    device30.pushErrorScope("internal");
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    
    device60.queue.submit([]);
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    const array11 = new Float32Array([-0.75, -1.0, -1.0, 0.25, -0.5, 0.25, 1.0, -0.25, -0.75, -1.0, 0.75, -0.75, -0.75, 0.25, 0.25, -0.25, -1.0, 0.5, 0.0, 0.75, 0.0, 1.0, -0.5, -0.5, -0.25, 0.75, 0.75, -0.25, 0.75, 0.75, 0.75, -0.75, 0.0, 1.0, -0.25, 0.25, 0.5, -0.5, 0.75, 0.75, -0.5, 0.75, 0.25, -1.0, -0.75, 0.25, 1.0, 1.0, 0.5, -1.0, 0.25, -1.0, -0.25, -0.75, -0.25, -1.0, -0.75, -0.75, 0.25, 0.75, -0.5, -0.25, -1.0, 1.0, -0.5, 0.0, 0.5, 0.0, -0.75, -0.25, 0.0, -1.0, -0.5, 1.0, 1.0, 1.0, -0.5, -0.75, -1.0, 1.0, -0.5, -0.75, 0.5, 0.5, 1.0, -0.25, 0.5, -0.5, 1.0, -1.0, -1.0, -0.75, -1.0, 0.25, 0.75, 0.75, 0.5, 1.0, 1.0, -0.5, ]);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device80.queue.writeBuffer(buffer800, 0, array7, 0, array7.length);
    query800.destroy()
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder801.setPipeline(render_pipeline800);
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
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    query800.destroy()
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
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
    
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeBuffer(buffer800, 0, array11, 0, array11.length);
    
    
    
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
    
    render_bundle_encoder800.setPipeline(render_pipeline801);
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    buffer800.destroy()
    
    device40.queue.writeBuffer(buffer402, 0, array11, 0, array11.length);
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module804.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    
    
    render_bundle_encoder000.setPipeline(render_pipeline002);
    
    
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    device80.queue.writeBuffer(buffer800, 0, array9, 0, array9.length);
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    render_bundle_encoder802.setPipeline(render_pipeline801);
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    query803.destroy()
    
    const query804 = device80.createQuerySet({
        label: "query804",
        type: "occlusion",
        count: 32,
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device50.destroy();
    buffer801.destroy()
    const query805 = device80.createQuerySet({
        label: "query805",
        type: "occlusion",
        count: 32,
    });
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: render_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer802,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer803,
                },
            },
        ],
    });

    render_bundle_encoder800.setBindGroup(0, bind_group800);
    
    buffer802.destroy()
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
    
    
    device80.queue.writeBuffer(buffer803, 0, array3, 0, array3.length);
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    const array12 = new Float32Array([0.5, -0.5, 0.5, -0.75, 1.0, -0.75, -0.25, -1.0, -1.0, -1.0, 0.0, 0.5, 0.5, 0.75, 1.0, -0.75, -0.75, -0.5, -0.5, -0.75, -0.25, 0.0, 1.0, 0.25, -0.25, 0.5, 0.5, -1.0, -0.25, -0.5, -0.75, -1.0, -1.0, 0.75, 1.0, -0.25, 1.0, -1.0, 0.5, 1.0, -0.5, 1.0, -0.25, -0.25, -0.25, -0.75, -0.25, 0.5, 1.0, 1.0, 0.75, 1.0, -0.75, 0.0, -0.75, -1.0, 0.25, 1.0, 0.0, -0.75, -0.25, -0.75, 0.0, 0.75, -0.75, 0.75, 0.25, -0.75, 0.25, 0.5, -0.25, -1.0, -1.0, 0.75, 0.25, 0.5, -0.5, -1.0, -0.5, -0.75, -0.5, 0.75, 0.0, 0.5, -1.0, -0.75, 0.75, -0.75, 0.25, 0.0, 0.25, 1.0, -0.25, -0.5, -0.25, -0.75, 0.0, 0.0, -0.5, 0.25, ]);
    
    const buffer804 = device80.createBuffer({
        label: "buffer804",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query805.destroy()
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeBuffer(buffer803, 0, array3, 0, array3.length);
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module806_code = "";
    try {
        shader_module806_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module806 = await device80.createShaderModule({ label: "shader_module806", code: shader_module806_code })
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    device80.queue.writeBuffer(buffer802, 0, array4, 0, array4.length);
    
    var shader_module807_code = "";
    try {
        shader_module807_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module807.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module807 = await device80.createShaderModule({ label: "shader_module807", code: shader_module807_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const buffer805 = device80.createBuffer({
        label: "buffer805",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer806 = device80.createBuffer({
        label: "buffer806",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group801 = device80.createBindGroup({
        label: "bind_group801",
        layout: render_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer805,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer806,
                },
            },
        ],
    });

    render_bundle_encoder801.setBindGroup(0, bind_group801);
    render_bundle_encoder801.popDebugGroup();
    
    buffer800.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    query001.destroy()
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeBuffer(buffer804, 0, array7, 0, array7.length);
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    const buffer807 = device80.createBuffer({
        label: "buffer807",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query806 = device80.createQuerySet({
        label: "query806",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline802 = device80.createRenderPipeline({
        label: "render_pipeline802",
        vertex: {
            module: shader_module805,
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
            module: shader_module805,
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
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer808 = device80.createBuffer({
        label: "buffer808",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer809 = device80.createBuffer({
        label: "buffer809",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group802 = device80.createBindGroup({
        label: "bind_group802",
        layout: render_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer808,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer809,
                },
            },
        ],
    });

    render_bundle_encoder802.setBindGroup(0, bind_group802);
    const texture1003 = device100.createTexture({
        label: "texture1003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    
    
    device80.queue.writeBuffer(buffer804, 0, array3, 0, array3.length);
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device80.queue.writeBuffer(buffer800, 0, array5, 0, array5.length);
    
    const buffer8010 = device80.createBuffer({
        label: "buffer8010",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder1000.popDebugGroup();
    query804.destroy()
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    texture502.destroy();
    buffer808.destroy()
    
    texture1000.destroy();
    const buffer8011 = device80.createBuffer({
        label: "buffer8011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    query401.destroy()
    texture1001.destroy();
    
    device80.queue.writeBuffer(buffer802, 0, array0, 0, array0.length);
    device80.queue.writeBuffer(buffer807, 0, array12, 0, array12.length);
    device80.queue.writeBuffer(buffer807, 0, array5, 0, array5.length);
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    device80.queue.writeBuffer(buffer8011, 0, array7, 0, array7.length);
    
    
    device80.queue.writeBuffer(buffer805, 0, array2, 0, array2.length);
    device100.destroy();
    device80.queue.writeBuffer(buffer807, 0, array3, 0, array3.length);
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    
    buffer8011.destroy()
    query805.destroy()
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const query807 = device80.createQuerySet({
        label: "query807",
        type: "occlusion",
        count: 32,
    });
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
    query807.destroy()
    device80.queue.writeBuffer(buffer8010, 0, array11, 0, array11.length);
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
    
    query805.destroy()
    buffer803.destroy()
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    
    
    device80.queue.writeBuffer(buffer807, 0, array10, 0, array10.length);
    render_bundle_encoder800.setVertexBuffer(0, buffer804);
    
    
    render_bundle_encoder800.draw(3);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.writeBuffer(buffer805, 0, array5, 0, array5.length);
    
    
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    
    
    buffer804.destroy()
    query100.destroy()
    query806.destroy()
    buffer8010.destroy()
    
    
    device80.queue.writeBuffer(buffer807, 0, array5, 0, array5.length);
    
    
    
    const query1002 = device100.createQuerySet({
        label: "query1002",
        type: "occlusion",
        count: 32,
    });
    buffer8010.destroy()
    const buffer8012 = device80.createBuffer({
        label: "buffer8012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    device80.queue.writeBuffer(buffer807, 0, array1, 0, array1.length);
    query806.destroy()
    texture100.destroy();
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device90.destroy();
    device80.queue.writeBuffer(buffer807, 0, array6, 0, array6.length);
    const render_pipeline805 = device80.createRenderPipeline({
        label: "render_pipeline805",
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
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    
    device80.queue.writeBuffer(buffer807, 0, array9, 0, array9.length);
    
    
    buffer805.destroy()
}