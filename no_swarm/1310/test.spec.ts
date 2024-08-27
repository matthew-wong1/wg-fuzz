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
    const array0 = new Float32Array([-0.5, -0.25, -0.5, 1.0, -0.75, -1.0, -0.25, -0.5, -0.25, 0.5, 1.0, 0.0, -0.5, 0.0, -1.0, -0.75, -0.25, 0.75, 1.0, 0.0, 1.0, 0.5, -0.25, 1.0, 0.5, -0.75, 0.5, 0.5, 0.75, 0.0, -1.0, -0.75, 0.75, -0.5, -0.25, 0.75, 0.0, 1.0, 0.25, 1.0, 0.25, 0.0, -0.75, -0.25, -1.0, -0.25, 0.25, 0.75, -0.75, -0.5, -0.75, 1.0, -0.75, -0.25, 0.5, -0.75, -0.25, -0.5, 0.0, -0.5, 0.75, -1.0, 0.25, -0.5, 0.25, -1.0, -0.75, -0.75, -0.25, 0.75, -1.0, 0.25, -0.75, -1.0, -0.25, -0.5, 0.5, -0.5, -0.5, -0.75, 0.75, 0.5, 0.25, -0.75, 1.0, 0.75, -0.75, 1.0, 0.25, 0.75, -0.25, 1.0, -0.25, 0.25, 0.75, 1.0, -0.25, 1.0, -0.5, 0.0, ]);
    const array1 = new Float32Array([0.0, -0.25, 0.5, -0.5, 1.0, 0.75, 0.25, 0.5, -0.5, -0.25, 0.75, 0.25, -0.75, -0.5, 0.0, 1.0, 0.5, -0.75, 1.0, 0.0, -0.5, -0.75, 1.0, -0.25, 0.5, -0.25, -0.5, -0.75, 0.0, 0.0, -0.5, -0.5, 0.0, 0.25, -1.0, -0.25, -1.0, 1.0, 0.75, -1.0, -0.25, 0.25, 0.75, 0.25, -0.75, 0.25, -0.25, -0.5, 0.5, -0.25, 0.75, 0.25, 0.0, -0.75, -0.75, -0.5, 0.75, 0.25, -0.75, -1.0, -1.0, 0.5, 0.75, -0.25, -0.75, 0.75, -1.0, -0.75, 0.5, 1.0, -0.25, 0.5, -0.75, 0.25, 0.75, -0.25, -0.25, 0.75, 0.75, 0.5, -0.75, -1.0, 0.75, 0.0, 0.75, 0.5, 0.0, 0.25, 0.5, -0.25, 0.25, -0.75, -0.25, 0.0, -0.75, 0.75, -0.75, -0.75, -0.75, 1.0, ]);
    
    
    const array2 = new Float32Array([0.25, 0.0, 0.5, -0.75, 0.0, 0.5, 0.25, 0.25, -0.5, -0.75, 1.0, -0.75, 1.0, 0.0, -0.5, -0.25, 0.5, 0.0, -0.75, -1.0, 0.25, -0.5, -0.75, -1.0, 0.75, 0.75, 0.75, 0.25, 0.25, 0.0, -0.75, 1.0, -0.25, -0.25, -0.5, 1.0, -0.25, -1.0, 0.75, -0.25, 0.5, 0.75, -0.25, 0.25, -0.75, 0.75, 0.5, 0.5, 1.0, -0.5, 0.0, -0.75, 0.75, 0.5, -0.75, 0.75, 0.0, 1.0, 0.5, -0.5, -0.5, 0.25, 0.25, 0.0, -0.75, -0.75, -1.0, -0.5, -0.5, -0.75, -0.5, -0.5, -1.0, 0.75, -0.25, 0.75, -0.75, -1.0, -1.0, 1.0, 0.25, -1.0, 1.0, 0.5, 0.0, 0.25, 0.75, 0.75, 0.0, 1.0, -0.75, 1.0, 0.75, -0.75, 0.25, 1.0, -0.5, 0.75, 0.75, 0.25, ]);
    
    const array3 = new Float32Array([0.75, -0.5, -1.0, 0.0, 0.0, -1.0, 0.75, -1.0, -0.25, -0.5, 0.75, -0.75, 0.25, -1.0, -0.5, 0.75, -0.5, -0.25, 0.25, 0.25, -1.0, 1.0, 1.0, 0.0, 0.75, 1.0, -0.25, 0.75, 0.75, 0.5, -0.5, 0.5, 0.0, 0.0, 0.25, 0.5, 0.0, 0.5, 1.0, -0.5, 0.25, -0.25, 0.5, 1.0, -0.75, -0.25, 0.25, 0.75, -0.75, 0.75, 0.0, -0.5, -0.25, 0.25, -0.25, -0.5, -0.5, 0.5, 0.0, 0.25, -0.75, 1.0, -0.75, -0.25, 1.0, -0.25, 0.0, -0.25, 1.0, 0.25, -1.0, 0.25, -0.75, 0.75, 0.75, -0.5, -1.0, -0.5, 1.0, -0.75, 0.25, 0.75, 0.75, 0.5, 0.0, 0.5, -1.0, -1.0, -0.75, 0.75, -0.75, -1.0, -0.5, -0.75, -0.5, 0.0, -0.5, -0.5, 0.25, 0.25, ]);
    
    const array4 = new Float32Array([1.0, 0.5, -0.25, 0.75, 1.0, -0.25, -0.75, -0.75, -0.25, -1.0, 1.0, 0.0, 0.5, -0.75, 0.75, -1.0, 0.25, 0.25, 0.75, -1.0, 1.0, -0.25, 0.25, 0.0, -1.0, 0.25, -0.25, 0.0, 0.75, -0.5, 0.5, 0.25, 0.75, -0.75, 0.5, -0.5, 0.25, -0.75, -0.25, 0.0, -0.5, -0.25, -0.5, 0.0, 0.75, 1.0, -0.75, -0.75, -0.5, 1.0, -0.5, 0.0, 0.25, 1.0, 0.25, 1.0, 1.0, -0.75, 0.0, -0.25, 0.75, 0.0, 1.0, -0.75, 0.5, 1.0, 1.0, 1.0, -0.25, 0.25, -0.75, 0.75, -0.25, -0.75, -0.75, -1.0, 0.5, 0.5, -0.5, -1.0, 0.5, 0.25, 1.0, -0.75, -0.25, 0.5, 1.0, 0.0, -0.75, 0.25, 0.75, 1.0, 0.0, 0.0, 0.5, 0.75, -1.0, 1.0, 0.0, 0.25, ]);
    
    
    const array5 = new Float32Array([0.5, 1.0, -1.0, 0.75, 0.75, -0.75, 1.0, -0.75, -0.75, 0.5, -0.25, 0.75, -0.75, 0.75, 1.0, 0.5, 0.25, -0.5, 1.0, 0.25, -1.0, -0.5, -0.25, -0.5, -0.5, 0.0, 0.5, 1.0, -0.25, 0.0, -1.0, 0.0, 0.75, 1.0, -0.25, 1.0, -1.0, 0.75, -1.0, 0.0, 0.25, 0.5, 1.0, 1.0, 0.25, 0.5, -1.0, -0.25, 0.75, 0.0, 0.5, 0.5, -0.5, 1.0, 0.5, -1.0, 0.25, 1.0, -0.25, 0.75, 0.0, -1.0, 0.25, 0.5, -0.25, 0.5, 1.0, 0.5, -1.0, 0.75, -0.75, -1.0, 1.0, 1.0, 0.75, -0.25, -0.75, 0.25, 0.0, 0.25, -0.5, -0.25, 1.0, 0.75, -0.75, -0.75, 0.0, -0.75, -0.25, 0.25, 1.0, 0.0, 0.75, 1.0, -0.5, -0.75, 1.0, -0.75, 0.75, 0.75, ]);
    const array6 = new Float32Array([0.5, 0.0, -0.5, 0.75, 0.0, 0.0, -0.25, -0.25, -0.75, -0.25, -1.0, 0.25, -0.25, 1.0, 1.0, -0.25, 0.0, 0.0, 0.25, 0.75, 0.75, -0.25, 1.0, 0.0, -0.5, 0.0, 1.0, -0.25, -1.0, 0.5, 0.75, -0.5, 0.5, 0.75, -0.75, -1.0, 1.0, 0.75, -0.25, 0.25, 0.0, 0.25, 0.25, 1.0, -0.25, -0.25, 0.0, -0.75, -0.5, 1.0, 0.25, 0.75, 1.0, -1.0, -0.75, -0.5, 0.25, -0.25, 0.0, -1.0, -1.0, -0.75, 0.75, 0.0, -0.5, 0.25, 0.0, -1.0, 0.5, -1.0, -0.5, 0.25, -0.5, 1.0, -0.25, 0.0, 0.25, 0.5, 1.0, -0.5, -0.25, -1.0, -0.5, -1.0, -1.0, -1.0, -0.25, -0.5, 0.5, -0.5, -1.0, -0.25, 0.5, -0.75, 0.25, 0.75, 0.5, 0.25, 0.0, 0.5, ]);
    
    const array7 = new Float32Array([0.25, 0.25, -0.75, 1.0, 0.75, 0.0, -1.0, 1.0, 0.25, -1.0, -0.75, 1.0, 0.0, -0.75, -0.25, 0.75, 0.75, -0.75, 0.0, 0.5, -1.0, -0.75, 0.75, -0.5, -0.5, -0.25, 1.0, 0.0, 1.0, 0.0, -1.0, -1.0, -1.0, 0.5, 1.0, -0.75, 0.0, -0.25, 0.25, 0.25, -0.75, 0.5, 0.75, -0.5, -0.75, 0.5, -1.0, -0.5, 1.0, -0.25, -1.0, 0.25, 0.25, 1.0, -0.75, -0.5, 0.25, 0.0, 1.0, -0.25, 0.25, 1.0, -0.5, -0.25, -0.5, 0.25, -1.0, -0.75, 0.5, -0.75, -1.0, -0.5, 0.75, -0.25, 0.0, -0.5, 0.5, -0.75, -0.5, -1.0, 0.0, -1.0, 0.25, -0.75, 0.5, 0.0, 0.25, 0.25, -0.5, -0.75, -0.25, 0.75, -0.5, 0.75, 0.5, -0.75, 0.75, 1.0, -0.5, 0.25, ]);
    const array8 = new Float32Array([0.5, -0.75, -0.5, 1.0, -0.25, 0.25, 0.75, 0.25, 0.75, -0.5, -0.5, -0.25, -0.25, 0.75, -0.5, -0.75, -0.25, -0.25, -0.25, -0.75, 0.75, -0.75, 0.5, 0.5, 0.5, 1.0, -1.0, -0.25, -0.75, 0.25, 1.0, 0.5, -0.75, 0.0, 0.0, -0.5, 1.0, 0.0, -0.5, -0.75, 0.5, 0.25, -0.75, 1.0, -0.5, -0.5, -0.75, 0.25, 0.25, 1.0, 0.75, 0.25, -0.75, 0.0, 1.0, 0.0, -0.25, -0.75, 0.5, 0.0, 0.5, 0.0, -0.5, -0.25, 0.5, -0.75, 0.5, -0.5, 0.75, 0.0, 0.75, -0.75, -0.5, -0.75, 0.75, -1.0, 0.5, -0.5, 1.0, -0.5, 1.0, -0.5, -0.25, -1.0, 0.0, 0.5, 1.0, 1.0, 0.25, 0.25, -0.25, -0.75, 1.0, 1.0, -0.75, -0.5, 0.5, 0.0, -1.0, -0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const array9 = new Float32Array([-1.0, 0.75, -1.0, 0.0, 1.0, 0.75, -1.0, -1.0, -1.0, -0.75, 0.75, 1.0, -0.5, 0.5, -0.5, -0.25, 0.75, 0.5, 0.75, -0.75, 0.5, 0.0, -0.75, 0.5, 0.75, 0.5, 0.25, 0.75, 0.0, 0.0, -1.0, -0.75, -1.0, 1.0, -0.25, 1.0, 1.0, 0.0, -0.75, -1.0, 0.25, -1.0, -0.25, -0.25, 0.5, -0.75, 0.0, -0.5, 0.75, -0.25, -0.5, -0.75, 0.25, 0.75, 0.75, -0.5, -0.75, -0.5, -1.0, -0.25, 0.25, 0.0, 0.0, -0.25, 0.25, 0.25, 1.0, -0.5, 0.5, -0.5, -0.75, 0.0, -1.0, 0.75, 1.0, 0.5, -1.0, 0.0, -0.5, 1.0, 0.25, 0.75, 0.0, 0.0, 0.25, -0.75, -1.0, -0.75, -1.0, 0.75, 0.25, -1.0, -0.25, -0.75, 1.0, 0.0, 0.25, 0.0, 1.0, 0.5, ]);
    query000.destroy()
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    query001.destroy()
    
    
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
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder002.setPipeline(render_pipeline000);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group000);
    buffer000.destroy()
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_bundle_encoder001.setPipeline(render_pipeline001);
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder003.setPipeline(render_pipeline000);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder003.pushDebugGroup("group_marker");
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
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array10 = new Float32Array([-0.75, 0.75, 0.5, -1.0, -1.0, 1.0, 0.75, 1.0, -0.5, 0.5, -0.25, 1.0, -1.0, 1.0, -0.75, 0.0, -0.5, -0.75, -0.5, -1.0, 0.75, -1.0, -0.75, -1.0, 1.0, -0.5, 0.5, 0.75, -0.75, -0.75, 0.25, -0.75, 0.0, 0.75, -0.5, 0.75, 0.75, 1.0, 0.5, 1.0, 1.0, 0.0, -0.25, 0.0, 0.0, -0.75, 0.25, -0.75, 0.75, -0.25, 0.25, 1.0, 0.75, 0.75, -0.5, -1.0, -1.0, -0.25, -0.5, 0.75, 0.25, 1.0, 0.5, 0.5, -0.75, -0.25, -0.25, 1.0, 0.75, 0.0, 0.75, -1.0, -0.25, 0.25, -0.25, 0.75, 0.5, -0.25, 0.75, 0.25, 0.75, -0.5, 0.25, 1.0, 0.0, 0.25, 0.25, 0.25, -1.0, -0.25, -0.75, -1.0, -1.0, 1.0, 0.75, -0.25, -0.75, 1.0, -0.75, 1.0, ]);
    
    render_bundle_encoder002.setVertexBuffer(0, buffer004);
    
    query001.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    buffer004.destroy()
    
    render_bundle_encoder003.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder002.draw(3);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder003.insertDebugMarker("marker");
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device00.pushErrorScope("internal");
    buffer004.destroy()
    render_bundle_encoder003.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    device30.pushErrorScope("out-of-memory");
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.insertDebugMarker("mymarker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    buffer001.destroy()
    
    
    render_bundle_encoder003.popDebugGroup();
    
    render_bundle_encoder003.pushDebugGroup("group_marker");
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.insertDebugMarker("marker");
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
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    
    
    device00.queue.writeTexture({ texture: texture000 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    buffer002.destroy()
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
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
    
    query300.destroy()
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device00.queue.writeTexture({ texture: texture000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture400.destroy();
    
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.popDebugGroup();
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_bundle_encoder003.setBindGroup(0, bind_group001);
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
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
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    texture000.destroy();
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    const array11 = new Float32Array([0.25, 0.25, 0.0, -1.0, -0.75, 0.75, -0.75, 0.0, -0.25, -0.5, -0.75, 1.0, 0.0, 0.75, -0.5, 0.25, -0.75, -0.5, 0.5, -1.0, 0.5, -0.25, 0.5, -0.75, 1.0, 1.0, 0.25, 0.75, 1.0, -0.75, 0.25, 0.5, 0.25, -0.25, -0.25, 0.25, -0.75, 0.0, 0.75, -0.25, -0.25, -0.75, 1.0, -0.5, 0.5, 0.75, 0.75, -0.5, 0.0, -1.0, -0.25, 0.0, 0.75, 0.25, -1.0, -1.0, 0.0, 0.75, -0.75, 0.5, 0.5, -0.5, 0.5, 1.0, 0.0, 0.5, 1.0, 0.25, -0.75, -1.0, -1.0, -1.0, -0.75, 1.0, -1.0, -0.25, 0.5, 0.75, 0.75, -0.5, -0.75, -0.5, -0.25, 0.75, -0.5, -0.75, -0.75, -0.25, 0.0, 0.75, 0.0, 0.5, 1.0, 0.0, -0.25, 0.5, -0.25, 0.75, 0.75, 0.75, ]);
    render_bundle_encoder003.setVertexBuffer(0, buffer004);
    device00.queue.writeTexture({ texture: texture000 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.destroy();
    render_bundle_encoder003.setIndexBuffer(buffer004, "uint16");
    render_bundle_encoder003.drawIndexedIndirect(buffer000, 0);
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    query301.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth16unorm",
        dimension: "2d"
    });
    query300.destroy()
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    
    render_pass_encoder0000.setPipeline(render_pipeline009);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0000.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    device00.queue.writeTexture({ texture: texture002 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer003.destroy()
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
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
    
    buffer008.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.endOcclusionQuery()
    device00.queue.writeTexture({ texture: texture001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    command_encoder001.insertDebugMarker("mymarker");
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("out-of-memory");
    
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer008
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder003.drawIndirect(buffer005, 0);
    
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    buffer007.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    query300.destroy()
    command_encoder002.copyBufferToBuffer(
        buffer008,
        0,
        buffer008,
        0,
        400
    );
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    texture000.destroy();
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    texture200.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder300.popDebugGroup();
    
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer006,
        0
    )
    render_bundle_encoder301.setPipeline(render_pipeline300);
    compute_pass_encoder0000.popDebugGroup()
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
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    query000.destroy()
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    query003.destroy()
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline009.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group003);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder002.popDebugGroup();
    render_pass_encoder0000.setVertexBuffer(0, buffer004);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0000.draw(3);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout003]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.pushErrorScope("validation");
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    render_pass_encoder0020.executeBundles([])
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    texture002.destroy();
    texture001.destroy();
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    query000.destroy()
    device00.queue.writeBuffer(buffer009, 0, array10, 0, array10.length);
    render_pass_encoder0020.setPipeline(render_pipeline005);
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
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
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query002.destroy()
    render_bundle_encoder300.setPipeline(render_pipeline301);
    render_pass_encoder0020.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    command_encoder301.insertDebugMarker("mymarker");
    render_bundle_encoder003.popDebugGroup();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query300.destroy()
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    compute_pass_encoder0010.setPipeline(compute_pipeline004);
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    query000.destroy()
    command_encoder201.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder003.finish();
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout004]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    
    buffer0010.destroy()
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer0011,
        0
    )
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("internal");
    device00.queue.writeTexture({ texture: texture000 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder302.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group004);
    command_encoder003.clearBuffer(buffer007);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder004 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder004",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder301.pushDebugGroup("mygroupmarker")
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query300.destroy()
    
    buffer0012.destroy()
    query300.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    compute_pass_encoder0001.setPipeline(compute_pipeline002);
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device00.queue.writeBuffer(buffer0011, 0, array0, 0, array0.length);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer0011, 0, array10, 0, array10.length);
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder004.insertDebugMarker("marker");
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group005);
    render_pass_encoder0030.setPipeline(render_pipeline005);
    buffer0013.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder004.setPipeline(render_pipeline0012);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder001.setVertexBuffer(0, buffer0013);
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline0012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    render_bundle_encoder004.setBindGroup(0, bind_group006);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0000.beginOcclusionQuery(0)
    render_pass_encoder0020.popDebugGroup();
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    command_encoder201.insertDebugMarker("mymarker");
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_bundle_encoder001.drawIndirect(buffer005, 0);
    compute_pass_encoder0011.setPipeline(compute_pipeline007);
    render_bundle_encoder002.drawIndirect(buffer008, 0);
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group007);
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    buffer0016.destroy()
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer008,
        0
    )
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    render_bundle_encoder002.popDebugGroup();
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout003]
    });
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    buffer0019.destroy()
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout008,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    query000.destroy()
    query200.destroy()
    command_encoder301.insertDebugMarker("mymarker");
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0018, 0, array8, 0, array8.length);
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    {
        await buffer600.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer600.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer600.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0031.setPipeline(render_pipeline002);
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    device00.queue.writeBuffer(buffer005, 0, array9, 0, array9.length);
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    device00.queue.writeBuffer(buffer0011, 0, array2, 0, array2.length);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    render_pass_encoder0000.popDebugGroup();
    render_bundle_encoder302.setPipeline(render_pipeline300);
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder001.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0030.insertDebugMarker("marker");
    
    render_bundle_encoder000.setVertexBuffer(0, buffer003);
    query004.destroy()
    render_bundle_encoder004.setVertexBuffer(0, buffer003);
    buffer009.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group008);
    texture301.destroy();
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    
    query002.destroy()
    buffer600.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    compute_pass_encoder3000.popDebugGroup()
    device00.queue.writeBuffer(buffer005, 0, array6, 0, array6.length);
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setVertexBuffer(0, buffer009);
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
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group009);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.draw(3);
    render_pass_encoder0031.popDebugGroup();
    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0025,
                },
            },
        ],
    });

    render_pass_encoder0031.setBindGroup(0, bind_group0010);
    render_pass_encoder0031.setVertexBuffer(0, buffer0013);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0031.draw(3);
    render_pass_encoder0031.end();
    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0027,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0011);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0031.end();
    render_pass_encoder0020.setVertexBuffer(0, buffer007);
    const command_buffer202 = command_encoder202.finish();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0000.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.end();
    compute_pass_encoder0011.popDebugGroup()
    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0029,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0012);
    command_encoder301.popDebugGroup()
    command_encoder300.popDebugGroup()
    compute_pass_encoder0010.end();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    const command_buffer002 = command_encoder002.finish();
    compute_pass_encoder0001.popDebugGroup()
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0030, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0030, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0030.end();
    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0032,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0013);
    render_pass_encoder0020.popDebugGroup();
    const command_buffer003 = command_encoder003.finish();
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0010, 0);
    compute_pass_encoder3000.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0001.end();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0033, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0033, 0);
    device30.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0020.draw(3);
    compute_pass_encoder0000.end();
    const command_buffer301 = command_encoder301.finish();
    device00.queue.submit([command_buffer000, ]);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0012, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const command_buffer300 = command_encoder300.finish();
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0031.end();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0034, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0034, 0);
    device00.queue.submit([command_buffer000, ]);
    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0036,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0014);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder0011.end();
    render_pass_encoder0000.end();
    compute_pass_encoder0011.end();
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.drawIndirect(buffer0034, 0);
    render_pass_encoder0031.drawIndirect(buffer0016, 0);
    const command_buffer001 = command_encoder001.finish();
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const command_buffer200 = command_encoder200.finish();
    device70.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0000.end();
    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0038,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0015);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer0034, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    device00.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0031.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0034, 0);
    compute_pass_encoder2000.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    device30.queue.submit([command_buffer301, ]);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0039, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0039, 0);
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    compute_pass_encoder0011.end();
    device30.queue.submit([command_buffer300, ]);
    device20.queue.submit([]);
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0020.setIndexBuffer(buffer005, "uint16");
    compute_pass_encoder0001.end();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0018, 0);
    device00.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer008, 0);
    device60.queue.submit([]);
    render_pass_encoder0031.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0039, 0);
    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0041,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0016);
    render_pass_encoder0000.drawIndexed(3);
    device60.queue.submit([]);
    device70.queue.submit([]);
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0020.end();
    device70.queue.submit([]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0015, 0);
    compute_pass_encoder0001.end();
    compute_pass_encoder0001.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder0010.popDebugGroup()
    device70.queue.submit([]);
    render_pass_encoder0030.draw(3);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0030.setIndexBuffer(buffer0029, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0043,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0017);
    device00.queue.submit([]);
    render_pass_encoder0020.end();
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0034, 0);
    device30.queue.submit([]);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0020.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0034, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndirect(buffer0033, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0033, 0);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder0001.end();
    device20.queue.submit([command_buffer202, ]);
    device30.queue.submit([command_buffer301, ]);
    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0045,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0018);
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0039, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    command_encoder201.popDebugGroup()
    render_pass_encoder0030.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0034, 0);
    device60.queue.submit([]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer307, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer307, 0);
    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0047,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0019);
    render_pass_encoder0000.end();
    device00.queue.submit([command_buffer000, ]);
    device60.queue.submit([]);
    render_pass_encoder0000.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0010, 0);
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
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group303);
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
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group304);
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
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
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group305);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0039, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    render_pass_encoder0020.popDebugGroup();
    const command_buffer201 = command_encoder201.finish();
    compute_pass_encoder0000.end();
    render_pass_encoder0000.setIndexBuffer(buffer0010, "uint16");
    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0049,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0020);
    device20.queue.submit([]);
    compute_pass_encoder3000.end();
    render_pass_encoder0031.setIndexBuffer(buffer0044, "uint16");
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0050, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0050, 0);
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer202, ]);
    render_pass_encoder0031.drawIndirect(buffer0032, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0033, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0030.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0011.end();
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.end();
    render_pass_encoder0030.drawIndirect(buffer0040, 0);
    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0052,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0021);
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder0031.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0054,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0022);
    render_pass_encoder0000.end();
    render_pass_encoder0000.draw(3);
    compute_pass_encoder0000.popDebugGroup()
    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0056,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0023);
    compute_pass_encoder0011.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder0031.drawIndirect(buffer0026, 0);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0019, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.drawIndirect(buffer0034, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0031.end();
    compute_pass_encoder2000.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3000.end();
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndirect(buffer0033, 0);
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group306);
    render_pass_encoder0000.end();
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group307);
    render_pass_encoder0000.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0035, "uint16");
    device30.queue.submit([command_buffer301, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0000.drawIndirect(buffer0043, 0);
    render_pass_encoder0031.drawIndirect(buffer0050, 0);
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0047, "uint16");
    compute_pass_encoder0011.dispatchWorkgroups(100);
    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0058,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0024);
    device70.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder0000.setIndexBuffer(buffer008, "uint16");
    device60.queue.submit([]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0034, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0000.drawIndirect(buffer000, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0010.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0000.draw(3);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0031.drawIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer001, ]);
    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0060,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0025);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0011.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0061, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer0033, 0);
    render_pass_encoder0020.drawIndirect(buffer0034, 0);
    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0063,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0026);
    render_pass_encoder0031.setIndexBuffer(buffer006, "uint16");
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0031.end();
    compute_pass_encoder2000.popDebugGroup()
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group308);
    compute_pass_encoder3000.end();
    device00.queue.submit([command_buffer000, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3020, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3020, 0);
    render_pass_encoder0000.drawIndirect(buffer0018, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0034, 0);
    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0065,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0027);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0031.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer202, ]);
    compute_pass_encoder0001.end();
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder0011.popDebugGroup()
    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3022,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group309);
    render_pass_encoder0030.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
}