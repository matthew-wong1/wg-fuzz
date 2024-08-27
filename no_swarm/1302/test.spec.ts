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
    const array0 = new Float32Array([0.25, 1.0, -0.75, 0.5, -0.75, 0.25, -0.5, 0.25, 0.25, -0.5, -0.5, -0.5, -0.75, -0.25, -0.25, 0.5, 1.0, -0.25, 0.75, -0.75, 0.25, -1.0, -0.25, -0.75, 0.0, -0.5, -1.0, -1.0, 0.0, -1.0, 1.0, 0.5, 0.0, 1.0, 0.0, -0.75, 0.5, -1.0, 0.25, -1.0, 0.0, -0.75, 1.0, -0.75, -0.5, 1.0, 1.0, -0.5, 0.0, 0.5, 0.25, 0.25, 0.0, -0.5, 0.75, -0.25, -1.0, 0.0, -0.75, 0.0, -0.5, -0.25, 1.0, -0.25, 0.5, -0.25, 0.75, 0.75, 1.0, 0.0, -0.5, 0.75, -0.5, -0.5, 0.5, 0.0, -0.25, -0.5, 0.75, 0.75, -0.25, -1.0, 0.25, 0.75, 0.75, 0.25, -0.75, 0.25, 1.0, -0.5, 0.0, -0.75, -1.0, -0.5, 0.0, 0.5, 0.75, -0.75, 0.5, -1.0, ]);
    const array1 = new Float32Array([0.0, 0.75, -0.25, 1.0, 0.25, -0.75, -0.5, -0.25, 0.25, 0.0, 0.0, 0.0, -0.5, -0.75, 1.0, 0.75, -0.75, -0.5, 1.0, 0.0, -1.0, 0.75, 1.0, 0.0, 0.5, -0.25, 1.0, -0.5, 0.0, 0.5, 0.25, 1.0, -1.0, -0.5, 1.0, -0.5, -1.0, -0.25, 0.25, 0.75, 0.75, -0.75, 0.0, -0.75, -0.25, 0.25, 0.0, 0.0, 1.0, -0.5, 1.0, -0.75, 0.25, 0.25, 1.0, -0.75, 0.75, 0.5, -1.0, 1.0, -1.0, 0.75, -1.0, 0.5, 0.0, -0.75, 0.0, 0.75, 1.0, -1.0, 1.0, 0.25, 0.0, -0.75, -1.0, 0.75, -0.25, -0.75, -0.75, 0.25, 0.75, 0.25, -0.5, -1.0, 0.5, 0.0, 0.75, 0.5, -0.25, 0.5, -0.75, 0.5, 0.25, 0.0, 0.25, -1.0, -0.25, 1.0, -0.5, -1.0, ]);
    
    
    
    const array2 = new Float32Array([0.75, 0.25, 1.0, -0.25, 0.0, 0.75, 0.75, -1.0, -1.0, -0.5, 1.0, -1.0, -1.0, 0.75, 0.75, -1.0, 0.75, -0.25, 0.75, 1.0, 0.75, 0.5, -0.25, 0.5, 0.25, 0.25, 0.5, -0.75, -1.0, -0.25, 0.25, -0.5, -0.75, 0.75, -0.25, 1.0, -0.75, 0.5, -0.5, 0.25, -0.5, 1.0, -0.25, 0.5, 0.0, -1.0, -1.0, -1.0, -0.5, 1.0, 0.0, 0.25, 1.0, -0.5, 0.0, 0.75, -0.75, -1.0, -1.0, 0.75, -1.0, 0.75, -1.0, 0.5, 0.75, 0.5, 0.25, -0.75, -0.25, 0.5, 0.5, 0.25, -1.0, 0.25, 0.0, 0.75, 0.25, -0.25, -0.5, 1.0, -0.25, -0.25, -0.25, 0.25, 0.5, 0.0, 0.75, 0.0, 0.0, 0.0, 1.0, -0.75, 0.5, -0.25, 0.25, 0.5, 0.0, 0.0, 0.25, -0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    const array3 = new Float32Array([0.0, -1.0, -1.0, -1.0, 0.5, 0.0, 1.0, -0.25, -0.5, -0.25, 1.0, 0.25, 0.25, 0.5, -1.0, -1.0, -0.25, 0.0, -1.0, -0.5, 0.5, 0.0, -0.25, 0.5, -1.0, 0.5, 0.5, 0.75, -0.75, -0.25, 1.0, 0.75, 0.0, -1.0, -0.5, 0.25, -1.0, 0.75, 0.5, -0.25, 0.0, -0.75, -0.25, -1.0, 0.25, -0.25, 0.0, 0.5, -0.75, -1.0, -0.75, 0.0, 0.75, 1.0, 0.75, 0.0, -0.5, -0.75, 0.5, -0.25, -0.25, 0.25, 0.5, 0.5, 1.0, 0.0, -0.25, -1.0, 1.0, 0.25, 0.75, -0.75, -1.0, -0.25, -0.5, 0.5, 0.0, 0.25, 0.5, 0.5, 0.25, 0.25, 0.0, 0.25, 1.0, 0.5, 0.0, 0.75, 0.75, 0.0, -0.25, 1.0, 0.25, -0.25, 0.0, -1.0, -0.75, -0.5, 1.0, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("out-of-memory");
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([1.0, 0.75, -0.25, -0.5, 0.75, 0.75, 1.0, -0.75, -0.25, 0.25, -0.5, -0.25, 0.0, -1.0, 0.5, -1.0, 0.75, -0.5, 0.5, 1.0, -1.0, 0.25, -1.0, 0.0, 1.0, -0.5, 0.25, 0.5, 1.0, 1.0, -0.25, -0.25, -0.25, 0.0, -0.25, 0.75, 0.5, -1.0, -1.0, -0.25, 1.0, -0.25, 0.0, -0.25, -1.0, -0.5, 0.25, -0.25, 0.5, 0.5, -0.5, 1.0, 0.25, 0.75, 0.25, -1.0, -1.0, -0.75, -0.75, 0.25, 0.75, -0.25, 0.5, 0.5, 0.25, 1.0, -0.5, -0.75, 0.75, 0.25, 0.0, -0.25, -0.5, -0.25, 0.5, 0.0, 0.25, -0.75, 0.0, -0.75, -1.0, 0.25, -0.25, 0.0, -0.75, 0.25, -1.0, -0.25, 0.75, 0.5, -0.75, 0.0, -0.5, 0.75, -1.0, -0.75, 0.75, 0.75, 1.0, 0.0, ]);
    query002.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    device00.pushErrorScope("validation");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
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
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    buffer001.destroy()
    render_bundle_encoder000.setPipeline(render_pipeline001);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
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
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
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
    buffer002.destroy()
    buffer000.destroy()
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    query004.destroy()
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query000.destroy()
    
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    query001.destroy()
    
    query003.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query003.destroy()
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array5 = new Float32Array([0.25, -1.0, 0.5, 0.25, 0.0, 0.25, 0.5, -0.75, -0.5, 1.0, 0.0, -0.75, 0.0, -0.25, -0.75, 0.0, -0.5, 0.0, 1.0, -0.5, -0.5, 0.0, -0.25, 0.5, 0.5, 1.0, -0.25, 0.25, 1.0, 0.5, -1.0, -0.25, -1.0, 0.75, 1.0, 0.0, 1.0, -0.75, -0.5, 0.25, -0.75, -0.25, -0.25, 0.75, 1.0, -0.75, -0.25, 0.75, 0.75, -0.25, 0.0, -0.5, -0.25, 0.25, 1.0, 1.0, -0.75, -1.0, 0.75, -1.0, -0.5, -0.5, 0.0, -0.75, 0.5, -0.25, 0.5, -0.25, 0.0, -0.75, 0.75, -0.75, 0.5, -0.25, -0.25, 0.0, 0.0, -0.25, 0.5, 0.75, 1.0, -1.0, 0.5, -0.25, 0.75, 0.25, 1.0, -0.5, 0.5, 1.0, -0.5, 0.5, -0.75, -0.5, 1.0, 0.25, -0.75, 0.5, -1.0, 0.5, ]);
    render_bundle_encoder001.setPipeline(render_pipeline000);
    query002.destroy()
    render_bundle_encoder001.popDebugGroup();
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    query000.destroy()
    
    query004.destroy()
    query006.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query004.destroy()
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
    const array6 = new Float32Array([0.5, -1.0, -0.75, -1.0, -0.25, 1.0, 0.5, 0.75, 0.5, 0.0, 0.0, 0.25, 0.0, 0.25, 1.0, 0.25, 1.0, 1.0, -0.5, -1.0, 0.0, 0.5, 0.75, 1.0, 1.0, 0.25, -0.5, -0.75, -0.75, 0.25, 1.0, 0.25, -0.75, 1.0, -0.25, 1.0, 1.0, 1.0, 0.25, 1.0, -1.0, -0.75, -0.5, 1.0, -0.5, -0.5, -1.0, 0.75, -0.5, 0.75, 0.0, 0.25, 0.5, -0.75, -0.75, -1.0, -0.25, -0.25, -0.25, 0.25, -1.0, 1.0, 0.0, 1.0, 0.0, -0.25, 0.25, 0.25, -0.75, -0.5, -1.0, 0.25, -0.5, 0.5, -0.75, 1.0, 0.5, 0.0, -1.0, -0.75, -1.0, 0.0, 0.5, -0.75, -0.5, -1.0, 1.0, 0.25, -1.0, 0.5, -0.5, 0.5, -0.5, -0.5, 0.75, 0.25, -1.0, -0.75, -1.0, -0.25, ]);
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    buffer006.destroy()
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer005.destroy()
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    query005.destroy()
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.popDebugGroup();
    buffer008.destroy()
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout003]
    });
    query002.destroy()
    texture001.destroy();
    
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
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
    device00.pushErrorScope("out-of-memory");
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    query000.destroy()
    render_bundle_encoder002.setPipeline(render_pipeline005);
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer006,
        0
    )
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    command_encoder001.resolveQuerySet(
        query006,
        0,
        32,
        buffer005,
        0
    )
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer006,
        0
    )
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
    device00.queue.writeBuffer(buffer007, 0, array6, 0, array6.length);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    device00.queue.writeBuffer(buffer009, 0, array3, 0, array3.length);
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
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
    buffer003.destroy()
    
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer006,
        0
    )
    command_encoder001.clearBuffer(buffer009);
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer006,
        0
    )
    device10.destroy();
    
    query005.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder001.resolveQuerySet(
        query006,
        0,
        32,
        buffer006,
        0
    )
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    command_encoder002.resolveQuerySet(
        query007,
        0,
        32,
        buffer005,
        0
    )
    texture001.destroy();
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer006,
        0
    )
    command_encoder001.copyBufferToBuffer(
        buffer009,
        0,
        buffer006,
        0,
        400
    );
    buffer006.destroy()
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    
    command_encoder002.insertDebugMarker("mymarker");
    query007.destroy()
    const command_buffer001 = command_encoder001.finish();
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer006,
        0
    )
    command_encoder002.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer005
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    query002.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer006,
        0
    )
    command_encoder002.resolveQuerySet(
        query007,
        0,
        32,
        buffer001,
        0
    )
    command_encoder000.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer007, 0, array0, 0, array0.length);
    command_encoder002.copyBufferToBuffer(
        buffer004,
        0,
        buffer006,
        0,
        400
    );
    
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    command_encoder000.resolveQuerySet(
        query006,
        0,
        32,
        buffer005,
        0
    )
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder000.clearBuffer(buffer005);
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    query000.destroy()
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    texture000.destroy();
    command_encoder000.copyBufferToBuffer(
        buffer004,
        0,
        buffer003,
        0,
        400
    );
    
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.setVertexBuffer(0, buffer002);
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer006,
        0
    )
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    {
        await buffer009.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer009.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer009.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    command_encoder002.resolveQuerySet(
        query008,
        0,
        32,
        buffer006,
        0
    )
    compute_pass_encoder0020.setPipeline(compute_pipeline001);
    query005.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
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
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer007.destroy()
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
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
        occlusionQuerySet: undefined
    });
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder000.drawIndirect(buffer0014, 0);
    compute_pass_encoder0000.setPipeline(compute_pipeline002);
    device00.destroy();
    const array7 = new Float32Array([-0.5, 0.5, 0.5, 1.0, -0.75, -1.0, -0.25, 1.0, -0.75, 0.25, -1.0, -0.25, 0.0, -0.75, 1.0, 0.75, 0.0, 0.75, -0.5, 0.0, 1.0, 0.5, -0.5, 1.0, 0.0, 1.0, -0.5, 0.0, 0.5, -0.75, 1.0, 0.0, -1.0, 0.25, 0.0, 0.75, -1.0, -0.5, -0.75, 0.0, -1.0, 0.0, -0.75, -1.0, 0.75, -0.5, 1.0, -1.0, 0.75, -0.25, 0.75, -0.75, 0.5, -0.75, -0.5, -0.25, 0.5, 0.75, 0.25, -1.0, 0.0, 0.25, 0.75, 0.75, 0.0, 0.25, 0.75, -0.75, 0.75, -0.25, -0.25, 0.5, 1.0, 0.25, 0.25, 0.5, 0.0, 0.75, 0.5, -0.5, 1.0, -0.25, -0.25, 0.25, 0.75, -0.75, 0.75, 0.75, 0.25, 0.0, -1.0, -0.25, -1.0, -0.5, -1.0, -1.0, -0.5, -0.75, 0.0, 0.5, ]);
    
    const array8 = new Float32Array([-0.25, 0.25, -0.5, 0.0, 0.75, -0.75, -1.0, -0.75, 0.5, 0.75, -0.25, -0.5, 0.75, -0.25, 0.75, -0.25, -0.5, -0.25, -0.75, -0.5, 0.25, 1.0, 0.75, -0.5, -0.5, 0.75, -0.25, -0.75, 0.5, -0.75, 0.0, 1.0, 0.0, 0.5, 1.0, -0.25, 0.25, 0.5, -1.0, -0.25, 1.0, 0.5, 0.0, -1.0, -0.5, 1.0, 1.0, 0.25, -0.75, 0.75, 1.0, -0.25, 0.25, -0.5, 1.0, 1.0, -0.25, 0.0, 1.0, 0.25, 0.25, -0.75, -1.0, -0.75, -0.75, 1.0, -0.75, 1.0, 0.0, -0.5, -0.5, 0.75, -1.0, 0.0, -1.0, 0.5, -0.75, 0.5, 0.75, -0.5, -0.25, -1.0, 0.5, -0.5, -0.5, -0.5, -0.75, -1.0, 0.25, -0.75, -0.5, 0.5, 0.75, 0.0, -0.75, -0.5, 0.25, 1.0, 0.25, 0.25, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0000.executeBundles([])
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    
    device20.pushErrorScope("validation");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array9 = new Float32Array([0.5, 0.25, -0.75, -0.5, 1.0, 0.25, 0.5, -0.75, -0.75, 0.25, 0.25, -1.0, -1.0, 0.0, 0.0, 0.75, -1.0, -0.25, 0.25, -1.0, 0.5, -0.5, 0.5, -0.25, -0.75, -1.0, 1.0, -0.5, 0.5, 1.0, 0.75, -0.75, 0.75, 0.5, 0.25, -1.0, 0.25, 0.75, -1.0, 0.75, -1.0, -0.25, 0.5, -0.25, 0.5, 0.5, -1.0, 0.5, 0.0, -0.5, -1.0, -0.25, -0.5, -0.75, -0.75, 1.0, -0.75, 1.0, 0.0, 0.5, 0.0, 0.75, 0.5, -0.5, 0.75, 0.0, -1.0, 0.75, 0.0, -0.5, 1.0, -0.25, -0.75, 0.75, -0.5, 0.5, 0.75, -0.25, 0.75, 1.0, -0.5, 1.0, 0.0, 0.5, -0.25, 0.5, 0.5, 0.75, 0.25, 0.5, 0.5, -0.25, 0.0, -0.75, -1.0, -0.5, 0.25, 0.5, -0.75, -0.5, ]);
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
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    
    device20.pushErrorScope("validation");
    buffer201.destroy()
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
    texture200.destroy();
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
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
    command_encoder002.resolveQuerySet(
        query007,
        0,
        32,
        buffer005,
        0
    )
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device00.queue.writeBuffer(buffer0010, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder202.clearBuffer(buffer200);
    
    device20.pushErrorScope("validation");
    command_encoder201.insertDebugMarker("mymarker");
    
    const command_buffer200 = command_encoder200.finish();
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const array10 = new Float32Array([1.0, 0.75, -0.25, 0.25, -1.0, -0.5, -0.25, 1.0, 0.25, 1.0, 0.0, -0.25, 1.0, 0.25, 0.25, 1.0, -0.5, -0.5, 0.5, 1.0, 0.75, -0.5, -0.75, 0.5, 0.75, 0.25, 1.0, 0.5, -0.75, 0.5, -1.0, 0.75, 1.0, 0.5, -0.25, -1.0, -0.5, 0.75, 0.0, 0.75, -1.0, 1.0, -0.75, 0.0, 0.0, -1.0, 0.25, 0.0, 0.25, -0.75, 0.25, 0.25, -1.0, -1.0, 1.0, 1.0, 0.0, 1.0, 0.5, 0.25, 1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -0.75, 0.25, -0.5, 1.0, -0.25, 0.25, -0.75, -0.75, -0.75, -0.5, 0.75, -0.5, 1.0, -0.75, 1.0, 0.75, 1.0, 0.0, -0.75, -0.75, 0.25, -0.5, -0.5, -1.0, -1.0, -0.75, -0.5, 0.5, -0.25, -0.75, 1.0, -0.5, -0.5, 0.25, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder201.popDebugGroup();
    buffer0010.destroy()
    render_bundle_encoder200.popDebugGroup();
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    
    
    const command_buffer201 = command_encoder201.finish();
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    query008.destroy()
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
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    const array11 = new Float32Array([-0.5, 0.25, -1.0, 0.5, 1.0, -1.0, -1.0, -0.75, 0.25, 0.5, -1.0, -0.75, 1.0, 0.0, 0.0, 0.0, 0.5, -0.75, -0.25, -0.75, 1.0, 0.5, -1.0, 0.25, -0.5, 0.0, 0.5, 0.0, 0.75, 0.0, 0.0, 0.75, -1.0, -0.5, 0.25, 0.0, 0.0, -0.25, -0.5, -1.0, -0.25, 0.0, -0.75, -0.75, -1.0, 0.75, 0.0, 0.75, -0.5, 0.25, 0.75, 0.0, -0.25, 1.0, 0.25, 0.0, -0.5, 0.75, 1.0, 1.0, 0.75, -0.25, 0.75, 0.75, 0.25, -0.75, -0.75, 0.5, 0.5, 0.25, 0.25, 0.5, -0.25, 0.75, 0.25, 0.75, 1.0, 0.75, 0.5, 0.25, -0.25, 0.0, 1.0, 0.25, 1.0, -0.5, 0.0, -0.75, -0.75, 0.5, -0.25, -0.5, -0.75, -0.5, -1.0, -0.5, -0.5, 0.25, -1.0, 0.5, ]);
    render_bundle_encoder200.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer203.destroy()
    query200.destroy()
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder202.popDebugGroup();
    device20.queue.writeBuffer(buffer204, 0, array9, 0, array9.length);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    render_bundle_encoder202.setPipeline(render_pipeline200);
    
    buffer201.destroy()
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.popDebugGroup()
    device20.queue.writeBuffer(buffer205, 0, array5, 0, array5.length);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer205, 0, array5, 0, array5.length);
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device20.queue.writeBuffer(buffer202, 0, array11, 0, array11.length);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    
    const compute_pass_encoder2021 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2021" });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout203]
    });
    device20.pushErrorScope("internal");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder202.popDebugGroup();
    buffer202.destroy()
    
    
    device20.queue.writeBuffer(buffer205, 0, array0, 0, array0.length);
    device40.pushErrorScope("internal");
    
    device20.queue.writeBuffer(buffer205, 0, array9, 0, array9.length);
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.setPipeline(compute_pipeline205);
    device20.queue.writeBuffer(buffer205, 0, array10, 0, array10.length);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device20.queue.writeBuffer(buffer205, 0, array11, 0, array11.length);
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    command_encoder202.copyBufferToBuffer(
        buffer206,
        0,
        buffer207,
        0,
        400
    );
    buffer204.destroy()
    device20.queue.writeBuffer(buffer205, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer205, 0, array1, 0, array1.length);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    buffer207.destroy()
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2021.setPipeline(compute_pipeline207);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device20.queue.writeBuffer(buffer205, 0, array9, 0, array9.length);
    
    device20.queue.writeBuffer(buffer200, 0, array11, 0, array11.length);
    device30.destroy();
    texture400.destroy();
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    query202.destroy()
    
    compute_pass_encoder2021.pushDebugGroup("group_marker")
    query200.destroy()
    buffer205.destroy()
    render_bundle_encoder202.setVertexBuffer(0, buffer205);
    compute_pass_encoder2021.insertDebugMarker("marker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    query201.destroy()
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    buffer002.destroy()
    device00.queue.writeBuffer(buffer0013, 0, array9, 0, array9.length);
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
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline205.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group202);
    
    buffer206.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device20.queue.writeBuffer(buffer2010, 0, array3, 0, array3.length);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    buffer202.destroy()
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout203]
    });
    device20.queue.writeBuffer(buffer205, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer209, 0, array7, 0, array7.length);
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder202.setIndexBuffer(buffer204, "uint16");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    buffer208.destroy()
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query005
    });
    
    buffer202.destroy()
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    query200.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer202, 0, array9, 0, array9.length);
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer208, 0, array5, 0, array5.length);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const render_bundle_encoder203 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder203",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder203.setPipeline(render_pipeline202);
    device00.queue.writeBuffer(buffer009, 0, array7, 0, array7.length);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    query204.destroy()
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout208,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout203]
    });
    const array12 = new Float32Array([0.75, -0.5, -0.5, -0.25, -0.25, -0.5, 0.5, -0.25, 0.5, 0.0, -0.5, 0.25, 0.5, 1.0, 0.25, -0.25, -0.5, 0.5, 0.0, -0.75, -0.5, -0.5, 0.5, -0.25, 0.0, -0.5, 0.5, -0.25, 1.0, 0.0, -0.75, -0.5, -0.25, -0.75, -0.5, 0.25, 0.25, 1.0, 0.25, -0.5, 0.5, -1.0, 1.0, 1.0, -0.75, 0.75, 0.0, 0.25, 1.0, 0.75, -0.25, 0.0, -1.0, 0.0, 0.0, -1.0, 0.75, 0.5, 1.0, -1.0, 0.75, -0.75, 0.75, -1.0, 0.0, 0.5, -0.5, -0.25, 0.0, -1.0, 0.5, 0.5, -0.75, -1.0, 0.75, 1.0, 0.0, 1.0, -1.0, 0.25, -1.0, 0.5, 0.0, -0.75, 0.75, -0.25, 0.5, -0.5, 0.0, 0.0, -1.0, 1.0, -0.25, -0.75, -1.0, -0.75, -0.5, 0.0, 0.0, -0.75, ]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query203
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.pushErrorScope("out-of-memory");
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout209,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer500, 0, array12, 0, array12.length);
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    buffer009.destroy()
    render_pass_encoder2020.setPipeline(render_pipeline203);
    render_pass_encoder0001.setPipeline(render_pipeline005);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2020.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2012, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2012, 0);
    compute_pass_encoder2020.end();
    compute_pass_encoder2021.popDebugGroup()
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group203);
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group204);
    render_pass_encoder0000.setPipeline(render_pipeline008);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2017, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2017, 0);
    render_pass_encoder2020.setVertexBuffer(0, buffer201);
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2018, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2018, 0);
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    compute_pass_encoder2021.setBindGroup(0, bind_group205);
    render_pass_encoder2020.end();
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder2021.popDebugGroup()
    const uint32_2021 = new Uint32Array(3);

    uint32_2021[0] = 100;
    uint32_2021[1] = 1;
    uint32_2021[2] = 1;

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2021, 0, uint32_2021, 0, uint32_2021.length);

    compute_pass_encoder2021.dispatchWorkgroupsIndirect(buffer2021, 0);
    compute_pass_encoder2021.end();
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2020.end();
    compute_pass_encoder2021.end();
}