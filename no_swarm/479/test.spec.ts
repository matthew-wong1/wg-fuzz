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
    const array0 = new Float32Array([0.0, -1.0, -0.25, 0.5, -0.5, 0.75, -1.0, 1.0, 0.0, 0.75, -1.0, 0.5, -0.75, 0.75, 1.0, 1.0, 0.0, 0.75, 0.25, -0.5, -0.75, -1.0, 0.75, -0.5, 1.0, 0.5, -0.75, 0.75, 0.5, -0.25, -1.0, 0.0, -0.5, 0.75, 0.25, 0.5, -0.75, -0.75, 1.0, -0.25, -0.75, 1.0, -1.0, 0.0, -0.25, 0.75, -0.25, 1.0, 0.75, 1.0, 0.25, -1.0, -1.0, -0.75, -1.0, 0.25, -0.5, 0.0, 0.0, -0.25, 1.0, -1.0, 0.25, -1.0, -0.5, 0.25, -1.0, 0.75, -1.0, 0.75, 1.0, -1.0, -1.0, 0.75, 0.75, -1.0, 0.75, -0.75, -0.5, 0.75, 0.5, 0.0, -0.5, 0.25, -0.75, 1.0, 0.75, 0.25, 1.0, 1.0, -0.5, -1.0, -0.25, -1.0, 0.75, 0.5, -0.25, 0.25, -1.0, 0.5, ]);
    
    
    const array1 = new Float32Array([-0.25, 0.75, -1.0, 0.5, -0.25, 0.25, 0.25, 0.5, 1.0, 0.75, 0.25, -0.5, 1.0, -0.25, -0.25, 0.25, -0.5, 0.25, -0.75, 0.5, -0.75, 1.0, -1.0, 0.75, -1.0, 0.0, -0.25, 1.0, 1.0, -1.0, -0.5, -1.0, 0.75, 0.0, 0.75, 0.25, 0.0, -1.0, 0.25, 0.75, 0.0, -0.75, 0.75, -0.25, 1.0, 0.25, -1.0, 0.5, 0.5, 0.25, 0.5, 0.25, -0.75, -0.5, -0.5, -0.5, -0.5, 0.75, -0.75, -1.0, 0.5, -0.75, -0.25, -0.5, -0.75, -0.75, 0.75, -0.75, 1.0, 1.0, -1.0, -0.25, 0.0, -0.25, 0.0, -0.75, 0.0, 0.75, 0.25, -0.25, -1.0, -0.25, -0.25, 0.0, -1.0, -0.75, 0.75, -1.0, 0.75, 0.0, -1.0, -0.25, 0.75, 0.25, -0.25, 0.5, -0.25, -0.75, 0.75, -0.25, ]);
    const array2 = new Float32Array([-1.0, 0.0, -0.75, 0.5, 1.0, 1.0, -0.5, 0.5, 0.5, -0.5, 0.0, -0.75, -0.75, -1.0, 0.25, 0.25, -0.25, 0.5, -0.25, 0.5, -0.75, -1.0, -1.0, 0.0, -1.0, -0.25, 0.5, 1.0, 0.25, 0.5, 0.5, 0.0, 0.0, -0.5, -0.5, 0.0, 0.75, -0.25, 0.0, -0.5, 0.5, -1.0, 0.0, 0.75, -0.75, 1.0, 0.0, -0.25, 0.5, -0.5, 1.0, 0.75, -1.0, -1.0, 0.0, 0.75, -0.75, -0.25, 0.0, -0.75, 1.0, -0.5, -0.5, 0.5, -1.0, 0.75, 0.5, -1.0, -0.25, 0.5, 1.0, 1.0, -0.75, 0.25, 0.75, 1.0, 0.5, -1.0, -0.5, 0.25, 0.5, -0.25, 0.0, -1.0, 0.5, -0.5, -0.5, -0.5, 0.75, -0.5, 0.5, -0.25, 0.25, 0.25, -1.0, -0.25, -0.5, -0.75, 0.25, 0.5, ]);
    
    const array3 = new Float32Array([0.0, 0.75, -0.75, 0.75, 0.25, -0.25, -0.75, -0.5, -0.25, 0.0, 0.0, 0.25, -0.25, 0.0, 0.0, 1.0, -1.0, -0.75, 0.0, 0.25, -0.25, -0.75, 1.0, -0.5, 1.0, 1.0, -0.25, -0.25, 0.75, -0.75, 0.25, -1.0, 0.5, 1.0, 0.25, -0.5, 0.25, -0.25, -1.0, -1.0, 0.5, -0.25, 0.0, 0.0, -1.0, 0.75, 0.5, -0.5, 0.25, -1.0, -1.0, 0.5, 0.0, 0.75, -0.25, -0.75, 1.0, -0.75, 1.0, -0.5, -0.25, 0.25, -0.25, 0.25, -0.25, 0.75, 0.5, 0.25, -1.0, 0.0, 0.25, -1.0, 0.5, -0.25, 0.0, -0.5, -0.5, 0.25, 0.5, 0.5, -1.0, 0.5, -0.5, 1.0, 0.25, 1.0, 0.0, -0.75, -0.5, -0.75, -1.0, -0.5, -0.5, 1.0, -1.0, 1.0, 1.0, -1.0, -0.5, 0.75, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const array4 = new Float32Array([-1.0, -0.5, 0.0, -1.0, 0.0, -0.25, 0.0, -1.0, -1.0, 0.5, -0.25, -1.0, 0.0, -0.5, 0.25, 0.25, 0.75, 0.0, -1.0, 0.25, 0.25, 0.75, 0.0, -1.0, 0.75, 1.0, 0.5, 0.5, 0.0, 0.0, 1.0, 0.5, -0.75, -0.25, -0.5, -0.25, -0.5, 1.0, -0.75, 0.0, 0.0, 0.75, -1.0, -0.25, 0.25, -0.75, 1.0, 1.0, -0.5, -0.5, 0.0, 0.0, 1.0, 0.5, 0.75, 1.0, 0.25, 0.25, -0.5, 0.5, 0.75, -0.5, -0.5, 0.5, 0.5, -1.0, 0.5, -0.5, 1.0, 0.25, 0.0, -1.0, -1.0, 0.25, 1.0, -1.0, -0.5, 0.5, -0.25, 0.0, 0.5, -1.0, -0.75, -1.0, 0.0, -1.0, 0.0, -0.75, -0.75, 0.75, -0.25, 0.75, -0.25, -0.5, 0.75, -1.0, -1.0, -0.75, 0.0, -0.25, ]);
    
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const array5 = new Float32Array([-0.25, 0.75, -0.25, -1.0, 0.0, -0.75, 0.75, -1.0, 0.25, -1.0, -0.5, 1.0, 0.5, 0.0, -0.5, 0.25, 0.25, 0.25, 0.75, 0.5, 1.0, 0.75, 0.25, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.25, 0.75, -0.25, 1.0, -0.75, 0.0, 0.0, 0.75, -0.5, -0.5, 0.25, -0.5, 1.0, -0.75, 0.0, 1.0, -0.25, 0.75, 1.0, 0.0, 0.0, 0.75, -0.75, 1.0, -0.25, 0.75, -0.25, -1.0, -0.75, 0.5, 0.75, -0.25, 0.0, -0.75, -1.0, -0.25, -0.25, -0.25, 1.0, 0.75, -0.5, 1.0, -0.25, -0.25, -0.5, -0.25, -1.0, -1.0, 1.0, -0.5, -0.25, 0.5, 0.75, -0.75, -0.25, 1.0, -0.25, -1.0, 0.25, -1.0, 0.5, 0.75, -0.75, -0.5, 1.0, 0.0, -0.5, -1.0, -1.0, 0.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    
    device10.destroy();
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array6 = new Float32Array([-0.25, 0.75, 0.5, -0.25, -0.75, 0.75, 1.0, -0.75, 1.0, 0.0, 0.75, -1.0, 0.0, 0.0, 1.0, 0.25, -0.5, 1.0, 0.5, 0.75, 0.5, 0.25, -0.25, 0.5, -0.75, -0.25, 1.0, 0.0, 0.5, -1.0, -0.25, 0.0, 1.0, 1.0, -0.25, -0.25, -0.75, 0.75, -0.5, -1.0, 0.25, -0.25, 0.25, 0.25, -0.75, -0.75, -0.75, -0.5, 0.5, -1.0, 0.75, 0.0, 0.5, -0.25, 0.5, -0.75, -0.5, 0.0, 0.25, 0.5, 0.5, 0.0, 0.0, 0.75, 0.25, -1.0, 0.5, -0.75, 0.75, 0.5, -0.75, -0.5, 0.0, -0.75, -0.25, 0.5, 0.0, 0.0, -0.5, -0.25, -0.25, 0.0, 0.25, 0.0, 1.0, 0.5, -0.25, 0.0, 1.0, -1.0, -1.0, -1.0, 1.0, 1.0, 0.25, -1.0, -1.0, 0.75, -1.0, -1.0, ]);
    
    
    
    
    
    
    const array7 = new Float32Array([-0.75, 0.5, 0.5, -0.75, 0.0, 0.75, 0.0, -0.25, 0.25, 0.5, 0.75, -0.5, -0.25, -1.0, -0.75, 0.0, 0.75, -1.0, -0.5, 1.0, 0.25, -0.5, -0.25, 0.5, 0.5, 0.75, -0.75, -0.75, -0.75, -0.75, 0.5, 0.5, -0.25, -0.5, 0.0, -0.5, -0.75, 0.5, 0.0, 1.0, 0.5, 0.25, -0.25, 1.0, 0.5, -0.75, -1.0, -0.25, 0.25, 0.75, 0.0, 1.0, 1.0, 0.0, -1.0, -0.25, 1.0, -0.25, 1.0, 0.5, 0.75, 0.75, -0.5, 0.5, 1.0, 0.0, 0.0, -1.0, 0.5, 0.5, 0.5, -1.0, -1.0, -0.75, 0.75, 1.0, 0.5, 0.25, 1.0, 0.0, -1.0, -0.75, -1.0, -1.0, 1.0, 0.5, -0.75, 0.25, 0.5, -1.0, 0.75, -0.75, 0.0, -1.0, 0.25, -0.5, 0.25, 0.25, 0.5, 0.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
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
    device20.destroy();
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const array8 = new Float32Array([-0.5, -0.25, 0.0, 0.75, -0.5, 0.25, 0.75, -0.25, 1.0, 0.0, 1.0, -0.25, 1.0, -0.75, 0.75, -0.5, 0.25, 1.0, -0.5, -1.0, -1.0, 0.5, -0.75, 0.25, 1.0, -0.5, 0.0, 1.0, 1.0, 0.75, -1.0, 0.75, 1.0, -1.0, -0.25, 0.75, 0.75, 1.0, -0.75, 0.0, -0.5, 0.75, 0.0, 0.5, 0.25, -1.0, -0.25, 0.75, -1.0, -0.5, 1.0, 0.25, -0.5, 0.25, 0.0, -1.0, -0.75, 0.25, -1.0, -0.25, -0.5, 0.75, 1.0, 0.75, -1.0, 0.5, -0.5, 0.25, -0.25, 1.0, 0.5, 0.0, 0.5, -1.0, -0.25, 0.25, -0.5, 0.75, 1.0, -0.5, 0.75, 0.25, -0.25, -0.75, -0.5, 0.25, -1.0, 0.0, -0.5, 0.25, -0.75, -0.25, -0.75, 0.25, 0.75, -0.25, 0.5, -0.75, -0.75, -0.75, ]);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const array9 = new Float32Array([0.5, 0.75, 0.5, -0.5, 0.5, -0.5, -0.75, 0.75, 0.5, 0.5, 0.25, -0.75, -0.25, 1.0, -0.75, 0.25, 0.75, 1.0, -0.25, -0.25, 0.75, 0.5, -0.5, -0.5, 0.25, -1.0, 0.75, -0.25, -1.0, 0.5, -0.5, -1.0, -0.75, 0.75, 0.0, 0.75, 0.25, -1.0, 0.25, 1.0, 0.5, -0.75, 0.0, -0.25, -0.75, 0.0, 0.75, -0.25, -0.5, 0.0, 0.0, 0.25, -0.5, -0.75, -0.5, 0.5, 0.25, 1.0, 0.75, -0.5, -1.0, -0.25, -1.0, -0.5, 0.0, -1.0, 0.75, -0.75, -1.0, -0.25, -0.75, 0.75, 0.5, 0.75, 0.0, 0.0, -1.0, 0.5, -0.75, 0.75, -0.75, -1.0, 0.25, 0.5, -0.75, -0.75, 0.0, -0.75, -0.5, -0.5, -1.0, 1.0, 0.75, -0.75, 0.25, 0.5, 0.0, -1.0, 0.0, 1.0, ]);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder400.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
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
    
    const array10 = new Float32Array([1.0, -1.0, -0.75, 0.75, -1.0, 0.75, 0.0, -1.0, 0.75, 1.0, -0.25, 0.5, 0.25, 0.0, 0.75, 0.0, -0.75, 0.5, 0.75, 0.75, 1.0, -0.25, 0.5, -0.5, 0.25, 0.0, -0.75, 0.5, -1.0, 0.75, -0.25, -0.5, -0.5, -1.0, -0.25, -0.5, 1.0, -0.75, -0.75, -0.5, 0.0, 0.5, -1.0, 1.0, 0.25, -0.25, 1.0, -0.75, -0.5, 0.25, -0.5, -0.75, -0.75, 1.0, -0.25, 0.25, -0.5, 0.75, 0.75, -0.5, -0.25, 1.0, -1.0, 0.5, 0.5, -1.0, 0.75, 0.75, 0.0, -0.75, 0.75, 0.0, -1.0, -0.75, -0.5, 0.0, 0.5, -0.5, 1.0, -0.25, 0.0, -0.75, -0.5, 0.0, -0.75, 0.75, -0.75, -1.0, -0.75, -0.25, 1.0, 0.5, 0.75, -0.5, -0.25, 0.0, -0.5, 0.0, 0.5, 0.5, ]);
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder400.insertDebugMarker("mymarker");
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
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const array11 = new Float32Array([-1.0, 0.75, -1.0, -1.0, -0.75, 0.5, 1.0, -0.5, 0.0, 0.25, -0.25, -0.25, -0.5, -1.0, 0.5, 0.0, 0.5, -0.5, -0.5, 0.25, 0.0, 0.25, 0.25, 0.0, 0.25, -0.25, 0.25, -0.75, -0.75, 0.0, -1.0, -0.75, 0.25, -0.25, 0.75, -1.0, -0.25, -0.25, 0.25, -1.0, -1.0, -0.5, -1.0, 1.0, 0.25, -0.25, 0.25, 0.75, 0.25, -0.25, 0.25, 0.75, -0.5, 0.0, -0.25, 0.0, 0.25, -0.25, 0.5, -1.0, -0.75, 0.75, 0.75, -1.0, 0.75, 0.5, -0.75, -0.5, 0.5, 0.0, 0.25, -0.25, 1.0, 0.75, 1.0, 0.25, -0.25, -0.5, 0.0, -0.75, 0.5, 0.25, 0.5, 0.5, 0.75, -0.75, 0.75, 0.0, 0.0, 1.0, -0.25, 0.0, 0.5, 0.25, -0.5, 1.0, -0.75, 0.25, -0.5, 0.25, ]);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder4010.insertDebugMarker("marker")
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.destroy();
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder402.insertDebugMarker("mymarker");
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    
    render_bundle_encoder400.setPipeline(render_pipeline401);
    buffer400.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
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
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    buffer402.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    device40.pushErrorScope("validation");
    
    const array12 = new Float32Array([-1.0, 0.75, 0.75, -0.5, -0.5, 0.0, -0.5, 0.0, 0.75, 1.0, 0.0, -0.5, 0.75, 0.75, 0.75, 0.75, 0.75, 0.25, -0.25, -1.0, 1.0, 0.5, -1.0, 1.0, -0.75, -0.5, -0.25, 1.0, -0.5, -0.25, 0.0, 0.25, 1.0, 0.75, -0.25, -0.25, 0.25, 0.5, 0.5, 0.0, -0.25, -0.25, -0.25, 0.75, 1.0, 0.5, 0.5, 0.0, 1.0, 0.5, -0.75, 0.5, 0.25, 0.0, -0.5, 0.5, -1.0, 1.0, -1.0, 0.75, 0.5, -0.75, 0.0, 0.0, 0.75, -0.25, -1.0, -1.0, -0.25, 1.0, 0.5, 0.25, 0.75, -0.5, 0.75, 0.5, 0.75, 0.75, -1.0, -0.5, -0.75, 0.75, 0.25, -0.25, 0.75, 1.0, 0.5, 0.75, -0.5, -0.75, 1.0, 0.0, 0.5, 0.5, -0.75, 0.0, 1.0, -0.75, -0.25, -1.0, ]);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder402.pushDebugGroup("mygroupmarker")
    render_bundle_encoder300.insertDebugMarker("marker");
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const query300 = device30.createQuerySet({
        label: "query300",
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
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer404, 0, array10, 0, array10.length);
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder401.setPipeline(render_pipeline402);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device40.queue.writeTexture({ texture: texture400 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer403 = command_encoder403.finish();
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    render_bundle_encoder401.popDebugGroup();
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.submit([command_buffer403, ]);
    device40.queue.writeTexture({ texture: texture400 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeBuffer(buffer404, 0, array2, 0, array2.length);
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query300.destroy()
    device40.queue.writeBuffer(buffer404, 0, array5, 0, array5.length);
    
    buffer300.destroy()
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer404, 0, array9, 0, array9.length);
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    device40.queue.writeBuffer(buffer404, 0, array6, 0, array6.length);
    
    
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder401.insertDebugMarker("marker");
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer404, 0, array0, 0, array0.length);
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer403.destroy()
    
    render_bundle_encoder300.popDebugGroup();
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    query400.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    device40.queue.writeTexture({ texture: texture400 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer404, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    device40.queue.writeBuffer(buffer404, 0, array4, 0, array4.length);
    
    device40.queue.writeBuffer(buffer404, 0, array9, 0, array9.length);
    
    device40.queue.writeTexture({ texture: texture400 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer404, 0, array9, 0, array9.length);
    texture400.destroy();
    
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    compute_pass_encoder4000.popDebugGroup()
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    query400.destroy()
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    buffer401.destroy()
    
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const array13 = new Float32Array([1.0, -0.5, -0.75, 0.0, 0.25, -0.5, -0.75, 1.0, 1.0, -0.75, 0.0, 0.5, 1.0, -0.5, 0.0, 0.25, -0.5, 0.25, 0.0, 0.25, -0.25, -0.25, 0.25, 0.75, 0.5, -0.75, -0.25, 0.75, -0.5, 0.0, 0.5, 1.0, -0.25, 0.5, 0.0, 0.5, -1.0, -0.5, 0.5, 1.0, 0.75, 0.75, 0.25, 0.5, 1.0, 1.0, 1.0, 1.0, 0.25, -0.75, 0.0, -0.5, 0.25, 0.75, -0.25, 0.25, 0.25, -1.0, 0.25, 0.5, -0.25, -0.75, 0.25, -0.25, 0.25, 1.0, 0.5, -0.5, 0.5, 0.75, 1.0, -0.5, 0.75, 0.0, 0.75, 0.0, -0.75, 0.5, -1.0, 0.5, 0.25, -0.75, 0.25, -0.5, 0.25, 1.0, 0.75, 0.0, -0.25, -0.25, -0.5, 0.75, 0.25, 0.75, -0.25, -0.5, -0.5, 0.25, -1.0, -0.75, ]);
    texture301.destroy();
    
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    query400.destroy()
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder3000.executeBundles([])
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    
    
    render_pass_encoder3000.pushDebugGroup("group_marker");
    render_pass_encoder3000.popDebugGroup();
    
    texture401.destroy();
    device40.queue.writeBuffer(buffer404, 0, array0, 0, array0.length);
    const command_buffer404 = command_encoder404.finish();
    const array14 = new Float32Array([0.25, 0.75, 1.0, 0.0, -0.25, 1.0, -1.0, -0.75, -1.0, 1.0, 0.0, 0.5, -0.75, 1.0, 0.25, 0.0, 1.0, 1.0, -1.0, -0.5, 0.25, 0.25, 0.5, -0.75, 1.0, 0.0, -0.75, 0.0, 0.0, 0.0, 0.5, 0.0, 0.75, 0.5, 0.0, 0.25, -0.25, 0.25, -0.5, 1.0, -0.25, 0.5, -0.75, -0.5, 1.0, -0.75, 0.25, 0.75, 0.25, 1.0, -0.75, 0.75, -0.75, -0.75, -1.0, 0.25, 0.0, -0.25, 1.0, 0.0, 0.75, 0.25, -0.75, 0.0, -0.75, 0.5, 0.5, 0.0, 1.0, 0.5, -0.5, 1.0, -0.75, -0.25, 1.0, 1.0, -1.0, -0.5, -0.75, 0.5, 0.75, 0.0, 0.75, -0.25, 1.0, 1.0, -0.25, 0.25, 0.5, 0.25, 0.5, -0.5, 1.0, -1.0, -0.5, 0.25, 1.0, 0.0, 0.25, -0.75, ]);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer404, 0, array10, 0, array10.length);
    device40.queue.writeBuffer(buffer404, 0, array2, 0, array2.length);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    query300.destroy()
    const array15 = new Float32Array([-0.75, 0.75, 1.0, 1.0, 0.5, -0.75, -0.25, -0.25, 1.0, 0.75, -0.5, 0.5, 0.75, 0.5, -0.25, -0.25, 0.5, -0.75, 0.5, 0.5, -1.0, 0.0, 0.25, 0.25, -0.25, 0.25, -1.0, 0.25, -1.0, -0.75, 0.5, 1.0, 0.5, 0.5, 0.75, -0.75, -1.0, 0.0, -0.25, -0.75, -0.5, -0.5, -1.0, 0.75, 0.75, 0.5, 0.5, -0.25, 0.25, -0.75, 0.25, -0.75, -0.75, -0.75, -0.75, 0.0, 0.25, -0.25, -0.75, 1.0, -0.25, -0.5, -0.5, -0.75, 0.0, 0.75, 0.0, 0.25, 1.0, -0.75, 0.25, -0.5, -0.75, 0.0, -0.5, -1.0, 0.5, 0.25, 1.0, 0.25, -0.25, -0.75, 0.5, -0.5, 0.0, -0.75, 0.0, 0.0, 1.0, -1.0, 0.0, 0.25, -1.0, 0.25, -1.0, 0.0, -1.0, -0.25, -0.5, -0.5, ]);
    
    device40.queue.writeBuffer(buffer404, 0, array7, 0, array7.length);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group401);
    device40.queue.writeBuffer(buffer404, 0, array4, 0, array4.length);
    render_pass_encoder3000.setStencilReference(1);
    
    
    device40.pushErrorScope("internal");
    device40.queue.writeBuffer(buffer404, 0, array13, 0, array13.length);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    buffer404.destroy()
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    
    const array16 = new Float32Array([-0.25, 0.75, -0.5, -1.0, 0.25, 1.0, 1.0, -0.25, 0.75, -0.75, 0.25, -0.25, 1.0, 1.0, 0.0, -0.5, -0.75, -0.75, 0.75, -0.75, 0.75, 0.0, 0.25, 1.0, 0.0, 0.25, 1.0, 1.0, -1.0, 0.75, -0.5, 0.75, -1.0, -0.25, -1.0, 0.0, 0.5, 0.5, 1.0, 0.75, -1.0, 0.75, 0.75, 1.0, 0.25, 0.25, -0.25, 0.5, -1.0, -1.0, 0.5, 0.0, -0.5, 0.75, -0.75, -0.5, -0.25, -0.25, -0.75, -0.75, 0.0, 0.0, 0.25, -0.25, 0.25, -0.75, -0.5, 0.75, -0.75, -1.0, -0.25, -1.0, 1.0, 0.75, -0.5, 0.0, 0.75, -0.5, -0.75, 1.0, 0.5, -0.25, 0.0, -0.75, 0.25, -0.5, 0.0, -0.5, 0.5, 0.25, 0.25, -0.25, 1.0, 0.0, -1.0, -0.5, -0.75, -0.75, 0.75, 0.25, ]);
    
    
    
    render_bundle_encoder401.popDebugGroup();
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
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
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16sint",
        dimension: "2d"
    });
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    compute_pass_encoder4010.insertDebugMarker("marker")
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder4010.popDebugGroup()
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    device90.destroy();
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3000.insertDebugMarker("marker");
    render_bundle_encoder400.popDebugGroup();
    buffer303.destroy()
    const texture_view3004 = texture300.createView({ label: "texture_view3004" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view3005 = texture300.createView({ label: "texture_view3005" });
    query400.destroy()
    query400.destroy()
    
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer302.destroy()
    
    const array17 = new Float32Array([-0.25, -0.75, 0.75, -1.0, 1.0, -0.25, 0.0, 0.0, 0.75, -0.75, 0.75, 0.25, 0.25, 0.25, 0.75, 0.0, 0.25, -0.75, 0.75, -0.5, 0.5, -0.75, -1.0, 0.0, -0.75, 0.5, 0.25, -0.5, 0.25, 0.25, 1.0, -0.25, 0.0, 0.5, 0.0, -0.5, -0.75, 0.5, -0.75, -1.0, -0.5, -0.5, -0.25, 0.25, 0.5, 1.0, -0.75, -0.5, -0.75, -1.0, 0.0, 0.0, -1.0, -0.25, -0.5, -1.0, 0.25, -0.75, 0.25, -1.0, 0.75, -0.25, -0.75, 0.25, 0.25, -1.0, 0.75, -1.0, -0.5, 0.5, 0.0, 0.5, 1.0, 0.5, -0.25, 0.75, 0.25, -0.25, -0.75, -0.25, -0.25, -0.25, 0.5, -0.25, 0.0, 0.0, 0.0, 0.5, 1.0, 0.75, 0.75, -0.75, -1.0, 0.75, 0.0, -1.0, 1.0, 0.5, -0.75, 1.0, ]);
    render_pass_encoder3000.insertDebugMarker("marker");
    render_bundle_encoder301.popDebugGroup();
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder401.insertDebugMarker("marker");
    device70.pushErrorScope("validation");
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
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
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    render_pass_encoder3000.setStencilReference(1);
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    
    query300.destroy()
    texture302.destroy();
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
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

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_bundle_encoder800.insertDebugMarker("marker");
    const render_pipeline4010 = device40.createRenderPipeline({
        label: "render_pipeline4010",
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
    const command_buffer405 = command_encoder405.finish();
    
    
    
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
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
    render_pass_encoder3000.pushDebugGroup("group_marker");
    
    query300.destroy()
    
    const render_pipeline4011 = device40.createRenderPipeline({
        label: "render_pipeline4011",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    
    compute_pass_encoder4010.setPipeline(compute_pipeline400);
    const render_pipeline4012 = device40.createRenderPipeline({
        label: "render_pipeline4012",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    compute_pass_encoder4020.setPipeline(compute_pipeline400);
    
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3000.executeBundles([])
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    device80.pushErrorScope("out-of-memory");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline4013 = device40.createRenderPipeline({
        label: "render_pipeline4013",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group402);
    render_bundle_encoder402.setPipeline(render_pipeline400);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group403);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline4014 = device40.createRenderPipeline({
        label: "render_pipeline4014",
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
    
    render_bundle_encoder300.popDebugGroup();
    buffer305.destroy()
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4020.dispatchWorkgroups(100);
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    query300.destroy()
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_pass_encoder3000.executeBundles([])
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3000.setPipeline(render_pipeline300);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    texture800.destroy();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    render_bundle_encoder700.insertDebugMarker("marker");
    
    
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder700.popDebugGroup();
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_bundle_encoder801.pushDebugGroup("group_marker");
    render_bundle_encoder402.pushDebugGroup("group_marker");
    buffer4010.destroy()
    buffer409.destroy()
    
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
    });
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16float",
        dimension: "2d"
    });
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
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const render_pipeline4015 = device40.createRenderPipeline({
        label: "render_pipeline4015",
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
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.destroy();
    const array18 = new Float32Array([-1.0, 0.0, -1.0, -0.5, 0.5, -0.25, -0.5, -0.5, -0.5, 0.5, -0.75, -1.0, 1.0, -1.0, -0.5, -0.5, -1.0, 0.25, 0.25, -1.0, 0.75, 0.25, -1.0, -0.5, 0.25, -0.75, 0.5, 1.0, 0.75, 0.5, 0.75, 1.0, 0.75, 0.75, 0.75, -0.5, -0.75, -0.5, 0.5, 0.75, 0.5, 1.0, -0.5, 0.5, -1.0, 0.25, 0.25, -1.0, 1.0, 1.0, 0.0, 0.75, 0.0, -1.0, 0.75, 0.5, 1.0, 0.75, 1.0, 1.0, 0.25, 0.25, -0.75, -0.75, 1.0, -1.0, 0.0, 0.5, 0.75, 1.0, 1.0, 1.0, 0.0, -1.0, 1.0, 1.0, 1.0, 0.0, 1.0, -1.0, 0.25, 0.5, -0.25, 0.0, -0.5, -0.25, 0.5, 0.25, -0.5, 0.5, -0.75, -0.75, 0.75, 0.0, 0.75, -0.75, -0.25, 0.75, -0.5, 0.5, ]);
    
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
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

    render_pass_encoder3000.setBindGroup(0, bind_group301);
    
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device40.pushErrorScope("validation");
    
    render_bundle_encoder400.popDebugGroup();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer301.destroy()
    
    render_bundle_encoder301.setVertexBuffer(0, buffer303);
    device40.pushErrorScope("internal");
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group404);
    
    render_pass_encoder3000.insertDebugMarker("marker");
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device80.pushErrorScope("internal");
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder801.popDebugGroup();
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.draw(3);
    
    command_encoder701.pushDebugGroup("mygroupmarker")
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder7000.insertDebugMarker("marker")
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3000.setVertexBuffer(0, buffer303);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder701.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3000.draw(3);
    const command_buffer800 = command_encoder800.finish();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    const command_buffer701 = command_encoder701.finish();
    compute_pass_encoder4020.end();
    device40.queue.submit([command_buffer404, command_buffer405, ]);
    render_pass_encoder3000.popDebugGroup();
    const command_buffer406 = command_encoder406.finish();
    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4014,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group405);
    compute_pass_encoder4000.end();
    command_encoder402.popDebugGroup()
    command_encoder400.popDebugGroup()
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder3000.end();
    const command_buffer400 = command_encoder400.finish();
    device40.queue.submit([command_buffer406, ]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer701, ]);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder4010.end();
    const command_buffer300 = command_encoder300.finish();
    device30.queue.submit([command_buffer300, ]);
    const command_buffer402 = command_encoder402.finish();
    const command_buffer401 = command_encoder401.finish();
    device40.queue.submit([command_buffer402, ]);
}