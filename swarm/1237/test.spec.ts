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
    const array0 = new Float32Array([1.0, 0.75, 0.75, 0.25, 0.75, -0.25, -0.25, -1.0, -0.5, 0.25, -0.25, 0.0, -0.25, -0.25, 0.0, -0.25, -1.0, -1.0, -0.25, -0.25, -1.0, 0.5, -0.75, 0.0, 0.0, -1.0, -0.5, 0.0, -0.25, -0.5, -0.75, 0.25, 0.0, 1.0, 0.75, 0.25, 0.0, -0.5, -0.5, 0.75, -0.75, 0.5, -0.75, -0.25, 1.0, -0.5, -1.0, 0.0, 0.75, -0.25, 0.5, -0.5, -0.5, 0.75, -1.0, -0.5, 0.0, -0.25, -0.25, 0.5, -1.0, 0.75, -0.5, -0.25, 0.5, -0.25, 0.0, -1.0, -0.25, 0.0, -0.25, 1.0, 0.25, 0.25, -0.25, 1.0, 0.25, 0.75, -0.25, 0.75, -1.0, -0.5, 1.0, 1.0, 0.75, 0.25, 0.25, 0.0, -0.25, -1.0, -0.5, -1.0, 0.25, 0.75, 1.0, 1.0, 0.75, 0.75, -0.5, 0.75, ]);
    const array1 = new Float32Array([-0.25, -0.5, 0.25, -0.25, 1.0, 0.5, 1.0, 0.5, -0.25, -0.25, -0.25, 0.0, 0.75, -0.25, -0.25, -0.5, -0.75, 0.75, -1.0, -0.25, 0.5, -0.75, -0.5, -0.5, -0.5, 0.5, 0.25, 0.5, -0.75, -0.25, -0.75, -0.25, 1.0, 0.25, 0.75, -0.5, 0.25, 0.75, 0.75, 1.0, 1.0, -0.25, -0.5, 0.25, 0.25, 0.75, 0.25, 0.25, 0.0, 0.75, -0.5, -1.0, -0.75, -0.25, 1.0, -1.0, -0.5, 0.25, -0.25, -0.5, 1.0, 0.5, -1.0, -0.25, 0.0, 0.5, 1.0, 0.5, -0.75, -0.75, -1.0, -1.0, -0.25, 0.25, -0.5, 1.0, 0.5, 0.0, 1.0, -1.0, 1.0, -0.75, 0.5, -0.75, 1.0, -0.5, 0.75, 0.25, 1.0, -0.25, -1.0, 0.75, -1.0, -0.5, 0.0, 0.5, -0.25, 0.0, 0.75, -1.0, ]);
    const array2 = new Float32Array([1.0, 0.0, -0.5, -0.75, 1.0, -1.0, -0.75, -1.0, 0.75, 0.25, -0.75, 0.5, 0.25, -0.5, 0.25, 0.25, 0.5, -0.25, 0.5, -0.5, -0.75, 0.5, 0.75, 1.0, -0.75, -0.25, -1.0, 0.25, -0.25, -1.0, -0.5, -0.5, 1.0, 1.0, 0.0, 0.0, -0.25, -0.25, -0.75, 0.25, -0.5, -0.25, 0.0, -0.5, 0.0, 0.25, -0.5, 0.75, 1.0, -0.75, -0.5, -0.75, 0.5, 0.75, -0.5, -0.25, 0.0, 0.0, 0.5, 0.0, 0.0, -0.25, -0.75, 0.0, -0.5, -0.5, 0.25, 0.75, -0.5, -1.0, -1.0, 0.0, -0.75, 0.75, -0.5, 1.0, -0.75, 0.25, 0.5, 0.5, -1.0, 0.0, 1.0, -0.5, -1.0, 0.75, 0.0, 0.75, 0.75, 0.75, 0.25, -0.5, -0.5, 0.25, -0.5, 0.75, -0.5, -0.25, 0.25, -0.25, ]);
    const array3 = new Float32Array([0.0, -1.0, -0.25, 0.0, 0.0, 0.25, -0.5, -0.75, -0.75, -0.5, 1.0, -0.25, 0.0, 0.5, 0.0, -0.5, -0.5, 0.25, -1.0, -0.75, -1.0, 0.75, -0.75, -0.5, 0.5, -1.0, 1.0, -0.75, -0.75, -0.5, -0.75, 1.0, 0.75, 0.25, -1.0, -1.0, 0.0, 0.0, 0.5, -0.75, 0.5, 0.75, -0.5, -0.75, -0.25, -0.5, 0.25, 0.0, -1.0, 0.25, -1.0, 1.0, 0.5, 0.0, 0.25, 1.0, 1.0, -0.75, 0.5, 0.0, -0.25, 0.25, -0.75, -0.25, -1.0, -0.75, -0.75, -0.25, 0.0, -0.25, -0.75, -0.75, 0.75, 1.0, 0.0, -1.0, 0.0, 0.5, 0.0, -0.25, -0.75, 0.25, 0.25, 0.0, 0.25, -0.5, -1.0, -1.0, 0.25, -1.0, 0.25, -0.5, 0.25, -0.75, -0.5, 0.75, -0.75, 0.5, -0.75, 0.75, ]);
    const array4 = new Float32Array([-0.25, 0.5, -0.75, 1.0, 0.75, -1.0, 0.5, -1.0, 0.75, 0.75, 0.75, 0.25, -1.0, 1.0, 1.0, 1.0, 0.25, 0.25, 0.0, -1.0, 0.25, -0.5, 0.25, 0.0, 0.75, 0.5, -0.25, 0.75, 1.0, -0.75, 0.5, -0.25, -0.25, 0.25, 0.75, -0.25, 0.0, 0.5, -0.75, 0.5, 0.75, -0.75, 0.25, -0.75, 0.0, 0.75, -0.5, -1.0, 0.0, 0.5, -0.75, 0.0, 0.75, 0.5, 0.75, 0.5, 0.5, 1.0, 1.0, -0.25, 0.5, -0.25, 1.0, 0.0, -0.5, -0.75, 1.0, 1.0, -0.75, 1.0, -0.5, -1.0, -0.5, 0.25, -0.5, 0.25, 0.0, -0.75, 0.5, 1.0, -0.5, 0.5, -0.5, 0.0, 0.5, 1.0, -0.25, -0.5, -0.25, -1.0, 0.75, 0.5, -0.75, 0.75, 0.75, 0.5, 0.75, -0.5, -0.5, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([0.5, 0.0, -1.0, 1.0, -1.0, 0.25, -1.0, -0.25, 0.75, 1.0, -0.25, 0.5, 0.5, 0.75, -1.0, 0.5, -0.25, -0.25, 0.5, 1.0, 0.5, 0.0, -0.75, 0.0, 0.0, 1.0, 0.5, -0.5, -0.25, -0.75, 1.0, 0.5, 0.0, -0.5, -0.5, -1.0, -0.75, -1.0, 0.0, 1.0, 0.0, 0.5, -1.0, 0.25, 0.25, -0.25, 0.75, 1.0, 0.5, 1.0, 0.25, 0.5, 0.5, -1.0, 0.0, 1.0, 0.5, 0.0, -1.0, 0.0, -1.0, -0.25, -0.75, 0.75, -1.0, -1.0, 0.0, -0.5, 0.0, 0.75, -0.75, -1.0, -1.0, 0.75, -0.25, -0.25, 0.75, -0.75, 0.0, 0.75, -0.5, 1.0, 0.0, 0.5, -0.25, 0.0, -0.25, 0.5, -0.25, -0.5, 0.5, 1.0, 0.0, -0.25, -0.75, -0.75, -0.75, -0.75, 1.0, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const array6 = new Float32Array([-0.75, 0.25, 1.0, -1.0, -0.25, -0.5, 0.5, -0.25, -0.25, 0.75, 1.0, 0.25, -0.25, -0.5, -0.5, 0.25, 0.75, 0.75, 0.5, 1.0, -0.25, -0.5, -0.75, 1.0, -0.5, 0.5, 0.25, -1.0, 0.0, 0.5, -0.25, 0.5, -0.25, 1.0, 0.0, -1.0, 0.0, 0.75, 0.0, 1.0, 0.75, -0.75, 0.25, 0.25, -0.5, -1.0, -0.25, -1.0, 0.25, 0.5, 0.0, 1.0, 0.0, 0.5, 0.25, 0.5, -0.75, -0.5, 1.0, -0.25, 1.0, -1.0, -0.75, 0.25, 0.75, -0.5, -1.0, 0.5, -0.75, 0.0, -0.5, -0.5, 0.0, 0.5, 1.0, -0.5, -0.75, 0.25, 0.5, 0.25, -1.0, 1.0, -0.5, 0.75, 0.5, -1.0, -0.5, 0.5, 0.0, -0.5, 0.0, 1.0, 0.0, 0.75, 0.5, 0.75, 0.5, 0.5, -0.75, -0.5, ]);
    const array7 = new Float32Array([0.75, -0.5, 0.0, -0.25, -0.25, 0.0, -0.75, -1.0, 0.0, 0.0, 0.0, 0.5, -0.25, 0.25, 1.0, 1.0, 0.5, -0.5, -0.75, 0.0, -0.75, 1.0, -1.0, 1.0, -1.0, -0.25, 0.25, -0.25, -1.0, -1.0, 0.75, 0.5, -1.0, 0.5, 1.0, -1.0, 0.0, 0.5, 0.0, -0.5, 0.25, 0.0, 1.0, 0.5, 0.0, 0.25, 0.75, -1.0, 0.0, 0.5, -0.5, 0.5, -0.25, 0.5, -0.75, 1.0, -0.5, -0.75, -0.75, 0.5, 0.25, 0.0, -1.0, -0.5, 0.0, -0.25, 0.0, 0.25, -0.5, 0.75, 0.75, -0.25, -1.0, -0.25, -0.25, -0.25, -0.75, -1.0, 0.5, 1.0, 1.0, -1.0, -0.5, 0.25, -0.75, 1.0, 0.25, 0.25, 0.5, -0.5, 0.25, -0.5, -0.75, -0.5, 0.5, -0.25, 0.5, 0.0, 0.0, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.pushErrorScope("validation");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus",
        dimension: "2d"
    });
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const bind_group_layout100 = device10.createBindGroupLayout({ 
        label: "bind_group_layout100",
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
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    texture100.destroy();
    const command_buffer100 = command_encoder100.finish();
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const array8 = new Float32Array([1.0, 0.5, 0.75, 0.5, 0.0, 0.75, -1.0, -1.0, 0.75, 0.75, 0.25, -0.25, -0.5, -0.25, -0.5, -1.0, 0.75, 0.25, -0.75, -0.5, 1.0, -1.0, 1.0, 0.75, 0.0, -0.5, -0.75, 1.0, 0.75, 0.0, -1.0, -1.0, 0.0, 0.25, 0.75, -1.0, 0.5, -1.0, -1.0, 0.5, 0.0, -0.25, 0.5, 0.5, 0.25, 0.0, 0.5, 0.75, 0.25, 0.5, -0.75, -1.0, 0.25, 1.0, 1.0, -0.5, 0.5, 0.5, -0.75, 0.25, -0.75, -1.0, -1.0, -0.25, -0.25, -1.0, 1.0, 0.0, 0.25, -0.75, -1.0, -0.5, 0.25, 0.25, -0.75, 0.0, -0.5, 0.0, 0.0, -0.5, 1.0, 0.5, -1.0, 0.5, 0.25, 0.0, 0.25, -1.0, 0.25, 0.25, -1.0, -0.5, -0.5, 0.25, 0.0, 1.0, -0.75, -0.75, 0.0, 0.0, ]);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_bundle_encoder100.popDebugGroup();
    
    
    
    buffer100.destroy()
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.setPipeline(render_pipeline102);
    render_bundle_encoder101.setPipeline(render_pipeline103);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    device20.pushErrorScope("internal");
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder201.pushDebugGroup("mygroupmarker")
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    
    buffer101.destroy()
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const compute_pass_encoder1011 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1011" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const array9 = new Float32Array([0.0, -0.5, -0.25, 0.25, 0.75, 1.0, 0.5, -0.75, 0.5, 0.25, 0.5, -0.5, 0.0, -0.5, 0.0, -0.75, 1.0, 0.5, -0.25, -0.25, 1.0, 1.0, -0.75, -0.5, -1.0, -0.75, 0.25, 1.0, 0.25, 0.5, -1.0, -0.25, 0.0, -0.75, 0.5, 0.25, 0.25, -0.5, 0.25, -0.5, 0.75, 0.0, 1.0, -0.75, 0.75, -0.5, -1.0, -0.75, -0.75, 0.25, -0.75, -0.25, -0.25, 1.0, -0.5, 0.25, -0.25, 1.0, 0.25, 0.0, -0.75, -0.25, 0.25, 0.25, 0.0, 0.75, -0.25, 0.75, 0.25, 0.5, -0.5, 0.25, 0.0, 0.5, -0.25, -0.75, -0.25, 0.0, 0.25, -1.0, 0.5, 0.5, -0.25, -0.75, -0.75, -0.75, 1.0, 0.25, 0.5, 0.75, 0.5, 1.0, 0.5, 0.75, -0.5, 1.0, 1.0, 1.0, 0.25, 0.5, ]);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_buffer301 = command_encoder301.finish();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer300 = command_encoder300.finish();
    const compute_pass_encoder2011 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2011" });
    device30.destroy();
    compute_pass_encoder2011.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_bundle_encoder100.insertDebugMarker("marker");
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder201.insertDebugMarker("marker");
    
    device60.pushErrorScope("validation");
    render_bundle_encoder102.setPipeline(render_pipeline107);
    compute_pass_encoder2000.popDebugGroup()
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    device50.pushErrorScope("out-of-memory");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device20.queue.writeTexture({ texture: texture201 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder2011.insertDebugMarker("marker")
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    render_bundle_encoder201.insertDebugMarker("marker");
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
    const command_buffer203 = command_encoder203.finish();
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    buffer102.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer100, ]);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
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
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.popDebugGroup();
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer103.destroy()
    
    
    
    compute_pass_encoder1010.popDebugGroup()
    render_bundle_encoder202.insertDebugMarker("marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder2011.pushDebugGroup("group_marker")
    render_bundle_encoder101.popDebugGroup();
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    const command_buffer202 = command_encoder202.finish();
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder600.clearBuffer(buffer600);
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder600.pushDebugGroup("mygroupmarker")
    command_encoder102.pushDebugGroup("mygroupmarker")
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    device20.queue.writeTexture({ texture: texture201 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    render_bundle_encoder200.setPipeline(render_pipeline200);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder1011.pushDebugGroup("group_marker")
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    
    
    device20.queue.writeTexture({ texture: texture201 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    device50.pushErrorScope("internal");
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
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
    
    compute_pass_encoder1011.popDebugGroup()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder5000.insertDebugMarker("marker")
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    texture201.destroy();
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    buffer600.destroy()
    render_pass_encoder1030.setPipeline(render_pipeline102);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    const array10 = new Float32Array([-0.75, 1.0, 0.5, -0.75, 0.5, -1.0, -0.5, 0.5, -0.25, 1.0, -1.0, -0.5, -1.0, 0.5, 0.0, 0.5, 0.5, 0.0, -1.0, 1.0, 0.25, -0.75, 0.0, 0.75, 0.0, 0.5, 1.0, -1.0, 0.75, -0.75, -1.0, -1.0, 1.0, 0.75, -0.5, -1.0, 0.75, 0.0, 1.0, -1.0, -0.25, 0.0, 0.0, -1.0, 0.75, 0.75, 0.75, 0.5, 0.5, -0.5, 0.75, 0.0, -1.0, -0.25, 0.75, -0.5, -0.75, 0.5, 0.25, -0.5, -1.0, 0.25, -0.25, -0.75, 0.75, 1.0, 0.0, -0.5, 0.5, 0.25, 1.0, -0.5, 0.75, 0.0, -0.5, -1.0, 0.75, -1.0, -0.75, 0.0, -0.25, -1.0, 0.25, -0.5, 0.5, 0.75, -0.75, 1.0, 0.75, 1.0, 0.5, -0.75, 0.5, -0.5, 0.25, 1.0, -0.5, 0.75, -1.0, -0.5, ]);
    device50.pushErrorScope("internal");
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder2010.popDebugGroup()
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    
    command_encoder204.pushDebugGroup("mygroupmarker")
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
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
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    buffer103.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture601.destroy();
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
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
    texture100.destroy();
    render_bundle_encoder201.setPipeline(render_pipeline201);
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.queue.submit([command_buffer202, ]);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2050.setPipeline(render_pipeline201);
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder1030.setStencilReference(1);
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder2050.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder1011.pushDebugGroup("group_marker")
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.pushErrorScope("internal");
    
    
    
    device20.destroy();
    compute_pass_encoder1020.popDebugGroup()
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device60.queue.writeTexture({ texture: texture602 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    device10.queue.submit([command_buffer100, ]);
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    render_pass_encoder1020.setPipeline(render_pipeline106);
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    device80.queue.writeBuffer(buffer800, 0, array3, 0, array3.length);
    
    
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    command_encoder502.clearBuffer(buffer500);
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2050.pushDebugGroup("group_marker");
    compute_pass_encoder1011.insertDebugMarker("marker")
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    device50.pushErrorScope("internal");
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeTexture({ texture: texture602 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer500, 0, array10, 0, array10.length);
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    compute_pass_encoder1011.insertDebugMarker("marker")
    
    compute_pass_encoder2010.popDebugGroup()
    
    
    device100.destroy();
    device10.queue.writeBuffer(buffer106, 0, array5, 0, array5.length);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    buffer500.destroy()
    const render_pipeline1016 = device10.createRenderPipeline({
        label: "render_pipeline1016",
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
    texture600.destroy();
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer107, 0, array8, 0, array8.length);
    compute_pass_encoder1030.popDebugGroup()
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
    render_pass_encoder2050.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder1020.insertDebugMarker("marker");
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    device50.queue.writeTexture({ texture: texture500 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder602.copyBufferToTexture(
        {
            buffer: buffer600
        },
        {
            texture: texture600
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    compute_pass_encoder1010.popDebugGroup()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    device50.queue.submit([]);
    
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder900.pushDebugGroup("group_marker");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer103,
        0
    )
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture200.destroy();
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    compute_pass_encoder1030.insertDebugMarker("marker")
    device50.queue.writeTexture({ texture: texture500 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
    
    
    render_bundle_encoder103.setPipeline(render_pipeline1012);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    command_encoder801.pushDebugGroup("mygroupmarker")
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    render_pass_encoder1020.insertDebugMarker("marker");
    
    const array11 = new Float32Array([-0.5, 0.5, 1.0, 0.5, 0.5, -1.0, 1.0, -0.75, 0.75, -0.5, 0.5, -0.5, 0.75, 0.25, -1.0, -0.25, 0.5, -0.5, -0.25, 0.25, -0.5, 0.75, 0.5, 0.5, -0.5, -0.5, -1.0, -1.0, 0.0, 0.75, 0.25, 0.0, 0.5, -0.5, 1.0, -0.75, 0.75, -0.75, -0.75, 0.75, 0.75, 0.0, -0.25, 0.5, 0.75, 0.0, 0.75, -1.0, 0.0, 1.0, -0.75, 1.0, 1.0, 0.5, -0.25, 0.25, -0.5, 0.0, 0.5, 0.0, 0.25, -0.25, 0.25, -0.25, -1.0, 0.5, 0.25, -0.5, -0.75, -1.0, -0.5, -0.75, -0.5, 0.0, 0.5, -0.75, -0.25, 0.25, -1.0, 0.5, -0.75, -0.5, 0.25, 0.25, 0.5, -1.0, 0.0, -1.0, 0.0, 0.5, -1.0, 0.75, 1.0, 0.5, 0.75, 0.75, 0.25, 1.0, -0.25, 1.0, ]);
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    device60.queue.writeTexture({ texture: texture603 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device60.queue.writeTexture({ texture: texture602 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture101.destroy();
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    device50.queue.writeTexture({ texture: texture500 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    
    
    
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture602.destroy();
    
    
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    compute_pass_encoder5010.insertDebugMarker("marker")
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1020.setStencilReference(1);
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const sampler903 = device90.createSampler( { label: "sampler903" } );
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    const command_buffer602 = command_encoder602.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    texture603.destroy();
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query105
    });
    command_encoder900.pushDebugGroup("mygroupmarker")
    render_bundle_encoder101.insertDebugMarker("marker");
    device30.pushErrorScope("validation");
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    render_pass_encoder1020.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1021.setPipeline(render_pipeline103);
    const command_buffer503 = command_encoder503.finish();
    compute_pass_encoder1011.popDebugGroup()
    const command_buffer502 = command_encoder502.finish();
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder5000.popDebugGroup()
    device50.queue.submit([command_buffer503, ]);
    const command_buffer400 = command_encoder400.finish();
    device50.queue.submit([command_buffer502, ]);
    compute_pass_encoder4000.popDebugGroup()
    const command_buffer800 = command_encoder800.finish();
    compute_pass_encoder6000.popDebugGroup()
    device10.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder4000.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    const command_buffer900 = command_encoder900.finish();
    device80.queue.submit([command_buffer800, ]);
    device60.queue.submit([command_buffer602, ]);
    compute_pass_encoder5000.popDebugGroup()
    device40.queue.submit([]);
    device10.queue.submit([]);
    const command_buffer103 = command_encoder103.finish();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    compute_pass_encoder6000.popDebugGroup()
    const command_buffer501 = command_encoder501.finish();
    compute_pass_encoder8000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    device90.queue.submit([command_buffer900, ]);
    device90.queue.submit([command_buffer900, ]);
    compute_pass_encoder2011.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    device80.queue.submit([command_buffer800, ]);
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder1010.popDebugGroup()
    device80.queue.submit([]);
    device50.queue.submit([command_buffer503, ]);
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder4000.popDebugGroup()
    device50.queue.submit([command_buffer502, ]);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    device90.queue.submit([command_buffer900, ]);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1030.popDebugGroup();
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder2050.popDebugGroup();
    compute_pass_encoder5000.popDebugGroup()
    device40.queue.submit([]);
    device40.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder6010.popDebugGroup()
    device50.queue.submit([command_buffer503, ]);
    device90.queue.submit([]);
    compute_pass_encoder6000.popDebugGroup()
    device20.queue.submit([]);
    const command_buffer101 = command_encoder101.finish();
    device40.queue.submit([]);
    render_pass_encoder1020.popDebugGroup();
    device60.queue.submit([]);
    device10.queue.submit([]);
    compute_pass_encoder5010.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    device50.queue.submit([command_buffer501, ]);
    device50.queue.submit([command_buffer502, ]);
    device50.queue.submit([command_buffer502, ]);
    device50.queue.submit([]);
    compute_pass_encoder1030.popDebugGroup()
    const command_buffer601 = command_encoder601.finish();
    compute_pass_encoder8000.popDebugGroup()
    device90.queue.submit([command_buffer900, ]);
    render_pass_encoder1030.popDebugGroup();
    device60.queue.submit([command_buffer601, ]);
    device60.queue.submit([command_buffer601, ]);
    device30.queue.submit([command_buffer302, ]);
    device60.queue.submit([command_buffer602, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer502, ]);
    compute_pass_encoder6000.popDebugGroup()
    device60.queue.submit([command_buffer601, ]);
    device80.queue.submit([command_buffer800, ]);
    device20.queue.submit([]);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    device90.queue.submit([command_buffer900, ]);
    device30.queue.submit([command_buffer302, ]);
    device10.queue.submit([]);
    device80.queue.submit([]);
    compute_pass_encoder6000.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    device90.queue.submit([]);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    device80.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    device40.queue.submit([command_buffer400, ]);
    device90.queue.submit([command_buffer900, ]);
    const command_buffer801 = command_encoder801.finish();
    device50.queue.submit([command_buffer501, ]);
    const command_buffer204 = command_encoder204.finish();
    device50.queue.submit([command_buffer501, command_buffer503, ]);
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder6010.popDebugGroup()
    device50.queue.submit([command_buffer503, ]);
    device60.queue.submit([]);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    device80.queue.submit([command_buffer800, ]);
    const command_buffer205 = command_encoder205.finish();
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder4000.popDebugGroup()
    device50.queue.submit([command_buffer501, ]);
    device90.queue.submit([command_buffer900, ]);
    const command_buffer600 = command_encoder600.finish();
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder1010.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder1020.popDebugGroup()
}