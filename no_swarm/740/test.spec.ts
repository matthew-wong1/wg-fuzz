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
    const array0 = new Float32Array([0.5, -0.5, -0.75, -1.0, -0.5, 0.5, 0.75, 1.0, 0.5, -0.75, -0.25, -0.75, -0.75, 0.75, 0.0, -0.75, -0.75, -0.25, 0.5, -0.75, -0.75, 0.0, -0.25, 1.0, 0.5, 0.75, 0.5, 0.75, 1.0, 0.75, 0.5, -0.5, 1.0, -0.5, 1.0, -0.5, 0.25, -0.75, 1.0, -0.75, -0.5, -0.5, 1.0, 0.25, 0.25, 1.0, 0.0, 1.0, -0.25, 0.5, 1.0, 1.0, 0.5, -0.5, 0.5, 1.0, 0.0, 0.0, 0.25, 0.75, 0.75, 0.25, 1.0, -0.75, -0.5, -0.25, -1.0, 1.0, 0.75, 0.75, -1.0, -0.25, -1.0, -1.0, 0.75, 0.5, 0.25, 0.5, 0.0, -0.5, 0.75, -0.5, 0.0, -1.0, 0.75, 0.0, 0.75, -1.0, 0.25, -0.5, 0.0, -0.5, 0.0, 1.0, 1.0, 0.75, 0.5, 0.5, -0.75, -0.75, ]);
    
    
    const array1 = new Float32Array([0.75, 0.0, 0.75, -0.25, 0.25, -0.75, 0.5, -0.25, -0.5, -0.5, 0.75, -0.25, 0.0, -0.75, 0.25, 0.5, -0.5, -0.25, -0.5, -0.5, 1.0, -0.75, -0.5, -1.0, 0.5, 0.0, -1.0, -0.5, 0.25, 0.0, -0.75, -0.25, -0.75, 1.0, 1.0, -0.25, -0.75, 0.5, -1.0, -0.75, 0.25, -0.5, -0.75, 0.25, 0.25, 0.5, 0.75, 0.5, 0.75, -0.25, 0.0, 0.75, -0.5, 0.0, 0.0, -0.5, 0.75, -1.0, 1.0, -0.25, 0.75, 0.5, 0.75, -0.25, 0.5, 0.25, 0.25, 1.0, 0.0, 0.25, -0.75, -0.25, 0.75, 1.0, -0.5, 0.5, -0.75, 0.75, -0.25, -0.25, 0.75, 0.75, -0.75, -0.25, 1.0, -0.5, -0.75, -0.5, 0.25, 0.5, -1.0, -1.0, 0.5, 0.75, -0.75, -0.75, -0.5, 0.25, -1.0, 0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const array2 = new Float32Array([0.5, -0.25, 0.25, -1.0, 0.75, -0.75, -0.25, 1.0, 0.75, -0.5, 1.0, -1.0, 0.0, 0.0, -0.75, -1.0, -0.25, 1.0, 0.0, -0.75, -0.5, 0.75, 1.0, -0.75, 0.75, -0.5, -0.25, 1.0, 1.0, -1.0, 1.0, -1.0, -0.5, 0.75, -0.75, 0.0, -0.5, -0.5, -1.0, 0.25, 1.0, 0.75, -0.25, 1.0, 0.5, -1.0, 0.25, -0.75, 1.0, 0.5, -0.25, 0.5, 0.25, -0.75, 0.25, -0.5, -0.75, -0.5, 0.25, 1.0, 0.75, -0.25, -0.25, 0.5, 1.0, 1.0, -0.5, 0.75, -0.25, -0.25, -0.5, 1.0, 1.0, 1.0, -0.75, -0.5, 0.25, -0.25, 0.5, -0.5, 0.0, -1.0, 0.75, -0.25, -0.25, 0.5, 0.0, -0.5, 1.0, 1.0, -1.0, -0.75, -0.75, -0.25, -0.75, 0.5, 0.25, -0.25, -0.75, 0.0, ]);
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    command_encoder001.pushDebugGroup("mygroupmarker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query000.destroy()
    device00.pushErrorScope("internal");
    
    texture000.destroy();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    buffer000.destroy()
    const array3 = new Float32Array([0.5, 0.25, 0.75, -0.5, 0.25, 0.75, -0.25, -1.0, 1.0, 1.0, 0.0, -0.75, 1.0, -0.5, -0.25, 0.5, 1.0, 0.75, -0.75, -0.25, 0.75, 0.75, 0.0, -1.0, 0.75, 0.75, 0.25, -0.25, 1.0, -0.25, -0.25, 0.0, 0.75, -0.25, 0.0, 0.5, 0.5, 0.75, -0.25, -0.5, 1.0, -0.25, 0.75, -0.25, 0.25, -0.5, -1.0, 0.25, 0.25, -1.0, -0.25, -0.75, 0.5, -0.5, -0.25, -1.0, -0.5, -0.25, 0.5, -0.25, -0.25, -0.75, -0.75, 0.25, -0.5, -1.0, -0.5, -1.0, 0.75, -0.25, -1.0, 0.0, 0.0, 0.25, 1.0, 0.0, -0.25, 0.0, -0.5, -0.75, 1.0, 1.0, -0.75, 0.75, 0.5, -0.5, -0.25, -0.75, -0.5, 0.0, -0.5, -1.0, -0.75, 0.25, -0.25, 1.0, -0.5, 0.5, -0.5, 0.0, ]);
    
    command_encoder001.popDebugGroup()
    const command_buffer000 = command_encoder000.finish();
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    
    const array4 = new Float32Array([-0.25, 0.25, -0.75, -0.5, 0.75, 0.75, 0.0, 0.0, 0.25, 0.25, 0.5, -1.0, -0.5, 0.75, 1.0, -0.75, -1.0, 0.25, 0.75, 1.0, 0.5, 0.25, 0.5, 0.25, -0.25, 0.25, 1.0, -0.5, 0.75, 0.0, 0.5, -0.25, 1.0, -0.25, -0.25, -0.25, 0.0, -1.0, -0.25, 0.0, 1.0, 0.0, 0.25, -0.5, -0.25, -0.75, 0.5, -0.5, 0.5, -0.25, 1.0, -0.5, 0.25, 0.5, 0.5, -0.5, -1.0, 0.75, 0.25, -0.75, 1.0, 0.5, 0.5, 0.5, 0.5, 1.0, -1.0, 0.0, 0.75, -0.5, -0.5, -1.0, -0.5, 0.0, 0.5, -1.0, 1.0, 0.25, 0.25, 0.75, 0.25, 0.75, 0.25, -0.5, 0.75, 0.25, 0.75, -0.75, -1.0, -0.25, -0.25, 0.5, 0.25, 0.75, 0.75, -0.5, 0.25, -1.0, 0.0, -1.0, ]);
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    device00.pushErrorScope("out-of-memory");
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    command_encoder001.insertDebugMarker("mymarker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.popDebugGroup()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    
    const array5 = new Float32Array([-0.5, 0.25, 0.5, -0.25, -0.5, 0.0, -0.75, -0.25, 1.0, -0.5, 0.75, -0.25, -0.5, 0.5, 0.75, -0.5, -1.0, 1.0, 1.0, 0.0, 1.0, -0.25, 0.75, 0.75, -1.0, -0.75, 0.5, 0.0, 0.25, -0.25, 0.25, 1.0, 0.75, 0.5, -0.75, 0.25, 0.25, 1.0, -0.5, 0.5, -0.5, 1.0, -0.75, 0.0, 0.5, 0.0, -0.25, 1.0, -0.75, -0.5, -0.75, 0.5, -0.25, -0.75, 0.5, 0.25, 0.25, 0.0, 0.5, -1.0, 0.25, -0.5, 0.75, -0.5, 1.0, -0.75, 0.0, 0.0, 0.75, 1.0, -0.75, -0.5, 0.5, -0.75, 0.25, 0.5, 0.75, 0.0, 0.25, -0.25, -0.75, 0.0, -1.0, 0.5, -0.75, -1.0, 1.0, 0.25, -0.75, 1.0, 0.0, 0.25, 0.25, -1.0, -0.25, -0.5, 0.5, 0.0, 1.0, 1.0, ]);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    const array6 = new Float32Array([-0.5, 0.5, -1.0, 0.0, -1.0, 1.0, 0.75, -0.25, -0.25, 0.75, 1.0, -0.5, 0.25, 1.0, 0.25, -0.25, 0.75, -1.0, 0.25, -0.25, -0.5, 0.0, -0.5, -1.0, 0.75, -0.5, -1.0, 1.0, 0.25, -0.25, 0.25, -0.25, -0.25, 0.25, -0.75, -0.5, 1.0, 1.0, 0.25, 0.25, 1.0, 0.25, 0.0, 0.5, -0.75, 0.75, 1.0, -0.5, 0.75, -0.25, 0.5, 1.0, -0.75, -0.75, -0.25, -0.5, 0.5, 0.5, 1.0, -1.0, 0.75, 0.5, -0.5, 0.5, 0.5, 1.0, 1.0, 1.0, -1.0, 0.25, 0.5, -0.25, -1.0, 0.0, -0.25, 0.75, -1.0, -0.75, 0.0, -0.5, 0.5, -0.75, -1.0, -1.0, -1.0, 0.25, -0.5, 0.25, 0.75, 0.75, 0.25, 0.5, 0.75, 0.5, 0.75, 0.25, 0.75, -0.75, 0.75, 1.0, ]);
    query002.destroy()
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    
    
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    query000.destroy()
    command_encoder001.popDebugGroup()
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.submit([command_buffer000, ]);
    query001.destroy()
    const array7 = new Float32Array([0.25, -0.5, -0.25, 0.5, -0.5, -1.0, -0.75, -0.75, 1.0, -0.5, -0.25, 0.75, 0.25, 0.75, -0.5, 1.0, -0.75, 0.75, -0.25, 0.5, 0.0, -0.75, -0.25, 0.25, 0.5, 0.0, 0.0, 0.0, 0.25, 0.75, 0.5, 0.25, -1.0, -0.75, 0.5, -0.75, 1.0, -1.0, -0.75, -0.25, -0.5, -0.25, 0.25, 0.5, 0.75, 0.0, 0.5, 0.5, 0.75, -1.0, 0.5, -0.5, -0.25, 0.5, -0.5, -1.0, 0.0, -0.25, 0.5, -0.5, -0.75, 0.25, 0.75, -0.75, -0.5, -0.5, -0.5, 0.0, -0.5, 0.5, 0.25, 0.5, 0.5, 1.0, -1.0, -0.25, -0.5, -0.75, -0.5, 1.0, -0.25, -0.75, 0.75, 0.5, 0.5, -0.5, -0.25, 0.25, -1.0, -0.75, -0.25, -0.75, 0.5, 0.0, 0.25, 0.5, 0.75, -0.25, 0.0, -0.75, ]);
    query000.destroy()
    render_bundle_encoder000.setPipeline(render_pipeline001);
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const array8 = new Float32Array([0.0, 0.0, 0.25, 1.0, -0.5, 0.0, 0.25, 0.0, -0.5, 0.0, 0.0, 0.75, 0.75, 0.0, -0.25, 0.5, -0.25, 1.0, 1.0, -0.5, 0.5, 0.5, -0.5, -0.25, -1.0, 0.0, 0.25, 0.0, 1.0, 0.75, -0.75, 0.75, 0.75, -0.5, -0.25, 0.0, -0.75, -0.25, -0.25, -1.0, -0.75, -0.75, 0.0, -1.0, 0.75, -1.0, 0.5, 0.75, -0.5, -0.75, 1.0, 0.5, 0.0, 0.75, -0.25, -1.0, -0.75, -0.5, 0.5, -1.0, -1.0, -0.75, -1.0, -0.25, -0.75, -0.75, 0.0, 0.5, -1.0, 0.75, -0.75, -1.0, -1.0, -0.25, 0.0, 1.0, -1.0, 1.0, 0.5, -1.0, 1.0, 0.0, -0.75, 1.0, 0.5, -0.75, 1.0, -0.75, -0.75, -1.0, 0.5, -0.75, -0.25, -0.25, 0.5, 0.5, 0.0, -0.25, -0.25, -0.25, ]);
    
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    render_bundle_encoder000.insertDebugMarker("marker");
    query002.destroy()
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    query002.destroy()
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    buffer001.destroy()
    command_encoder004.insertDebugMarker("mymarker");
    device00.pushErrorScope("validation");
    const command_buffer003 = command_encoder003.finish();
    
    
    
    device10.destroy();
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const array9 = new Float32Array([0.0, -0.75, 1.0, -0.25, 1.0, 0.75, 0.75, -0.25, 0.0, 0.25, 0.25, 0.75, 0.75, -1.0, -0.5, 0.75, -0.5, 0.25, -0.75, -0.75, -1.0, 0.25, 0.25, -0.75, -0.75, 0.0, -0.25, 1.0, -1.0, -0.75, -0.5, 0.75, -1.0, 0.0, 0.75, 0.75, 0.75, -0.5, -0.25, -0.75, -0.75, 1.0, 0.0, 0.25, 1.0, -0.75, -0.25, -0.75, -0.75, 1.0, -0.25, -0.5, -0.75, 1.0, -1.0, 0.0, 0.0, 1.0, -0.75, 1.0, 1.0, 0.25, 0.25, -1.0, 0.0, 1.0, 0.25, 0.75, -1.0, 0.75, -0.25, 1.0, 0.75, 0.75, 1.0, 0.25, 1.0, 0.0, -0.5, -0.25, -0.5, 0.25, -0.25, -0.75, 0.25, 0.75, 0.25, -0.75, -0.75, 1.0, -0.75, 0.75, 0.0, 0.75, -1.0, -0.25, 0.0, 0.75, -1.0, 0.5, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    
    
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    command_encoder004.insertDebugMarker("mymarker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_bundle_encoder001.setPipeline(render_pipeline004);
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    command_encoder006.pushDebugGroup("mygroupmarker")
    buffer002.destroy()
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    
    query003.destroy()
    query000.destroy()
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    command_encoder004.insertDebugMarker("mymarker");
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.setPipeline(render_pipeline007);
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    
    
    device00.pushErrorScope("internal");
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder002.popDebugGroup();
    query003.destroy()
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    
    compute_pass_encoder0050.insertDebugMarker("marker")
    
    command_encoder004.insertDebugMarker("mymarker");
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    compute_pass_encoder0010.popDebugGroup()
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    const command_buffer008 = command_encoder008.finish();
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder0060.insertDebugMarker("marker")
    render_bundle_encoder001.popDebugGroup();
    
    const array10 = new Float32Array([0.0, -0.25, 0.0, 0.0, -0.75, 0.25, 0.0, 0.25, 0.5, -0.5, -0.5, 1.0, 1.0, 1.0, 0.75, 1.0, 0.0, -1.0, 1.0, -0.25, -0.75, -0.5, -1.0, -0.75, -0.75, 1.0, -0.5, 1.0, 0.0, -1.0, -0.5, 0.5, 0.75, -0.75, -1.0, -0.75, -1.0, -0.5, 1.0, 0.25, -0.25, -1.0, -0.5, -0.25, -0.75, 1.0, 0.75, 0.25, 0.25, -0.25, -0.5, 0.25, -0.75, 0.75, 0.75, 1.0, -1.0, 1.0, 0.75, 0.5, -1.0, -0.5, -0.75, 0.75, -0.5, 0.5, 0.25, 1.0, -0.75, 0.75, 0.5, -0.75, 1.0, -0.25, 0.0, -0.5, -0.5, 0.0, 1.0, 0.75, 0.75, -0.75, 0.25, 1.0, -0.25, -1.0, -1.0, 0.0, 0.75, 0.5, 0.5, 0.75, 1.0, 0.25, -0.5, 0.75, -0.5, 1.0, 0.25, -0.5, ]);
    command_encoder004.clearBuffer(buffer003);
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    command_encoder004.insertDebugMarker("mymarker");
    command_encoder007.pushDebugGroup("mygroupmarker")
    
    
    
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    device00.queue.writeBuffer(buffer003, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer003, 0, array10, 0, array10.length);
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    device00.queue.writeBuffer(buffer003, 0, array8, 0, array8.length);
    render_bundle_encoder001.popDebugGroup();
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer003, 0, array9, 0, array9.length);
    const array11 = new Float32Array([1.0, -0.25, -1.0, 0.25, -1.0, -1.0, 0.0, -0.5, -0.5, -0.25, 0.5, 0.5, 0.5, 0.5, -0.75, -0.75, -0.75, 0.0, -1.0, 0.0, 0.25, -0.5, 0.75, -0.25, 0.0, 0.0, -0.75, 0.5, -0.75, 0.0, 0.5, 0.0, -0.75, 0.0, 1.0, -0.5, 0.75, -0.25, 0.75, -1.0, 0.25, 0.0, 0.25, 0.5, -0.25, 0.25, -0.5, -0.25, 1.0, -0.75, -0.25, -0.5, 0.0, -0.25, 0.25, 0.5, 0.5, 0.25, -0.5, -1.0, 0.5, -1.0, -0.75, -0.5, 0.0, 0.75, 0.25, -0.5, -0.75, 0.25, 1.0, -0.25, 0.75, 0.0, -0.75, 1.0, 1.0, 1.0, 1.0, -0.25, 0.0, -0.25, -0.75, 0.0, 0.0, 1.0, 0.0, 0.75, 0.75, 0.0, -0.25, 0.25, -0.75, 0.0, 0.75, 0.25, 0.5, -0.5, 1.0, 0.25, ]);
    buffer008.destroy()
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    device00.queue.writeBuffer(buffer003, 0, array7, 0, array7.length);
    compute_pass_encoder0060.insertDebugMarker("marker")
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    buffer007.destroy()
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer000,
        0
    )
    render_bundle_encoder000.insertDebugMarker("marker");
    
    query004.destroy()
    query002.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    query000.destroy()
    query004.destroy()
    
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer003, 0, array9, 0, array9.length);
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    
    device00.queue.writeBuffer(buffer003, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0070.insertDebugMarker("marker")
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    buffer005.destroy()
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    query002.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    compute_pass_encoder0050.insertDebugMarker("marker")
    buffer004.destroy()
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
    query000.destroy()
    compute_pass_encoder0070.insertDebugMarker("marker")
    compute_pass_encoder0060.insertDebugMarker("marker")
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    device00.pushErrorScope("internal");
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.submit([command_buffer003, ]);
    device00.queue.writeBuffer(buffer003, 0, array8, 0, array8.length);
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0070.popDebugGroup()
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeBuffer(buffer003, 0, array7, 0, array7.length);
    
    compute_pass_encoder0040.popDebugGroup()
    query002.destroy()
    device00.queue.writeBuffer(buffer003, 0, array11, 0, array11.length);
    
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const array12 = new Float32Array([0.25, 0.0, -0.5, 0.75, 0.25, 0.75, 0.75, 1.0, 0.5, 0.75, 1.0, 0.0, -0.25, 0.5, 0.0, -0.75, 0.25, 0.25, 0.25, -0.25, 1.0, -1.0, 0.25, 1.0, 0.5, -0.5, 0.0, 1.0, 0.0, -0.25, 0.75, -1.0, -1.0, 0.0, -0.25, 1.0, 0.25, 0.25, 0.5, 0.0, 0.0, -0.75, 0.0, -0.75, -0.75, 0.5, -0.5, -0.5, -0.5, 0.0, -1.0, -0.25, -0.5, 0.75, -1.0, -1.0, 0.5, -0.5, 0.75, 0.5, -1.0, -0.25, -0.5, 0.5, -0.25, 0.5, -1.0, 1.0, 0.0, -0.75, 0.0, -0.25, -0.25, 0.75, 0.25, -0.5, 0.25, -0.25, 0.25, 1.0, -0.25, -1.0, -0.75, 0.25, 0.25, -0.75, 0.25, -1.0, 0.75, 0.25, 0.5, -0.25, -1.0, 0.75, -0.25, -0.5, -1.0, 0.75, 0.0, 0.5, ]);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0070.insertDebugMarker("marker")
    
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0010.popDebugGroup()
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array11, 0, array11.length);
    compute_pass_encoder0060.insertDebugMarker("marker")
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group003);
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    query002.destroy()
    query001.destroy()
    device00.queue.writeBuffer(buffer003, 0, array10, 0, array10.length);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    query004.destroy()
    query002.destroy()
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0070.insertDebugMarker("marker")
    compute_pass_encoder0060.setPipeline(compute_pipeline003);
    query001.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    compute_pass_encoder0050.setPipeline(compute_pipeline003);
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    compute_pass_encoder0040.setPipeline(compute_pipeline000);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.popDebugGroup();
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    texture001.destroy();
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    query007.destroy()
    compute_pass_encoder0070.setPipeline(compute_pipeline003);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    const array13 = new Float32Array([-0.5, 1.0, 0.0, 0.75, -0.25, -0.25, 0.75, -0.5, -1.0, 0.75, 0.75, 1.0, -0.25, 0.75, -1.0, -0.25, 0.25, 0.25, 0.25, 0.0, 0.25, 0.75, 0.0, 0.25, -0.5, -0.25, -0.25, 0.0, -1.0, 0.5, 0.25, 0.0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.0, 0.75, -0.5, 0.5, 0.25, 1.0, 0.25, -0.5, 0.25, 0.5, 0.5, 1.0, 1.0, 1.0, -0.25, 0.75, -0.75, -0.75, 1.0, -0.25, 0.5, -1.0, 1.0, 0.0, 0.5, -0.75, 0.25, -0.25, 0.75, 0.5, 0.75, -0.25, 0.0, -1.0, 0.75, 0.75, 0.75, -1.0, -0.5, 1.0, -0.5, 0.75, -0.5, 0.0, -0.25, 1.0, -0.5, 0.5, -0.75, -0.75, -0.5, 0.0, 0.5, 0.0, 1.0, -0.25, 0.75, 0.25, -0.5, 0.5, -0.75, 0.75, 0.5, ]);
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    device00.queue.writeBuffer(buffer003, 0, array11, 0, array11.length);
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    device30.pushErrorScope("validation");
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    buffer009.destroy()
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device00.queue.writeBuffer(buffer003, 0, array7, 0, array7.length);
    compute_pass_encoder0050.insertDebugMarker("marker")
    
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
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
    
    query006.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    
    buffer0010.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group004);
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array12, 0, array12.length);
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder0050.insertDebugMarker("marker")
    
    device20.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder009.pushDebugGroup("mygroupmarker")
    const render_pass_encoder0090 = command_encoder009.beginRenderPass({
        label: "render_pass_encoder0090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8sint",
        dimension: "2d"
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    texture300.destroy();
    buffer0011.destroy()
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
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0090.setPipeline(render_pipeline006);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query002.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0010.popDebugGroup()
    
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    buffer0013.destroy()
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout002,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device00.queue.writeBuffer(buffer003, 0, array12, 0, array12.length);
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    render_pass_encoder0090.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout007,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    command_encoder301.pushDebugGroup("mygroupmarker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group005);
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout001,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    query005.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout003]
    });
    compute_pass_encoder0050.insertDebugMarker("marker")
    const array14 = new Float32Array([-0.75, -0.25, -0.5, -0.75, 0.25, -0.25, 0.25, 0.0, -0.5, 0.75, 0.5, -0.75, -0.5, -0.5, -0.5, 0.0, 0.25, -0.5, 0.75, 0.0, -1.0, -0.25, -0.5, -1.0, -0.75, -0.25, 0.0, 0.5, -0.25, 1.0, -0.25, -0.75, -0.5, 0.25, -0.75, 0.5, 0.5, 0.0, 0.75, -0.5, 0.25, -1.0, 0.25, -0.5, -0.25, -0.25, 0.5, -0.25, 0.75, -0.75, 0.5, 1.0, 0.0, 0.25, -0.75, -1.0, -0.75, -0.25, 0.5, -0.25, 0.5, -0.25, 0.5, 1.0, -0.5, 1.0, 0.25, 0.25, -0.25, 1.0, 0.75, 0.25, 1.0, 0.25, -1.0, 0.5, 0.0, -0.5, 0.75, -0.5, -0.5, -0.5, 0.5, -0.75, 0.5, 0.75, -1.0, -0.75, 1.0, 0.25, 1.0, 0.0, 0.25, 0.25, 0.75, -1.0, -0.75, 1.0, -0.75, 1.0, ]);
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout004,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0016, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0016, 0);
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout008,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0040.popDebugGroup()
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_pass_encoder0090.setBindGroup(0, bind_group006);
    
    buffer0012.destroy()
    device00.queue.writeBuffer(buffer0016, 0, array9, 0, array9.length);
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group007);
    device00.queue.writeBuffer(buffer003, 0, array8, 0, array8.length);
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query007.destroy()
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer0016, 0, array12, 0, array12.length);
    query000.destroy()
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer003, 0, array11, 0, array11.length);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0090.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    device00.queue.submit([command_buffer008, ]);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0021, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0021, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const command_buffer302 = command_encoder302.finish();
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    compute_pass_encoder0070.setBindGroup(0, bind_group008);
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0024, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer0024, 0);
    command_encoder301.popDebugGroup()
    compute_pass_encoder0070.end();
    compute_pass_encoder0020.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder0010.end();
    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0026,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group009);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0040.popDebugGroup()
    command_encoder001.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
    const command_buffer301 = command_encoder301.finish();
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0050.end();
    const command_buffer005 = command_encoder005.finish();
    compute_pass_encoder0020.end();
    compute_pass_encoder0040.end();
    command_encoder007.popDebugGroup()
    const command_buffer004 = command_encoder004.finish();
    compute_pass_encoder0060.dispatchWorkgroups(100);
    const command_buffer007 = command_encoder007.finish();
    const command_buffer002 = command_encoder002.finish();
    compute_pass_encoder0060.end();
    command_encoder006.popDebugGroup()
    const command_buffer006 = command_encoder006.finish();
    device30.queue.submit([command_buffer301, ]);
    device00.queue.submit([command_buffer004, command_buffer005, command_buffer007, ]);
    device00.queue.submit([command_buffer002, command_buffer006, ]);
}