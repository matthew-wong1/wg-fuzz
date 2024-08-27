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
    const array0 = new Float32Array([0.25, -0.75, 0.75, -0.75, 0.5, 0.0, 0.75, -0.25, 0.75, -1.0, 1.0, 0.75, -0.25, 0.25, 1.0, 0.5, 0.0, -0.25, 1.0, -0.5, 0.25, 0.0, 0.75, -1.0, 0.5, -0.5, -0.75, 0.75, -0.5, 0.5, 0.75, 0.5, -0.5, -0.75, -0.75, 0.5, -0.5, 0.75, 0.0, 0.25, -0.75, 0.5, 0.5, 1.0, -1.0, 0.75, 0.75, -0.75, -1.0, -1.0, 0.75, 0.25, -0.75, 1.0, 0.0, 0.75, 0.75, 0.75, 1.0, 0.25, -0.5, 0.25, -0.25, -0.75, 1.0, 0.0, 0.75, 0.5, 0.25, -0.75, -0.75, -0.25, -0.5, 0.25, -0.75, 0.0, -0.75, 0.75, 0.25, 1.0, 0.75, -1.0, 0.75, 0.75, -0.25, 0.25, 0.5, 0.0, -0.5, 0.5, 0.75, -0.5, -0.25, 0.0, -0.5, 0.25, 0.0, 0.0, 0.75, -1.0, ]);
    
    const array1 = new Float32Array([-0.25, 0.5, 0.0, 0.25, 0.0, -1.0, 1.0, 0.0, 1.0, -1.0, 0.75, 0.0, -1.0, 1.0, 1.0, 0.5, -1.0, -0.75, -0.5, -0.25, -1.0, 0.0, 0.75, 0.75, 0.75, -0.25, 0.0, -0.25, -1.0, -1.0, 0.0, 0.75, -1.0, 0.0, -0.25, -1.0, 0.75, -0.5, -1.0, 0.25, 0.5, -1.0, 0.75, -0.5, 0.75, -0.75, -0.5, -0.5, 0.0, 0.25, -0.75, -0.5, 0.5, 0.5, -0.25, 0.25, -0.25, -0.75, -1.0, 0.0, -0.75, 0.25, 1.0, 1.0, -0.25, -0.5, 0.75, -0.25, -0.75, 0.0, 0.25, 0.0, 0.5, 1.0, -0.25, 1.0, 0.0, 0.75, 1.0, 0.5, -0.75, -0.25, 0.25, 0.75, -1.0, 0.25, -0.5, -0.5, 0.25, 0.25, 0.5, -0.25, 0.5, -0.25, 1.0, 1.0, 0.5, 1.0, 0.25, -1.0, ]);
    const array2 = new Float32Array([-0.75, 1.0, 0.0, -0.75, 1.0, -0.25, -0.25, 0.75, 0.25, 0.25, -1.0, 0.75, -1.0, -0.5, 0.75, -1.0, -0.5, 1.0, 0.5, 0.25, -0.75, -1.0, 0.0, -0.75, 1.0, -0.75, -1.0, 0.25, 0.0, 0.5, -1.0, 0.5, 0.75, 0.75, 0.0, -0.75, -1.0, 1.0, 0.5, 1.0, -0.5, 0.75, 0.5, 0.5, 0.25, -0.25, 1.0, -0.75, 1.0, 0.25, 1.0, -1.0, 0.75, -1.0, 0.0, 0.5, -1.0, 0.25, 0.25, 0.5, -0.5, -0.25, 0.5, 0.75, -0.75, 1.0, -0.75, 0.25, -1.0, -1.0, 1.0, -0.75, -0.25, 0.25, 0.0, -0.25, -1.0, 1.0, -1.0, 0.75, -0.5, -1.0, -1.0, 0.75, -0.5, -0.25, 0.5, 1.0, -1.0, -0.5, -0.75, -0.25, 0.5, 0.25, -1.0, -0.5, 1.0, 0.25, -0.5, -1.0, ]);
    
    const array3 = new Float32Array([1.0, 0.5, -0.5, 0.25, 0.0, 0.5, -0.25, -0.75, 1.0, 1.0, -0.25, 1.0, -0.5, 0.0, -0.75, -0.25, 0.25, 0.25, -0.25, -0.5, 0.5, 0.5, 0.5, -0.5, 0.75, 0.25, 0.5, -0.25, -0.25, -1.0, -0.5, 0.25, -0.75, -0.25, -0.75, 1.0, 0.25, 0.25, -1.0, 0.0, 1.0, -1.0, -1.0, 0.75, -0.5, 0.75, 0.75, 0.25, 1.0, 1.0, -1.0, -1.0, -1.0, 0.5, -0.75, -0.75, 0.5, -1.0, -1.0, -0.25, 0.75, -0.25, -1.0, -0.75, 0.25, 0.75, 0.0, -0.25, 0.5, -0.75, 0.25, 0.25, 0.5, -0.5, -1.0, -0.5, -1.0, 0.75, 0.75, 0.5, 0.75, 0.75, 0.0, 0.25, 1.0, -0.75, -0.25, 1.0, 0.25, -1.0, -0.75, 0.75, 0.25, 0.0, 0.25, 0.5, -0.5, -0.25, 0.0, 0.25, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array4 = new Float32Array([-0.75, 0.75, -1.0, 1.0, -1.0, 0.75, 1.0, 0.75, -0.5, -0.75, 0.5, 0.25, -1.0, 0.25, -0.25, -1.0, -1.0, -1.0, 0.25, 1.0, 0.0, 0.0, 0.0, -0.25, 0.25, 0.5, -0.5, 1.0, 0.5, -1.0, 1.0, 0.5, 0.75, 0.0, -0.75, -0.75, -0.75, 1.0, 0.75, 1.0, 0.25, -0.25, -1.0, -1.0, -1.0, 0.5, -0.75, -1.0, -0.25, -0.25, 0.75, 0.75, 0.5, 0.25, 0.0, 0.75, 0.0, -0.25, 0.5, -0.75, 1.0, 0.5, -0.75, -0.25, -0.25, 0.75, -0.25, -0.25, -0.75, 0.0, -1.0, -0.5, 0.5, -1.0, -0.25, 1.0, -0.5, 0.75, -0.75, -0.5, -0.5, 0.0, 0.5, 0.75, 0.75, 0.0, -1.0, 0.5, 0.75, -1.0, 1.0, -1.0, 0.0, -0.5, -0.25, 0.75, -1.0, -0.5, -0.25, -1.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const array5 = new Float32Array([0.0, 1.0, 0.0, -1.0, 0.75, -0.75, -0.5, 0.5, -1.0, 0.5, 0.0, -0.25, -0.25, -0.25, 0.5, 0.0, -0.5, -0.25, 0.25, 0.0, 0.25, -0.5, 0.25, 1.0, -0.75, 0.25, -0.5, 0.25, -0.25, -1.0, 0.75, 0.0, -0.25, 1.0, 1.0, -0.75, -0.25, 0.25, 1.0, -1.0, 0.5, -0.5, 1.0, 0.25, -1.0, -0.5, -0.25, 0.75, 0.0, 0.75, 0.5, -0.5, 1.0, 0.0, 0.5, 0.5, -1.0, -0.25, 1.0, -0.25, -0.75, -1.0, -0.25, 1.0, 0.25, 0.75, 0.0, 0.25, -0.25, -0.25, -0.5, 0.0, 0.5, 0.25, -0.75, -0.5, 0.0, 0.75, 1.0, 0.25, -0.75, 0.25, 0.0, 0.75, 0.5, 0.0, -1.0, -0.75, 1.0, 0.75, 0.0, 0.75, 0.0, -1.0, -0.25, 0.25, 0.75, 0.25, 0.5, -0.75, ]);
    const array6 = new Float32Array([-1.0, -1.0, -0.5, 0.0, 0.75, -0.5, 1.0, 0.0, -0.75, 0.0, 0.5, 0.5, -0.25, 0.75, 0.5, 1.0, 1.0, -0.25, 0.0, -0.75, 0.0, -0.75, 0.75, -0.5, 0.25, -0.5, -1.0, 0.75, 0.25, -1.0, -0.75, -0.5, -0.75, 1.0, -0.75, -0.25, 0.0, -0.25, -0.75, 0.75, 1.0, 0.25, -0.25, -1.0, 0.5, 0.75, 1.0, 0.25, -0.75, 1.0, -0.25, 0.25, -0.5, 0.5, -0.5, -0.75, -1.0, -1.0, 1.0, 0.25, -1.0, -1.0, 1.0, -0.25, 1.0, 0.5, -1.0, 0.25, -1.0, -1.0, 0.0, -0.75, -0.5, 0.25, -0.75, 1.0, 0.75, 0.75, -1.0, 0.25, -0.5, 0.5, 0.25, -1.0, -0.5, 0.0, 0.25, 0.0, 0.25, -0.5, -0.75, 1.0, 0.5, -0.25, 1.0, -0.25, 0.25, -1.0, -0.5, -0.25, ]);
    const array7 = new Float32Array([-0.75, 0.25, -0.5, 0.5, -0.75, 0.75, 0.75, 0.75, 1.0, -0.25, 0.75, 1.0, -0.75, -1.0, 0.5, 0.75, 0.25, 0.75, 0.0, 0.75, -1.0, 0.0, -0.5, 0.0, -1.0, -0.75, -0.25, -0.5, -0.5, 0.0, -1.0, -0.5, 0.5, -0.25, 1.0, 0.5, 0.25, 1.0, 0.5, -1.0, -0.75, -0.25, -0.5, -0.5, 0.0, 0.75, -1.0, -0.25, -0.5, 0.25, 0.0, -0.25, 1.0, 0.5, -0.5, -0.75, 0.25, 0.75, -1.0, 1.0, 0.5, 0.0, 0.75, -0.25, 1.0, 0.75, -0.25, -0.5, -0.5, 1.0, -0.75, 0.25, 0.75, 0.25, -0.25, 0.75, 1.0, 1.0, -1.0, 1.0, -0.5, -0.75, -0.5, 0.5, -0.5, -0.5, -0.5, 1.0, 0.25, 0.25, 0.5, -0.5, 0.0, 1.0, -0.5, -0.75, 1.0, 0.25, 0.5, -0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([-1.0, -1.0, -1.0, 0.75, 0.75, 0.5, -1.0, -0.75, 0.5, -1.0, 0.25, -1.0, 0.25, 0.5, 0.0, -0.25, 0.0, -0.5, 0.25, 0.0, 0.0, 0.5, 0.0, -0.75, 0.25, 0.75, -1.0, -0.25, 0.25, -0.5, -0.75, -0.75, -0.5, -0.25, 0.75, 0.5, -1.0, 0.0, 0.25, -0.75, 0.75, 1.0, 0.5, -1.0, -1.0, -0.75, 0.5, 0.5, 0.5, -0.5, 0.5, 0.25, -1.0, -0.75, 0.0, 0.5, 1.0, 1.0, -1.0, -0.5, -1.0, -0.75, 0.75, -1.0, -1.0, -1.0, 0.5, -0.75, -0.75, -0.25, 0.0, -0.75, 0.75, -0.75, -0.5, -0.75, 0.0, 1.0, 0.0, 0.25, -1.0, -0.25, 0.0, 0.0, -0.5, -0.25, 0.75, -0.5, 0.0, 0.75, 0.25, -1.0, 0.75, -0.5, 0.0, 1.0, 0.5, -0.5, 0.25, 0.5, ]);
    
    const array9 = new Float32Array([0.5, -0.25, 1.0, -0.5, -0.25, 0.0, -0.5, 0.25, 0.25, 0.25, -0.75, 1.0, 0.75, 0.25, 0.0, -1.0, -0.75, -0.25, 0.0, 0.75, -0.25, -0.75, 1.0, -0.5, 0.5, -1.0, 1.0, 1.0, -0.5, 0.75, -1.0, -0.25, 1.0, 0.75, 0.25, 1.0, 0.5, -0.5, 0.0, -0.25, -1.0, -1.0, -0.5, 1.0, 0.75, 0.0, 1.0, -0.5, -0.5, 0.0, 0.0, -0.75, 0.25, 1.0, 0.25, 0.25, -0.5, 0.0, -0.75, -0.5, 0.25, -0.75, 0.75, 1.0, 0.0, 0.0, 1.0, -0.25, 0.25, -0.5, -0.5, 1.0, -0.25, -0.75, -0.75, -0.25, 0.75, 0.75, 0.25, 0.75, -0.5, 0.0, 0.25, -1.0, -0.5, -0.5, 0.5, -0.25, -1.0, -0.75, -1.0, -0.5, 1.0, 0.5, -1.0, -1.0, -1.0, 0.0, 0.75, -0.75, ]);
    texture100.destroy();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    device10.pushErrorScope("validation");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array10 = new Float32Array([0.25, -0.5, -0.5, 1.0, -0.25, -0.5, 0.75, 0.5, 0.75, 0.75, -0.25, 0.75, 0.25, 1.0, 0.75, -0.25, 0.25, 1.0, 0.0, -1.0, 0.5, -0.5, 0.75, 0.25, 0.25, -1.0, -0.75, -0.25, -1.0, 1.0, -0.25, 0.75, -0.75, 1.0, -1.0, 0.25, 0.5, 0.0, 0.5, 1.0, -0.75, -0.25, -0.5, -1.0, 0.75, -1.0, -0.5, 0.5, -0.75, 0.25, 0.25, 0.5, -1.0, -0.75, 0.25, 0.25, 0.75, 0.25, -1.0, -1.0, 0.5, 0.75, -0.5, 0.75, 1.0, -1.0, -0.75, 0.25, 0.75, -1.0, -1.0, 0.25, 0.0, -1.0, -0.5, 0.75, -0.5, 0.0, -0.75, 0.5, -0.75, 0.75, 0.5, -0.5, 1.0, 0.75, 0.5, -1.0, -1.0, 0.25, 0.25, -0.5, -0.5, 0.0, 0.5, 0.75, -1.0, -0.25, 0.75, 0.25, ]);
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
    device10.pushErrorScope("internal");
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    
    texture101.destroy();
    const command_buffer100 = command_encoder100.finish();
    
    query100.destroy()
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    query100.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    query100.destroy()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device20.pushErrorScope("validation");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8snorm",
        dimension: "2d"
    });
    query100.destroy()
    device20.destroy();
    device00.destroy();
    render_bundle_encoder100.setPipeline(render_pipeline101);
    query100.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.setPipeline(render_pipeline101);
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    
    const array11 = new Float32Array([-1.0, -0.75, 0.0, -0.5, -0.75, -0.75, -0.75, 0.75, -0.75, 0.5, -0.5, -0.25, 1.0, 1.0, -1.0, -1.0, -0.5, 0.0, 0.75, 0.0, -1.0, 0.75, 0.5, -0.25, -0.5, 0.5, 1.0, 1.0, -1.0, 0.25, 0.25, 0.0, 1.0, 0.25, -0.5, 0.75, -0.25, 0.5, 0.0, -0.75, 0.5, 0.0, -0.25, -0.25, 0.25, -0.5, 0.75, 0.0, -0.5, -0.5, 0.75, -0.5, 0.75, 1.0, 0.25, 0.75, 0.5, 0.75, -0.25, -0.25, -0.5, 1.0, 1.0, 0.0, -0.25, -0.25, 0.25, 0.25, 0.25, -0.25, 0.0, 1.0, -0.75, -0.5, 1.0, -1.0, 0.75, 0.5, 0.0, -0.75, 0.5, -0.25, -0.75, 0.5, 1.0, -0.75, -1.0, -0.5, 0.75, -0.5, -0.75, 0.25, 0.5, -0.25, -0.75, -0.25, -0.5, 0.75, 1.0, 0.5, ]);
    render_bundle_encoder100.popDebugGroup();
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    command_encoder102.insertDebugMarker("mymarker");
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    buffer101.destroy()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    buffer102.destroy()
    buffer103.destroy()
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    render_bundle_encoder102.setPipeline(render_pipeline105);
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    query100.destroy()
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    query100.destroy()
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    device10.pushErrorScope("out-of-memory");
    
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group101);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.setVertexBuffer(0, buffer102);
    
    
    
    
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer105.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer107, 0, array7, 0, array7.length);
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array12 = new Float32Array([-0.25, 0.25, 1.0, -0.5, -1.0, 0.75, 0.25, 0.0, 0.5, -0.5, 0.25, 0.0, 0.75, -1.0, -0.5, 1.0, -0.75, -0.25, -1.0, 0.25, -0.25, 0.25, 0.25, -0.75, -0.5, 0.0, -0.5, 1.0, -0.5, 0.75, -0.75, 0.75, 1.0, 0.25, 1.0, 0.25, -1.0, 0.0, -0.75, 0.25, -0.75, -0.75, 0.0, -0.25, 0.25, -0.5, 1.0, -0.25, 0.5, 0.0, 1.0, 0.0, 0.75, -0.75, -1.0, 1.0, -0.25, -1.0, 1.0, 0.0, -0.75, -0.5, -0.25, 0.75, 0.5, -0.75, -1.0, 0.0, 1.0, 0.0, 0.0, 0.75, 0.0, 0.75, 0.0, -0.25, -1.0, -0.75, 0.75, 0.75, -0.25, 0.0, 0.25, -1.0, -0.25, 0.25, -1.0, 0.0, 1.0, -0.25, 0.0, 0.25, 0.5, -0.25, 1.0, -0.5, -0.25, 0.5, -0.75, 0.5, ]);
    
    
    buffer100.destroy()
    device10.queue.writeBuffer(buffer107, 0, array12, 0, array12.length);
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    texture102.destroy();
    compute_pass_encoder1020.popDebugGroup()
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    texture103.destroy();
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    {
        await buffer107.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer107.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer107.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module109,
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
            module: shader_module109,
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
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    device10.queue.writeBuffer(buffer107, 0, array10, 0, array10.length);
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    {
        await buffer107.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer107.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer107.unmap();
        console.log(new Float32Array(data));
    }
    const command_buffer104 = command_encoder104.finish();
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device30.pushErrorScope("internal");
    
    command_encoder103.clearBuffer(buffer107);
    {
        await buffer107.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer107.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer107.unmap();
        console.log(new Float32Array(data));
    }
    const array13 = new Float32Array([-0.75, 0.5, -0.25, -0.25, 1.0, 0.5, -0.25, 0.25, 0.0, 0.25, -0.75, 1.0, 1.0, 0.25, -1.0, 0.25, 0.0, 0.5, 0.75, 1.0, 0.0, -0.25, 1.0, 0.25, 0.75, 1.0, -1.0, 0.0, 0.5, 0.25, 0.5, 1.0, -1.0, -0.75, 0.25, -0.75, 0.0, -1.0, 0.5, -0.25, 0.5, -0.25, -1.0, 1.0, 0.75, -0.25, 0.25, -1.0, 0.75, 0.25, 0.75, 1.0, -0.75, -0.75, 0.75, 0.75, -0.25, -0.75, 0.5, -0.75, 0.75, -1.0, 0.0, -1.0, -1.0, -1.0, 0.0, -0.25, 1.0, 1.0, -0.5, 1.0, 0.5, 0.75, 0.25, 1.0, -0.25, -1.0, 0.75, -0.5, -1.0, -1.0, 0.5, 1.0, -1.0, -0.75, -1.0, 0.25, 0.75, 0.0, 0.0, 1.0, 0.5, -0.5, 0.75, -0.25, 0.5, -0.75, 0.0, -0.75, ]);
    device10.queue.writeBuffer(buffer107, 0, array8, 0, array8.length);
    
    
    
    query100.destroy()
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer107, 0, array11, 0, array11.length);
    buffer107.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder102.popDebugGroup();
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
        vertex: {
            module: shader_module109,
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
            module: shader_module109,
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
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    buffer104.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    query100.destroy()
    device40.destroy();
    
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    query101.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    command_encoder103.insertDebugMarker("mymarker");
    
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    compute_pass_encoder1020.popDebugGroup()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder100.setVertexBuffer(0, buffer102);
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
        vertex: {
            module: shader_module109,
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
            module: shader_module109,
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
    
    texture104.destroy();
    buffer109.destroy()
    
    
    buffer1011.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline1016 = device10.createRenderPipeline({
        label: "render_pipeline1016",
        vertex: {
            module: shader_module109,
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
            module: shader_module109,
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
    
    
    const render_pipeline1017 = device10.createRenderPipeline({
        label: "render_pipeline1017",
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
    device10.queue.writeBuffer(buffer1012, 0, array8, 0, array8.length);
    render_bundle_encoder101.setVertexBuffer(0, buffer102);
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    device10.queue.writeBuffer(buffer1012, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer1012, 0, array7, 0, array7.length);
    
    
    
    buffer108.destroy()
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder106.copyTextureToBuffer(
        {
            texture: texture105
        },
        {
            buffer: buffer1012
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder105.copyTextureToBuffer(
        {
            texture: texture106
        },
        {
            buffer: buffer1012
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const command_buffer106 = command_encoder106.finish();
    device10.queue.writeBuffer(buffer1012, 0, array5, 0, array5.length);
    
    device10.queue.writeBuffer(buffer1012, 0, array3, 0, array3.length);
    device30.pushErrorScope("internal");
    device10.queue.writeBuffer(buffer1012, 0, array2, 0, array2.length);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer1012, 0, array7, 0, array7.length);
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    command_encoder103.insertDebugMarker("mymarker");
    
    device10.queue.writeBuffer(buffer1012, 0, array1, 0, array1.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer1012, 0, array4, 0, array4.length);
    const render_pipeline1018 = device10.createRenderPipeline({
        label: "render_pipeline1018",
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
    command_encoder301.insertDebugMarker("mymarker");
    render_bundle_encoder100.popDebugGroup();
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    
    
    buffer1010.destroy()
    texture105.destroy();
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder300.pushDebugGroup("mygroupmarker")
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device10.queue.writeBuffer(buffer1012, 0, array0, 0, array0.length);
    const array14 = new Float32Array([0.5, 1.0, -0.5, 0.75, 0.25, -1.0, 0.5, -0.25, -0.5, -0.75, 0.25, -1.0, 0.75, 0.75, 0.5, -1.0, -0.5, 0.25, 1.0, -0.5, -0.5, -0.25, 0.75, -0.75, -0.75, 0.25, 0.5, 0.25, -0.5, -0.75, 0.25, 1.0, 0.0, 0.0, 0.0, 0.75, -0.75, 0.5, 0.5, 1.0, 0.25, -0.5, 0.75, 0.0, 0.5, 0.0, 0.25, -0.75, -0.5, 1.0, -0.75, 0.5, 0.0, -0.5, -0.5, -0.25, 0.0, 0.0, 1.0, 1.0, -0.25, 0.5, 1.0, 0.5, -0.5, 1.0, 0.0, 0.75, 1.0, 0.75, 0.5, 0.0, 0.0, -1.0, 1.0, -0.75, -0.25, 0.0, 0.0, 0.25, -0.75, 0.0, 0.25, 0.0, -0.75, -0.25, -0.75, -1.0, 0.25, 0.0, 0.5, -1.0, 0.5, -0.5, -0.75, -0.75, 0.25, -1.0, 0.75, -1.0, ]);
    const command_buffer103 = command_encoder103.finish();
    const array15 = new Float32Array([-0.5, -0.25, 1.0, -0.25, 0.0, 0.5, 0.5, -0.5, -0.5, 1.0, 0.25, -1.0, 0.75, -0.25, -0.5, -0.25, -1.0, -0.25, 1.0, -0.25, -0.25, 0.0, 0.5, 0.0, 1.0, 0.0, -0.75, 0.5, 1.0, -0.25, 0.5, 0.5, 1.0, -1.0, -0.75, 0.25, 0.0, -0.5, -0.5, -1.0, -0.25, 0.5, 0.25, 0.75, -0.5, 0.5, -0.5, 0.75, 0.5, 0.5, -0.75, -0.75, 0.0, 0.5, 0.5, 0.5, 0.75, -0.5, 1.0, -0.75, -0.75, -0.25, -0.25, 0.75, 0.75, -1.0, 1.0, 0.25, -1.0, -0.5, -0.5, -0.75, 0.75, 0.75, 0.5, -1.0, 1.0, -0.5, -0.75, 1.0, 0.5, 0.25, 0.75, 1.0, 0.5, 0.0, 0.5, 0.75, 0.5, -0.5, 0.25, 0.25, -0.5, -0.5, 0.0, -0.75, 0.75, -1.0, 0.0, 0.5, ]);
    
    const render_pipeline1019 = device10.createRenderPipeline({
        label: "render_pipeline1019",
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
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer1012, 0, array2, 0, array2.length);
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    buffer300.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer1012, 0, array8, 0, array8.length);
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    
    command_encoder300.popDebugGroup()
    device10.queue.writeBuffer(buffer1012, 0, array0, 0, array0.length);
    render_bundle_encoder102.popDebugGroup();
    command_encoder302.pushDebugGroup("mygroupmarker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array16 = new Float32Array([-0.5, 0.5, -0.5, 0.5, 1.0, 0.25, -0.25, -0.5, 0.5, -0.25, 0.25, 0.5, -0.5, 0.5, 0.75, -0.75, 0.0, 1.0, 1.0, -0.5, -1.0, 0.75, 0.25, -0.25, -0.75, -0.25, 0.5, 0.75, 0.5, 0.75, -1.0, -1.0, 1.0, -1.0, 0.0, -1.0, 1.0, 1.0, -0.5, 0.75, 0.0, -0.75, -0.75, 0.0, -0.5, -0.75, 0.5, 0.0, 0.5, 1.0, -0.25, -0.25, -1.0, 0.0, -0.75, -1.0, -0.75, -1.0, 0.5, 0.5, 1.0, 0.5, 0.75, -0.25, 0.75, 1.0, -0.5, 0.25, 0.25, 0.5, 0.0, -0.5, 0.0, 0.5, -1.0, 0.0, -1.0, -0.75, 0.75, 0.25, -0.75, -0.25, 1.0, -0.75, -0.75, 0.75, 0.0, -0.5, 0.5, -0.25, 0.5, -0.25, 0.25, 0.5, 0.0, 0.75, 0.25, 0.75, -1.0, -0.5, ]);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer1012, 0, array13, 0, array13.length);
    device10.queue.writeBuffer(buffer1012, 0, array3, 0, array3.length);
    
    device10.queue.writeBuffer(buffer1012, 0, array14, 0, array14.length);
    device10.queue.writeBuffer(buffer1012, 0, array7, 0, array7.length);
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    device10.queue.writeBuffer(buffer1012, 0, array9, 0, array9.length);
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const render_pipeline1020 = device10.createRenderPipeline({
        label: "render_pipeline1020",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    texture107.destroy();
    command_encoder300.resolveQuerySet(
        query301,
        0,
        32,
        buffer301,
        0
    )
    device30.pushErrorScope("internal");
    
    
    
    const render_pipeline1021 = device10.createRenderPipeline({
        label: "render_pipeline1021",
        vertex: {
            module: shader_module1012,
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
            module: shader_module1012,
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
    device10.queue.writeBuffer(buffer1012, 0, array8, 0, array8.length);
    const array17 = new Float32Array([0.75, 0.5, -0.5, -0.5, -1.0, -0.5, 0.25, -0.75, -1.0, -0.5, -0.75, -0.25, 0.0, 0.75, 0.0, -0.5, -0.5, 1.0, -0.75, -1.0, 0.5, 0.0, 0.0, -0.5, 1.0, 0.25, 0.25, -0.5, -0.5, -0.5, -0.5, -0.25, 0.5, 0.5, 0.25, 0.75, -0.75, 0.0, -1.0, 0.25, -0.75, 0.5, 0.0, -1.0, 0.5, 0.5, -0.25, -0.5, 0.75, 1.0, -1.0, -1.0, -0.5, 0.0, -0.5, 0.5, 1.0, -0.75, -0.75, -1.0, 0.75, -0.75, 1.0, 0.75, -0.5, -0.75, 0.25, 0.5, 0.75, -0.75, 0.5, 0.75, 1.0, 0.25, -0.25, -1.0, -0.5, 0.75, 0.0, 0.5, 0.0, -0.75, 0.5, -0.5, 0.75, -0.75, 1.0, -0.5, -0.25, 0.25, -0.75, -0.5, -0.75, 1.0, -0.5, 0.75, 0.0, 0.0, 1.0, 1.0, ]);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder302.popDebugGroup()
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    command_encoder300.resolveQuerySet(
        query301,
        0,
        32,
        buffer301,
        0
    )
    const command_buffer303 = command_encoder303.finish();
    
    command_encoder302.resolveQuerySet(
        query301,
        0,
        32,
        buffer301,
        0
    )
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer1012, 0, array11, 0, array11.length);
    command_encoder300.insertDebugMarker("mymarker");
    
    
    device10.queue.writeBuffer(buffer1012, 0, array6, 0, array6.length);
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    texture301.destroy();
    device10.queue.writeBuffer(buffer1012, 0, array17, 0, array17.length);
    const render_pipeline1022 = device10.createRenderPipeline({
        label: "render_pipeline1022",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline1023 = device10.createRenderPipeline({
        label: "render_pipeline1023",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    command_encoder300.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer1012, 0, array17, 0, array17.length);
    device10.queue.writeBuffer(buffer1012, 0, array17, 0, array17.length);
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const render_pipeline1024 = device10.createRenderPipeline({
        label: "render_pipeline1024",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer1012, 0, array5, 0, array5.length);
    
    device10.queue.writeBuffer(buffer1012, 0, array13, 0, array13.length);
    device10.pushErrorScope("out-of-memory");
    device10.queue.writeBuffer(buffer1012, 0, array4, 0, array4.length);
    const render_pipeline1025 = device10.createRenderPipeline({
        label: "render_pipeline1025",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    
    
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    query304.destroy()
    
    device10.queue.writeBuffer(buffer1012, 0, array11, 0, array11.length);
    const render_pipeline1026 = device10.createRenderPipeline({
        label: "render_pipeline1026",
        vertex: {
            module: shader_module109,
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
            module: shader_module109,
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
    command_encoder304.resolveQuerySet(
        query304,
        0,
        32,
        buffer301,
        0
    )
    device10.queue.writeBuffer(buffer1012, 0, array12, 0, array12.length);
    
    
    
    compute_pass_encoder3020.popDebugGroup()
    
    query101.destroy()
    device10.queue.writeBuffer(buffer1012, 0, array6, 0, array6.length);
    
    compute_pass_encoder1020.popDebugGroup()
    texture106.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_pipeline1027 = device10.createRenderPipeline({
        label: "render_pipeline1027",
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
    device10.queue.writeBuffer(buffer1012, 0, array4, 0, array4.length);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder1050.popDebugGroup()
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    texture300.destroy();
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const render_pipeline1028 = device10.createRenderPipeline({
        label: "render_pipeline1028",
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
    device10.queue.writeBuffer(buffer1012, 0, array2, 0, array2.length);
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    command_encoder107.clearBuffer(buffer1012);
    const array18 = new Float32Array([0.75, 0.0, 0.0, -0.25, 1.0, -0.5, 0.75, -0.5, 0.5, 0.75, 0.5, 0.5, 0.75, -0.75, 0.75, 0.75, -1.0, -0.75, -0.75, 0.0, 0.5, 0.75, 0.25, -0.75, 1.0, 0.75, 0.25, 0.5, 0.25, 0.25, -0.5, -0.75, 1.0, 0.25, 1.0, -0.25, 0.75, 0.5, 0.5, -1.0, 0.25, 0.0, 0.25, 0.5, 0.5, 0.25, 0.75, -0.5, 0.75, -1.0, -1.0, 0.0, 0.25, -0.75, 1.0, 1.0, 0.5, 0.0, -0.5, -1.0, -1.0, 0.0, 0.25, -0.25, 0.5, 1.0, -0.25, 0.25, -0.5, -1.0, 1.0, -0.25, 0.75, 0.25, 1.0, -0.75, -0.25, -0.75, 0.25, -0.5, -0.25, -0.25, -0.25, 0.5, -0.75, -0.25, 0.5, 0.5, -0.5, -0.5, 0.75, 0.0, -0.25, -0.25, 0.75, 0.25, -0.75, 0.5, 0.0, -0.5, ]);
    
    
    query101.destroy()
    device50.pushErrorScope("internal");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    command_encoder107.pushDebugGroup("mygroupmarker")
    const render_pipeline1029 = device10.createRenderPipeline({
        label: "render_pipeline1029",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    device10.queue.writeBuffer(buffer1012, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer1012, 0, array5, 0, array5.length);
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    
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
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline1030 = device10.createRenderPipeline({
        label: "render_pipeline1030",
        vertex: {
            module: shader_module1012,
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
            module: shader_module1012,
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
    device10.queue.writeBuffer(buffer1012, 0, array16, 0, array16.length);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pipeline1031 = device10.createRenderPipeline({
        label: "render_pipeline1031",
        vertex: {
            module: shader_module109,
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
            module: shader_module109,
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
    
    
    
    const render_pipeline1032 = device10.createRenderPipeline({
        label: "render_pipeline1032",
        vertex: {
            module: shader_module1012,
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
            module: shader_module1012,
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
    command_encoder107.resolveQuerySet(
        query103,
        0,
        32,
        buffer1011,
        0
    )
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    const array19 = new Float32Array([0.75, 0.25, -0.5, -1.0, -0.5, -1.0, -1.0, 0.5, 1.0, 0.5, -0.5, 0.5, 0.5, -0.5, -1.0, 0.5, 0.5, 1.0, -1.0, 0.75, 0.5, 0.25, -0.75, -0.5, -1.0, 0.25, 0.25, 0.0, -1.0, 0.5, 0.0, 0.0, 0.5, -0.75, -0.75, 0.5, 0.0, 0.5, -0.75, -0.75, -0.5, 1.0, -0.75, 0.5, 0.0, 0.5, -1.0, 0.0, -0.75, 0.25, -0.25, -0.25, -0.25, 0.25, 0.5, -0.75, -0.25, -0.5, 0.75, 0.25, 0.0, 0.25, 0.0, 0.25, 1.0, 0.75, -1.0, -0.5, 0.75, -0.5, 1.0, 0.0, 0.75, -1.0, -0.5, -0.75, 1.0, 1.0, 0.75, -0.5, 0.75, -1.0, 0.25, 1.0, 0.5, -1.0, -0.5, 0.25, 0.5, 1.0, -0.5, 0.5, -0.75, 0.75, -0.5, -0.75, 1.0, -1.0, 1.0, 0.0, ]);
    command_encoder304.resolveQuerySet(
        query303,
        0,
        32,
        buffer301,
        0
    )
    
    
    
    
    
    const render_pipeline1033 = device10.createRenderPipeline({
        label: "render_pipeline1033",
        vertex: {
            module: shader_module1012,
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
            module: shader_module1012,
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
    const render_pipeline1034 = device10.createRenderPipeline({
        label: "render_pipeline1034",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    device10.queue.writeBuffer(buffer1012, 0, array19, 0, array19.length);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    command_encoder501.pushDebugGroup("mygroupmarker")
    var shader_module1014_code = "";
    try {
        shader_module1014_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1014 = await device10.createShaderModule({ label: "shader_module1014", code: shader_module1014_code })
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    command_encoder107.resolveQuerySet(
        query103,
        0,
        32,
        buffer1011,
        0
    )
    device10.queue.writeBuffer(buffer1012, 0, array8, 0, array8.length);
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder501.popDebugGroup()
    
    
    
    query102.destroy()
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    command_encoder304.resolveQuerySet(
        query302,
        0,
        32,
        buffer301,
        0
    )
    const command_buffer501 = command_encoder501.finish();
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    device10.queue.writeBuffer(buffer1012, 0, array14, 0, array14.length);
    device10.queue.writeBuffer(buffer1012, 0, array9, 0, array9.length);
    
    device10.queue.writeBuffer(buffer1012, 0, array10, 0, array10.length);
    command_encoder304.insertDebugMarker("mymarker");
    
    
    command_encoder304.resolveQuerySet(
        query301,
        0,
        32,
        buffer301,
        0
    )
    const render_pipeline1035 = device10.createRenderPipeline({
        label: "render_pipeline1035",
        vertex: {
            module: shader_module1013,
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
            module: shader_module1013,
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
    command_encoder304.resolveQuerySet(
        query305,
        0,
        32,
        buffer301,
        0
    )
    
    command_encoder107.clearBuffer(buffer1012);
    query302.destroy()
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1050.popDebugGroup()
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    command_encoder107.popDebugGroup()
    const command_buffer304 = command_encoder304.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer107 = command_encoder107.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer500 = command_encoder500.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}