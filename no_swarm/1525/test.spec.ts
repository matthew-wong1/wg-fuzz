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
    const array0 = new Float32Array([-0.25, -0.75, 0.5, -0.75, 1.0, 0.0, -0.75, -0.75, 0.25, 0.5, -0.5, -1.0, 0.25, 1.0, 0.5, -1.0, 1.0, -0.25, 0.5, 1.0, -1.0, 0.5, -1.0, 0.5, -1.0, -0.5, 0.25, 0.75, 1.0, 0.75, -1.0, 1.0, -0.5, -0.25, 0.25, 0.75, -0.5, 1.0, -0.75, 0.5, 0.0, 0.25, 0.75, -0.75, 0.75, -0.25, 1.0, 1.0, -1.0, -0.5, 1.0, -0.5, 1.0, 0.5, -0.5, 0.5, -0.75, 0.25, 0.5, 0.75, -1.0, 0.0, -0.75, 0.25, 0.25, -1.0, 0.0, 0.75, 1.0, 0.25, -0.5, -0.5, -0.75, -1.0, 1.0, -1.0, -0.25, -0.75, -1.0, 1.0, -0.5, -0.25, -0.5, 0.0, 0.5, 1.0, 1.0, 0.5, 0.75, 0.0, 0.0, 0.5, -0.25, 0.25, 0.25, -0.25, -0.5, -0.5, 0.5, 0.5, ]);
    
    const array1 = new Float32Array([-0.5, -0.5, 0.25, 0.5, -0.25, 1.0, 0.5, 0.25, 1.0, -1.0, 0.5, 0.0, -0.25, -0.5, -1.0, -0.75, 1.0, 1.0, 0.75, 0.0, 0.0, 1.0, 1.0, 1.0, -0.5, 0.5, 0.0, -0.25, -1.0, 0.25, -0.5, -1.0, 1.0, -0.75, 1.0, 0.25, 1.0, -0.25, -0.75, 0.5, -0.5, -0.75, -1.0, 0.0, 0.75, 1.0, 1.0, 1.0, 0.0, 0.25, 1.0, 0.0, -0.25, 0.75, 0.75, 0.0, -0.75, 0.25, 1.0, 0.5, 1.0, 0.25, -0.25, -0.5, -0.5, -0.25, 1.0, 0.25, 0.5, 0.75, 0.75, -0.25, 1.0, 0.0, -0.25, 0.0, -0.75, 0.75, 1.0, 0.75, -1.0, 0.75, -1.0, 1.0, 0.5, 0.5, -0.5, 1.0, 0.0, 0.25, 0.75, 1.0, 1.0, -0.75, -1.0, -0.25, 0.75, 0.5, 0.5, 0.25, ]);
    
    const array2 = new Float32Array([-1.0, 0.0, -0.25, -1.0, 0.25, -0.75, 0.0, -0.75, -1.0, -0.75, -0.75, -0.75, -0.75, -1.0, 0.0, -0.25, 0.5, 0.5, 0.25, 0.75, 0.75, -1.0, -1.0, 1.0, 0.5, 0.0, 1.0, -0.75, 0.5, 0.75, -1.0, -1.0, -1.0, -0.75, 0.5, -0.5, -0.75, -0.25, 1.0, 0.0, 1.0, 0.25, 0.75, -0.25, -0.5, 0.0, 0.75, 0.0, -0.75, -0.75, 0.0, -1.0, -0.5, 1.0, -1.0, 0.25, 0.25, -0.75, 0.0, 0.25, 0.5, 1.0, -0.5, -1.0, 0.0, 0.0, 0.5, 0.5, 0.25, 0.25, -0.25, 0.25, 0.0, -0.5, -0.75, 0.25, 0.0, 1.0, -0.5, -0.75, -0.5, -1.0, 0.5, -0.25, 0.0, -0.5, 0.25, 0.25, 1.0, 0.75, 0.0, 0.5, -0.5, -0.25, 0.0, 1.0, -0.75, 1.0, -1.0, -0.25, ]);
    
    const array3 = new Float32Array([0.0, -0.25, -0.5, -0.5, 0.75, 0.5, -1.0, -0.25, -0.5, -0.75, 0.75, 0.25, 0.75, 0.75, 0.0, 0.25, -0.5, 0.75, 0.5, -0.25, 0.75, -0.75, 0.0, 0.0, 0.5, -0.75, 0.0, -1.0, -0.5, -1.0, 1.0, 1.0, -0.75, -0.75, 1.0, 0.0, 0.5, -0.25, -0.5, -0.5, 0.25, 1.0, 0.5, 0.0, 1.0, 0.75, 0.75, -1.0, -0.5, 0.5, 0.0, 0.25, 0.0, -0.25, 0.5, -0.5, -0.5, 0.0, -0.75, 0.0, 0.5, -0.5, -0.5, 1.0, -0.25, 0.5, 1.0, 0.0, 0.0, 0.0, 0.0, -0.25, -0.75, -0.25, 0.0, 1.0, 0.75, 0.75, 0.75, -1.0, 0.0, -1.0, 0.75, -0.25, -1.0, 0.5, 0.0, 1.0, -1.0, -0.25, -0.75, -0.75, -1.0, 0.25, 0.75, -1.0, 0.75, -0.25, 1.0, 0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.insertDebugMarker("mymarker");
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array4 = new Float32Array([0.25, 0.75, -0.5, -1.0, -1.0, -0.75, 0.25, 0.25, 1.0, -1.0, 0.75, 0.5, -1.0, 1.0, 0.5, 0.0, -0.5, 0.0, -0.25, -0.5, -1.0, 0.25, 1.0, 0.0, -0.5, -0.5, -0.5, 1.0, 0.0, -1.0, 0.5, 1.0, -0.5, -0.75, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0, -0.75, 1.0, -0.75, 0.75, 0.0, 0.25, 0.0, 0.5, -0.75, 0.5, 0.25, -1.0, -0.5, 0.5, 0.5, 1.0, 0.5, 1.0, 0.5, 0.0, -1.0, -0.25, 0.75, -0.25, -0.75, 0.25, -0.5, 1.0, -1.0, 0.75, 0.0, -0.25, 0.0, 0.75, 0.75, 0.0, -1.0, 0.25, 0.0, 0.5, -0.5, -0.5, -1.0, -0.75, 0.0, -1.0, -0.5, -0.5, 0.75, 0.25, 0.5, 1.0, 0.5, 1.0, 0.25, 1.0, -1.0, 0.0, 1.0, 0.25, ]);
    const array5 = new Float32Array([0.25, 0.75, 0.0, -0.25, 0.0, 0.25, 0.5, -1.0, -0.25, -1.0, -1.0, -0.25, 1.0, -0.75, -0.25, 0.5, -1.0, 1.0, -0.5, -0.25, -0.75, -0.75, -0.75, 0.5, -0.25, 0.75, 1.0, -0.5, 0.25, -0.75, 0.25, -0.5, 0.5, 0.75, 0.5, 1.0, -0.5, -0.25, 1.0, 0.5, -1.0, -1.0, 1.0, -0.25, -1.0, 0.75, -0.25, 1.0, 0.0, 1.0, -0.75, -0.5, -0.75, -0.25, 0.5, 0.25, -1.0, -0.5, 0.75, 0.5, -0.75, 0.75, 0.75, 0.75, -1.0, 1.0, 0.75, -0.5, -1.0, 0.75, 0.5, 0.5, -0.25, 1.0, 0.25, 0.25, -0.25, -0.25, 1.0, -1.0, 0.0, -0.75, -1.0, 0.25, 0.0, 0.0, 0.0, 0.0, 0.75, 0.0, -0.5, 0.25, -0.75, -0.75, 0.5, 0.0, -0.75, 0.75, 0.0, 0.0, ]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([1.0, 0.25, 0.5, 0.25, 1.0, -0.25, -0.25, 0.5, 1.0, 1.0, -0.75, -0.5, 0.75, 1.0, 0.0, 1.0, -1.0, -0.5, 0.25, -0.75, -0.75, -1.0, -1.0, 0.0, -0.5, 0.75, 0.75, -0.25, -1.0, 1.0, 0.0, -0.75, 0.25, 0.5, 0.25, -0.25, 0.0, 1.0, 0.5, 0.25, 1.0, -1.0, 0.25, -0.75, -0.75, -0.75, -1.0, 0.25, 0.25, 1.0, 0.75, 1.0, 0.25, 1.0, 0.0, 0.0, 1.0, -1.0, 0.5, 0.25, -0.75, -0.5, 0.75, -0.75, -0.25, -1.0, 0.25, 0.5, -0.5, 0.25, 0.75, -1.0, 1.0, -1.0, 1.0, 0.75, -1.0, 1.0, -0.75, -0.5, 0.0, 0.25, -0.5, 0.5, 0.5, 0.5, -0.25, 1.0, 0.0, -0.25, -0.75, -1.0, 0.5, 0.75, -0.5, -0.75, 0.75, 0.25, 0.5, 0.5, ]);
    
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
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
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array7 = new Float32Array([-0.25, 0.5, -1.0, -1.0, 0.5, -0.75, -1.0, -0.25, 0.5, -1.0, 0.25, 0.0, 0.0, 0.25, 0.5, 1.0, -0.5, -0.75, 0.0, -0.75, -0.75, -0.25, -1.0, -0.5, -0.25, 1.0, -1.0, -0.5, 0.75, -0.75, 1.0, 0.25, -0.75, 0.5, 0.5, 0.25, 0.25, 1.0, 1.0, 0.5, -0.75, 0.25, 0.0, 1.0, -0.75, -0.75, 1.0, -0.5, 0.75, 0.0, 1.0, 0.75, 0.0, -1.0, 0.75, 0.5, -1.0, 0.25, -0.5, -0.25, -0.5, -0.25, 1.0, 0.5, 0.5, -0.25, 1.0, 0.75, 0.0, -0.25, 0.0, -1.0, 0.5, -0.25, -1.0, -0.25, 0.25, 0.25, 0.75, -0.5, -0.25, 0.0, -0.5, 1.0, 0.5, 0.0, 1.0, 0.75, 1.0, -0.5, 0.25, 0.5, 0.75, 0.0, -1.0, -0.25, 0.5, 1.0, 0.25, -0.25, ]);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
    
    
    const array8 = new Float32Array([-0.25, -1.0, -0.25, -0.5, 0.0, 0.25, -1.0, -0.25, 0.5, 0.0, -1.0, -0.5, 0.25, -0.25, -0.25, -0.25, 0.75, 0.5, -0.5, 0.25, 0.5, 0.0, 1.0, 1.0, -1.0, -1.0, 0.25, 0.0, -0.5, -0.75, 0.5, -0.25, -0.25, -1.0, -0.75, 1.0, -0.5, -0.5, 0.5, 1.0, -1.0, -0.5, -0.75, -1.0, -0.5, 0.75, -1.0, 1.0, 1.0, 1.0, 0.5, 0.25, -0.75, -0.75, -1.0, 0.25, -0.25, 0.0, -0.25, -0.5, -0.25, -1.0, -0.5, 0.5, 0.75, 1.0, -1.0, 0.75, 0.75, 0.0, 0.75, -0.5, 0.5, 0.5, -1.0, 0.5, -0.25, -0.75, 0.75, 0.25, -0.5, -0.75, -0.5, -1.0, -1.0, -0.25, -0.75, 0.25, 0.25, -1.0, 0.0, -1.0, -0.5, -0.25, -0.25, 1.0, 0.5, -0.5, -0.25, 0.75, ]);
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_buffer002 = command_encoder002.finish();
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16float",
        dimension: "2d"
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
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
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    device10.pushErrorScope("internal");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    buffer001.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder001.setPipeline(render_pipeline001);
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
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
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
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder001.setVertexBuffer(0, buffer002);
    render_bundle_encoder001.draw(3);
    
    query002.destroy()
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
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
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
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.pushErrorScope("out-of-memory");
    query000.destroy()
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    buffer002.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    texture100.destroy();
    compute_pass_encoder0011.setPipeline(compute_pipeline003);
    render_bundle_encoder000.setPipeline(render_pipeline001);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0011.popDebugGroup()
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer003, 0, array7, 0, array7.length);
    
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
    
    query000.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device00.queue.writeBuffer(buffer004, 0, array6, 0, array6.length);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer004.destroy()
    buffer000.destroy()
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer003.destroy()
    buffer100.destroy()
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    render_bundle_encoder002.pushDebugGroup("group_marker");
    query003.destroy()
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder002.setPipeline(render_pipeline000);
    
    compute_pass_encoder0011.insertDebugMarker("marker")
    render_bundle_encoder002.popDebugGroup();
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device10.queue.writeTexture({ texture: texture101 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.popDebugGroup();
    
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group001);
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
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline001.getBindGroupLayout(0),
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
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    const command_buffer003 = command_encoder003.finish();
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer003.destroy()
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer009, 0, array5, 0, array5.length);
    compute_pass_encoder0010.insertDebugMarker("marker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture101.destroy();
    device00.queue.writeBuffer(buffer006, 0, array6, 0, array6.length);
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
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array9 = new Float32Array([-0.75, 0.25, 0.75, -1.0, 0.75, -1.0, 1.0, 0.75, 0.25, 0.75, 1.0, 0.5, 0.25, 0.5, -0.5, 0.25, -1.0, 0.5, 0.75, 0.75, -0.75, 0.25, -0.25, 0.0, 0.0, 0.25, 0.75, -0.75, 0.75, -0.5, -0.25, 0.5, -0.25, -0.75, -0.75, -1.0, -0.5, -0.75, 0.5, 0.25, -1.0, 0.5, 0.25, 0.5, 0.75, -0.5, 0.0, 0.25, 0.5, 0.75, 0.0, -1.0, 0.5, -0.75, -0.75, -1.0, -0.75, -0.75, 0.5, 0.5, 0.5, -0.5, 0.25, 0.25, -0.75, 1.0, -1.0, 0.75, -1.0, -0.25, 0.25, 0.25, 0.0, 0.75, 0.0, -1.0, 1.0, 0.5, -1.0, -0.5, 1.0, 0.75, 0.25, -0.25, 0.75, 0.25, -0.25, -0.5, -0.25, -0.5, -0.75, -0.75, -1.0, -1.0, -0.5, -0.5, -0.75, -0.5, 0.75, 0.25, ]);
    texture101.destroy();
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture000 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer007,
        0
    )
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
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_bundle_encoder102.popDebugGroup();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query002.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    render_bundle_encoder100.popDebugGroup();
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    render_bundle_encoder102.setPipeline(render_pipeline100);
    compute_pass_encoder0011.insertDebugMarker("marker")
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0011.insertDebugMarker("marker")
    texture001.destroy();
    query005.destroy()
    texture000.destroy();
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    const command_buffer001 = command_encoder001.finish();
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer006,
        0
    )
    buffer0011.destroy()
    render_bundle_encoder000.setVertexBuffer(0, buffer002);
    render_bundle_encoder000.setIndexBuffer(buffer004, "uint16");
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
    query000.destroy()
    render_bundle_encoder101.setPipeline(render_pipeline101);
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    
    
    const array10 = new Float32Array([1.0, 0.25, 0.5, -1.0, 0.75, -1.0, -0.5, -1.0, 0.75, 0.75, -0.25, -0.25, -0.5, -0.25, 0.5, -0.5, 0.75, -1.0, -0.75, 1.0, -1.0, -0.5, -0.25, -1.0, 0.0, 0.25, 0.75, 1.0, 1.0, -0.5, -0.5, -0.5, 0.5, -0.25, 1.0, -0.5, -1.0, -0.5, -0.25, 0.25, 0.25, 0.5, 0.5, -1.0, -0.5, -0.5, -1.0, 1.0, 1.0, 0.0, 0.0, -0.5, -0.75, 1.0, 0.75, -0.5, 0.5, -0.25, -0.5, -0.5, -0.75, -1.0, -0.5, 0.75, -1.0, 0.5, 0.0, 0.0, 0.25, -0.5, 0.0, 0.5, 0.75, -0.75, 1.0, -0.5, 0.25, -0.25, -1.0, -0.25, -0.25, -0.25, -0.75, 1.0, 0.5, -0.5, 0.75, 1.0, 0.0, -0.25, 0.5, 0.0, 0.0, 0.5, 0.0, 0.5, 0.25, -0.5, 0.0, 0.5, ]);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    command_encoder004.resolveQuerySet(
        query006,
        0,
        32,
        buffer005,
        0
    )
    
    device00.queue.writeBuffer(buffer007, 0, array3, 0, array3.length);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    command_encoder004.resolveQuerySet(
        query005,
        0,
        32,
        buffer005,
        0
    )
    command_encoder004.copyBufferToBuffer(
        buffer008,
        0,
        buffer000,
        0,
        400
    );
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    render_pass_encoder0040.beginOcclusionQuery(0)
    buffer008.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.insertDebugMarker("marker");
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
    render_bundle_encoder000.drawIndexed(3);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder100.setPipeline(render_pipeline101);
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    render_bundle_encoder000.setIndexBuffer(buffer000, "uint16");
    device00.queue.writeBuffer(buffer009, 0, array10, 0, array10.length);
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
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    device00.queue.writeBuffer(buffer009, 0, array3, 0, array3.length);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout006,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture102 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout006,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer007,
        0
    )
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder005.clearBuffer(buffer005);
    command_encoder101.copyTextureToTexture(
        {
            texture: texture100
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer006,
        0
    )
    const array11 = new Float32Array([0.25, -0.75, -0.25, 0.75, -0.75, 0.0, -0.5, 0.5, -0.5, -0.25, 0.0, 1.0, 0.25, 0.75, 1.0, 0.0, -1.0, 0.0, -0.25, 0.0, -1.0, 0.5, -1.0, 0.75, -0.25, 0.25, 0.25, -0.25, 1.0, -0.5, -0.25, 0.0, 0.25, 1.0, 0.0, 1.0, -1.0, 0.0, -0.75, -0.75, -0.25, 0.5, -0.5, -1.0, 0.75, 0.75, 1.0, 0.25, 0.5, 0.25, 1.0, -0.75, -1.0, 0.25, -0.75, -0.5, 0.25, -0.75, 0.5, 0.5, 1.0, 0.0, -0.75, -0.5, 0.25, 0.0, 1.0, -0.75, -0.75, 0.5, 0.0, 0.5, 0.0, -0.75, 0.75, -0.5, 0.75, -0.25, -0.25, -0.5, -1.0, -0.25, -1.0, 0.5, 0.25, -0.75, 0.5, -1.0, 0.0, -0.5, 0.0, -0.75, 0.0, 0.25, -0.5, 0.75, 1.0, 0.75, 0.0, 1.0, ]);
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    
    command_encoder005.resolveQuerySet(
        query004,
        0,
        32,
        buffer0012,
        0
    )
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query006
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    render_pass_encoder0050.executeBundles([])
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0050.setPipeline(render_pipeline006);
    
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    render_pass_encoder0050.insertDebugMarker("marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer009,
        0
    )
    buffer005.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout006,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("internal");
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    query004.destroy()
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer009,
        0
    )
    buffer102.destroy()
    
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
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
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0011.insertDebugMarker("marker")
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0060.setPipeline(compute_pipeline0017);
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    query200.destroy()
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout007,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    buffer101.destroy()
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group003);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder002.setVertexBuffer(0, buffer002);
    device00.queue.writeBuffer(buffer0013, 0, array11, 0, array11.length);
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setPipeline(render_pipeline008);
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group004);
    
    render_pass_encoder0040.insertDebugMarker("marker");
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer009,
        0
    )
    render_bundle_encoder100.popDebugGroup();
    buffer201.destroy()
    render_pass_encoder0050.insertDebugMarker("marker");
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    render_pass_encoder0040.setVertexBuffer(0, buffer003);
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0040.endOcclusionQuery()
    command_encoder101.clearBuffer(buffer104);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer006,
        0
    )
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout004,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    render_bundle_encoder102.popDebugGroup();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0040.pushDebugGroup("group_marker");
    compute_pass_encoder0060.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer0015, 0, array4, 0, array4.length);
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
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
    device00.queue.writeBuffer(buffer009, 0, array2, 0, array2.length);
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query200.destroy()
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0040.drawIndexed(3);
    compute_pass_encoder0060.insertDebugMarker("marker")
    query002.destroy()
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    compute_pass_encoder0011.insertDebugMarker("marker")
    buffer104.destroy()
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.pushDebugGroup("group_marker");
    query005.destroy()
    render_bundle_encoder103.pushDebugGroup("group_marker");
    
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
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder100.insertDebugMarker("mymarker");
    
    buffer105.destroy()
    compute_pass_encoder0010.popDebugGroup()
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    query007.destroy()
    const array12 = new Float32Array([0.0, 0.25, 0.25, 0.75, -0.25, 0.5, 0.5, 0.5, 0.5, 1.0, -0.25, 0.0, 0.0, -0.5, -1.0, 0.0, -0.5, 0.0, -0.75, -0.5, 1.0, -0.75, 0.75, 0.0, 1.0, 0.5, -0.5, -0.25, -1.0, -1.0, -0.25, 0.75, -0.5, -1.0, 0.75, 0.25, 0.0, 0.0, -0.5, -0.75, 0.75, -0.75, -0.25, 0.0, 0.75, 0.25, -0.75, 0.0, 0.75, -0.5, -0.75, -1.0, 1.0, 0.0, -1.0, 0.0, 0.5, 0.75, -0.25, -0.5, -0.25, -1.0, -0.75, -1.0, 0.75, -0.5, 0.0, -0.5, 0.75, -0.5, -0.25, 1.0, 0.25, 0.25, -0.25, -0.5, -0.25, 0.25, -0.75, -0.25, 0.0, 0.25, 1.0, 1.0, 0.75, -0.75, 0.5, 0.75, 0.5, -0.5, 0.0, 1.0, -0.75, 0.75, -1.0, 0.25, 0.0, -1.0, 0.0, -0.75, ]);
    
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
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline0017.getBindGroupLayout(0),
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

    compute_pass_encoder0060.setBindGroup(0, bind_group005);
    
    device00.queue.writeBuffer(buffer0014, 0, array11, 0, array11.length);
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout007,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query200.destroy()
    device00.queue.writeBuffer(buffer0014, 0, array10, 0, array10.length);
    render_bundle_encoder002.setIndexBuffer(buffer001, "uint16");
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    query003.destroy()
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    render_pass_encoder0050.insertDebugMarker("marker");
    
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    buffer0012.destroy()
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer0016, 0, array12, 0, array12.length);
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    command_encoder101.clearBuffer(buffer100);
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout005,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout006,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0010, 0, array10, 0, array10.length);
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout009,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.setVertexBuffer(0, buffer102);
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0060.dispatchWorkgroups(100);
    compute_pass_encoder0010.end();
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group006);
    render_pass_encoder1010.setPipeline(render_pipeline100);
    compute_pass_encoder0060.end();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0060.end();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0011.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    const command_buffer006 = command_encoder006.finish();
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    render_pass_encoder0040.popDebugGroup();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0040.end();
    render_pass_encoder0040.drawIndexed(3);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group102);
    command_encoder004.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0010.popDebugGroup()
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0021, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0021, 0);
    compute_pass_encoder0011.end();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder1010.setVertexBuffer(0, buffer104);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer0012, "uint16");
    device20.queue.submit([command_buffer200, ]);
    const command_buffer005 = command_encoder005.finish();
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group007);
    render_pass_encoder1010.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1010.end();
    render_pass_encoder0050.setVertexBuffer(0, buffer0017);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder0050.drawIndirect(buffer0021, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0050.end();
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group103);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1010, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1010, 0);
    render_pass_encoder1010.end();
    compute_pass_encoder1000.end();
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    const command_buffer004 = command_encoder004.finish();
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0060.dispatchWorkgroups(100);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0024, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0024, 0);
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
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline0017.getBindGroupLayout(0),
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

    compute_pass_encoder0060.setBindGroup(0, bind_group008);
    device20.queue.submit([command_buffer200, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0027, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0027, 0);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer006, 0);
    const command_buffer101 = command_encoder101.finish();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0050.drawIndirect(buffer005, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0028, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0028, 0);
    render_pass_encoder1010.end();
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0011.end();
    render_pass_encoder0040.drawIndirect(buffer0024, 0);
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    device00.queue.submit([command_buffer003, ]);
    device20.queue.submit([]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0029, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0029, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0011.popDebugGroup()
    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline0017.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0031,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group009);
    render_pass_encoder0040.drawIndirect(buffer0027, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1010, 0);
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0027, "uint16");
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0060.end();
    render_pass_encoder0050.end();
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer002, ]);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1010.drawIndirect(buffer103, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0021, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0011, 0);
}