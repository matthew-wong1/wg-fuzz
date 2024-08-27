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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    const array0 = new Float32Array([0.25, -0.25, 0.0, 0.75, 1.0, 1.0, -1.0, -0.75, 0.5, -0.5, 1.0, -1.0, 1.0, 0.5, -1.0, 0.25, -0.75, -0.75, -0.25, -0.5, -0.25, 0.5, 0.75, -0.75, -0.25, -0.5, 1.0, -0.5, 0.25, 0.75, -1.0, -0.25, -0.5, -0.5, -0.5, 0.75, -0.25, -0.5, 0.0, 0.25, 0.75, 0.75, -0.25, 0.0, 0.5, 1.0, -0.5, 0.75, 1.0, -0.25, 0.0, 0.75, 0.0, -0.75, 1.0, -0.25, -0.5, -0.25, -1.0, 1.0, -0.75, -0.5, 0.5, -0.75, -0.75, 0.5, -0.5, -0.25, -1.0, -1.0, -0.5, 0.0, -0.75, -0.75, 1.0, 1.0, 0.75, 1.0, -0.75, -0.25, 1.0, 0.75, 0.25, -0.5, -0.25, -0.25, -1.0, -0.75, -0.5, -1.0, 0.25, 0.25, -1.0, -0.5, 0.75, 0.75, 0.5, 0.25, 0.0, 1.0, ]);
    
    
    const array1 = new Float32Array([-0.5, 0.0, -0.25, 0.75, 0.25, -1.0, -0.75, -0.5, -0.25, 0.25, -0.25, 1.0, -0.25, 0.0, -0.25, 0.25, 0.25, 0.75, -0.5, -1.0, 0.5, 0.25, 1.0, 0.0, 1.0, 0.25, 0.0, 0.5, 0.0, 0.5, 0.0, 0.75, -0.25, 0.75, 0.0, 0.25, -1.0, 0.5, 0.75, 1.0, -1.0, -0.5, -0.25, -1.0, 0.0, 1.0, 0.5, 0.0, -0.5, -0.5, 0.25, -1.0, 0.5, 0.75, -0.5, -0.25, 0.0, -0.5, -1.0, -0.75, -0.5, -0.5, 0.5, 0.5, 0.25, 0.75, 0.0, 0.0, 0.5, 0.0, -0.75, 0.75, 0.0, 0.0, -0.5, -0.5, -1.0, -0.5, -0.5, 0.75, -0.75, 1.0, 0.25, 0.5, 0.25, -0.5, -0.75, 0.75, 0.25, -0.25, -0.25, 0.0, 1.0, 0.25, 0.25, 0.0, -0.25, 0.5, -1.0, 0.75, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    texture000.destroy();
    device20.destroy();
    
    const array2 = new Float32Array([1.0, 0.75, -0.75, 0.0, 0.5, 0.25, -0.5, -0.75, 0.75, -0.25, 0.5, 0.0, -0.75, 1.0, 0.25, -0.25, -0.5, 0.25, 0.0, 0.0, 0.0, -0.25, -0.5, 0.5, 0.5, -0.5, 0.0, -0.25, 0.25, -0.75, 0.0, 0.5, 0.25, -0.5, -0.5, 0.0, -0.25, -0.25, -1.0, 0.25, -1.0, 0.5, 0.0, -0.25, -0.25, 0.0, -0.5, 0.0, 0.0, -0.5, -1.0, -0.25, -0.75, -0.75, 0.5, -1.0, 0.75, 0.25, 0.5, -1.0, 0.0, 0.5, -0.25, 0.0, 0.5, 0.0, -0.5, 0.75, 0.5, -1.0, 0.5, 0.5, 1.0, 1.0, 0.5, 0.75, 0.25, -1.0, 0.5, 0.25, 0.0, -0.75, -0.75, 0.25, -0.5, -0.25, -0.25, -0.25, 0.25, -0.5, -1.0, -0.75, 0.75, -0.25, -0.75, 0.0, 1.0, 0.75, -0.5, -1.0, ]);
    const array3 = new Float32Array([-0.75, 0.75, 0.75, -1.0, -1.0, 0.25, -0.75, 0.25, 1.0, 0.5, 1.0, -0.75, 0.5, -0.25, 0.5, -0.25, -0.5, -0.5, -0.5, 0.75, -0.5, -1.0, -1.0, -0.5, -0.5, 0.0, 0.5, 0.5, 0.25, -1.0, -0.75, -1.0, 0.0, -0.5, -0.25, 0.5, 0.25, 0.0, -0.5, -0.25, -0.75, 0.25, 0.5, 1.0, 0.0, 0.0, -0.5, 1.0, -0.5, 0.25, 0.75, 0.75, -0.5, 1.0, 1.0, -0.25, 0.25, 0.5, -1.0, 0.25, 0.0, -0.75, -1.0, -0.75, 1.0, 0.0, -0.5, 0.25, 0.0, -0.75, -0.25, -1.0, 0.0, 0.75, 0.75, 0.5, 0.75, 0.75, 0.25, 0.75, -0.5, -0.75, -0.25, 0.5, -0.75, 0.5, -0.5, -0.75, 0.0, -0.25, 1.0, 0.5, 0.0, -0.25, -0.75, -0.5, -0.25, 1.0, 1.0, -0.75, ]);
    const array4 = new Float32Array([0.75, 0.5, 0.25, -0.5, 0.0, -1.0, 0.5, -0.5, -1.0, 0.75, -0.5, 1.0, -0.25, 0.25, 1.0, 0.25, -0.5, 1.0, 0.25, 0.5, 1.0, -0.75, 0.25, 1.0, 1.0, -1.0, -1.0, -1.0, 0.0, 0.0, 1.0, -0.25, -0.75, 0.75, -0.25, 0.5, -0.5, 0.75, 0.5, 0.75, -1.0, 0.5, 0.5, 0.5, -1.0, 0.75, 1.0, -0.5, 0.5, 0.5, 0.25, -0.5, 0.0, 0.5, 1.0, 1.0, -0.5, 1.0, 1.0, -0.5, 0.5, 1.0, 0.75, 0.0, 0.0, -0.25, 0.75, -0.5, 0.5, 0.5, 0.0, 0.0, -0.75, -0.75, -1.0, 0.25, 0.5, 1.0, 1.0, 1.0, 0.75, 1.0, 0.5, -1.0, -0.5, -0.25, 0.25, 0.25, 0.0, -0.25, -0.75, -0.75, -0.25, 0.5, -0.25, -0.5, -0.5, 0.5, 0.75, 0.75, ]);
    const array5 = new Float32Array([0.5, -0.5, 0.5, 1.0, -0.5, 0.25, -0.5, 0.25, 1.0, -1.0, -1.0, -0.5, 1.0, 0.0, 0.75, 1.0, 0.0, -0.25, -0.25, 0.75, -0.75, 0.5, 0.5, 0.5, 0.0, 1.0, 0.0, -0.25, 0.25, -0.25, 1.0, 0.25, -0.5, 0.75, 0.75, -0.25, -0.25, 0.25, -0.25, -1.0, 0.25, 0.25, 0.0, 0.75, 1.0, -0.25, 0.5, 0.75, -0.5, 0.25, -0.75, 1.0, 0.25, 1.0, -0.75, 1.0, -0.25, -0.25, -0.75, -1.0, -1.0, 0.0, 0.0, 1.0, 0.25, -0.5, -0.75, 0.0, -1.0, 1.0, -0.25, 0.25, -0.25, 0.75, -1.0, -0.75, 0.25, 0.75, 1.0, -0.5, 0.25, 1.0, 0.25, -1.0, -0.75, -0.5, -0.25, 0.0, -0.5, -0.5, 1.0, 1.0, -0.5, 1.0, 1.0, -1.0, 1.0, -1.0, 0.75, 0.0, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device20.pushErrorScope("out-of-memory");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array6 = new Float32Array([0.75, 1.0, 0.25, -0.75, -1.0, 0.25, 1.0, -0.75, 1.0, 1.0, -0.75, -1.0, -0.5, -0.25, -0.5, 0.0, 0.75, 0.75, -1.0, -1.0, 0.5, -0.25, 0.25, 0.75, 1.0, -0.75, 0.0, 0.25, -1.0, 0.0, -1.0, -1.0, -1.0, -0.75, -1.0, 0.25, -0.5, -1.0, -1.0, 1.0, 0.75, 0.5, -0.75, -0.5, -1.0, 0.5, 0.0, -1.0, 0.75, -0.75, 0.5, -0.75, 0.75, 1.0, 0.0, -1.0, 1.0, 0.25, -0.75, -0.25, -0.25, 0.75, 1.0, 0.25, -0.5, 0.75, -0.75, -0.25, -0.25, -0.75, -0.5, 0.0, 0.75, -0.75, -0.25, 1.0, 1.0, -0.5, 0.0, 0.75, -0.75, -0.25, -1.0, 0.0, -0.25, -1.0, 0.0, 0.25, -0.75, -0.75, 0.25, 0.75, -1.0, 0.75, -0.25, 0.5, -0.75, 0.25, -0.75, 0.5, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array7 = new Float32Array([-0.5, -0.5, -0.5, 0.75, -0.25, -0.25, 0.0, -0.75, 0.0, 0.0, -0.5, -0.25, 0.0, 1.0, -1.0, 0.5, -0.5, 0.0, 0.0, 1.0, 0.0, -0.5, 1.0, 0.25, -0.25, 0.5, 0.75, -0.25, 1.0, 0.25, -1.0, -1.0, -1.0, -0.5, 0.75, -0.75, -0.25, 1.0, 0.5, 0.0, 0.0, -0.75, 0.25, 0.25, 0.5, 1.0, 0.5, 0.25, -0.25, 1.0, 0.25, 0.5, -0.75, 0.75, 1.0, 0.5, 1.0, 0.0, 0.5, 1.0, -0.5, -0.25, -0.5, -1.0, 1.0, 0.75, 1.0, 0.5, 0.75, 0.75, -1.0, -1.0, -1.0, -1.0, -0.25, -1.0, -0.25, 0.25, 0.25, 0.75, -1.0, -0.25, -1.0, 1.0, -1.0, -0.25, 0.5, -1.0, 0.5, 0.0, -0.25, 0.25, 0.0, -0.25, 0.0, 0.0, 0.0, 0.25, -0.75, 1.0, ]);
    
    
    device30.destroy();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const array8 = new Float32Array([-0.5, -0.75, -1.0, -0.25, -0.75, -0.25, 0.75, 0.0, 0.0, -0.75, -0.5, -0.75, 0.25, 0.5, -1.0, 0.5, 0.75, 0.25, 0.75, 1.0, 0.0, -0.5, 1.0, -1.0, 0.75, -0.75, 0.75, 0.5, -1.0, 1.0, 0.75, 1.0, -1.0, -0.5, 0.25, 1.0, -1.0, -1.0, 0.75, -0.5, 0.0, 1.0, 0.5, 0.75, -0.5, 0.5, 1.0, -0.25, -1.0, 1.0, -1.0, -0.25, -0.5, 1.0, -0.75, -0.5, 0.0, 0.5, -0.25, 0.25, 0.0, -0.75, -0.5, 0.75, 1.0, 0.75, 0.0, 1.0, 0.5, 0.5, 1.0, 0.5, 1.0, 0.0, -0.5, -0.75, -0.25, 0.75, 1.0, -0.75, -0.5, -1.0, -0.75, -0.5, -0.25, 1.0, 1.0, -0.5, -0.75, 0.25, -0.75, 0.25, -1.0, -0.75, 0.0, -0.5, -1.0, -0.5, 0.5, -0.25, ]);
    const array9 = new Float32Array([1.0, 0.25, 0.75, 0.25, 0.0, -0.25, 0.25, 1.0, -1.0, -0.25, -0.75, 1.0, -1.0, -0.5, -0.5, -1.0, -0.75, -0.5, -0.25, 0.0, -0.75, 0.25, -0.75, 0.5, -0.5, 1.0, 1.0, 1.0, -0.5, 0.75, -0.5, 1.0, -0.5, -0.5, 0.0, 0.25, 0.25, 0.5, 0.75, 1.0, 0.5, 1.0, -0.25, -1.0, -0.75, -0.5, 1.0, 1.0, 0.25, 1.0, 1.0, 1.0, 0.0, -0.25, 0.5, -0.5, 1.0, 0.5, -0.5, 0.75, 0.5, -1.0, -0.75, -0.75, -0.25, -0.5, -0.25, -1.0, -0.25, 1.0, 0.75, -0.75, -0.75, 0.75, 0.25, 0.0, 1.0, -0.5, 0.75, 1.0, 0.75, -0.75, -0.5, 0.25, 0.5, -0.75, 0.5, 0.25, -1.0, 0.0, 0.0, 0.0, 0.75, -0.5, 0.0, -1.0, 0.0, -0.25, -1.0, -0.25, ]);
    device30.pushErrorScope("out-of-memory");
    const array10 = new Float32Array([0.75, 0.25, 1.0, -1.0, 0.5, 0.5, 0.0, 0.75, 1.0, -0.5, 0.0, -1.0, -1.0, 1.0, 0.5, -1.0, 0.75, -0.5, 1.0, 1.0, 0.75, -0.75, 0.0, -1.0, 0.5, -1.0, -1.0, 0.5, -1.0, 0.75, -0.25, 0.5, -0.25, -0.25, 1.0, 0.0, -1.0, -1.0, 1.0, -0.5, -1.0, 0.0, -0.5, -1.0, -0.5, 0.75, 0.5, -0.75, 0.5, -0.25, -1.0, 0.75, 0.5, -0.25, -0.25, 0.75, 0.5, 0.25, -1.0, -1.0, 0.25, 0.5, 0.25, 0.25, 0.25, 0.75, 1.0, 0.25, -1.0, 0.0, -1.0, -1.0, 1.0, 0.25, 0.5, 0.25, 0.5, 0.0, -0.25, 0.5, 0.5, 0.0, 0.5, -0.75, -0.25, 0.25, -0.5, 0.0, -0.25, 0.5, 0.5, 0.25, 0.25, -0.25, 1.0, -1.0, 0.5, 0.0, -0.75, 0.75, ]);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array11 = new Float32Array([0.0, 0.25, -1.0, 0.75, 0.5, 0.75, -0.5, -1.0, 1.0, -0.5, -0.5, -0.5, 0.5, -0.25, 0.75, -1.0, -0.25, -0.25, 0.0, 0.5, -0.5, 0.75, 0.25, -0.5, -0.5, -1.0, -0.25, -0.5, 0.25, 0.25, -1.0, 0.25, -1.0, 0.0, 0.0, -0.5, -0.5, -1.0, 0.0, -0.5, 0.0, 0.0, 0.0, 0.25, 0.25, 0.75, 0.75, 0.25, -1.0, 1.0, 0.25, 0.5, 0.75, 0.5, 0.75, 0.0, -0.75, 0.25, 0.0, 0.75, -0.5, -0.25, -0.5, -0.25, 1.0, -0.75, 0.25, 1.0, 0.0, 0.75, 0.5, -0.5, -0.5, 0.25, -0.25, -0.75, -0.5, -1.0, 0.75, 0.0, 0.5, 0.25, 0.25, -0.75, -0.25, 0.25, -0.25, 0.75, 0.5, -0.25, 0.0, -1.0, -0.25, -1.0, -0.75, 0.5, 1.0, 0.5, -0.25, -0.75, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    device30.pushErrorScope("internal");
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture400.destroy();
    device40.queue.submit([]);
    
    
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    device00.pushErrorScope("validation");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder800.insertDebugMarker("mymarker");
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer800 = command_encoder800.finish();
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device50.pushErrorScope("internal");
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    texture401.destroy();
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const array12 = new Float32Array([0.75, 0.0, -0.5, 0.5, 0.0, 0.25, 0.0, -1.0, -0.75, 0.75, -0.25, 0.0, -0.5, 0.0, -0.75, 0.5, -0.75, 0.0, 0.0, 0.25, -0.75, -0.75, -1.0, -0.75, -1.0, 0.75, 0.75, -0.25, -0.75, 0.75, 0.0, -1.0, -0.75, 0.75, 0.25, 0.5, 0.0, -0.75, -0.5, 0.75, 0.25, -1.0, -1.0, 0.75, 0.5, 0.0, -0.5, 0.25, 0.0, 0.0, -0.75, -1.0, -0.25, 0.25, 0.0, -0.75, 0.5, -0.25, 0.25, 0.0, -0.75, 0.25, 0.25, -0.25, -1.0, 0.25, 1.0, 0.5, 0.75, 0.75, 0.25, 0.5, 0.0, -0.5, -0.5, -0.25, -0.75, 0.25, -0.25, -0.25, 0.0, 1.0, 0.0, -0.5, 1.0, 0.25, -0.25, 0.75, 1.0, 0.75, -0.75, -0.5, -0.5, -0.75, -0.25, 0.0, -1.0, 1.0, 1.0, 0.75, ]);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_buffer400 = command_encoder400.finish();
    command_encoder801.insertDebugMarker("mymarker");
    const command_buffer500 = command_encoder500.finish();
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    command_encoder600.insertDebugMarker("mymarker");
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device80.pushErrorScope("validation");
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder801.insertDebugMarker("mymarker");
    command_encoder401.insertDebugMarker("mymarker");
    device60.pushErrorScope("validation");
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder501.pushDebugGroup("mygroupmarker")
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder600.insertDebugMarker("mymarker");
    command_encoder501.insertDebugMarker("mymarker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const array13 = new Float32Array([1.0, -0.75, 0.5, 0.0, -1.0, -0.75, 0.25, 0.25, 0.75, -0.75, 1.0, 0.25, -0.25, 0.75, -0.5, 1.0, -0.25, 0.75, -0.5, 1.0, -0.75, -0.5, -0.75, -0.75, -0.25, -0.5, 0.25, 0.75, -0.5, -0.75, 0.5, 0.75, -0.75, -0.25, 0.0, 0.5, -0.25, -0.75, 0.5, 0.5, -0.75, -0.25, 0.5, -0.75, 0.0, -0.25, -0.5, -0.75, 0.75, 0.25, -1.0, -0.75, 1.0, 0.5, 0.25, -0.75, 0.5, -0.75, 0.25, 0.5, -0.25, -0.5, 1.0, -0.5, 0.0, 0.75, -0.75, -0.5, 0.5, 1.0, -0.75, -0.5, 0.25, 0.0, 0.75, 1.0, -0.75, 1.0, -0.5, -0.75, -0.75, 0.25, -0.25, 0.75, -0.25, -0.5, -0.5, 0.75, 0.75, -1.0, 1.0, 0.5, 1.0, 0.75, 0.25, -1.0, 0.25, 0.25, 0.5, 0.25, ]);
    const command_buffer801 = command_encoder801.finish();
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture402.destroy();
    
    device60.pushErrorScope("internal");
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    texture404.destroy();
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device50.queue.submit([command_buffer500, ]);
    
    
    const array14 = new Float32Array([0.0, 1.0, -1.0, 0.0, 0.5, 0.5, 0.75, 0.0, -0.5, 0.5, -0.75, -0.25, 0.75, 1.0, 0.0, -1.0, 0.75, -1.0, -0.5, 1.0, 0.25, -0.75, 0.5, 0.75, -0.75, -0.25, 0.5, 0.5, -1.0, 1.0, -0.25, -0.25, 0.5, 0.5, 0.0, -0.25, -0.5, -1.0, 0.5, 1.0, 1.0, 0.0, 1.0, -0.25, -0.5, -0.25, 0.0, 0.5, -0.75, -0.5, 0.75, 1.0, -0.5, -0.5, 0.25, 0.0, -0.75, 0.5, -0.75, -1.0, -0.75, -0.75, 0.0, 0.75, 0.5, 0.0, -0.25, -1.0, -0.75, 0.25, -0.25, -0.75, 0.25, -0.75, 0.5, -0.5, -0.75, 0.5, 0.25, 0.25, -1.0, -1.0, -0.25, 0.0, 0.75, -0.5, -0.75, 0.5, 1.0, -0.25, -1.0, 0.0, -1.0, 0.5, 0.25, -0.75, -0.25, -0.75, 0.0, 0.25, ]);
    texture600.destroy();
    
    
    
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder502.insertDebugMarker("mymarker");
    texture601.destroy();
    command_encoder401.pushDebugGroup("mygroupmarker")
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder200.insertDebugMarker("mymarker");
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    
    command_encoder401.popDebugGroup()
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    command_encoder502.insertDebugMarker("mymarker");
    command_encoder502.insertDebugMarker("mymarker");
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder502.pushDebugGroup("mygroupmarker")
    const command_buffer401 = command_encoder401.finish();
    command_encoder503.insertDebugMarker("mymarker");
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    command_encoder502.insertDebugMarker("mymarker");
    command_encoder402.pushDebugGroup("mygroupmarker")
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    
    const command_buffer403 = command_encoder403.finish();
    device40.pushErrorScope("out-of-memory");
    
    device80.pushErrorScope("out-of-memory");
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.setPipeline(render_pipeline401);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    command_encoder501.insertDebugMarker("mymarker");
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    command_encoder802.insertDebugMarker("mymarker");
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer501 = command_encoder501.finish();
    render_bundle_encoder801.pushDebugGroup("group_marker");
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder402.popDebugGroup()
    
    
    texture700.destroy();
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    texture403.destroy();
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    device70.pushErrorScope("out-of-memory");
    device90.queue.submit([]);
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    texture801.destroy();
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder402.setPipeline(render_pipeline403);
    
    command_encoder200.insertDebugMarker("mymarker");
    const command_buffer700 = command_encoder700.finish();
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    device100.pushErrorScope("out-of-memory");
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder900.pushDebugGroup("mygroupmarker")
    device80.queue.submit([command_buffer801, ]);
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm",
        dimension: "2d"
    });
    texture500.destroy();
    command_encoder402.pushDebugGroup("mygroupmarker")
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query902 = device90.createQuerySet({
        label: "query902",
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
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    command_encoder802.pushDebugGroup("mygroupmarker")
    
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder803 = device80.createCommandEncoder({ label: "command_encoder803" });
    
    texture801.destroy();
    
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
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
    
    
    const command_buffer1000 = command_encoder1000.finish();
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder900.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    texture601.destroy();
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    texture802.destroy();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.pushErrorScope("out-of-memory");
    render_bundle_encoder602.setPipeline(render_pipeline601);
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const command_buffer601 = command_encoder601.finish();
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.submit([]);
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device40.pushErrorScope("out-of-memory");
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
    command_encoder803.insertDebugMarker("mymarker");
    
    device60.pushErrorScope("out-of-memory");
    
    
    command_encoder600.popDebugGroup()
    device70.pushErrorScope("out-of-memory");
    command_encoder402.popDebugGroup()
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    
    command_encoder701.insertDebugMarker("mymarker");
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    command_encoder802.insertDebugMarker("mymarker");
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    
    texture902.destroy();
    command_encoder701.insertDebugMarker("mymarker");
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const command_buffer503 = command_encoder503.finish();
    const command_buffer802 = command_encoder802.finish();
    
    render_bundle_encoder601.setPipeline(render_pipeline601);
    const command_buffer1001 = command_encoder1001.finish();
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    
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
    
    const query903 = device90.createQuerySet({
        label: "query903",
        type: "occlusion",
        count: 32,
    });
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const command_buffer602 = command_encoder602.finish();
    
    command_encoder803.pushDebugGroup("mygroupmarker")
    
    
    command_encoder803.insertDebugMarker("mymarker");
    device50.queue.submit([command_buffer503, ]);
    render_bundle_encoder100.setPipeline(render_pipeline100);
    command_encoder405.insertDebugMarker("mymarker");
    command_encoder502.popDebugGroup()
    
    render_bundle_encoder500.setPipeline(render_pipeline500);
    command_encoder803.insertDebugMarker("mymarker");
    const array15 = new Float32Array([1.0, 0.25, -0.5, -0.5, -0.5, 0.75, 0.0, 1.0, -0.25, -0.5, 0.5, 0.0, 0.75, -0.75, -0.75, -0.5, -0.5, 1.0, -1.0, -0.75, -1.0, 1.0, 0.0, -0.75, 1.0, -0.25, -0.5, -0.75, 0.5, 0.0, 1.0, 1.0, -0.75, -0.5, -0.25, -0.75, 0.75, -0.75, 0.0, 0.5, 0.75, 0.25, 0.0, 0.0, -0.25, -0.75, 0.75, -1.0, -1.0, 0.0, 0.5, 1.0, -0.25, -0.75, 1.0, -0.75, -0.75, 0.0, -0.5, -0.5, -0.75, 1.0, 0.0, 0.5, 0.0, -0.25, -0.5, 1.0, -0.75, 0.75, 0.0, -1.0, -1.0, 1.0, -0.25, 1.0, 1.0, -1.0, 0.0, 1.0, 0.75, 0.25, -0.25, 0.0, -0.5, 0.5, -0.25, 0.25, -1.0, -0.25, 0.5, 0.75, -0.5, -0.75, 0.5, -0.75, 0.25, -0.25, -0.5, -0.25, ]);
    command_encoder600.pushDebugGroup("mygroupmarker")
    command_encoder803.popDebugGroup()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer401 = device40.createBuffer({
        label: "buffer401",
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
                    buffer: buffer400,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer401,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    render_bundle_encoder600.setPipeline(render_pipeline601);
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder502.insertDebugMarker("mymarker");
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    device80.queue.submit([command_buffer802, ]);
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder800.setPipeline(render_pipeline800);
    const query904 = device90.createQuerySet({
        label: "query904",
        type: "occlusion",
        count: 32,
    });
    command_encoder404.insertDebugMarker("mymarker");
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
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
    const command_buffer404 = command_encoder404.finish();
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    device80.queue.submit([command_buffer800, command_buffer802, ]);
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
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer600,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer601,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group600);
    
    const command_buffer406 = command_encoder406.finish();
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder402.pushDebugGroup("mygroupmarker")
    command_encoder900.pushDebugGroup("mygroupmarker")
    command_encoder405.clearBuffer(buffer400);
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const command_buffer701 = command_encoder701.finish();
    const texture903 = device90.createTexture({
        label: "texture903",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array16 = new Float32Array([-0.25, -0.25, -1.0, -0.25, -0.75, -0.25, 0.25, 0.5, 0.5, -0.25, 0.75, 0.0, 0.5, 1.0, 0.75, -1.0, 0.0, -1.0, 0.75, -0.75, -0.25, 0.5, 0.0, -0.75, -1.0, -0.5, 0.0, 0.5, -0.25, -0.75, 1.0, -0.5, 0.0, 0.75, -0.75, -0.25, 0.5, -0.75, 0.75, 0.0, -0.75, -0.5, 0.25, -0.5, -1.0, 0.5, 0.5, -0.75, -0.75, -0.25, -0.5, 0.0, 1.0, 1.0, -0.25, 1.0, 0.0, 0.25, -0.75, -0.75, 0.0, -0.25, -1.0, 0.5, 0.5, 0.5, 0.75, 0.0, -0.25, 0.25, 1.0, -0.5, 0.0, -0.75, -0.25, 0.75, -0.75, -0.5, -1.0, 0.75, 0.5, 0.0, -0.25, 0.25, -0.25, -0.25, 0.0, -1.0, -1.0, 0.5, -0.5, -1.0, -0.75, -0.5, -0.75, -1.0, -1.0, 0.0, -0.25, 1.0, ]);
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    texture405.destroy();
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    
    
    texture602.destroy();
    
    const command_encoder407 = device40.createCommandEncoder({ label: "command_encoder407" });
    command_encoder405.copyBufferToTexture(
        {
            buffer: buffer400
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    texture701.destroy();
    
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    command_encoder402.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    command_encoder000.insertDebugMarker("mymarker");
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
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
    device40.queue.submit([command_buffer400, command_buffer403, command_buffer404, command_buffer406, ]);
    command_encoder901.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder802.setPipeline(render_pipeline800);
    texture602.destroy();
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.submit([]);
    
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
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
    render_bundle_encoder901.pushDebugGroup("group_marker");
    
    
    texture1000.destroy();
    const command_encoder1002 = device100.createCommandEncoder({ label: "command_encoder1002" });
    
    buffer600.destroy()
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: render_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer800,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer801,
                },
            },
        ],
    });

    render_bundle_encoder802.setBindGroup(0, bind_group800);
    render_bundle_encoder801.setPipeline(render_pipeline800);
    const command_encoder804 = device80.createCommandEncoder({ label: "command_encoder804" });
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
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline601.getBindGroupLayout(0),
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

    render_bundle_encoder602.setBindGroup(0, bind_group601);
    buffer401.destroy()
    
    
    command_encoder803.insertDebugMarker("mymarker");
    const query1000 = device100.createQuerySet({
        label: "query1000",
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
    
    const bind_group801 = device80.createBindGroup({
        label: "bind_group801",
        layout: render_pipeline800.getBindGroupLayout(0),
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

    render_bundle_encoder800.setBindGroup(0, bind_group801);
    const command_buffer405 = command_encoder405.finish();
    device80.pushErrorScope("internal");
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    command_encoder901.popDebugGroup()
    device40.destroy();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    const command_buffer901 = command_encoder901.finish();
    render_bundle_encoder802.pushDebugGroup("group_marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
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
    
    
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer604,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer605,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group602);
    const array17 = new Float32Array([-0.5, -0.75, 0.75, 0.0, 0.5, -0.5, 0.25, 0.75, 0.75, 0.0, 1.0, -0.75, 0.25, 0.25, 0.0, 0.25, -0.25, -0.75, 0.75, 0.5, -0.5, -0.75, 0.5, 0.25, 0.0, 0.5, 0.0, 0.0, -0.5, -0.5, -0.25, 0.0, -1.0, 0.5, -0.25, 0.25, 0.5, -0.25, 0.75, -0.75, 0.0, 0.0, -0.25, 0.5, -1.0, 0.75, -0.5, 1.0, 0.75, 0.75, -0.5, 0.75, 0.75, 0.5, -1.0, -0.5, 0.25, 0.0, 0.0, 0.0, 0.75, 1.0, -0.5, -0.25, -0.75, -0.5, 1.0, -0.25, 0.5, -0.25, 0.0, -1.0, 0.75, -0.5, 0.0, 0.5, -0.75, 0.75, 0.75, -0.5, 0.0, -0.5, 0.25, -1.0, -0.75, 1.0, -0.75, 1.0, 0.5, -0.25, -0.25, 0.25, -0.75, 0.0, 1.0, 0.0, 1.0, 0.25, 0.75, 1.0, ]);
    
    
    texture603.destroy();
    
    
    
    device70.queue.submit([command_buffer701, ]);
    const command_buffer804 = command_encoder804.finish();
    const command_buffer504 = command_encoder504.finish();
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    command_encoder600.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    const command_buffer1002 = command_encoder1002.finish();
    const command_buffer803 = command_encoder803.finish();
    const command_buffer502 = command_encoder502.finish();
    command_encoder900.popDebugGroup()
    device100.queue.submit([command_buffer1000, ]);
    device50.queue.submit([command_buffer501, command_buffer504, ]);
    const command_buffer200 = command_encoder200.finish();
    device60.queue.submit([command_buffer601, ]);
    device50.queue.submit([command_buffer500, command_buffer504, ]);
    device60.queue.submit([command_buffer601, ]);
    const command_buffer600 = command_encoder600.finish();
    const command_buffer900 = command_encoder900.finish();
    device50.queue.submit([command_buffer502, ]);
    device80.queue.submit([command_buffer804, ]);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device100.queue.submit([command_buffer1001, command_buffer1002, ]);
    device60.queue.submit([command_buffer602, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer100 = command_encoder100.finish();
    device90.queue.submit([command_buffer900, ]);
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.submit([command_buffer800, command_buffer803, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([command_buffer600, ]);
    device90.queue.submit([command_buffer901, ]);
    device50.queue.submit([]);
    device60.queue.submit([command_buffer601, ]);
    const command_buffer407 = command_encoder407.finish();
    device50.queue.submit([]);
    device50.queue.submit([command_buffer500, ]);
    device80.queue.submit([]);
    device80.queue.submit([command_buffer800, command_buffer802, ]);
    device80.queue.submit([]);
    device50.queue.submit([command_buffer501, ]);
    device50.queue.submit([command_buffer504, ]);
    const command_buffer201 = command_encoder201.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer200, ]);
    const command_buffer000 = command_encoder000.finish();
    device90.queue.submit([command_buffer901, ]);
    device100.queue.submit([command_buffer1000, ]);
}