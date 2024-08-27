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
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const array0 = new Float32Array([-0.25, 0.5, 0.0, 0.25, -0.5, 0.25, -0.25, -0.5, -0.5, 1.0, -1.0, -0.5, 0.75, -0.25, -0.25, 0.5, -0.25, 0.0, 0.75, -0.5, -0.75, 0.75, 0.5, 1.0, -1.0, -0.75, 0.5, 0.25, -0.75, -1.0, 0.0, -0.25, 0.75, -1.0, 0.0, 0.25, 0.25, 0.0, 0.5, -0.25, 0.0, 0.5, -1.0, 0.5, 1.0, -0.75, -0.5, 0.25, 0.5, -0.5, -0.5, -0.75, 0.75, -0.25, -1.0, 0.75, -1.0, 0.5, -0.5, 0.0, -0.75, -0.25, -1.0, -0.5, 0.0, 1.0, 0.75, -0.75, -0.25, 0.75, -0.5, -0.75, -0.25, -0.75, 0.25, 0.75, -0.25, 1.0, 0.5, -0.25, -1.0, 0.75, 0.0, -1.0, 0.0, 0.0, -0.75, -0.5, 1.0, -1.0, 0.0, -0.25, 0.75, 0.75, 0.25, -0.5, 1.0, 0.25, 0.75, 0.75, ]);
    
    const array1 = new Float32Array([-0.5, 0.25, 1.0, -0.75, -1.0, -1.0, 1.0, 1.0, -0.25, -0.25, -0.25, 0.0, -0.25, 1.0, -1.0, 0.75, 1.0, -0.5, -0.5, 1.0, -0.75, 0.25, 0.25, 0.25, 0.75, 0.5, 0.25, -1.0, -0.5, 0.75, 0.25, 0.5, -0.5, 0.5, -0.25, 0.5, -1.0, 0.75, 0.75, -0.5, -1.0, 0.0, -0.75, -0.25, -0.25, 0.25, 0.5, -1.0, -0.25, 0.25, 0.5, 0.75, -1.0, -0.25, 0.25, -1.0, 1.0, -0.25, -0.25, 0.5, 0.5, -0.5, 0.25, 0.5, 0.75, -0.5, -0.75, 0.75, 0.5, 1.0, 0.5, 0.25, 0.0, -0.75, -0.25, 0.0, 0.0, 0.0, -0.25, -1.0, 0.5, 0.75, -1.0, 1.0, -0.75, 0.25, -1.0, -0.75, -0.5, -1.0, 0.25, 0.25, 1.0, 0.0, -1.0, -0.5, 0.5, 0.75, -1.0, 0.5, ]);
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("internal");
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.destroy();
    
    
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array2 = new Float32Array([0.0, 0.25, -0.25, -0.75, -0.25, -1.0, -0.25, -0.5, -1.0, -0.75, 1.0, 0.75, -1.0, 0.0, -0.25, 0.25, -0.25, 0.5, 0.25, -0.75, 0.75, 1.0, -0.75, 1.0, -0.5, 0.75, 0.5, 1.0, 0.5, -1.0, 0.75, -0.25, 0.5, -0.25, 1.0, 0.0, 0.5, -0.75, -0.75, -0.5, 0.0, 0.75, 1.0, 0.5, -0.5, -0.25, 1.0, 0.25, 0.0, 0.25, 0.75, -0.5, -1.0, 0.75, -0.25, 1.0, -0.5, -0.5, 0.5, 0.75, -1.0, 0.75, 0.25, 1.0, 0.0, 0.25, 0.0, 0.0, 0.0, -1.0, 0.0, 0.0, -0.5, 0.5, 0.25, 0.75, -0.75, 1.0, 0.25, -0.75, -1.0, 0.25, -1.0, 0.25, 0.25, -0.5, 0.0, 0.25, -0.75, 0.75, 1.0, 0.25, 1.0, -0.75, -0.75, -0.25, -0.5, 0.25, 0.5, -0.5, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array3 = new Float32Array([0.5, -0.5, 0.75, 0.25, 0.5, -1.0, -0.5, -0.25, -0.5, 0.75, -0.25, 0.75, -1.0, 0.5, 0.25, 0.5, -0.25, -0.25, 0.5, 1.0, 0.75, 0.25, -0.5, -0.75, 0.75, 0.5, 0.5, -1.0, 0.75, 0.0, 0.75, -0.25, 0.25, -0.5, 0.75, -0.5, 0.0, -0.25, -0.25, 0.0, -0.25, -1.0, 0.25, -1.0, 1.0, 1.0, -0.25, -0.25, 0.75, 1.0, 0.75, 0.75, 1.0, -0.75, -0.5, 0.0, 0.75, 0.75, -1.0, 0.5, -0.25, -0.75, -0.5, 0.75, 0.5, 0.5, 0.0, -0.25, -0.75, 0.0, -0.5, -0.75, -1.0, 0.5, 0.5, 0.75, 0.5, -0.5, 0.25, 0.5, -0.5, 0.0, 0.75, 1.0, 0.75, 1.0, 0.25, -0.25, -0.75, 0.25, 0.25, 0.25, 1.0, 0.25, 0.75, -1.0, 0.25, -0.25, 1.0, -0.25, ]);
    const array4 = new Float32Array([0.5, -1.0, 1.0, -0.5, 0.5, 0.0, -0.5, 1.0, 0.75, 0.5, -1.0, -0.75, 1.0, 1.0, -0.5, 0.5, 0.5, -0.25, -0.5, 0.75, 0.5, -0.75, -0.5, -1.0, 0.0, -1.0, 0.25, -0.75, -0.25, -0.75, -0.25, -1.0, 0.5, -0.75, -0.75, -0.75, -1.0, 0.5, -0.75, 1.0, -0.25, 0.25, 1.0, 0.75, -1.0, 0.75, 0.75, 0.5, -0.25, 1.0, -1.0, 0.5, -0.25, 0.5, 1.0, 0.5, -0.5, -1.0, -1.0, 0.0, 0.75, 0.75, -0.25, -0.25, 0.25, 0.75, -0.5, -0.5, 0.25, 0.75, 1.0, 0.25, -0.25, -0.5, -0.25, 1.0, -1.0, 0.75, 1.0, 0.5, 0.75, -1.0, -0.75, 1.0, 0.0, 0.0, 0.0, -0.5, 1.0, -0.5, -0.5, 0.5, 1.0, 1.0, -1.0, 0.5, 0.5, 1.0, 0.5, -0.75, ]);
    
    device20.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const array5 = new Float32Array([0.25, 0.5, 1.0, -0.5, -0.5, 0.75, 0.5, 0.5, -1.0, -0.5, -1.0, -0.75, 0.25, -0.75, 0.25, -1.0, -0.25, -0.25, 0.75, -0.75, -0.25, 0.75, 0.75, 0.5, -1.0, 0.0, 0.0, 1.0, 0.25, 0.0, 0.75, 0.75, 0.25, -1.0, 1.0, -0.75, 0.25, -1.0, 0.75, -0.25, 0.0, 1.0, -1.0, 1.0, 0.75, 0.0, 0.75, 0.5, 0.75, -0.25, -1.0, 0.5, 0.75, 1.0, 0.75, 0.0, -0.5, 0.0, 0.75, -0.75, 1.0, -0.5, 0.25, 0.25, 1.0, -0.75, 0.75, 1.0, 0.75, 0.25, -0.25, 0.5, -1.0, 0.5, 0.25, 0.25, -1.0, 0.75, -0.75, 1.0, 1.0, 0.25, 0.0, 0.25, 1.0, -0.5, -0.75, 0.5, 0.25, 0.5, 0.75, -1.0, 0.5, -0.25, 1.0, -0.5, 0.5, 0.75, -0.25, 0.25, ]);
    
    
    const array6 = new Float32Array([-1.0, -0.25, 0.25, 0.25, -0.25, -0.75, -0.25, -1.0, -1.0, 1.0, -1.0, 1.0, 0.25, -0.5, 0.5, 0.25, 0.25, 0.75, -0.25, 0.0, -0.5, -0.5, -0.5, 0.75, -0.75, -0.5, -0.25, 0.0, 0.5, -0.75, -0.25, -0.5, -1.0, -0.25, 0.5, -1.0, 0.75, -0.25, -0.5, -0.25, 1.0, -0.5, -0.75, 0.75, 0.75, 0.75, 0.0, -0.75, 0.5, 0.25, -0.75, 0.5, -0.75, 0.75, -0.25, -1.0, 1.0, 0.75, -0.5, -0.5, 0.75, 0.75, 1.0, -1.0, 1.0, 0.0, -0.75, -0.5, 0.75, -0.75, -0.5, 0.0, 0.5, 0.75, -0.75, -0.5, 0.5, -0.25, -0.5, -1.0, 0.25, 0.25, 0.25, 0.0, -1.0, 0.75, -0.5, -1.0, 0.0, -0.25, 0.75, 0.0, 1.0, -1.0, -1.0, -0.75, -1.0, 0.0, 0.0, 0.0, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query301.destroy()
    buffer301.destroy()
    
    
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    
    query301.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    buffer302.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.destroy();
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.destroy();
    
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    query500.destroy()
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device50.destroy();
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device80.destroy();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    buffer700.destroy()
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
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
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    device70.destroy();
    
    const array7 = new Float32Array([-0.75, -0.5, -0.25, 0.25, 0.25, -0.25, 1.0, 1.0, -1.0, -0.25, -0.75, -0.25, 0.25, 0.75, 1.0, 1.0, 0.0, 0.5, 0.5, -0.25, -1.0, 0.25, 0.0, -0.5, 1.0, -0.75, -0.25, -0.5, 0.0, -1.0, -0.25, 1.0, -0.5, 1.0, 0.5, 1.0, 1.0, 0.5, 0.75, 0.5, -1.0, -1.0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, -0.75, -1.0, 1.0, -0.75, 0.0, 1.0, -0.75, -0.75, 0.75, -0.75, 0.25, 0.5, -0.25, 0.25, -0.5, 0.5, -0.25, 0.25, 0.0, 0.75, -1.0, 0.0, -0.25, 0.25, -0.5, 0.25, -0.75, -0.25, 0.5, -0.5, -0.5, -0.75, -0.25, -0.75, 0.75, -0.25, -0.75, 0.0, -0.25, -0.25, 0.75, -1.0, -0.25, -0.25, -0.75, 0.75, -0.75, 1.0, -0.25, -0.25, -1.0, -0.75, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device90.destroy();
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array8 = new Float32Array([0.0, 0.25, 0.5, -0.75, 1.0, 0.25, 0.5, -1.0, 0.0, 0.75, 1.0, 0.0, 0.75, -0.25, -0.75, -1.0, 0.5, 0.75, -0.5, -0.5, 0.25, 0.5, -0.25, -0.75, -0.75, -0.25, 1.0, 0.5, 0.25, -0.25, 0.25, 0.25, 0.0, -1.0, -0.5, 0.25, -0.75, -0.75, -0.5, 0.25, 0.25, -0.5, 0.75, -1.0, -0.5, 0.25, -1.0, 1.0, 0.0, 1.0, -0.5, 0.0, -0.75, 0.25, 1.0, 0.5, 0.25, -0.5, 1.0, -0.5, -1.0, 1.0, 0.25, 0.5, -1.0, 0.75, 0.75, 0.0, -1.0, 0.25, -0.75, -1.0, 0.75, -0.25, 0.25, 0.0, 0.5, 0.75, 0.5, 0.5, 0.25, -0.25, 0.0, 0.25, -0.5, 0.25, -0.25, -0.25, 0.0, 0.0, 0.5, 0.0, -0.75, -0.5, 1.0, 0.25, 1.0, -1.0, -0.75, -1.0, ]);
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    
    
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
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    query1200.destroy()
    
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    render_bundle_encoder600.insertDebugMarker("marker");
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    
    device60.destroy();
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    device100.pushErrorScope("out-of-memory");
    
    
    
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer1001.destroy()
    
    
    buffer1000.destroy()
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    const query1202 = device120.createQuerySet({
        label: "query1202",
        type: "occlusion",
        count: 32,
    });
    device100.pushErrorScope("out-of-memory");
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    device120.pushErrorScope("out-of-memory");
    const array9 = new Float32Array([1.0, -0.75, 0.0, 0.25, 0.75, -0.25, -0.5, -0.25, -1.0, -1.0, 1.0, 0.5, 0.75, -0.5, 0.5, -0.75, 0.25, -0.25, -0.75, 0.0, -0.75, -0.75, 0.0, -0.5, 1.0, -1.0, 1.0, -0.25, -0.25, -0.75, 0.25, -0.75, -0.75, -0.5, 0.0, -0.25, 0.5, -0.25, -1.0, 0.0, -0.75, 1.0, 0.25, 0.0, 1.0, 0.5, -0.75, -0.5, -0.5, 0.5, 0.25, 0.75, -1.0, 0.75, 0.5, 0.5, -0.5, 0.5, 1.0, 0.25, 0.0, -1.0, -1.0, -0.5, 0.25, 0.25, -1.0, 0.0, -1.0, -0.75, 0.5, 0.0, 0.0, 1.0, -0.25, 0.25, -0.75, 0.75, 1.0, -0.5, 0.25, -0.5, 0.5, 0.5, -0.75, 0.5, 1.0, 0.5, 0.0, 1.0, 0.25, 0.5, -0.25, -1.0, 1.0, -0.5, -0.5, 0.5, 0.75, -0.5, ]);
    
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device100.destroy();
    
    
    query1202.destroy()
    const render_bundle_encoder1201 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder1201.insertDebugMarker("marker");
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    query1202.destroy()
    
    
    device110.destroy();
    
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    render_bundle_encoder1200.pushDebugGroup("group_marker");
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module1203_code = "";
    try {
        shader_module1203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1203 = await device120.createShaderModule({ label: "shader_module1203", code: shader_module1203_code })
    
    render_bundle_encoder1201.pushDebugGroup("group_marker");
    
    render_bundle_encoder1201.popDebugGroup();
    
    
    
    render_bundle_encoder1201.insertDebugMarker("marker");
    
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    
    
    const sampler1202 = device120.createSampler( { label: "sampler1202" } );
    
    render_bundle_encoder1200.popDebugGroup();
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    const render_bundle_encoder1202 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1200.insertDebugMarker("marker");
    device140.pushErrorScope("validation");
    render_bundle_encoder1201.insertDebugMarker("marker");
    const render_pipeline1200 = device120.createRenderPipeline({
        label: "render_pipeline1200",
        vertex: {
            module: shader_module1202,
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
            module: shader_module1202,
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
    const sampler1203 = device120.createSampler( { label: "sampler1203" } );
    var shader_module1204_code = "";
    try {
        shader_module1204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1204 = await device120.createShaderModule({ label: "shader_module1204", code: shader_module1204_code })
    
    
    
    
    
    const render_pipeline1201 = device120.createRenderPipeline({
        label: "render_pipeline1201",
        vertex: {
            module: shader_module1202,
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
            module: shader_module1202,
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
    const sampler1204 = device120.createSampler( { label: "sampler1204" } );
    
    render_bundle_encoder1201.setPipeline(render_pipeline1201);
    query1201.destroy()
    
    
    
    
    
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1202 = device120.createBuffer({
        label: "buffer1202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1200 = device120.createBindGroup({
        label: "bind_group1200",
        layout: render_pipeline1201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1202,
                },
            },
        ],
    });

    render_bundle_encoder1201.setBindGroup(0, bind_group1200);
    render_bundle_encoder1202.setPipeline(render_pipeline1200);
    
    
    render_bundle_encoder1200.setPipeline(render_pipeline1201);
    var shader_module1205_code = "";
    try {
        shader_module1205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1205 = await device120.createShaderModule({ label: "shader_module1205", code: shader_module1205_code })
    
    const render_pipeline1202 = device120.createRenderPipeline({
        label: "render_pipeline1202",
        vertex: {
            module: shader_module1202,
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
            module: shader_module1202,
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
    
    const sampler1205 = device120.createSampler( { label: "sampler1205" } );
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    query1200.destroy()
    const buffer1203 = device120.createBuffer({
        label: "buffer1203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline1203 = device120.createRenderPipeline({
        label: "render_pipeline1203",
        vertex: {
            module: shader_module1202,
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
            module: shader_module1202,
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
    
    const buffer1204 = device120.createBuffer({
        label: "buffer1204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1205 = device120.createBuffer({
        label: "buffer1205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1201 = device120.createBindGroup({
        label: "bind_group1201",
        layout: render_pipeline1200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1205,
                },
            },
        ],
    });

    render_bundle_encoder1202.setBindGroup(0, bind_group1201);
    
    
    
    
    buffer1202.destroy()
    
    render_bundle_encoder1202.pushDebugGroup("group_marker");
    
    
    
    
    const buffer1206 = device120.createBuffer({
        label: "buffer1206",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device130.pushErrorScope("validation");
    
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    const bind_group_layout1400 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1400",
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
    buffer1200.destroy()
    
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    render_bundle_encoder1200.pushDebugGroup("group_marker");
    const array10 = new Float32Array([0.5, -1.0, 0.25, -0.5, 0.5, -0.25, 0.75, -0.5, 0.25, 0.0, 0.75, 0.75, 0.75, -1.0, 0.25, 1.0, 1.0, 0.25, 1.0, 0.25, 0.75, -0.75, 0.25, 0.5, 0.0, 1.0, -0.5, 0.25, 1.0, -0.5, 0.5, 0.25, 0.0, -0.75, -1.0, 0.5, 0.75, -0.75, -1.0, -0.5, -0.5, 0.75, -0.75, 1.0, -0.5, -0.25, 0.25, -0.25, 0.5, 0.75, -0.25, 0.75, 0.25, 0.5, 0.5, -0.5, 0.25, 1.0, -1.0, 0.75, 0.25, 1.0, -0.25, 0.25, 0.75, 1.0, 0.0, 0.75, -0.5, -0.5, 0.25, -1.0, -1.0, -0.75, 1.0, -1.0, 0.0, -0.75, -1.0, 0.75, 1.0, -0.75, -0.5, -0.5, 0.25, 0.5, 0.25, -0.5, -1.0, -0.25, 0.25, 0.5, -0.5, 1.0, -0.75, -0.25, 0.75, -0.5, 0.0, 0.0, ]);
    query1202.destroy()
    render_bundle_encoder1202.popDebugGroup();
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer1204.destroy()
    
    
    
    
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    
    
    render_bundle_encoder1202.insertDebugMarker("marker");
    const render_pipeline1204 = device120.createRenderPipeline({
        label: "render_pipeline1204",
        vertex: {
            module: shader_module1202,
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
            module: shader_module1202,
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
    const sampler1206 = device120.createSampler( { label: "sampler1206" } );
    device130.pushErrorScope("internal");
    
    const sampler1302 = device130.createSampler( { label: "sampler1302" } );
    const bind_group_layout1201 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1201",
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
    var shader_module1402_code = "";
    try {
        shader_module1402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1402 = await device140.createShaderModule({ label: "shader_module1402", code: shader_module1402_code })
    
    
    
    
    
    
    const query1203 = device120.createQuerySet({
        label: "query1203",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline1205 = device120.createRenderPipeline({
        label: "render_pipeline1205",
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
    query1200.destroy()
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const render_pipeline1400 = device140.createRenderPipeline({
        label: "render_pipeline1400",
        vertex: {
            module: shader_module1400,
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
            module: shader_module1400,
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
    
    const bind_group_layout1500 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1500",
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
    const bind_group_layout1401 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1401",
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
    
    
    const buffer1207 = device120.createBuffer({
        label: "buffer1207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1208 = device120.createBuffer({
        label: "buffer1208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1202 = device120.createBindGroup({
        label: "bind_group1202",
        layout: render_pipeline1201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1208,
                },
            },
        ],
    });

    render_bundle_encoder1200.setBindGroup(0, bind_group1202);
    device130.queue.writeBuffer(buffer1301, 0, array0, 0, array0.length);
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline1401 = device140.createRenderPipeline({
        label: "render_pipeline1401",
        vertex: {
            module: shader_module1402,
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
            module: shader_module1402,
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
    const bind_group_layout1501 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1501",
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
    
    
    query1201.destroy()
    buffer1301.destroy()
    
    
    device150.pushErrorScope("internal");
    render_bundle_encoder1202.pushDebugGroup("group_marker");
    const render_pipeline1206 = device120.createRenderPipeline({
        label: "render_pipeline1206",
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
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module1206_code = "";
    try {
        shader_module1206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1206 = await device120.createShaderModule({ label: "shader_module1206", code: shader_module1206_code })
    render_bundle_encoder1201.insertDebugMarker("marker");
    
    
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
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
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline1402 = device140.createRenderPipeline({
        label: "render_pipeline1402",
        vertex: {
            module: shader_module1400,
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
            module: shader_module1400,
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
    
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1200]
    });
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query1301 = device130.createQuerySet({
        label: "query1301",
        type: "occlusion",
        count: 32,
    });
    var shader_module1302_code = "";
    try {
        shader_module1302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1302 = await device130.createShaderModule({ label: "shader_module1302", code: shader_module1302_code })
    query1202.destroy()
    
    
    const pipeline_layout1500 = device150.createPipelineLayout({ 
        label: "pipeline_layout1500",
        bindGroupLayouts: [bind_group_layout1500]
    });
    render_bundle_encoder1300.insertDebugMarker("marker");
    
    buffer1500.destroy()
    render_bundle_encoder1201.insertDebugMarker("marker");
    const array11 = new Float32Array([0.25, 0.25, 1.0, -0.25, -0.75, 1.0, -1.0, -0.75, -0.25, 1.0, -0.25, -1.0, -1.0, 0.5, -0.25, -0.5, 0.75, 0.75, -1.0, -0.25, 0.5, 0.0, -1.0, 0.0, 0.0, 0.5, -1.0, -0.25, 0.5, 0.0, 0.5, -0.25, 0.5, -1.0, -1.0, 1.0, -1.0, 0.0, 0.75, 1.0, -0.25, 0.75, 0.75, -1.0, -0.75, -0.75, 0.25, -0.25, 0.0, -0.5, -0.75, 0.0, 0.5, -0.75, 0.25, -1.0, 0.5, 0.0, -0.25, 0.0, -0.25, -0.25, 0.25, -0.75, -0.5, -1.0, -1.0, 0.25, -1.0, 0.25, 0.5, 0.0, 0.5, -0.75, -0.25, -0.25, 1.0, 0.5, 0.5, 0.0, -0.5, -0.5, 0.5, 1.0, -0.5, -0.5, -0.75, 0.0, -0.25, 0.75, -0.5, -1.0, 1.0, 1.0, 1.0, 0.5, -0.25, -0.75, 1.0, -0.5, ]);
    var shader_module1303_code = "";
    try {
        shader_module1303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1303 = await device130.createShaderModule({ label: "shader_module1303", code: shader_module1303_code })
    
    query1300.destroy()
    var shader_module1403_code = "";
    try {
        shader_module1403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1403 = await device140.createShaderModule({ label: "shader_module1403", code: shader_module1403_code })
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_pipeline1403 = device140.createRenderPipeline({
        label: "render_pipeline1403",
        vertex: {
            module: shader_module1400,
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
            module: shader_module1400,
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
    const pipeline_layout1501 = device150.createPipelineLayout({ 
        label: "pipeline_layout1501",
        bindGroupLayouts: [bind_group_layout1500]
    });
    device140.pushErrorScope("validation");
    const render_pipeline1404 = device140.createRenderPipeline({
        label: "render_pipeline1404",
        vertex: {
            module: shader_module1400,
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
            module: shader_module1400,
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
    const render_bundle_encoder1301 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1301",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder1200.popDebugGroup();
    const buffer1302 = device130.createBuffer({
        label: "buffer1302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const sampler1207 = device120.createSampler( { label: "sampler1207" } );
    buffer1300.destroy()
    var shader_module1404_code = "";
    try {
        shader_module1404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1404 = await device140.createShaderModule({ label: "shader_module1404", code: shader_module1404_code })
    
    const pipeline_layout1201 = device120.createPipelineLayout({ 
        label: "pipeline_layout1201",
        bindGroupLayouts: [bind_group_layout1201]
    });
    const query1204 = device120.createQuerySet({
        label: "query1204",
        type: "occlusion",
        count: 32,
    });
    device120.destroy();
    
    
    const array12 = new Float32Array([0.0, 0.25, -1.0, 0.5, 0.25, -1.0, 1.0, 0.75, 0.5, -0.75, -0.75, 1.0, -0.5, 0.75, 0.75, 0.75, 0.0, 0.5, -0.5, 0.0, 0.75, 1.0, 0.0, 1.0, -0.5, 0.5, -0.75, 1.0, -0.5, -0.25, 0.5, 0.5, 0.5, -0.75, 0.25, 0.0, -1.0, -0.25, -0.25, 0.0, 0.0, 0.5, 0.25, -1.0, 0.5, -0.25, 0.75, 0.25, 1.0, -1.0, 0.0, 1.0, 0.75, -0.25, -0.75, -0.75, 0.0, -0.25, 0.5, -0.75, 0.75, 1.0, 1.0, 1.0, 1.0, -0.25, -1.0, -0.5, 0.25, 0.0, 0.0, 0.0, 0.5, -0.25, -1.0, -0.25, 0.0, -1.0, -0.75, -0.75, -0.25, -0.5, 0.75, 0.75, 0.75, 0.0, 0.75, 0.25, 0.5, -0.75, -0.25, -0.5, 0.75, 0.0, -1.0, -0.75, -0.5, 1.0, -1.0, -0.5, ]);
    
    const pipeline_layout1300 = device130.createPipelineLayout({ 
        label: "pipeline_layout1300",
        bindGroupLayouts: [bind_group_layout1300]
    });
    
    const pipeline_layout1301 = device130.createPipelineLayout({ 
        label: "pipeline_layout1301",
        bindGroupLayouts: [bind_group_layout1300]
    });
    const sampler1303 = device130.createSampler( { label: "sampler1303" } );
    
    
    buffer1302.destroy()
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    render_bundle_encoder1300.pushDebugGroup("group_marker");
    
    render_bundle_encoder1300.popDebugGroup();
    
    
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1502 = device150.createPipelineLayout({ 
        label: "pipeline_layout1502",
        bindGroupLayouts: [bind_group_layout1500]
    });
    
    
    const sampler1304 = device130.createSampler( { label: "sampler1304" } );
    
    const bind_group_layout1502 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1502",
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
    
    const pipeline_layout1503 = device150.createPipelineLayout({ 
        label: "pipeline_layout1503",
        bindGroupLayouts: [bind_group_layout1502]
    });
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    device150.pushErrorScope("internal");
    
    const array13 = new Float32Array([0.25, 0.0, 0.0, 0.75, -0.25, 0.25, 0.0, 0.75, -1.0, -0.25, 0.0, 0.0, -0.5, 0.25, 0.5, 0.25, 0.25, -0.75, 0.5, 0.0, 1.0, -0.25, -0.25, 0.75, 0.75, -0.5, -0.25, 0.5, -0.5, -1.0, -0.5, 1.0, -1.0, 0.0, -0.75, -0.5, 0.5, 0.5, 0.0, -0.75, 0.75, 0.5, 0.5, 0.0, -0.5, -0.25, -0.5, -1.0, 0.5, 0.5, -0.75, 0.5, 0.75, 0.25, -0.5, -0.25, 0.75, 0.5, 0.25, -1.0, -1.0, 0.5, 1.0, 1.0, 0.5, 0.5, 0.75, -1.0, 0.5, -0.75, 0.5, -0.5, 1.0, -0.5, 0.25, 0.75, 1.0, 0.5, -0.5, 0.0, 1.0, 1.0, 0.0, 0.5, -0.75, 0.0, 1.0, 0.75, 0.0, -0.75, -1.0, -1.0, -1.0, -1.0, 0.5, 0.75, 0.0, -0.75, 0.75, 0.75, ]);
    const render_pipeline1405 = device140.createRenderPipeline({
        label: "render_pipeline1405",
        vertex: {
            module: shader_module1400,
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
            module: shader_module1400,
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
    const render_pipeline1406 = device140.createRenderPipeline({
        label: "render_pipeline1406",
        vertex: {
            module: shader_module1402,
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
            module: shader_module1402,
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
    const array14 = new Float32Array([0.0, 0.75, 0.0, 0.0, 0.5, 0.5, 0.0, 0.0, -1.0, -0.5, -0.75, -0.75, -0.75, 0.5, 0.75, 0.25, 0.25, 0.25, -1.0, 0.75, 0.5, -0.25, 0.25, -0.25, -0.25, -0.25, 0.0, -1.0, 1.0, -0.5, 0.5, -0.5, 1.0, 1.0, -0.5, 1.0, 0.75, 0.25, 0.25, 0.5, -1.0, 0.0, -0.75, 1.0, -0.75, 0.25, 0.75, -0.25, 0.5, 0.0, -1.0, -0.25, 0.25, -0.75, 0.25, 0.5, 0.25, 0.5, -1.0, -0.5, 1.0, 0.25, -0.25, -0.25, -0.5, 0.0, 0.5, -0.5, -1.0, 0.25, -0.75, 0.75, -0.5, 1.0, -0.25, 0.25, 0.25, 0.0, -1.0, -0.75, -1.0, -1.0, -0.75, 0.5, 0.75, -0.5, 0.0, 0.5, 0.75, 0.5, 0.75, -0.25, 0.0, 0.75, -0.5, 0.0, 0.75, 1.0, -0.25, 1.0, ]);
    
    
    
    render_bundle_encoder1300.insertDebugMarker("marker");
    var shader_module1405_code = "";
    try {
        shader_module1405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1405 = await device140.createShaderModule({ label: "shader_module1405", code: shader_module1405_code })
    
    
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}