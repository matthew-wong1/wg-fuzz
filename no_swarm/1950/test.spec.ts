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
    
    
    const array0 = new Float32Array([-0.75, 0.75, 0.5, 0.5, 0.75, 1.0, -0.25, 0.25, -0.75, 0.75, -0.5, 1.0, -0.5, 1.0, 0.75, -0.75, 0.25, -0.75, 0.75, 1.0, 0.75, 0.5, -0.5, 0.75, -0.25, -0.25, -1.0, -1.0, 0.25, -0.5, 0.25, 0.75, 0.25, 0.0, 1.0, 0.75, 0.0, 0.75, 0.25, -0.5, -0.75, 0.25, 0.0, -1.0, -1.0, 0.25, 0.5, -0.25, -0.25, 0.75, -0.25, 1.0, 1.0, -0.25, -0.75, 1.0, 1.0, -0.25, 0.0, -0.75, 0.75, -1.0, -0.25, 0.75, 0.25, -0.75, 0.25, -0.5, -0.25, 0.25, 0.75, 0.0, 0.75, 0.75, 0.25, 0.75, 0.75, 0.0, 0.25, -0.75, 0.0, 0.25, 0.25, 0.5, 1.0, 0.5, -0.5, 1.0, 0.5, -0.75, -0.5, 1.0, -0.25, -0.25, -1.0, 0.25, -0.25, 0.75, -0.25, 0.5, ]);
    
    
    
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array1 = new Float32Array([1.0, 0.5, -0.75, -1.0, -0.25, -0.5, 1.0, 0.25, -0.5, -1.0, 0.75, 1.0, -0.25, 0.25, 0.75, 0.0, -1.0, -1.0, -0.5, 0.25, 1.0, -1.0, 0.5, 0.0, 0.25, 0.75, 1.0, -0.5, 0.5, -0.25, 0.0, 0.25, -0.25, 0.75, -0.25, 0.25, 0.5, -0.75, -0.25, 0.5, 1.0, 0.0, 0.0, 0.5, 0.25, -0.75, -0.5, 0.25, -1.0, -1.0, -0.75, -0.25, 1.0, -1.0, -1.0, 0.0, -0.25, 0.0, -0.25, -0.25, -0.75, 1.0, 0.0, -0.75, 1.0, -0.5, 0.5, 0.25, 0.5, 0.5, -0.5, -1.0, 0.5, -0.5, -0.75, 0.75, -1.0, 1.0, 1.0, -1.0, 1.0, -0.5, -0.25, -0.5, -1.0, -1.0, -0.75, -0.75, 0.5, 0.5, 1.0, -1.0, 0.0, 0.25, -0.75, 0.5, 0.25, -0.5, 0.5, -0.75, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device00.pushErrorScope("out-of-memory");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
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
    
    const array2 = new Float32Array([0.25, -1.0, 0.0, 0.75, -1.0, -1.0, -1.0, 0.25, -1.0, 0.75, 0.0, 0.5, -1.0, -0.5, 0.25, -1.0, -0.5, 0.25, 1.0, 0.25, -1.0, 0.25, -0.75, 0.25, 0.0, 0.75, 0.5, 0.5, -1.0, -0.25, 0.75, 0.5, 0.0, 1.0, 1.0, 0.75, -0.25, 1.0, 1.0, 0.75, -0.25, 0.5, -1.0, -1.0, 0.25, -0.75, 0.5, 1.0, -0.75, 0.75, 0.0, 0.5, -0.5, -0.75, 0.5, 1.0, -0.5, -1.0, 0.25, 1.0, -1.0, 0.0, 0.0, 0.0, 0.75, 0.5, -1.0, 1.0, 1.0, 0.0, 0.5, 1.0, -0.25, 0.5, 0.25, 0.0, 0.25, 0.5, -0.75, -1.0, -0.5, -0.75, -0.75, -0.5, 0.75, -0.25, 0.25, -0.25, -0.25, -0.75, 0.5, -0.25, -1.0, 0.75, -1.0, 0.75, -0.5, -0.25, 0.75, 0.5, ]);
    
    const array3 = new Float32Array([-0.75, -0.75, -0.25, 1.0, 0.0, 0.75, -0.5, -0.25, 0.75, 0.5, 0.0, 1.0, 0.75, -0.75, -0.75, -0.75, -0.75, 0.25, -1.0, 0.0, 0.5, 0.5, 0.25, 1.0, -1.0, 0.0, 1.0, -0.5, -1.0, 1.0, 1.0, 0.25, 0.0, -0.75, 0.5, 0.25, -0.75, -0.25, -0.25, 0.75, -0.75, 0.75, 1.0, 1.0, 0.0, 0.25, -0.75, -0.25, 1.0, -0.75, 0.5, -1.0, 1.0, 0.75, 0.5, 0.0, -0.5, -0.5, -0.75, 1.0, -0.25, -0.25, 0.75, 1.0, 0.5, 0.5, -0.25, -1.0, -1.0, -0.25, 0.0, -0.25, 0.5, 1.0, 0.0, -0.25, -1.0, 0.5, 0.25, -1.0, -0.5, -0.75, -1.0, 0.5, 0.5, -0.5, 0.25, -0.75, 0.5, 0.75, 0.0, 0.25, 0.75, 1.0, 0.5, 0.5, -0.25, 0.75, -1.0, 0.0, ]);
    
    device00.pushErrorScope("internal");
    command_encoder000.pushDebugGroup("mygroupmarker")
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer000.destroy()
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    buffer002.destroy()
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
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
    query000.destroy()
    command_encoder000.popDebugGroup()
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    buffer004.destroy()
    
    buffer003.destroy()
    command_encoder000.popDebugGroup()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    command_encoder000.pushDebugGroup("mygroupmarker")
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder000.popDebugGroup()
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    command_encoder002.clearBuffer(buffer000);
    const command_buffer002 = command_encoder002.finish();
    
    command_encoder000.insertDebugMarker("mymarker");
    
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    
    
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
    device00.pushErrorScope("out-of-memory");
    
    
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
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    command_encoder000.insertDebugMarker("mymarker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.destroy();
    
    
    
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
    render_bundle_encoder000.insertDebugMarker("marker");
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
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    texture000.destroy();
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    query000.destroy()
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group001);
    render_bundle_encoder000.setPipeline(render_pipeline004);
    {
        await buffer006.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer006.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer006.unmap();
        console.log(new Float32Array(data));
    }
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    
    buffer006.destroy()
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    
    device00.queue.submit([command_buffer002, ]);
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
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
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group003);
    render_bundle_encoder001.setVertexBuffer(0, buffer003);
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    device00.queue.writeBuffer(buffer009, 0, array2, 0, array2.length);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer006.destroy()
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    command_encoder001.clearBuffer(buffer004);
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    buffer0012.destroy()
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer009,
        0
    )
    
    command_encoder001.clearBuffer(buffer009);
    const command_buffer003 = command_encoder003.finish();
    
    render_bundle_encoder001.drawIndirect(buffer0013, 0);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array4 = new Float32Array([-0.75, -1.0, 0.25, 0.0, 0.75, 0.75, -0.25, 0.75, 0.75, 0.5, 0.5, -0.5, 1.0, 1.0, -0.75, 0.75, -1.0, 0.5, -0.75, 1.0, 0.25, -0.75, -1.0, 0.0, 0.75, 0.25, 0.5, -0.5, 0.0, -0.75, -0.75, 1.0, 0.0, -0.75, -0.75, 0.0, -0.5, -1.0, 0.25, -1.0, 0.0, 0.5, 1.0, 0.5, -1.0, -0.5, -1.0, -0.5, -0.75, 0.0, 0.75, 0.5, 0.5, 0.75, 0.25, -0.5, -0.25, -1.0, -0.5, 1.0, -0.75, 0.5, 0.75, 0.75, -0.25, -0.25, 0.0, 0.75, 1.0, -0.5, -1.0, -0.75, 0.25, -1.0, -0.5, 0.0, -1.0, 0.75, -0.25, 0.5, -1.0, -0.5, -0.75, -1.0, -0.5, -1.0, 1.0, -0.5, -0.5, 1.0, 1.0, 0.25, 0.75, 0.25, -0.5, 1.0, -0.75, 0.0, 0.5, -1.0, ]);
    
    query000.destroy()
    render_bundle_encoder000.setVertexBuffer(0, buffer003);
    render_bundle_encoder001.finish();
    
    
    
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
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
    
    device20.destroy();
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    command_encoder001.copyBufferToBuffer(
        buffer003,
        0,
        buffer0010,
        0,
        400
    );
    render_bundle_encoder000.drawIndirect(buffer0013, 0);
    command_encoder000.copyBufferToBuffer(
        buffer004,
        0,
        buffer006,
        0,
        400
    );
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer0013,
        0
    )
    buffer0011.destroy()
    render_bundle_encoder000.finish();
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    texture001.destroy();
    
    
    
    command_encoder001.popDebugGroup()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer0010,
        0
    )
    render_bundle_encoder001.drawIndirect(buffer0013, 0);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
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
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer008, 0, array2, 0, array2.length);
    
    buffer009.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    buffer0010.destroy()
    render_bundle_encoder001.drawIndirect(buffer0013, 0);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder001.copyBufferToBuffer(
        buffer003,
        0,
        buffer008,
        0,
        400
    );
    buffer001.destroy()
    
    compute_pass_encoder0000.popDebugGroup()
    buffer005.destroy()
    
    
    command_encoder001.clearBuffer(buffer008);
    
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
    render_bundle_encoder001.setIndexBuffer(buffer0012, "uint16");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder002.setPipeline(render_pipeline001);
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group004);
    command_encoder001.insertDebugMarker("mymarker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    device00.queue.writeBuffer(buffer009, 0, array4, 0, array4.length);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.clearBuffer(buffer004);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder001.insertDebugMarker("mymarker");
    buffer200.destroy()
    command_encoder001.copyBufferToBuffer(
        buffer0011,
        0,
        buffer0014,
        0,
        400
    );
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder000.drawIndirect(buffer0010, 0);
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const command_buffer001 = command_encoder001.finish();
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    {
        await buffer007.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer007.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer007.unmap();
        console.log(new Float32Array(data));
    }
    
    query500.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    command_encoder500.popDebugGroup()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder5000.insertDebugMarker("marker")
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer004.destroy()
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_buffer501 = command_encoder501.finish();
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    buffer001.destroy()
    
    
    
    render_bundle_encoder002.setVertexBuffer(0, buffer0011);
    compute_pass_encoder0000.popDebugGroup()
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    render_bundle_encoder001.drawIndirect(buffer003, 0);
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer0015.destroy()
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    render_bundle_encoder002.draw(3);
    compute_pass_encoder5000.popDebugGroup()
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
    
    
    query500.destroy()
    
    
    
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
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    texture002.destroy();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    compute_pass_encoder0000.popDebugGroup()
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
    command_encoder502.insertDebugMarker("mymarker");
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const array5 = new Float32Array([-0.75, 0.75, -0.25, -0.25, 0.75, -0.25, 0.5, 0.5, 0.75, 1.0, -0.25, 0.0, 1.0, 0.5, 1.0, 1.0, -0.5, -0.75, 0.25, 0.5, -1.0, 0.25, 0.75, -0.25, -0.75, 1.0, -0.25, 1.0, 0.0, 0.75, 0.5, 0.5, 0.5, 0.0, 0.5, 0.0, 0.75, 0.0, -1.0, -1.0, 0.0, -0.75, 0.25, -0.25, -0.5, 0.5, 1.0, -0.75, 0.25, 0.25, -0.5, 0.0, -0.5, -0.5, -0.75, 0.5, 0.0, 1.0, -1.0, -0.5, 1.0, 0.75, 0.25, 0.0, 0.75, 0.5, 0.0, 0.5, 0.0, -0.25, 0.25, 0.5, -1.0, -0.5, -0.5, 0.5, 0.75, 0.25, 0.5, 0.75, -0.75, -1.0, 1.0, 0.0, -1.0, -0.75, 0.25, 1.0, 1.0, -0.75, -0.75, 0.75, 1.0, -0.75, 0.5, 0.0, -0.5, -1.0, 0.75, 1.0, ]);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    query401.destroy()
    
    
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder502.pushDebugGroup("mygroupmarker")
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer0014.destroy()
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder500.setPipeline(render_pipeline503);
    
    render_bundle_encoder002.insertDebugMarker("marker");
    query300.destroy()
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    query403.destroy()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    buffer300.destroy()
    command_encoder500.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    
    
    
    device60.destroy();
    
    
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder502.popDebugGroup()
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    query403.destroy()
    
    buffer500.destroy()
    device40.pushErrorScope("internal");
    
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    device50.pushErrorScope("internal");
    command_encoder502.clearBuffer(buffer501);
    command_encoder502.copyBufferToBuffer(
        buffer500,
        0,
        buffer501,
        0,
        400
    );
    query002.destroy()
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer005.destroy()
    
    
    query500.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    texture500.destroy();
    render_bundle_encoder001.popDebugGroup();
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    texture003.destroy();
    render_bundle_encoder001.drawIndexedIndirect(buffer0012, 0);
    render_bundle_encoder002.popDebugGroup();
    query400.destroy()
    query300.destroy()
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    
    render_bundle_encoder501.setPipeline(render_pipeline501);
    
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    texture003.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    
    
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder502.insertDebugMarker("mymarker");
    query000.destroy()
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder400.popDebugGroup();
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    
    render_pass_encoder0040.setPipeline(render_pipeline0011);
    query002.destroy()
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer006,
        0
    )
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
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
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group005);
    buffer007.destroy()
    
    const command_buffer301 = command_encoder301.finish();
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
    render_bundle_encoder000.drawIndirect(buffer007, 0);
    query300.destroy()
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_bundle_encoder001.drawIndirect(buffer0013, 0);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder4000.popDebugGroup()
    texture500.destroy();
    render_bundle_encoder502.popDebugGroup();
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer0014.destroy()
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    device50.queue.writeBuffer(buffer504, 0, array0, 0, array0.length);
    
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder502.setPipeline(render_pipeline504);
    render_bundle_encoder000.drawIndirect(buffer001, 0);
    compute_pass_encoder4000.insertDebugMarker("marker")
    const array6 = new Float32Array([-1.0, 0.75, 1.0, 1.0, 0.5, -0.5, 0.0, -1.0, -1.0, -0.25, -1.0, -0.25, 0.25, 1.0, -0.75, 0.0, 0.75, 0.5, 0.75, 0.5, 0.0, -0.5, 0.5, -0.25, -1.0, 1.0, -0.25, 0.0, -0.75, -0.5, -0.25, 0.5, -1.0, 0.25, 0.5, 0.5, 0.5, 0.0, -0.75, 0.75, 1.0, 0.0, 0.5, 0.0, 0.75, 0.75, -0.5, 0.75, 0.25, 0.75, -0.5, 0.75, 0.25, 0.0, -0.5, 0.25, 0.0, -0.5, 0.25, -0.75, -0.25, 0.75, -1.0, 0.25, 0.25, 0.25, 0.25, -1.0, 1.0, -0.25, 0.0, -0.5, 0.5, -0.5, -0.25, 0.0, 0.75, -0.25, -0.75, 0.75, -0.75, 0.25, 0.5, -0.25, 0.75, 0.25, 0.25, 0.5, -1.0, 0.5, -0.5, 0.75, -1.0, 0.5, -0.5, 0.5, 0.5, -0.75, 1.0, -0.5, ]);
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline504.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    render_bundle_encoder502.setBindGroup(0, bind_group501);
    device50.queue.writeBuffer(buffer505, 0, array0, 0, array0.length);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_bundle_encoder401.insertDebugMarker("marker");
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
    command_encoder005.clearBuffer(buffer005);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    command_encoder005.clearBuffer(buffer0014);
    buffer502.destroy()
    query500.destroy()
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer0011,
        0
    )
    command_encoder500.clearBuffer(buffer502);
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const command_buffer005 = command_encoder005.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0000.end();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer501, ]);
    device30.queue.submit([]);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    const command_buffer502 = command_encoder502.finish();
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline0011.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group006);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0040.setVertexBuffer(0, buffer0017);
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder0040.drawIndirect(buffer001, 0);
    device60.queue.submit([]);
    compute_pass_encoder0000.end();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder0040.endOcclusionQuery()
    compute_pass_encoder4000.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0040.draw(3);
    device00.queue.submit([command_buffer005, ]);
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
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
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group007);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0040.end();
    device30.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder5000.popDebugGroup()
    device50.queue.submit([command_buffer502, ]);
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer002, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    const command_buffer004 = command_encoder004.finish();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device40.queue.submit([]);
    compute_pass_encoder5000.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder5000.popDebugGroup()
    device50.queue.submit([]);
}