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
    const array0 = new Float32Array([0.25, 0.5, 0.5, 0.5, 1.0, 0.25, -0.25, 0.5, -0.75, -0.75, -1.0, 0.25, 0.75, -1.0, 0.5, 1.0, 0.0, -0.75, 1.0, 0.5, -0.25, 0.25, 1.0, 0.0, 0.5, -0.25, -0.25, 1.0, -0.25, 0.0, 0.0, -0.25, 0.5, 0.0, 0.25, 0.25, 1.0, -1.0, 0.0, 0.5, 0.25, 0.75, -1.0, 0.25, 0.75, 1.0, 0.0, -0.75, 0.75, 0.5, 0.0, 1.0, -0.5, 0.0, -0.75, 0.0, 1.0, 0.25, -0.75, -0.25, -0.25, -0.5, -0.5, 0.0, 0.0, -0.25, -0.5, -0.25, 0.0, -0.75, 0.5, -1.0, 0.0, 1.0, 1.0, -0.25, 0.0, 0.5, -0.5, -1.0, 0.0, 0.0, 1.0, 0.5, 1.0, 0.75, -1.0, 0.0, 0.25, 0.0, 0.25, -0.75, -0.75, 1.0, -0.75, 0.75, 1.0, 1.0, 0.5, 0.0, ]);
    
    
    
    const array1 = new Float32Array([-0.75, -0.5, -0.25, 0.75, 0.5, -0.5, 0.0, -0.75, -0.75, -1.0, -1.0, -1.0, -0.5, -0.75, 1.0, 0.0, -1.0, -1.0, 0.5, -1.0, 0.5, 0.5, 0.75, 0.5, -0.75, 1.0, -0.5, 0.0, -0.25, 0.75, 0.75, 0.75, -0.25, 1.0, 1.0, -0.5, 0.0, -1.0, -0.75, -0.25, 0.0, 0.25, -0.25, 0.75, 0.75, 0.75, -1.0, 0.5, 0.25, -0.25, -0.25, -0.5, 0.25, 1.0, 0.25, -1.0, 0.0, -1.0, 0.5, 0.25, -0.75, -0.25, -0.25, 0.5, 1.0, 0.25, 0.5, 1.0, -0.5, -0.5, -0.75, -1.0, -1.0, -0.75, 0.0, 0.0, 0.0, -0.5, 0.5, -1.0, -0.25, 0.25, 1.0, 0.5, 0.0, 0.75, -0.5, 0.25, 0.75, -0.75, 0.0, 0.75, -0.25, 0.25, 0.5, -1.0, 0.75, 0.5, -0.25, 1.0, ]);
    const array2 = new Float32Array([0.25, -1.0, 0.0, -0.25, 0.25, 0.0, 0.0, 0.25, 0.75, 1.0, -0.25, 0.0, 0.5, 1.0, -1.0, 1.0, 0.5, -0.5, -0.25, -1.0, -0.25, 0.0, 1.0, 0.75, 0.25, -0.25, 1.0, -1.0, 1.0, -0.75, 0.75, -0.25, -0.5, 1.0, 0.0, -1.0, -1.0, 0.25, 0.75, 0.5, 0.75, 0.75, -1.0, 0.0, 0.0, 0.0, 1.0, 0.5, -0.5, 0.25, -0.75, -0.5, 0.25, 0.5, 0.75, -0.75, -0.75, -0.25, 0.75, 0.0, 0.25, -0.75, 0.0, -0.25, 1.0, 0.0, -0.25, 1.0, 1.0, -0.25, -0.75, 0.75, -0.75, 0.75, -0.25, 0.0, 0.5, 0.75, 0.0, 0.75, -1.0, -0.75, 0.0, 0.5, 1.0, 0.0, 1.0, -0.75, 1.0, 1.0, 0.5, -0.75, -0.5, 0.75, 0.5, 0.25, -0.25, 0.5, 0.25, -0.25, ]);
    
    const array3 = new Float32Array([-1.0, 0.25, 0.75, -0.25, 0.5, -0.25, 0.75, -0.5, -0.5, -0.25, 1.0, -0.25, 0.25, -0.5, -0.75, 0.5, 1.0, 0.25, -0.5, -1.0, -0.25, -0.25, -0.5, 0.5, 1.0, -0.5, 0.5, 0.5, -0.25, 0.25, 1.0, -0.75, 0.0, -1.0, -1.0, 0.0, 0.5, 0.5, -0.75, 1.0, -0.75, -0.25, 1.0, 1.0, 0.75, -0.5, -0.25, 0.75, 0.5, 0.5, -0.5, -0.25, -0.25, -1.0, -0.25, -1.0, -1.0, -0.75, -0.75, 0.25, -0.75, 0.25, -0.5, 0.25, -0.25, -0.25, -1.0, -0.75, 0.0, -0.25, 0.25, -0.25, 0.75, 0.0, -1.0, 0.0, 0.5, -0.5, -0.25, 0.0, -0.25, 0.25, 0.25, 1.0, 0.75, 0.0, 0.0, 0.75, -1.0, 0.0, 0.0, 0.25, -0.75, 0.0, -0.25, 1.0, 0.75, 1.0, 0.75, 0.0, ]);
    const array4 = new Float32Array([-0.25, 1.0, -0.5, -0.75, -1.0, -0.75, -0.25, 1.0, 0.75, -0.75, 0.25, 0.25, 1.0, 1.0, -1.0, 0.5, 1.0, -1.0, 0.75, -0.25, 0.5, 1.0, 0.25, 0.5, 0.0, -0.75, 1.0, -0.5, -0.75, -0.75, 0.5, 1.0, 0.5, 0.25, -0.75, 1.0, -0.25, -1.0, -1.0, -1.0, 0.0, -0.5, 0.5, -0.75, -0.75, -0.25, 0.75, 0.0, -0.25, 0.25, 1.0, 1.0, -0.75, 0.5, 1.0, 1.0, 0.0, -0.75, 0.75, -0.75, -1.0, 0.0, 1.0, -1.0, -0.25, -0.5, -0.5, -1.0, -0.25, 1.0, -0.75, -0.5, 0.25, -1.0, 1.0, 1.0, 1.0, -0.75, -0.5, 1.0, 0.75, 1.0, 0.0, -0.25, 0.5, -1.0, 1.0, 0.0, -0.75, 0.75, -0.5, 0.75, 0.0, 0.0, -0.5, -0.5, -0.5, 0.5, 1.0, -0.25, ]);
    
    const array5 = new Float32Array([0.5, 0.5, 1.0, -0.75, -0.75, 0.0, 0.5, 0.5, 0.25, 0.75, 0.5, -0.5, -0.5, 1.0, 0.75, 1.0, 0.0, 0.25, -0.25, 0.25, -0.5, 1.0, -0.5, -0.5, 0.5, -0.5, -0.75, 0.0, 0.75, -0.25, -0.25, -0.5, 0.25, -0.25, 1.0, -0.5, -0.25, -0.75, 0.5, -0.75, -1.0, 0.75, 0.0, -0.25, -0.25, -0.75, 1.0, -0.25, -1.0, 0.25, -0.25, -0.75, 0.0, -1.0, 0.25, -0.25, 0.25, -1.0, -0.5, -0.5, -0.5, 0.25, 0.5, 1.0, -0.5, 0.75, -0.25, 0.5, -0.25, 0.5, -0.5, -0.5, -0.75, 0.25, -1.0, -0.5, -0.75, -0.25, -0.75, -0.5, -1.0, -0.25, 0.0, 0.25, -1.0, 0.0, -0.5, -1.0, 0.0, -0.5, 0.5, -1.0, -1.0, 0.25, 0.25, -0.25, -1.0, 0.25, -1.0, -0.25, ]);
    const array6 = new Float32Array([0.0, 0.0, -0.5, 1.0, 0.75, 1.0, 1.0, 0.25, -0.5, -0.25, 0.75, 0.5, -0.25, 0.75, -0.5, 0.25, -0.25, -0.5, 0.5, 0.25, 0.5, 1.0, -1.0, -0.75, 1.0, -0.5, -1.0, 0.5, -0.25, -0.25, -0.5, -1.0, 0.25, 0.25, 0.25, -0.25, 1.0, 0.5, -0.5, 0.25, 0.75, 0.5, 0.0, 0.25, 0.75, 0.75, -0.25, 0.0, -0.25, -0.75, 1.0, 0.75, 0.75, 0.0, -0.25, 0.0, 0.75, 0.25, -0.5, -0.5, 0.0, -1.0, 0.25, 1.0, -0.75, 0.5, -0.25, 0.25, 0.25, -1.0, -0.5, -0.75, 0.5, -0.25, -1.0, 0.25, -0.25, 0.0, -1.0, -0.75, -0.5, 0.25, -0.5, 0.0, 0.5, 0.75, 1.0, 1.0, -0.5, -0.5, -0.25, -0.5, 0.25, -0.5, -0.75, -0.25, -0.75, 0.5, -1.0, 0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array7 = new Float32Array([-0.25, -0.25, 0.0, -0.25, -0.25, 1.0, -0.25, 1.0, -0.5, 0.0, -0.5, -0.75, -1.0, -0.75, 0.5, -1.0, 1.0, 0.0, 1.0, 0.75, -0.75, -0.75, -0.5, -0.5, 1.0, 1.0, 0.0, 0.25, 1.0, 0.75, -1.0, -0.25, 0.75, 0.25, 0.25, -0.5, -1.0, -0.5, 0.5, -0.25, -1.0, 0.25, 0.0, 0.5, 0.5, 1.0, 0.5, -0.75, -0.75, -0.75, 0.75, 0.0, 1.0, -1.0, -0.25, -1.0, -0.75, 1.0, 1.0, -1.0, -0.25, -0.75, 0.0, 0.25, -0.75, -0.75, 0.0, 0.0, 0.0, -0.75, 0.75, -1.0, 0.0, 1.0, 0.0, 0.5, 0.5, -0.5, -0.5, -0.75, 0.0, -0.75, -0.25, -0.25, 0.75, 0.25, -0.25, 1.0, -0.75, 1.0, -1.0, 0.0, 0.5, 0.5, 1.0, 1.0, -0.25, -1.0, 0.75, -1.0, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const array8 = new Float32Array([-0.25, -0.75, 0.25, -0.5, 0.5, -0.25, 0.0, 0.5, -0.5, 1.0, 0.75, -0.25, 1.0, -1.0, -0.25, 0.5, 1.0, 0.5, -0.25, 0.75, -0.75, -0.75, 0.75, 0.75, 0.25, -1.0, -0.75, -0.75, -0.75, 0.0, 0.0, 0.25, 0.75, -0.5, 0.25, 0.5, 0.75, -0.25, -0.5, 0.5, 0.75, 0.25, 0.0, 1.0, -0.25, 0.5, 0.75, -0.5, -0.25, 0.25, 0.75, 0.0, 0.5, -0.5, 0.5, 0.0, -0.5, 1.0, -1.0, 0.5, 1.0, -1.0, 1.0, 1.0, 0.5, 0.75, 0.75, 0.0, 0.75, -0.5, -0.75, -0.75, -0.75, 0.75, -0.5, -1.0, -0.75, 0.0, 0.75, 1.0, -0.75, 0.0, 1.0, 0.25, 0.75, 0.25, -0.75, 0.0, -0.5, -1.0, 0.0, -0.5, 0.0, 1.0, 0.25, 0.75, -0.25, 0.0, 0.25, 0.5, ]);
    
    const array9 = new Float32Array([0.5, -0.25, 0.5, 0.75, 1.0, -0.5, -0.25, -0.75, -0.75, 0.5, -0.75, 0.5, 0.5, -0.25, 0.0, -1.0, -0.5, -1.0, 0.0, -1.0, 0.75, 0.0, 0.25, -0.5, -0.75, 0.5, 0.5, -0.75, -0.75, -0.5, 0.75, 0.25, -1.0, -1.0, 1.0, 0.75, 1.0, -0.5, -0.5, 0.0, -0.25, -0.5, 0.25, 0.5, 0.0, 1.0, 0.75, 1.0, -0.75, 0.5, 0.75, -0.5, -0.5, -0.5, -0.25, 1.0, 0.5, 1.0, 0.25, -0.5, 0.25, 0.5, -0.25, -0.5, -1.0, 1.0, -0.5, 0.25, -0.5, 1.0, -0.5, 1.0, -0.25, -0.5, -1.0, 0.0, 0.0, -1.0, 0.5, -0.25, -0.75, 0.0, -1.0, 0.25, 0.25, 1.0, 0.0, 0.5, 0.75, -0.25, -1.0, -0.75, -0.75, 0.5, 0.25, 0.0, 1.0, -1.0, 0.25, -1.0, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.pushErrorScope("validation");
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array10 = new Float32Array([-0.5, 1.0, 0.5, 1.0, -0.75, 1.0, -1.0, 0.25, -0.25, 0.75, 0.0, -0.25, 0.0, 1.0, 0.0, 0.5, -1.0, -0.5, -0.75, 0.5, -0.5, 0.5, 0.75, -0.75, 0.75, -0.75, -1.0, -1.0, 0.75, 0.75, 0.25, -1.0, 0.75, -0.5, -0.5, 0.25, 0.5, 0.5, 0.25, -1.0, 0.25, -0.75, -1.0, -0.5, 0.5, 0.5, 0.0, -0.75, 0.5, -0.5, -0.5, 0.0, 0.5, 0.0, -0.5, 0.25, -0.25, 0.0, 0.0, -0.25, -0.5, -0.75, 0.0, -0.75, -0.75, -0.5, 1.0, 0.75, 0.0, -0.5, 0.25, 1.0, 0.0, -0.5, 0.25, -0.75, -0.75, 0.75, -1.0, 0.75, -0.5, 0.5, 0.0, 1.0, 0.0, -0.75, 1.0, -1.0, 0.5, -0.75, 1.0, 1.0, -0.5, -0.75, 0.75, 0.0, 0.25, -0.75, -1.0, 0.25, ]);
    device10.pushErrorScope("out-of-memory");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    query100.destroy()
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16float",
        dimension: "2d"
    });
    
    texture200.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.submit([]);
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.destroy();
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    query001.destroy()
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    buffer200.destroy()
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8unorm",
        dimension: "2d"
    });
    
    
    const array11 = new Float32Array([0.0, 0.0, -0.75, 1.0, 1.0, 0.25, 0.0, 0.25, 0.75, -0.5, 1.0, -1.0, 1.0, 0.5, 1.0, -0.25, -0.5, 0.25, 0.25, -0.5, -0.5, 1.0, 0.0, -1.0, 0.5, 0.75, -1.0, 0.75, -0.5, -0.5, -1.0, 0.75, -0.25, -0.25, 0.25, -1.0, -0.75, -0.75, -0.25, -0.5, 0.5, 0.5, -0.75, 1.0, -1.0, 1.0, 1.0, -0.5, -0.25, -0.25, 0.25, -0.5, 0.0, 0.75, 0.0, -0.25, -0.5, 0.25, 0.5, -1.0, 0.0, 0.75, 1.0, 0.5, 0.75, 1.0, -0.75, -1.0, 0.0, 0.5, -1.0, -0.5, -1.0, -1.0, 0.25, 1.0, 0.75, 0.75, 0.5, -0.25, 0.75, 0.5, -0.5, 0.5, 0.5, -0.25, -0.25, -0.5, 1.0, 0.0, -0.25, 0.25, -0.75, -1.0, 0.25, -0.5, -0.5, -0.5, -0.25, -0.25, ]);
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture300.destroy();
    const array12 = new Float32Array([1.0, 0.75, 0.75, 0.0, 0.25, -0.75, -0.75, 0.25, -0.25, 0.75, 1.0, -0.75, 0.25, 0.5, -1.0, 1.0, 0.25, -0.75, -0.5, -0.75, -1.0, 0.25, 1.0, 1.0, 0.0, -0.5, -0.25, 1.0, 0.0, 0.5, -0.75, -0.25, 0.5, -0.75, -0.5, 0.75, -0.25, 0.75, -0.75, 0.5, 1.0, -0.5, 0.5, 0.0, 0.0, 1.0, 0.75, 0.0, -0.25, 0.5, -0.25, -1.0, 0.75, -0.5, 0.0, -0.5, -0.25, 0.75, -0.75, 1.0, -0.75, 0.25, 0.0, 0.25, -1.0, -1.0, 0.75, 1.0, 0.5, 0.5, -1.0, 0.25, -0.5, -0.25, 0.0, 0.0, 0.0, 0.0, 1.0, 0.5, 0.75, -0.25, -0.75, 0.75, -1.0, 0.0, 0.25, -1.0, -0.25, 0.0, 0.25, 0.75, -0.25, -0.5, -0.5, 1.0, 0.25, 0.25, -0.5, -0.75, ]);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device30.queue.writeBuffer(buffer300, 0, array12, 0, array12.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    device30.pushErrorScope("validation");
    const command_buffer300 = command_encoder300.finish();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    buffer204.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const array13 = new Float32Array([0.5, 1.0, -0.25, 0.0, -1.0, -0.5, 0.0, 0.25, -1.0, 1.0, -1.0, -1.0, 0.75, 0.0, -0.5, 0.0, -0.5, -0.75, -0.5, -0.25, 0.25, -0.75, -1.0, -0.25, -1.0, 1.0, 0.5, -0.25, -0.25, -0.5, -0.25, -1.0, 0.0, -0.25, -0.75, 0.5, -0.25, -0.75, -0.25, -0.5, -0.25, -0.5, -0.5, -1.0, -1.0, -0.25, 0.25, -0.25, -0.75, -0.25, -0.5, 0.0, -0.25, 0.25, 1.0, -1.0, 1.0, 0.75, 0.25, 1.0, -0.25, 1.0, 0.5, 0.75, -0.25, -0.5, 0.0, -0.75, 0.5, 0.0, 0.75, 0.5, 1.0, 0.5, -1.0, 0.25, 0.5, 0.25, 0.0, -0.75, -1.0, 0.25, 0.25, 1.0, -0.5, -1.0, 0.0, -0.75, 1.0, 0.5, 0.25, -0.5, 0.25, 0.0, 0.75, 0.75, -1.0, 0.25, 0.5, -1.0, ]);
    
    texture100.destroy();
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    
    device20.queue.writeTexture({ texture: texture201 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32sint",
        dimension: "2d"
    });
    texture300.destroy();
    
    command_encoder301.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer201, 0, array11, 0, array11.length);
    device20.queue.writeBuffer(buffer202, 0, array9, 0, array9.length);
    
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const command_buffer400 = command_encoder400.finish();
    
    
    device40.queue.submit([command_buffer400, ]);
    
    texture302.destroy();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    
    device40.pushErrorScope("out-of-memory");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    texture301.destroy();
    command_encoder301.insertDebugMarker("mymarker");
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer201, 0, array11, 0, array11.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    texture301.destroy();
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder301.pushDebugGroup("mygroupmarker")
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    buffer202.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    query300.destroy()
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    texture303.destroy();
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    query202.destroy()
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    render_bundle_encoder202.setPipeline(render_pipeline202);
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query300.destroy()
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer201, 0, array13, 0, array13.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    device30.queue.submit([command_buffer300, ]);
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer201, 0, array12, 0, array12.length);
    device30.queue.writeBuffer(buffer300, 0, array13, 0, array13.length);
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder201.setPipeline(render_pipeline203);
    render_pass_encoder3010.executeBundles([render_bundle_encoder302, ])
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.queue.writeBuffer(buffer201, 0, array13, 0, array13.length);
    
    
    device30.queue.writeBuffer(buffer302, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    command_encoder301.pushDebugGroup("mygroupmarker")
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    device20.destroy();
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    query300.destroy()
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array11, 0, array11.length);
    query401.destroy()
    device30.queue.writeBuffer(buffer302, 0, array8, 0, array8.length);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    buffer201.destroy()
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    
    command_encoder501.pushDebugGroup("mygroupmarker")
    
    
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3011.setStencilReference(1);
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    device20.queue.writeTexture({ texture: texture201 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    command_encoder500.pushDebugGroup("mygroupmarker")
    render_bundle_encoder300.insertDebugMarker("marker");
    compute_pass_encoder3010.popDebugGroup()
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder302.setPipeline(render_pipeline300);
    device30.queue.writeBuffer(buffer300, 0, array11, 0, array11.length);
    command_encoder301.copyBufferToTexture(
        {
            buffer: buffer301
        },
        {
            texture: texture300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer303,
        0
    )
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    
    texture601.destroy();
    device60.queue.submit([]);
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group300);
    
    
    
    render_pass_encoder3010.setPipeline(render_pipeline300);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    render_pass_encoder3010.popDebugGroup();
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    device40.queue.writeTexture({ texture: texture400 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    buffer305.destroy()
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture600 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const array14 = new Float32Array([0.25, -0.5, -1.0, 0.0, 0.75, -0.5, 0.25, -0.5, -0.25, 0.5, 0.75, -0.5, 1.0, 0.75, 0.5, -0.5, -1.0, 1.0, -1.0, 0.5, -0.25, -0.5, 0.5, 1.0, -1.0, 0.0, 0.25, -0.5, 0.75, -0.75, -0.25, 0.0, -0.75, 0.75, -0.5, -0.75, -1.0, 0.25, 0.75, -0.25, 0.0, 1.0, -0.5, -0.5, 0.5, -0.75, -0.25, -1.0, -0.25, 0.5, 0.75, -0.25, 0.0, -0.25, 0.5, -0.5, 0.75, -0.25, -0.25, -0.5, -0.25, 0.25, -1.0, 0.5, -1.0, -1.0, 0.75, -0.25, -1.0, -0.5, 0.0, 0.75, 0.25, 0.25, 1.0, 1.0, 0.0, -0.75, -0.5, -1.0, -0.25, -1.0, 0.25, 1.0, 0.5, 0.0, -0.75, -1.0, -0.25, 1.0, 0.75, 0.25, -0.25, -1.0, -0.75, -0.5, 0.75, -0.25, -0.5, -0.5, ]);
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    const command_buffer302 = command_encoder302.finish();
    device30.queue.writeTexture({ texture: texture304 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.pushErrorScope("validation");
    device30.queue.writeTexture({ texture: texture302 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer303, 0, array4, 0, array4.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    compute_pass_encoder5000.popDebugGroup()
    
    query600.destroy()
    
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    command_encoder501.popDebugGroup()
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    texture300.destroy();
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    
    const command_buffer501 = command_encoder501.finish();
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    render_pass_encoder3011.insertDebugMarker("marker");
    device40.pushErrorScope("validation");
    
    render_pass_encoder3011.executeBundles([render_bundle_encoder301, render_bundle_encoder302, ])
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    device30.queue.writeBuffer(buffer302, 0, array14, 0, array14.length);
    query400.destroy()
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer300, 0, array13, 0, array13.length);
    
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    
    
    device30.queue.writeBuffer(buffer301, 0, array10, 0, array10.length);
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    device30.queue.writeBuffer(buffer302, 0, array9, 0, array9.length);
    render_bundle_encoder302.insertDebugMarker("marker");
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    texture401.destroy();
    device40.queue.writeBuffer(buffer400, 0, array12, 0, array12.length);
    texture400.destroy();
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    render_pass_encoder3011.popDebugGroup();
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
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
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer302, 0, array14, 0, array14.length);
    render_bundle_encoder401.setPipeline(render_pipeline400);
    
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group302);
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array15 = new Float32Array([0.0, 0.0, 0.0, -0.5, 0.75, -0.75, 0.0, 0.25, 0.0, -1.0, 0.25, 0.5, -1.0, -0.5, 1.0, -0.25, 1.0, -0.75, 0.75, -0.25, 0.5, 1.0, 0.25, -1.0, 0.0, -0.25, -0.75, 0.0, 1.0, 1.0, 0.5, -0.75, -1.0, -0.25, -0.5, 0.5, -1.0, -0.5, -0.25, 0.25, -0.25, -0.5, 0.75, 0.5, 0.0, 1.0, -0.25, -0.5, 0.75, -1.0, 1.0, 0.75, 0.5, 0.5, -0.75, 0.0, 0.25, -0.5, 1.0, 1.0, -0.75, 1.0, 0.25, 0.75, 0.25, 0.25, -0.25, 0.5, 0.25, -0.75, -0.75, 0.5, -0.75, 0.5, 0.25, -1.0, -1.0, -0.25, -1.0, 0.75, -0.5, 0.25, -0.25, 0.25, -1.0, 0.0, 1.0, 0.25, 0.25, 0.0, 0.75, -0.5, 0.75, 1.0, 0.75, -0.75, -0.75, -1.0, 1.0, -0.5, ]);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
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
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    device40.queue.writeBuffer(buffer400, 0, array14, 0, array14.length);
    command_encoder303.copyBufferToBuffer(
        buffer302,
        0,
        buffer300,
        0,
        400
    );
    device50.pushErrorScope("validation");
    texture402.destroy();
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    texture403.destroy();
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
    device30.queue.writeBuffer(buffer302, 0, array11, 0, array11.length);
    device50.queue.submit([command_buffer501, ]);
    command_encoder502.pushDebugGroup("mygroupmarker")
    render_pass_encoder3030.setStencilReference(1);
    buffer403.destroy()
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const command_buffer600 = command_encoder600.finish();
    command_encoder502.popDebugGroup()
    render_pass_encoder3030.setPipeline(render_pipeline300);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([command_buffer600, ]);
    device30.queue.submit([command_buffer302, ]);
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group303);
    render_pass_encoder3030.setVertexBuffer(0, buffer300);
    compute_pass_encoder3010.popDebugGroup()
    const command_buffer502 = command_encoder502.finish();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3010.setVertexBuffer(0, buffer301);
    render_pass_encoder3010.end();
    render_pass_encoder3030.draw(3);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3030.end();
    const command_buffer303 = command_encoder303.finish();
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    render_pass_encoder3011.setBindGroup(0, bind_group304);
    render_pass_encoder3011.setVertexBuffer(0, buffer301);
    render_pass_encoder3010.end();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3030.drawIndirect(buffer3010, 0);
    render_pass_encoder3030.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder3030.end();
    render_pass_encoder3011.end();
    device50.queue.submit([command_buffer502, ]);
    device30.queue.submit([]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3010.drawIndirect(buffer303, 0);
    render_pass_encoder3011.drawIndirect(buffer307, 0);
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    render_pass_encoder3010.popDebugGroup();
    device30.queue.submit([]);
    device50.queue.submit([command_buffer502, ]);
    device60.queue.submit([]);
    device50.queue.submit([]);
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder3010.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    device20.queue.submit([]);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3030.drawIndirect(buffer300, 0);
    render_pass_encoder3010.popDebugGroup();
    device60.queue.submit([]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    device30.queue.submit([]);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    render_pass_encoder3010.draw(3);
    render_pass_encoder3011.draw(3);
    device30.queue.submit([]);
    device50.queue.submit([command_buffer502, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3011.popDebugGroup();
    device40.queue.submit([]);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3030.draw(3);
    device50.queue.submit([command_buffer501, ]);
    command_encoder500.popDebugGroup()
    command_encoder301.popDebugGroup()
    device50.queue.submit([command_buffer501, command_buffer502, ]);
    device50.queue.submit([]);
    device30.queue.submit([command_buffer303, ]);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder3030.popDebugGroup();
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder3010.drawIndirect(buffer308, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3030.end();
    compute_pass_encoder5000.popDebugGroup()
    device60.queue.submit([]);
    device50.queue.submit([command_buffer502, ]);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder5000.popDebugGroup()
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    device50.queue.submit([command_buffer502, ]);
    device60.queue.submit([command_buffer600, ]);
    device60.queue.submit([command_buffer600, ]);
    const command_buffer301 = command_encoder301.finish();
    device60.queue.submit([]);
}