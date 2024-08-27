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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer000.destroy()
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    buffer002.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("validation");
    
    render_bundle_encoder002.popDebugGroup();
    const array0 = new Float32Array([-0.25, 0.0, 0.75, 0.25, -0.25, -1.0, 0.75, 0.0, 0.0, -1.0, -0.25, -0.25, 0.0, -0.5, -0.5, 0.25, 0.0, -0.25, -1.0, -0.25, 0.0, 1.0, -0.75, -1.0, 1.0, -0.75, 0.25, 1.0, 0.25, -0.75, 1.0, 1.0, 1.0, 0.75, -0.5, 0.25, 1.0, 0.75, -1.0, 0.25, 0.75, 0.75, 0.75, 0.5, 1.0, 0.75, -0.5, 0.25, -1.0, 0.5, 1.0, 0.0, 0.0, 0.25, 0.75, 0.25, 0.0, 0.0, 0.5, -0.75, 1.0, -0.25, 0.75, -0.75, 1.0, 0.0, 0.75, 0.5, 1.0, 0.75, -0.5, -0.5, -1.0, -0.5, 0.75, 1.0, -1.0, 0.0, 0.0, 0.5, -0.5, -0.25, -0.5, -0.25, 0.75, -1.0, 1.0, 0.25, 0.25, -0.75, -1.0, -0.25, 0.5, 0.25, -0.75, 1.0, -0.5, 0.25, 0.25, -1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array1 = new Float32Array([-1.0, 0.5, 1.0, -0.5, 0.75, 0.25, 0.5, 1.0, -0.5, 0.5, -0.5, 0.0, -0.5, 0.0, -0.25, 0.5, 0.0, 1.0, 1.0, 0.0, 1.0, 0.25, 0.25, -0.25, -0.75, 0.25, 0.75, 1.0, 0.25, -0.75, 0.25, -0.5, 0.25, 1.0, 0.25, -0.5, 0.5, -1.0, 1.0, 0.25, 1.0, 0.75, -0.5, 0.25, -0.25, -1.0, 0.25, 0.5, 0.0, 1.0, 0.25, 0.75, -0.75, -0.75, 0.25, 0.5, 0.5, 0.75, 0.75, -0.75, -0.25, -0.5, 0.75, 0.75, -0.25, 0.25, 0.0, 0.25, -0.25, -0.25, 0.0, -1.0, 1.0, 0.0, -0.75, 0.25, -1.0, -0.75, -1.0, 0.5, 0.0, 1.0, -0.25, -0.75, 0.25, 0.5, 1.0, 0.75, 0.25, 0.0, 0.5, 0.75, -0.25, -0.75, -1.0, -0.5, -0.75, -0.75, -0.25, -0.75, ]);
    device10.pushErrorScope("internal");
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
    device00.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("out-of-memory");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    device10.destroy();
    const array2 = new Float32Array([0.75, 0.25, 0.0, 0.0, 0.75, -1.0, 0.5, -1.0, 0.75, 0.5, -1.0, 0.75, -0.5, 0.75, -1.0, 0.0, -0.25, -0.75, 0.75, -0.5, -0.25, 0.75, 0.5, -0.25, 0.0, -0.75, 0.5, 0.5, 0.0, -0.75, -0.25, -0.5, 0.0, -0.75, 0.75, -0.25, 0.5, 1.0, 0.75, 0.75, 0.5, -0.75, -0.25, -0.75, 0.0, 0.25, -0.5, 0.0, 0.5, 0.0, 0.25, -0.75, 0.5, -0.5, 0.0, -0.5, -0.75, 0.0, -0.25, 0.0, -0.5, -0.25, -0.75, -0.5, 0.75, 0.5, -0.75, -0.5, 0.5, 0.0, 0.5, -0.25, 0.25, 0.0, -0.25, 0.25, -0.75, 0.25, -0.75, 0.75, 1.0, -0.25, -0.75, -0.25, -0.25, 0.5, -0.75, -0.5, -0.75, -0.25, -1.0, -1.0, 0.25, 1.0, -1.0, 0.5, 0.0, 0.75, -1.0, -0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([0.75, -0.5, 1.0, -0.5, 0.0, -0.25, -0.25, 1.0, 0.0, 1.0, -0.5, 1.0, 0.5, -0.25, -0.75, -0.75, 0.0, -0.5, 0.75, 1.0, -1.0, 0.25, -0.25, 0.75, -1.0, -0.75, -0.25, 0.25, 1.0, 0.5, 0.0, -0.5, -0.75, 0.0, -1.0, -0.25, 0.75, -0.75, 0.75, 0.75, 0.0, 0.25, 1.0, 0.0, 0.25, 0.75, 0.0, 0.0, 0.0, 0.25, 0.25, 1.0, -0.5, 0.5, -0.75, 0.75, -0.5, -0.25, -0.75, -0.5, -1.0, 0.75, 0.5, -0.75, 0.0, -1.0, -0.75, -0.5, 0.0, -0.5, -0.25, -0.75, 0.0, -0.5, -0.25, -0.75, 1.0, 0.75, 0.25, -0.75, 1.0, 0.25, -1.0, 0.75, 0.5, -1.0, 0.25, 0.5, 0.0, 0.75, 0.75, 1.0, 0.75, 1.0, 0.75, -0.75, 0.25, 0.5, -1.0, -0.75, ]);
    const array4 = new Float32Array([-0.75, 0.25, -1.0, -0.25, 0.75, 0.5, 0.5, -0.5, -0.5, 0.25, -1.0, 0.0, 1.0, 0.25, 0.25, 0.25, 1.0, -0.5, 0.25, -0.75, -0.75, 1.0, -0.25, 0.5, 0.5, 1.0, -0.25, -0.25, 1.0, -1.0, -0.75, 0.25, 0.5, 0.25, -0.5, 0.5, 1.0, 0.75, -0.25, 0.0, -0.75, -0.5, 0.25, 0.25, -0.5, 1.0, 0.25, 0.5, 1.0, 1.0, -0.75, 0.25, 0.5, -1.0, 0.5, -0.25, 0.75, -0.25, 0.25, 0.0, 0.75, -0.75, 0.75, -0.75, 0.0, 0.5, -1.0, 1.0, 0.0, 1.0, 0.0, -0.5, -0.5, 0.5, 0.25, 0.5, -1.0, 0.5, -0.25, 0.75, 0.25, -0.5, -0.5, -0.5, 1.0, -0.25, -0.5, 0.75, 1.0, -0.25, 1.0, 0.75, -0.25, 0.25, 0.5, 1.0, -0.25, 0.25, -0.75, 0.75, ]);
    
    const array5 = new Float32Array([-0.25, -1.0, 0.75, -0.75, 0.25, 0.0, -0.75, 1.0, 0.5, 1.0, 0.5, 0.0, -1.0, -0.5, 0.25, 0.75, 0.75, 0.25, -0.25, -1.0, -0.5, 0.0, 1.0, 0.5, -1.0, -0.75, -0.5, -0.25, 0.25, -0.75, -1.0, -1.0, -0.25, 1.0, 0.5, -1.0, 0.5, 1.0, 0.75, 0.0, -0.5, 0.5, -0.25, 0.25, -1.0, 0.5, 0.75, -1.0, -0.5, -0.75, 0.0, -1.0, -1.0, -0.5, 1.0, 0.5, -0.25, -0.75, -1.0, -1.0, -0.75, -0.75, 0.0, 0.0, 0.0, -0.5, 0.75, 0.25, -1.0, 0.75, -1.0, -0.5, 0.75, 0.25, -1.0, -0.5, -0.75, -1.0, -0.25, 0.25, 1.0, 0.0, -0.5, -0.5, 1.0, 0.75, 0.5, -0.75, 0.75, 1.0, -0.5, -1.0, 0.0, 0.0, 0.25, -0.25, 0.25, 1.0, 0.75, -0.25, ]);
    device10.destroy();
    const array6 = new Float32Array([-1.0, -1.0, 1.0, -0.75, 0.0, 0.0, -1.0, -0.75, 0.0, 0.25, 0.5, 1.0, 0.25, -1.0, -1.0, 0.75, 0.0, 0.5, 1.0, 0.25, -0.5, 0.5, -1.0, -1.0, 0.0, -1.0, 0.75, 0.0, -0.5, -0.5, 1.0, 0.5, -0.5, -0.5, -0.25, -0.5, -1.0, -1.0, -0.25, 0.5, 1.0, 0.75, -0.25, -0.25, -0.25, 1.0, 0.5, -0.25, 0.25, -0.75, -1.0, 0.5, -1.0, 0.25, 1.0, -0.5, 0.25, -1.0, -0.5, -0.25, -0.75, -0.5, 0.5, 0.5, 0.5, 0.75, 0.75, 0.25, 0.75, -1.0, -0.5, 0.5, 0.5, 0.25, -1.0, 1.0, -0.25, -0.25, 0.25, 1.0, -1.0, -0.5, 0.75, 0.75, -0.25, 1.0, -0.25, 0.75, -1.0, -0.5, 0.0, 0.25, -0.5, 1.0, -0.75, -1.0, -0.5, 1.0, 0.0, -0.5, ]);
    const array7 = new Float32Array([1.0, 0.25, -0.75, 0.25, 0.5, 0.25, -0.5, 0.75, -1.0, 1.0, 0.0, 0.5, -0.25, 0.5, -0.75, 1.0, 0.5, 0.25, 0.5, -0.25, -0.25, -0.75, -0.25, -0.75, 0.25, 0.0, 0.5, 1.0, 0.5, 0.5, -0.75, 0.5, -1.0, 0.5, 0.25, 0.25, -0.25, -0.5, 0.0, -0.75, 0.75, 0.25, 1.0, 0.75, 0.25, -0.5, 1.0, -0.5, 0.0, -0.5, -0.75, -0.25, 0.75, 0.5, 1.0, 0.25, -1.0, -0.5, -0.75, 1.0, 0.5, 0.5, 0.0, -0.5, -1.0, 0.5, -0.5, 0.0, 1.0, 0.75, 0.75, 1.0, 0.75, 1.0, 1.0, -0.75, 0.25, 0.75, -0.5, 0.25, 0.25, 0.5, 1.0, 0.0, 0.0, 0.75, 1.0, 0.75, 0.5, 0.75, -0.25, 1.0, 0.75, -0.5, 0.75, -0.5, 0.0, 0.0, 0.5, -0.75, ]);
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("internal");
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_buffer200 = command_encoder200.finish();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array8 = new Float32Array([1.0, -0.75, -0.25, -1.0, 0.5, 0.25, 0.0, 1.0, 0.0, -0.5, 0.75, 0.0, -0.75, 0.5, 0.75, -0.5, -1.0, -0.25, 0.75, -0.5, 0.75, -0.5, 0.75, 1.0, 0.75, -0.5, 0.0, 0.0, 0.75, 0.0, -0.5, -0.75, 1.0, -0.75, -0.25, 0.0, 0.75, -0.25, 0.25, 0.0, -0.25, 0.5, 1.0, 0.75, 0.5, 0.25, -1.0, -0.75, 0.25, 0.25, -1.0, 0.25, 1.0, -0.25, -1.0, 0.25, 0.0, 0.5, 0.75, 0.0, -0.25, 0.75, 1.0, 0.25, -1.0, -0.75, 0.75, 0.5, 0.0, 1.0, -0.5, 0.5, 0.5, -0.75, 0.0, -0.5, 0.25, 1.0, 0.0, -0.25, -0.5, 0.25, 0.5, -0.5, 0.0, -0.25, 1.0, 0.75, 0.5, -1.0, 0.0, 0.75, 0.5, -0.5, 0.0, -0.25, -0.5, -0.25, -0.75, 0.5, ]);
    device20.queue.submit([command_buffer200, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.destroy();
    const array9 = new Float32Array([0.75, 0.25, 0.5, -1.0, -0.25, 0.25, 1.0, -1.0, 0.75, 0.0, -1.0, 1.0, 0.0, -0.25, -0.25, -1.0, 1.0, -1.0, -0.25, 1.0, -0.25, -0.75, -0.25, 0.5, 0.5, -0.5, -0.5, -0.75, 0.75, 0.75, 0.25, 0.0, -0.25, 0.75, 0.5, -0.25, -1.0, 0.0, 0.5, 0.25, -0.25, -0.25, 1.0, -0.5, 0.75, 0.0, 0.75, -0.5, 1.0, 1.0, 0.0, 0.75, -0.25, -1.0, 0.0, -0.75, -0.5, -1.0, 0.75, 0.25, -0.75, 0.75, 1.0, 1.0, -0.25, 0.75, -1.0, -0.25, -0.25, -0.25, 0.75, 0.75, 0.5, 0.25, 0.5, -1.0, 0.0, -1.0, 1.0, -1.0, 0.25, -0.75, -0.5, -0.5, 0.0, 0.0, 0.25, 0.5, -0.5, -1.0, -0.75, -1.0, 1.0, 0.75, 0.5, -1.0, 0.0, -0.5, 0.75, -1.0, ]);
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.destroy();
    const array10 = new Float32Array([0.5, 1.0, -0.75, -0.5, 0.25, -1.0, -0.25, -1.0, 0.0, -0.25, -0.75, 1.0, -0.5, 0.5, 1.0, 0.75, -0.5, 1.0, -0.5, -0.75, -0.25, 0.75, 0.0, 0.0, 0.5, -0.25, -0.25, 1.0, 0.25, 1.0, 0.0, -0.75, 1.0, -0.5, -0.5, -1.0, 1.0, 0.5, 0.25, -0.5, 0.0, -0.25, -1.0, -0.5, -0.25, -0.5, 0.0, 0.5, -1.0, -1.0, 0.0, -0.25, 0.75, -0.25, -0.5, -0.25, 0.5, -1.0, -0.75, 1.0, -1.0, -0.25, 0.75, 0.0, 0.0, 0.75, -1.0, 0.75, -0.5, -0.25, 0.25, -0.25, -0.75, -0.25, -0.75, -0.25, -1.0, -0.5, 0.5, 1.0, 0.25, 0.75, 0.0, -0.25, 0.75, -0.75, 1.0, 1.0, 1.0, 0.0, -0.75, 0.0, 0.0, 1.0, -1.0, -0.5, -0.75, 0.5, 0.25, -0.75, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.pushErrorScope("internal");
    render_bundle_encoder200.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array11 = new Float32Array([0.0, -0.5, -0.5, 0.0, -0.25, -1.0, 0.75, 0.75, 0.5, 1.0, -1.0, 0.75, 1.0, -0.75, 0.25, 0.5, 0.75, 0.75, -0.5, -0.75, 1.0, 0.5, -0.25, 0.25, 1.0, -0.5, 1.0, -1.0, -0.5, -1.0, -1.0, -0.75, 1.0, -1.0, -1.0, -1.0, -0.25, 0.0, 0.0, 0.25, -0.25, 0.5, -1.0, -0.5, 1.0, -0.25, -0.75, -1.0, -0.75, 0.5, -0.75, -1.0, -0.25, 1.0, 0.25, -0.75, 0.5, -0.5, -1.0, 0.75, -1.0, -1.0, -0.5, -0.5, 0.0, 0.5, -0.5, -1.0, -0.5, 1.0, -1.0, 0.75, 0.5, 0.25, 0.5, 0.5, -0.75, 0.75, 0.75, 0.75, 1.0, 0.75, 0.5, 0.25, -0.25, -0.25, 0.25, -0.5, -1.0, -0.25, 0.0, 1.0, -1.0, 1.0, 0.25, -0.5, -0.25, 0.25, 0.75, 0.5, ]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device40.queue.submit([]);
    texture300.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const array12 = new Float32Array([-1.0, -0.5, 0.25, 0.25, 0.5, 0.75, 1.0, -1.0, -0.5, 0.5, 0.75, -1.0, 0.25, -0.25, -0.5, 0.0, -0.5, -0.5, -1.0, -0.75, 0.5, -0.5, 0.0, 1.0, -1.0, 0.75, -0.75, 0.0, -0.75, 0.75, -0.75, -0.5, -0.75, 1.0, -0.75, -0.25, 0.5, 1.0, 0.0, -0.5, 0.5, 0.75, -0.25, -0.25, -0.75, -0.75, 0.25, -0.25, -1.0, 1.0, 0.75, 0.5, -1.0, 1.0, 1.0, -0.5, 0.25, -0.75, 0.5, 0.5, -0.25, 0.0, 0.0, 0.0, 1.0, 0.75, 0.5, 0.0, -0.25, 0.5, 0.0, 0.0, 0.0, 0.5, 0.0, -0.5, -1.0, -1.0, -0.25, 1.0, -0.25, -0.25, 0.75, 1.0, -0.5, 0.0, -0.75, -0.75, 0.5, -0.5, -0.25, -0.5, -1.0, 1.0, -0.25, 1.0, -0.25, -0.5, 0.0, -1.0, ]);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device30.destroy();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    device70.pushErrorScope("out-of-memory");
    
    device60.destroy();
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    device40.destroy();
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder7000.popDebugGroup()
    const command_buffer700 = command_encoder700.finish();
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
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
    command_encoder600.pushDebugGroup("mygroupmarker")
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
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
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    device70.queue.submit([command_buffer700, ]);
    texture200.destroy();
    const command_buffer701 = command_encoder701.finish();
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
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
    device10.pushErrorScope("internal");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
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
    
    device70.pushErrorScope("out-of-memory");
    
    
    render_bundle_encoder700.popDebugGroup();
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const array13 = new Float32Array([0.0, 0.0, -0.75, 0.25, -0.5, 0.25, -0.75, 0.5, 0.75, 0.0, -0.75, 0.5, 0.25, -1.0, 1.0, -0.5, 0.0, -0.5, -0.5, -0.5, -0.5, 0.25, -0.25, 0.25, -0.5, -1.0, 0.75, -1.0, 0.75, -0.5, 0.5, 0.25, 0.0, 1.0, -0.5, 0.75, -1.0, -0.25, 1.0, 1.0, -1.0, 0.75, 0.0, 0.5, -1.0, -0.5, 0.5, 0.0, 1.0, 0.25, -0.5, -1.0, 0.0, -0.25, -0.75, 0.25, 0.25, 0.25, 0.0, -1.0, -0.5, 0.5, 0.0, 0.0, 1.0, -0.25, 0.25, -0.5, 0.0, 0.5, -0.25, 0.5, 1.0, -0.75, -0.25, -0.25, -0.75, 0.75, 0.0, -0.75, -1.0, -1.0, -0.25, 1.0, 0.75, -0.75, -0.75, 0.0, 0.75, -0.25, -1.0, 1.0, -1.0, 0.25, -0.5, -0.25, 0.75, 0.75, -1.0, 0.5, ]);
    compute_pass_encoder7000.popDebugGroup()
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    render_bundle_encoder700.insertDebugMarker("marker");
    const render_pipeline704 = device70.createRenderPipeline({
        label: "render_pipeline704",
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
    const render_pipeline705 = device70.createRenderPipeline({
        label: "render_pipeline705",
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
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    render_bundle_encoder701.insertDebugMarker("marker");
    buffer700.destroy()
    
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8snorm",
        dimension: "2d"
    });
    device70.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    const array14 = new Float32Array([0.0, 1.0, 0.25, 0.75, 0.5, -0.75, 1.0, 0.75, 0.75, 1.0, -1.0, 0.25, 0.75, -0.25, -0.25, -1.0, 0.0, 0.5, 0.75, 0.75, 0.5, 0.25, 0.0, 0.75, 0.25, 0.75, -0.75, 1.0, 0.25, -1.0, -0.5, 1.0, 0.5, -0.25, -1.0, -0.75, 0.0, 1.0, 0.5, 1.0, -0.25, -0.5, -1.0, -0.75, 0.25, -0.75, 0.25, 0.0, 0.75, 0.0, -0.75, -1.0, 0.25, 0.75, -0.75, 0.0, -1.0, 0.75, -1.0, -1.0, 0.25, 0.75, 1.0, 0.25, -0.75, 0.75, -1.0, -0.75, 0.0, -1.0, -0.75, -0.5, -0.25, -0.5, 1.0, -0.5, 0.5, 0.25, 0.5, -1.0, 0.0, -1.0, -0.5, -0.75, 0.25, -0.5, -1.0, -0.25, -0.75, -0.25, -0.5, -0.25, -0.5, 0.25, -0.5, -0.75, 1.0, 0.0, 1.0, 0.5, ]);
    const array15 = new Float32Array([0.75, -0.75, -0.25, 1.0, -0.5, 0.0, -0.75, 0.5, 0.5, 0.5, 0.25, 0.75, 0.75, -0.25, -0.5, 1.0, 0.25, 1.0, 0.75, -0.5, 0.0, -0.25, 0.25, -0.5, 1.0, 1.0, -1.0, -0.5, -0.5, -0.5, -1.0, 0.25, 0.5, -1.0, 1.0, 0.0, 1.0, 0.75, -0.25, 0.0, 0.25, -0.25, 0.5, 0.0, -0.25, -0.25, -0.25, -0.5, 1.0, 0.75, -0.25, -1.0, -0.75, 1.0, 0.5, 0.75, 0.25, 0.75, 0.5, 0.5, 0.25, -0.5, 0.25, 0.0, 0.5, 0.75, 0.25, -0.25, 0.0, -0.5, 0.5, 0.75, -1.0, 1.0, 0.0, -1.0, -0.25, -0.75, -0.75, -0.25, -0.5, -0.5, 1.0, -0.75, -0.25, -0.75, 0.0, 0.5, 1.0, 0.5, 0.25, -0.75, -1.0, 0.5, 0.75, 0.25, 0.75, -0.25, -0.25, -1.0, ]);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    device30.destroy();
    device80.pushErrorScope("validation");
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    command_encoder000.insertDebugMarker("mymarker");
    device90.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture002 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
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
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    device80.queue.writeBuffer(buffer800, 0, array10, 0, array10.length);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device80.queue.writeBuffer(buffer800, 0, array9, 0, array9.length);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    render_bundle_encoder900.pushDebugGroup("group_marker");
    
    
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device90.queue.writeBuffer(buffer900, 0, array14, 0, array14.length);
    
    render_bundle_encoder800.insertDebugMarker("marker");
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    device80.pushErrorScope("internal");
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device110.queue.writeTexture({ texture: texture1100 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeBuffer(buffer800, 0, array8, 0, array8.length);
    render_bundle_encoder000.popDebugGroup();
    
    
    device110.queue.writeTexture({ texture: texture1100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder1200 = device120.createCommandEncoder({ label: "command_encoder1200" });
    
    device120.pushErrorScope("out-of-memory");
    device110.queue.writeTexture({ texture: texture1100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    command_encoder800.insertDebugMarker("mymarker");
    device110.queue.writeTexture({ texture: texture1100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder800.pushDebugGroup("mygroupmarker")
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    device110.queue.writeTexture({ texture: texture1100 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.pushErrorScope("out-of-memory");
    render_bundle_encoder800.insertDebugMarker("marker");
    device70.pushErrorScope("internal");
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    
    command_encoder1200.insertDebugMarker("mymarker");
    buffer1000.destroy()
    
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    device100.queue.writeBuffer(buffer1000, 0, array9, 0, array9.length);
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    device110.queue.writeTexture({ texture: texture1100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer800.destroy()
    
    const compute_pass_encoder12000 = command_encoder1200.beginComputePass({ label: "compute_pass_encoder12000" });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device110.queue.writeBuffer(buffer1100, 0, array15, 0, array15.length);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device80.pushErrorScope("out-of-memory");
    
    render_bundle_encoder800.popDebugGroup();
    
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device120.queue.writeTexture({ texture: texture1201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device120.queue.writeTexture({ texture: texture1201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    device110.queue.writeTexture({ texture: texture1100 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    const texture_view12010 = texture1201.createView({ label: "texture_view12010" });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array16 = new Float32Array([0.25, 0.75, 0.0, 0.5, 0.75, -1.0, -0.5, 0.5, -0.5, -0.25, 0.5, -0.75, -0.75, 0.0, 0.25, 0.5, 0.25, 0.5, 0.0, 1.0, 0.25, 0.0, 1.0, 0.25, 0.5, 1.0, -1.0, 0.0, -0.25, 0.5, -0.75, 0.0, -0.25, -0.75, 1.0, -0.5, 0.0, -0.25, -0.5, 0.75, -0.75, 0.25, 0.5, 0.5, 0.75, 1.0, 0.25, -0.75, -0.5, -0.5, 0.75, 0.25, 0.25, -0.25, -0.5, -1.0, -0.75, 0.75, -1.0, 0.75, 0.5, 0.75, -0.5, 0.25, 0.0, -0.25, 0.75, 0.0, 0.5, 0.75, -0.75, 0.5, 1.0, -0.25, -0.75, 0.75, 1.0, 1.0, -0.75, -0.75, 0.75, -0.75, 0.25, 0.75, 0.25, 0.75, -1.0, -0.25, 1.0, 0.5, -0.75, -0.5, 0.5, 0.75, 1.0, -0.25, -1.0, -0.25, 1.0, 0.75, ]);
    
    device120.queue.writeTexture({ texture: texture1201 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder12000.pushDebugGroup("group_marker")
    device120.queue.writeBuffer(buffer1200, 0, array3, 0, array3.length);
    
    device120.queue.writeBuffer(buffer1200, 0, array11, 0, array11.length);
    device120.queue.writeBuffer(buffer1200, 0, array5, 0, array5.length);
    device120.queue.writeTexture({ texture: texture1201 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeBuffer(buffer800, 0, array15, 0, array15.length);
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    device80.queue.writeTexture({ texture: texture800 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    device110.pushErrorScope("out-of-memory");
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    render_bundle_encoder800.insertDebugMarker("marker");
    
    device120.queue.writeBuffer(buffer1200, 0, array6, 0, array6.length);
    const texture_view12000 = texture1200.createView({ label: "texture_view12000" });
    device120.queue.writeTexture({ texture: texture1201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device110.queue.writeBuffer(buffer1100, 0, array13, 0, array13.length);
    const texture_view11001 = texture1100.createView({ label: "texture_view11001" });
    device120.queue.writeBuffer(buffer1200, 0, array5, 0, array5.length);
    device110.queue.writeTexture({ texture: texture1100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view12011 = texture1201.createView({ label: "texture_view12011" });
    
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
    render_bundle_encoder700.pushDebugGroup("group_marker");
    device110.queue.writeTexture({ texture: texture1101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    texture800.destroy();
    device120.queue.writeBuffer(buffer1200, 0, array11, 0, array11.length);
    render_bundle_encoder801.pushDebugGroup("group_marker");
    device120.queue.writeBuffer(buffer1200, 0, array5, 0, array5.length);
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    const texture1102 = device110.createTexture({
        label: "texture1102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    command_encoder1100.insertDebugMarker("mymarker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device120.queue.writeBuffer(buffer1200, 0, array8, 0, array8.length);
    device110.queue.writeTexture({ texture: texture1100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder1201 = device120.createCommandEncoder({ label: "command_encoder1201" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device110.queue.writeTexture({ texture: texture1100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const texture1103 = device110.createTexture({
        label: "texture1103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    device110.queue.writeTexture({ texture: texture1100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1103 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder1201.clearBuffer(buffer1200);
    device80.queue.writeTexture({ texture: texture801 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1201.destroy();
    
    
    const texture_view11010 = texture1101.createView({ label: "texture_view11010" });
    render_bundle_encoder802.insertDebugMarker("marker");
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder1201.pushDebugGroup("mygroupmarker")
    render_bundle_encoder800.insertDebugMarker("marker");
    device120.queue.writeBuffer(buffer1200, 0, array8, 0, array8.length);
    const command_buffer801 = command_encoder801.finish();
    device00.queue.writeTexture({ texture: texture002 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1103.destroy();
    const render_pass_encoder11000 = command_encoder1100.beginRenderPass({
        label: "render_pass_encoder11000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view11010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    texture000.destroy();
    render_bundle_encoder700.pushDebugGroup("group_marker");
    device100.destroy();
    command_encoder1201.clearBuffer(buffer1200);
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pass_encoder12010 = command_encoder1201.beginComputePass({ label: "compute_pass_encoder12010" });
    device110.queue.writeBuffer(buffer1101, 0, array16, 0, array16.length);
    
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    buffer1100.destroy()
    command_encoder802.clearBuffer(buffer800);
    render_pass_encoder11000.executeBundles([])
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    const buffer1102 = device110.createBuffer({
        label: "buffer1102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device110.queue.writeTexture({ texture: texture1100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeBuffer(buffer1201, 0, array2, 0, array2.length);
    device110.queue.writeBuffer(buffer1102, 0, array13, 0, array13.length);
    device110.queue.writeBuffer(buffer1101, 0, array1, 0, array1.length);
    const compute_pass_encoder8020 = command_encoder802.beginComputePass({ label: "compute_pass_encoder8020" });
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    device110.queue.writeTexture({ texture: texture1103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder12010.pushDebugGroup("group_marker")
    
    device110.queue.writeTexture({ texture: texture1100 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1101.destroy();
    texture1102.destroy();
    buffer900.destroy()
    device110.queue.writeTexture({ texture: texture1100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    buffer1200.destroy()
    device110.queue.writeTexture({ texture: texture1100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeBuffer(buffer1101, 0, array9, 0, array9.length);
    
    device120.queue.writeBuffer(buffer1201, 0, array16, 0, array16.length);
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder11000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view11002 = texture1100.createView({ label: "texture_view11002" });
    device110.queue.writeTexture({ texture: texture1100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeBuffer(buffer1201, 0, array15, 0, array15.length);
    render_bundle_encoder200.popDebugGroup();
    const buffer1103 = device110.createBuffer({
        label: "buffer1103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device110.queue.writeTexture({ texture: texture1103 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer000.destroy()
    device110.queue.writeBuffer(buffer1101, 0, array16, 0, array16.length);
    device110.queue.writeBuffer(buffer1101, 0, array5, 0, array5.length);
    device110.queue.writeBuffer(buffer1101, 0, array5, 0, array5.length);
    device110.queue.writeBuffer(buffer1103, 0, array3, 0, array3.length);
    command_encoder1100.copyBufferToBuffer(
        buffer1101,
        0,
        buffer1103,
        0,
        400
    );
    const texture_view11003 = texture1100.createView({ label: "texture_view11003" });
    device110.queue.writeBuffer(buffer1103, 0, array3, 0, array3.length);
    compute_pass_encoder12010.popDebugGroup()
    device110.queue.writeBuffer(buffer1102, 0, array8, 0, array8.length);
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    device110.queue.writeBuffer(buffer1102, 0, array5, 0, array5.length);
    render_pass_encoder11000.setScissorRect(0, 0, texture1101.width / 2, texture1101.height / 2);
    texture1200.destroy();
    compute_pass_encoder12000.popDebugGroup()
    buffer1101.destroy()
    device120.queue.writeBuffer(buffer1201, 0, array16, 0, array16.length);
    const texture_view8011 = texture801.createView({ label: "texture_view8011" });
    device110.queue.writeBuffer(buffer1102, 0, array14, 0, array14.length);
    device110.queue.writeBuffer(buffer1103, 0, array16, 0, array16.length);
    compute_pass_encoder8020.pushDebugGroup("group_marker")
    
    device110.queue.writeBuffer(buffer1101, 0, array16, 0, array16.length);
    
    
    
    render_bundle_encoder1100.pushDebugGroup("group_marker");
    command_encoder1201.pushDebugGroup("mygroupmarker")
    device110.queue.writeBuffer(buffer1102, 0, array13, 0, array13.length);
    device120.queue.writeBuffer(buffer1201, 0, array7, 0, array7.length);
    device110.queue.writeBuffer(buffer1102, 0, array3, 0, array3.length);
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const sampler1102 = device110.createSampler( { label: "sampler1102" } );
    device110.queue.writeBuffer(buffer1102, 0, array16, 0, array16.length);
    device110.queue.writeTexture({ texture: texture1100 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeBuffer(buffer1102, 0, array16, 0, array16.length);
    
    buffer1201.destroy()
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    texture1100.destroy();
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    device110.pushErrorScope("out-of-memory");
    device80.queue.writeTexture({ texture: texture801 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1100.insertDebugMarker("marker");
    
    
    device110.queue.writeBuffer(buffer1102, 0, array1, 0, array1.length);
    {
        await buffer1103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1103.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pass_encoder12001 = command_encoder1200.beginComputePass({ label: "compute_pass_encoder12001" });
    device110.queue.writeBuffer(buffer1103, 0, array6, 0, array6.length);
    device110.queue.writeBuffer(buffer1103, 0, array0, 0, array0.length);
    
    device120.queue.writeTexture({ texture: texture1201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder802.insertDebugMarker("marker");
    texture1103.destroy();
    device110.queue.writeBuffer(buffer1103, 0, array6, 0, array6.length);
    render_bundle_encoder801.popDebugGroup();
    const buffer1104 = device110.createBuffer({
        label: "buffer1104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer1105 = device110.createBuffer({
        label: "buffer1105",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder11000.setScissorRect(0, 0, texture1101.width / 2, texture1101.height / 2);
    device110.queue.writeBuffer(buffer1102, 0, array9, 0, array9.length);
    render_pass_encoder11000.executeBundles([])
    device110.queue.writeBuffer(buffer1102, 0, array6, 0, array6.length);
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler1103 = device110.createSampler( { label: "sampler1103" } );
    device120.queue.writeTexture({ texture: texture1201 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder11000.pushDebugGroup("group_marker");
    
    device110.queue.writeBuffer(buffer1102, 0, array11, 0, array11.length);
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder11000.popDebugGroup();
    const command_buffer1200 = command_encoder1200.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder8020.popDebugGroup()
    compute_pass_encoder12001.popDebugGroup()
    compute_pass_encoder8000.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer802 = command_encoder802.finish();
    device80.queue.submit([command_buffer802, ]);
    command_encoder1201.popDebugGroup()
    device20.queue.submit([]);
    device120.queue.submit([command_buffer1200, ]);
}