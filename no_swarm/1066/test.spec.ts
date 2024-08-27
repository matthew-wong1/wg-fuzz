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
    
    const array0 = new Float32Array([1.0, -0.75, 0.25, 0.5, -0.25, -1.0, -0.5, 0.5, 0.5, -0.75, -0.25, -1.0, 0.75, -0.75, 0.25, -1.0, 0.75, -0.25, -0.75, -0.5, 0.0, -0.5, 0.5, -0.5, 0.0, 0.75, -0.25, 0.5, 0.75, -0.25, -1.0, 1.0, -0.5, -0.5, 0.25, 0.0, 0.25, 0.25, -0.5, 0.5, 0.25, -1.0, -0.75, 0.5, 0.0, -1.0, 0.75, 0.0, 0.75, -1.0, 0.75, -0.75, -0.25, 0.0, 0.5, 1.0, -0.75, 0.75, -0.5, 0.25, 1.0, -0.5, -0.25, -0.5, -0.25, 0.75, -0.75, -0.5, -0.75, 0.0, 1.0, 0.25, 0.25, 0.5, 0.25, -0.5, -1.0, 0.5, -1.0, 0.5, 0.5, -1.0, 0.0, -1.0, 0.0, -1.0, -0.5, 0.75, -0.25, -0.75, -0.5, -1.0, -0.25, 0.0, 1.0, 0.25, -0.75, 1.0, 0.25, -0.5, ]);
    
    
    
    const array1 = new Float32Array([1.0, 0.0, 0.25, 0.25, -0.25, 0.0, 0.0, -0.5, 1.0, -0.5, -0.25, 0.25, -0.5, 0.5, 0.25, -0.5, 0.5, 1.0, -1.0, 0.75, 0.75, -0.25, 1.0, 0.5, -0.75, 0.25, -0.25, -0.75, -0.25, 1.0, -0.25, 0.5, 0.25, 0.25, -1.0, -0.5, 0.0, -0.25, 0.75, 0.25, -1.0, -0.25, -0.75, -1.0, -0.75, -0.25, -0.25, 0.75, 0.5, 0.5, 0.0, 0.5, -0.25, 0.5, 1.0, 0.5, -1.0, 1.0, -0.5, -0.25, 0.5, 0.25, -0.25, 0.0, -0.25, -0.5, 0.25, -0.75, 0.5, 0.75, 0.25, 0.25, -0.25, -1.0, -1.0, -0.25, -1.0, 0.5, 0.25, 0.25, 0.75, -1.0, 0.75, -1.0, 0.0, 1.0, -1.0, -0.25, -0.75, -0.25, 0.5, 0.75, 1.0, -1.0, -1.0, -1.0, -0.5, 0.75, 0.0, 0.25, ]);
    
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([-0.75, 0.5, 1.0, 0.25, 0.0, 0.75, -0.25, -0.25, 1.0, 0.0, 0.25, -1.0, 0.25, -0.5, 0.75, -0.75, -0.5, 0.5, -0.5, -1.0, -0.75, -0.5, 0.5, -0.5, -1.0, -1.0, -0.25, -0.75, 0.5, -1.0, -0.5, 0.75, -0.25, -0.25, 0.0, 0.25, -0.75, -0.5, 0.75, -0.75, 0.25, -0.25, 0.5, -1.0, 0.75, 0.75, -0.5, 0.0, -0.75, 0.0, 0.0, 0.5, 0.0, -0.25, -0.5, -0.75, 0.5, 1.0, 0.75, 1.0, 0.75, 1.0, -0.75, 0.5, -0.5, 0.0, 0.0, 0.25, -1.0, -1.0, -0.75, 0.25, -0.5, 0.25, -0.25, -0.75, -0.25, 0.5, 0.25, -0.25, -0.25, -0.5, 0.75, 0.75, 0.0, 0.75, -0.25, -1.0, -0.5, -0.25, 0.75, -1.0, -0.25, 0.0, 1.0, 0.0, -0.25, 0.0, -0.25, 0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
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
    
    const array3 = new Float32Array([0.5, -0.25, -0.25, 0.25, 1.0, -0.5, 0.5, 0.25, -0.25, 0.75, -1.0, -1.0, -0.5, -1.0, -0.5, -0.25, 0.5, -0.75, -0.25, -0.25, 0.75, -0.25, -0.25, -1.0, 0.75, 0.75, 1.0, -1.0, 0.75, -0.5, 0.75, 1.0, -0.75, 0.0, 1.0, -0.5, 0.0, -0.75, 0.75, 0.0, -0.5, 0.5, -0.5, -0.5, 1.0, -1.0, 0.25, 0.0, 1.0, 0.75, 0.5, -0.75, -0.5, 0.75, -0.75, 0.25, 0.75, -0.5, 0.25, 0.0, 0.75, 1.0, -0.75, 0.75, 0.0, -0.25, 0.5, -0.25, -0.5, -0.5, 0.75, -0.25, 0.0, -0.25, -0.25, -0.75, 0.75, 0.5, 0.75, 0.5, 0.75, 0.5, 0.0, 0.5, 0.75, 0.0, 0.75, -0.5, -0.25, -0.5, -0.5, -1.0, 0.25, -1.0, -0.5, -0.75, -0.75, 0.0, 0.75, 0.0, ]);
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
    
    const array4 = new Float32Array([-1.0, -0.75, -0.5, 0.75, 0.75, -1.0, -0.5, 0.25, 0.5, 0.0, -0.5, 0.75, -0.5, -0.25, -0.5, 1.0, 0.25, 0.75, -0.25, -0.25, 0.5, -1.0, -0.5, 0.5, 1.0, 0.75, -0.75, 0.0, -0.5, -0.25, 0.75, 0.25, -0.25, -0.5, -1.0, 0.0, -1.0, 0.5, 0.5, 0.5, -0.5, -0.75, 0.25, 1.0, 0.0, 1.0, 0.25, -1.0, 1.0, 0.75, -0.75, -0.75, 1.0, 0.25, -1.0, 0.0, -1.0, 0.25, 0.25, -1.0, -0.75, -0.5, -0.5, -0.5, 1.0, -0.75, 0.25, -1.0, 0.25, -0.25, -0.75, 0.75, -0.25, 0.0, -0.75, -0.25, -1.0, 0.25, 0.25, -0.75, 1.0, -0.75, 0.0, 0.25, 0.75, -1.0, 0.25, -0.75, 0.75, 1.0, 0.25, -1.0, -0.5, -0.25, -0.5, 1.0, 1.0, 0.25, 1.0, -0.25, ]);
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device10.destroy();
    
    device10.pushErrorScope("out-of-memory");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array5 = new Float32Array([0.25, -1.0, 0.75, 1.0, 0.5, -1.0, -0.5, -1.0, -0.25, -1.0, -0.5, 0.5, -0.75, 0.25, 0.25, 0.75, 0.5, -0.5, -0.75, 0.75, 0.75, 0.75, -1.0, -1.0, 0.75, 0.0, 0.5, 0.5, -0.5, 0.75, 0.0, 0.75, 0.5, -1.0, 0.25, -0.25, 0.5, 0.5, 0.75, -1.0, -0.25, 0.25, -0.75, 0.75, -1.0, -0.25, 0.75, -0.5, -1.0, 0.75, -1.0, -1.0, 0.5, -0.5, 0.75, 0.25, -0.5, -0.5, -0.5, 0.75, -0.25, -1.0, -0.75, -0.5, 0.25, -0.5, 1.0, 0.25, -0.25, 1.0, 0.25, 0.5, -1.0, 0.75, 0.75, 0.5, 0.75, 1.0, 1.0, -0.75, -0.5, 1.0, 0.75, 0.25, 1.0, 0.75, 0.0, 0.5, -0.25, 0.0, -0.25, 0.0, -1.0, -1.0, -0.25, 0.75, 0.5, 0.75, -0.5, 0.0, ]);
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array6 = new Float32Array([0.0, -0.25, 0.25, 1.0, 1.0, 0.5, -0.25, -0.5, 0.0, -1.0, 0.5, 0.5, -1.0, -0.75, -0.5, -1.0, -0.5, 1.0, 1.0, -1.0, 0.0, -0.75, -0.5, -0.25, 0.75, -0.5, -0.25, 0.25, -1.0, 0.0, -0.5, -0.5, 0.5, -0.5, -0.25, -0.5, -0.25, 0.25, 1.0, -0.25, 0.0, 0.75, 0.5, -0.75, 1.0, 1.0, 0.25, 0.0, 0.25, 0.25, -0.5, -1.0, -0.25, 0.0, 0.5, 0.5, 0.0, -0.25, 0.25, 0.0, -1.0, -0.5, -0.25, 0.5, -0.75, -0.75, -0.75, -0.75, -0.5, 0.25, -0.75, -0.5, 0.0, -0.25, -0.5, -0.5, -0.5, -1.0, 0.75, 1.0, -0.25, -0.5, 0.25, 1.0, -0.5, 1.0, -0.5, 1.0, 0.0, 0.75, -0.25, -1.0, 0.75, 0.75, -0.25, -1.0, -0.25, -0.75, -1.0, -0.25, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const array7 = new Float32Array([1.0, 0.25, -0.5, -0.75, 1.0, -0.25, 0.75, 0.25, -0.25, 0.25, 0.25, -0.75, 0.25, 0.0, 0.0, -0.5, 1.0, -0.5, -0.75, 0.5, -0.25, 0.75, 0.25, 0.25, -1.0, 0.5, 0.5, 1.0, 0.5, -0.75, -1.0, 0.5, -0.75, -0.5, 0.0, 1.0, 0.25, -1.0, 0.75, -0.75, 0.25, 0.25, 0.0, -1.0, -0.25, -0.25, 0.5, -1.0, -0.25, 0.25, -0.5, 0.5, -1.0, 0.5, 0.5, -1.0, 0.5, -0.5, 0.75, 0.25, -1.0, -0.75, 0.25, 0.75, -0.5, 1.0, 1.0, -0.75, 0.0, 0.75, 0.25, 1.0, 0.75, 1.0, 0.75, 0.25, -0.5, 0.75, 0.75, -1.0, 0.0, 0.5, -1.0, -0.75, 0.5, -1.0, 0.0, -0.75, -0.75, -0.75, -0.5, -0.75, -0.75, -0.5, -0.25, -1.0, -0.5, 1.0, 0.75, -0.75, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    command_encoder000.popDebugGroup()
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.queue.submit([]);
    render_bundle_encoder000.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
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
    
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    
    compute_pass_encoder0000.popDebugGroup()
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    compute_pass_encoder0000.popDebugGroup()
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    buffer001.destroy()
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer002.destroy()
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    command_encoder002.clearBuffer(buffer000);
    query000.destroy()
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    
    const array8 = new Float32Array([0.75, 0.5, 0.75, -1.0, -0.25, 0.0, 0.0, -1.0, 0.75, -1.0, -0.75, 1.0, -0.5, -1.0, -1.0, 0.25, -1.0, 0.75, 0.5, 1.0, 0.25, -0.25, 0.5, 1.0, -0.25, 0.75, -0.75, 0.25, 1.0, -0.25, 0.0, -0.5, 0.5, -1.0, 1.0, -0.25, -1.0, 0.0, -0.5, -0.5, 1.0, -0.5, 0.0, 0.5, -0.25, -1.0, 0.5, -0.5, -0.25, -0.75, 0.25, -0.75, -0.75, 0.75, -0.75, -1.0, 0.5, 0.25, -0.25, -0.25, -0.5, -1.0, 0.5, 0.25, -0.5, -0.75, 1.0, 0.25, -1.0, 0.25, 0.75, 0.0, 0.5, -0.75, -0.25, 0.25, 1.0, -0.5, 0.5, 0.5, 0.5, 0.25, -1.0, -0.5, 0.0, 0.0, 0.25, -0.5, 0.75, 0.25, -1.0, -0.5, -1.0, 0.5, -0.75, -0.25, -0.75, 0.0, 1.0, -0.5, ]);
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    query000.destroy()
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder000.popDebugGroup();
    query000.destroy()
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    
    
    
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    render_bundle_encoder000.setVertexBuffer(0, buffer003);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder000.setIndexBuffer(buffer004, "uint16");
    
    compute_pass_encoder0000.popDebugGroup()
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    buffer000.destroy()
    
    
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    buffer003.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    const array9 = new Float32Array([-1.0, -1.0, 1.0, -0.25, 0.75, 0.25, -0.25, -1.0, -0.5, 0.75, 0.25, -0.5, 0.25, 0.5, 0.0, -1.0, 0.75, 1.0, 0.0, 0.0, -0.5, 0.5, 0.0, -1.0, 0.0, -1.0, 0.5, 0.25, -0.25, 0.0, 0.0, -0.25, -0.5, 0.5, 0.25, 0.25, 0.25, -0.25, 0.0, -0.25, 0.75, 0.25, -0.75, 0.5, 0.5, 0.25, 0.5, 0.0, -0.5, -0.25, -0.25, -0.75, -1.0, 1.0, 0.0, 0.25, -0.75, 1.0, 0.0, 1.0, -0.25, -1.0, 0.75, 0.25, 0.75, -0.25, -0.25, 0.5, 0.25, 0.75, 0.25, -0.75, -0.75, 0.5, 0.5, 0.75, 1.0, 0.75, -1.0, -0.5, -0.25, 0.75, -1.0, 0.75, 0.0, 0.75, 0.5, -0.5, 0.25, -1.0, 0.75, -0.5, -0.5, 0.0, 0.5, 1.0, -0.75, -0.75, -0.75, -1.0, ]);
    query000.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.popDebugGroup();
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    
    
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
    const command_buffer100 = command_encoder100.finish();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    texture000.destroy();
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device00.queue.writeBuffer(buffer004, 0, array7, 0, array7.length);
    
    render_bundle_encoder000.popDebugGroup();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query000.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder000.setIndexBuffer(buffer004, "uint16");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    {
        await buffer005.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer005.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer005.unmap();
        console.log(new Float32Array(data));
    }
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.setPipeline(render_pipeline000);
    query002.destroy()
    command_encoder001.insertDebugMarker("mymarker");
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    texture000.destroy();
    command_encoder001.copyBufferToBuffer(
        buffer000,
        0,
        buffer001,
        0,
        400
    );
    query200.destroy()
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
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm",
        dimension: "2d"
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.setPipeline(render_pipeline001);
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query002.destroy()
    compute_pass_encoder0020.popDebugGroup()
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    compute_pass_encoder2000.insertDebugMarker("marker")
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.drawIndirect(buffer001, 0);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder0000.popDebugGroup()
    query000.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture200.destroy();
    render_bundle_encoder000.popDebugGroup();
    
    
    
    
    render_bundle_encoder000.drawIndirect(buffer000, 0);
    
    query002.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32float",
        dimension: "2d"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    device40.destroy();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query001.destroy()
    device00.queue.writeTexture({ texture: texture000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    texture001.destroy();
    const array10 = new Float32Array([-1.0, 0.5, 1.0, -0.75, 0.5, 1.0, 0.5, 1.0, -0.5, 0.25, -0.75, 1.0, -0.25, -0.75, -0.25, -0.75, 1.0, -0.5, 0.5, -1.0, -0.75, 0.5, -0.25, 0.0, -0.75, -1.0, -0.5, -1.0, -0.25, 0.5, 0.75, -0.5, -1.0, 0.75, -0.5, -0.75, 0.5, 0.5, -0.75, 0.25, -0.25, -0.25, 0.25, -0.25, 0.0, 0.5, 0.5, 0.5, -0.25, 0.5, -1.0, 0.5, 0.75, 0.0, -0.5, 0.5, 0.0, 0.5, 1.0, -0.5, -0.5, 1.0, -0.25, -1.0, 0.25, 0.75, 0.0, 1.0, -0.25, -0.5, 1.0, -0.75, -0.25, -0.5, 0.0, -1.0, 0.5, 0.5, 0.25, 0.25, -0.5, 1.0, -1.0, 0.0, 0.25, 0.25, 1.0, -0.25, 0.25, 1.0, -0.5, 0.0, 0.0, -0.25, -0.5, 0.25, -0.25, -0.5, 0.75, -0.5, ]);
    buffer004.destroy()
    
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer000, 0, array10, 0, array10.length);
    command_encoder200.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.popDebugGroup();
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
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
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture201.destroy();
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    render_bundle_encoder001.setVertexBuffer(0, buffer003);
    render_bundle_encoder002.insertDebugMarker("marker");
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder001.draw(3);
    texture202.destroy();
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    query200.destroy()
    
    render_pass_encoder0020.setPipeline(render_pipeline004);
    device00.pushErrorScope("internal");
    
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    query201.destroy()
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    render_bundle_encoder000.finish();
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    buffer007.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query000
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    texture500.destroy();
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
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group002);
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    render_pass_encoder0020.setStencilReference(1);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    command_encoder002.copyTextureToBuffer(
        {
            texture: texture002
        },
        {
            buffer: buffer006
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0010.setPipeline(render_pipeline003);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    query201.destroy()
    
    render_bundle_encoder001.finish();
    
    compute_pass_encoder0020.popDebugGroup()
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    device00.queue.writeBuffer(buffer008, 0, array8, 0, array8.length);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.popDebugGroup();
    render_bundle_encoder002.insertDebugMarker("marker");
    query003.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    device00.queue.writeBuffer(buffer008, 0, array10, 0, array10.length);
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
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
    render_pass_encoder0000.setPipeline(render_pipeline005);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    query004.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    
    
    render_pass_encoder0021.executeBundles([render_bundle_encoder000, render_bundle_encoder001, ])
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group003);
    device00.queue.writeBuffer(buffer005, 0, array8, 0, array8.length);
    render_pass_encoder0000.insertDebugMarker("marker");
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    render_pass_encoder0020.setStencilReference(1);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    compute_pass_encoder0000.popDebugGroup()
    command_encoder500.pushDebugGroup("mygroupmarker")
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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

    render_bundle_encoder002.setBindGroup(0, bind_group004);
    render_bundle_encoder002.popDebugGroup();
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query201
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16uint",
        dimension: "2d"
    });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    render_bundle_encoder202.setPipeline(render_pipeline201);
    buffer009.destroy()
    render_bundle_encoder002.setVertexBuffer(0, buffer003);
    render_bundle_encoder202.popDebugGroup();
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_bundle_encoder002.setIndexBuffer(buffer006, "uint16");
    buffer0011.destroy()
    render_pass_encoder0000.popDebugGroup();
    render_bundle_encoder002.drawIndirect(buffer008, 0);
    
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    render_pass_encoder0000.insertDebugMarker("marker");
    buffer005.destroy()
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    command_encoder502.insertDebugMarker("mymarker");
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    texture003.destroy();
    render_pass_encoder0000.insertDebugMarker("marker");
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    buffer0013.destroy()
    render_pass_encoder0000.setStencilReference(1);
    
    
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
    command_encoder500.popDebugGroup()
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer009,
        0
    )
    
    
    
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    buffer100.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0022,
            },
        ],
        occlusionQuerySet: query004
    });
    
    command_encoder501.insertDebugMarker("mymarker");
    render_pass_encoder0010.popDebugGroup();
    command_encoder000.copyBufferToBuffer(
        buffer004,
        0,
        buffer008,
        0,
        400
    );
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0001.pushDebugGroup("group_marker");
    command_encoder502.insertDebugMarker("mymarker");
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder100.setPipeline(render_pipeline100);
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
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2010.popDebugGroup();
    
    const command_buffer503 = command_encoder503.finish();
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer009,
        0
    )
    texture002.destroy();
    command_encoder502.insertDebugMarker("mymarker");
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    
    
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.popDebugGroup()
    
    render_pass_encoder2010.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    command_encoder002.copyBufferToTexture(
        {
            buffer: buffer004
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0001.setPipeline(render_pipeline008);
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    
    
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder2010.setPipeline(render_pipeline202);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer202, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer202, 0);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group005);
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
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group006);
    device20.queue.submit([]);
    render_pass_encoder0010.setVertexBuffer(0, buffer006);
    render_pass_encoder0021.end();
    render_pass_encoder0021.setIndexBuffer(buffer0015, "uint16");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group201);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder0000.setVertexBuffer(0, buffer003);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0000.draw(3);
    compute_pass_encoder2000.end();
    render_pass_encoder0021.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0021.drawIndirect(buffer001, 0);
    render_pass_encoder0010.endOcclusionQuery()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0010.draw(3);
    render_pass_encoder0020.setVertexBuffer(0, buffer0014);
    render_pass_encoder0020.setIndexBuffer(buffer005, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer205, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer205, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer005, 0);
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder2010.setVertexBuffer(0, buffer203);
    render_pass_encoder0001.popDebugGroup();
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder2010.draw(3);
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0020.end();
    compute_pass_encoder5020.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder2010.drawIndirect(buffer202, 0);
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
        layout: render_pipeline008.getBindGroupLayout(0),
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

    render_pass_encoder0001.setBindGroup(0, bind_group007);
    render_pass_encoder0021.setIndexBuffer(buffer005, "uint16");
    command_encoder001.popDebugGroup()
    command_encoder200.popDebugGroup()
    render_pass_encoder0010.end();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder0000.setIndexBuffer(buffer0015, "uint16");
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder0001.setVertexBuffer(0, buffer003);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0001.draw(3);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0018, "uint16");
    compute_pass_encoder5020.popDebugGroup()
    render_pass_encoder2010.end();
    render_pass_encoder0001.draw(3);
    device50.queue.submit([command_buffer500, command_buffer501, command_buffer503, ]);
    render_pass_encoder0010.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0001.end();
    render_pass_encoder0021.drawIndirect(buffer001, 0);
    render_pass_encoder0010.popDebugGroup();
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder0000.end();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0001.setIndexBuffer(buffer005, "uint16");
    device50.queue.submit([]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0021.end();
    const command_buffer001 = command_encoder001.finish();
    const command_buffer000 = command_encoder000.finish();
    device50.queue.submit([command_buffer500, command_buffer503, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer002, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0000.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0020.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0020.draw(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0000.draw(3);
    compute_pass_encoder2000.end();
    render_pass_encoder0000.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0018, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.setIndexBuffer(buffer005, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0021.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2010.end();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2010.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0000.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0021.draw(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2010.end();
    render_pass_encoder0010.drawIndirect(buffer002, 0);
    device50.queue.submit([command_buffer500, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    device00.queue.submit([]);
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0000.drawIndirect(buffer0013, 0);
    device10.queue.submit([]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2010.end();
    device50.queue.submit([command_buffer503, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0021.end();
    device00.queue.submit([]);
    render_pass_encoder0010.setIndexBuffer(buffer005, "uint16");
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0001.popDebugGroup();
    const command_buffer502 = command_encoder502.finish();
    device50.queue.submit([command_buffer502, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0001.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0015, "uint16");
    device50.queue.submit([command_buffer501, ]);
    device50.queue.submit([command_buffer500, ]);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder0001.setIndexBuffer(buffer005, "uint16");
    device50.queue.submit([]);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.drawIndexed(3);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0010.draw(3);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0020.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0000.drawIndirect(buffer001, 0);
    render_pass_encoder0001.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder2010.popDebugGroup();
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    render_pass_encoder0001.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer208, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer208, 0);
    render_pass_encoder0001.drawIndirect(buffer004, 0);
    render_pass_encoder0021.draw(3);
    device20.queue.submit([]);
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group203);
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0000.end();
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group204);
    render_pass_encoder0020.drawIndirect(buffer0011, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0020.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0021.end();
    render_pass_encoder0000.end();
}