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
    
    const array0 = new Float32Array([-0.25, -0.25, 0.75, 0.0, 1.0, 0.5, 0.75, 0.25, 0.0, 0.5, 0.75, 0.0, 0.0, 0.75, -1.0, 0.25, -0.25, -0.5, 0.25, 0.5, 0.75, -0.25, 0.75, 0.0, -1.0, -0.25, 1.0, 0.0, -0.75, 1.0, -0.75, -0.25, -0.5, -1.0, 0.75, 0.25, 0.0, -0.25, -0.75, -0.5, -0.5, -1.0, -1.0, -1.0, 0.25, -0.5, 0.5, 0.0, 0.5, -0.5, 0.5, -0.25, 0.75, 0.75, 0.75, -0.75, -0.75, 0.5, -1.0, 0.5, 0.5, 0.0, -0.25, -1.0, -1.0, -0.75, 1.0, 0.0, 1.0, -0.75, -0.5, -0.25, -1.0, 0.75, 0.0, -0.75, 0.75, -1.0, -0.25, -0.75, 0.5, -1.0, 0.25, 1.0, 0.0, -0.5, 1.0, -0.25, -0.25, 0.0, 0.5, -1.0, 0.0, 0.0, -0.25, 1.0, 0.75, 0.0, 1.0, -0.75, ]);
    
    
    const array1 = new Float32Array([-0.75, -0.75, 0.25, -0.25, -0.75, 0.25, 0.25, -0.25, -1.0, -0.75, -0.5, -0.25, -1.0, 1.0, 0.25, 0.5, -1.0, -0.5, 0.25, -0.75, 0.25, 0.0, 0.75, 0.5, -0.25, -0.75, -0.75, -0.25, -0.25, 0.0, 0.75, -1.0, -0.75, -0.5, -0.75, -1.0, 1.0, -0.25, 0.5, 0.75, -0.75, -0.5, 0.75, -0.25, 0.75, -0.5, -0.75, 0.75, -0.25, 1.0, 0.5, -1.0, 0.5, 0.25, -0.25, -0.75, -1.0, 0.75, -0.75, 0.5, 0.25, 0.25, 1.0, -0.25, 0.0, 0.25, 0.25, 0.5, -1.0, -0.25, 0.75, 0.5, 0.25, 1.0, -0.25, 0.75, 0.75, 1.0, 1.0, -0.25, 0.25, -1.0, 0.0, 0.5, -1.0, -0.25, 1.0, -0.25, 0.75, -1.0, -0.5, -0.25, -1.0, 0.0, -0.5, -0.75, -0.75, -0.5, -1.0, 0.75, ]);
    
    const array2 = new Float32Array([0.75, -0.75, -0.5, 1.0, 0.5, 0.25, 0.0, -0.5, -0.5, -0.25, 0.25, -0.25, 0.75, 0.5, -1.0, 0.0, 0.75, -0.5, 0.0, 1.0, -1.0, 0.5, -1.0, -1.0, 1.0, 1.0, -1.0, -0.5, 0.75, 0.5, -0.25, 0.5, 0.25, -1.0, 1.0, 0.75, -0.5, 0.5, -0.25, -1.0, 0.75, 1.0, -0.5, -0.25, -1.0, 0.5, 0.0, 0.75, 0.75, -0.5, -0.5, 0.5, -0.25, -0.25, 0.25, 0.5, -0.5, -0.75, -0.75, -0.5, 0.5, 0.75, -0.25, -1.0, 0.25, -0.75, -0.75, 0.5, -0.25, 0.5, 0.5, 0.25, 0.5, -1.0, 0.25, 1.0, -0.75, -0.5, 0.75, 0.25, 0.25, 0.75, 0.5, 0.25, -0.5, 0.5, 0.0, -1.0, -0.75, -0.75, 0.75, -0.75, -0.25, 0.25, 1.0, 0.5, -0.5, -0.5, 1.0, -0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
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
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    device00.pushErrorScope("validation");
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder000.insertDebugMarker("marker");
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
    render_bundle_encoder000.setPipeline(render_pipeline002);
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder000.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("out-of-memory");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    command_encoder001.insertDebugMarker("mymarker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder001.copyTextureToTexture(
        {
            texture: texture000
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
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer002.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
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
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.setStencilReference(1);
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
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
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder001.copyBufferToBuffer(
        buffer001,
        0,
        buffer003,
        0,
        400
    );
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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    command_encoder000.popDebugGroup()
    
    buffer000.destroy()
    command_encoder100.pushDebugGroup("mygroupmarker")
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    texture001.destroy();
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
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
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_pass_encoder0000.pushDebugGroup("group_marker");
    buffer003.destroy()
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder100.popDebugGroup()
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer000.destroy()
    
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
        layout: render_pipeline000.getBindGroupLayout(0),
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
    
    
    const command_buffer100 = command_encoder100.finish();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.popDebugGroup();
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.executeBundles([])
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.setPipeline(render_pipeline004);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    query000.destroy()
    command_encoder002.insertDebugMarker("mymarker");
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
    texture000.destroy();
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder002.insertDebugMarker("mymarker");
    
    compute_pass_encoder0010.setPipeline(compute_pipeline005);
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder002.setPipeline(render_pipeline005);
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
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
        occlusionQuerySet: undefined
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0001.setPipeline(render_pipeline004);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.executeBundles([render_bundle_encoder002, ])
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
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
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group002);
    
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    
    render_pass_encoder0000.popDebugGroup();
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0030.setPipeline(render_pipeline003);
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer006.destroy()
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
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
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0000.setVertexBuffer(0, buffer005);
    render_pass_encoder0000.setStencilReference(1);
    buffer100.destroy()
    device10.queue.submit([command_buffer100, ]);
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    render_bundle_encoder001.popDebugGroup();
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group003);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array3 = new Float32Array([-0.25, -0.25, 1.0, -1.0, -1.0, 0.5, -1.0, 0.75, -1.0, 1.0, 0.25, -0.5, 0.0, -0.5, -0.25, 0.5, 0.0, 0.25, 1.0, 0.75, 0.75, 0.0, 1.0, -1.0, -0.5, 0.5, -0.25, -1.0, 0.5, -0.75, 0.5, 0.0, 0.0, 0.5, -0.5, 0.5, 0.75, 0.75, -0.5, -0.75, -0.25, -0.75, -0.75, -0.75, 0.75, -0.5, -0.5, -0.5, -0.5, -1.0, 0.0, -0.75, -0.75, 0.25, -1.0, 0.0, -0.25, 0.25, -1.0, -1.0, -0.75, 1.0, -0.5, 1.0, -1.0, -0.5, -0.75, 0.0, 0.0, -0.75, 1.0, 0.25, -0.25, -0.5, 0.0, -0.25, 0.25, 0.75, -1.0, 0.25, -0.75, 1.0, 0.5, 0.5, -0.25, -0.75, 0.5, 0.0, -1.0, 0.0, -0.75, 0.5, -0.75, 0.5, 0.75, -0.75, 0.0, 0.0, -0.75, 1.0, ]);
    
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
    command_encoder003.clearBuffer(buffer005);
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder000.setVertexBuffer(0, buffer009);
    render_pass_encoder0001.insertDebugMarker("marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    query000.destroy()
    render_pass_encoder0021.setPipeline(render_pipeline001);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0001.setStencilReference(1);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline005.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group004);
    
    render_pass_encoder0021.insertDebugMarker("marker");
    buffer0010.destroy()
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([1.0, -0.25, -0.5, 0.0, 0.5, 0.5, 1.0, 0.0, 0.0, -0.5, 0.75, -0.75, -0.25, 0.0, -1.0, -0.5, -1.0, 1.0, 0.0, 0.0, -0.5, 1.0, -0.5, 0.0, -0.25, 0.75, 0.75, -0.75, 0.0, 0.25, -0.5, 0.75, 0.75, 0.75, 1.0, 0.0, 1.0, -0.25, 0.75, -0.75, -0.25, 0.75, -0.25, 0.0, 1.0, 0.75, -0.5, 0.75, 0.75, 1.0, 0.5, 0.25, -0.25, 1.0, 0.75, -0.75, -0.5, 0.5, 0.5, -0.25, 0.0, -0.25, 0.5, 0.25, 0.75, 0.75, -0.25, 1.0, -1.0, 0.25, 0.5, -1.0, -1.0, 1.0, 0.25, 0.25, 1.0, -1.0, 0.5, 0.0, -0.25, -0.25, -1.0, 0.5, -0.75, 1.0, 0.25, 0.5, 0.75, -1.0, 0.5, 1.0, 0.25, 0.75, 0.5, 0.5, -1.0, -0.75, 1.0, 0.75, ]);
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder000.setIndexBuffer(buffer0010, "uint16");
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
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
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device30.destroy();
    
    render_pass_encoder0001.setStencilReference(1);
    texture002.destroy();
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    buffer008.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0030.popDebugGroup();
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    query000.destroy()
    
    device20.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query000
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0012, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0012, 0);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.queue.writeBuffer(buffer007, 0, array0, 0, array0.length);
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_pass_encoder0031.executeBundles([])
    buffer005.destroy()
    
    render_bundle_encoder000.draw(3);
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder102.insertDebugMarker("mymarker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder004.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer0012
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
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
        occlusionQuerySet: query001
    });
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_bundle_encoder002.popDebugGroup();
    render_pass_encoder0031.setPipeline(render_pipeline002);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    render_bundle_encoder001.setVertexBuffer(0, buffer0013);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer009.destroy()
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth32float",
        dimension: "2d"
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder102.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer0012, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    buffer007.destroy()
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.setIndexBuffer(buffer004, "uint16");
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer0013.destroy()
    query000.destroy()
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_pass_encoder0000.draw(3);
    
    
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

    render_pass_encoder0021.setBindGroup(0, bind_group005);
    render_pass_encoder0030.insertDebugMarker("marker");
    
    buffer004.destroy()
    render_pass_encoder0040.pushDebugGroup("group_marker");
    {
        await buffer004.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer004.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer004.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setStencilReference(1);
    render_bundle_encoder001.drawIndexedIndirect(buffer004, 0);
    
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer008,
        0
    )
    
    render_pass_encoder0040.setPipeline(render_pipeline004);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
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
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
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
    render_bundle_encoder001.drawIndirect(buffer0012, 0);
    device00.queue.writeBuffer(buffer0012, 0, array1, 0, array1.length);
    query001.destroy()
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder0001.insertDebugMarker("marker");
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group006);
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    
    command_encoder004.clearBuffer(buffer0012);
    render_pass_encoder0001.insertDebugMarker("marker");
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    texture004.destroy();
    
    render_pass_encoder0031.endOcclusionQuery()
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder002.copyBufferToBuffer(
        buffer002,
        0,
        buffer0012,
        0,
        400
    );
    device00.queue.writeBuffer(buffer0012, 0, array2, 0, array2.length);
    
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.popDebugGroup();
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    buffer0012.destroy()
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
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group007);
    
    render_pass_encoder0000.draw(3);
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
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
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder103.clearBuffer(buffer100);
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    render_pass_encoder0040.popDebugGroup();
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    render_pass_encoder0000.pushDebugGroup("group_marker");
    buffer0020.destroy()
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    buffer0017.destroy()
    render_pass_encoder0000.pushDebugGroup("group_marker");
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    command_encoder103.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer0012, 0, array1, 0, array1.length);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder001.copyTextureToTexture(
        {
            texture: texture003
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
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    render_pass_encoder0001.insertDebugMarker("marker");
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout003,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    
    render_bundle_encoder002.setVertexBuffer(0, buffer0017);
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group008);
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    command_encoder002.copyBufferToBuffer(
        buffer0021,
        0,
        buffer0011,
        0,
        400
    );
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_pass_encoder0020.setVertexBuffer(0, buffer006);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setStencilReference(1);
    
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    texture005.destroy();
    render_pass_encoder1020.setStencilReference(1);
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    command_encoder002.insertDebugMarker("mymarker");
    render_bundle_encoder002.setIndexBuffer(buffer0016, "uint16");
    render_bundle_encoder002.draw(3);
    render_pass_encoder0030.setStencilReference(1);
    
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const render_pass_encoder0002 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query000
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer007.destroy()
    buffer0018.destroy()
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group009);
    device30.pushErrorScope("out-of-memory");
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    command_encoder103.pushDebugGroup("mygroupmarker")
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder0001.setVertexBuffer(0, buffer0011);
    device00.pushErrorScope("out-of-memory");
    
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder004.copyBufferToBuffer(
        buffer003,
        0,
        buffer0024,
        0,
        400
    );
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
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setVertexBuffer(0, buffer0020);
    render_bundle_encoder001.drawIndirect(buffer0011, 0);
    render_pass_encoder0002.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0002.executeBundles([])
    render_pass_encoder0000.insertDebugMarker("marker");
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    command_encoder004.copyTextureToTexture(
        {
            texture: texture003
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_pass_encoder0001.drawIndirect(buffer0022, 0);
    render_pass_encoder0002.setPipeline(render_pipeline001);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    
    
    buffer101.destroy()
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0031.setVertexBuffer(0, buffer0013);
    render_pass_encoder0021.drawIndirect(buffer0017, 0);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.drawIndirect(buffer0018, 0);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_pass_encoder0002.setStencilReference(1);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    render_bundle_encoder002.drawIndirect(buffer0019, 0);
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    render_pass_encoder0001.end();
    compute_pass_encoder1040.insertDebugMarker("marker")
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer0013,
        0
    )
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0031.end();
    render_pass_encoder0030.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0040.setVertexBuffer(0, buffer009);
    compute_pass_encoder1040.setPipeline(compute_pipeline106);
    render_pass_encoder0040.drawIndirect(buffer0018, 0);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group100);
    render_pass_encoder0021.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.end();
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
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group0010);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group101);
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0030.setVertexBuffer(0, buffer0015);
    render_pass_encoder0030.setIndexBuffer(buffer0023, "uint16");
    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0028,
                },
            },
        ],
    });

    render_pass_encoder0002.setBindGroup(0, bind_group0011);
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
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
        layout: compute_pipeline106.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group102);
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    command_encoder103.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder0002.setVertexBuffer(0, buffer0025);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0002.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0002.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0002.drawIndexedIndirect(buffer0018, 0);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder0001.drawIndirect(buffer0017, 0);
    render_pass_encoder0002.drawIndexed(3);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder0010.end();
    render_pass_encoder0002.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0000.end();
    compute_pass_encoder1040.dispatchWorkgroups(100);
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

    compute_pass_encoder1010.setBindGroup(0, bind_group103);
    render_pass_encoder0002.end();
    render_pass_encoder0040.end();
    const command_buffer004 = command_encoder004.finish();
    compute_pass_encoder1040.popDebugGroup()
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1010, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1010, 0);
    render_pass_encoder0002.end();
    command_encoder001.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0010, "uint16");
    command_encoder002.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0002.drawIndexed(3);
    render_pass_encoder0002.drawIndexedIndirect(buffer007, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0021.drawIndirect(buffer008, 0);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder0002.setIndexBuffer(buffer0021, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer009, 0);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0031.draw(3);
    render_pass_encoder0030.end();
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0024, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0002.setIndexBuffer(buffer0028, "uint16");
    device00.queue.submit([command_buffer000, ]);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0020.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0031.drawIndirect(buffer0018, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0012, 0);
    compute_pass_encoder1010.end();
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer004, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0002.endOcclusionQuery()
    command_encoder101.popDebugGroup()
    device10.queue.submit([]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0002.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0016, "uint16");
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder0010.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0020.drawIndirect(buffer0014, 0);
    compute_pass_encoder0010.end();
    const command_buffer003 = command_encoder003.finish();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0002.end();
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0030.draw(3);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    device40.queue.submit([]);
    render_pass_encoder0002.setIndexBuffer(buffer0022, "uint16");
    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0030,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0012);
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0018, 0);
    render_pass_encoder0030.drawIndexed(3);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1011, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1011, 0);
    render_pass_encoder0001.drawIndirect(buffer0030, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0040.drawIndirect(buffer0018, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0018, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1012, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1012, 0);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group104);
    render_pass_encoder0002.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0031.end();
    compute_pass_encoder0010.end();
    render_pass_encoder0002.end();
    compute_pass_encoder0010.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0000.drawIndirect(buffer0018, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0031.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer008, "uint16");
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group105);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0002.draw(3);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0017, 0);
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group106);
    render_pass_encoder0031.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0031.drawIndirect(buffer0026, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer004, 0);
    device10.queue.submit([]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder0031.draw(3);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0000.end();
    compute_pass_encoder0010.end();
    render_pass_encoder0030.draw(3);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    device30.queue.submit([]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0031, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0031, 0);
    render_pass_encoder0002.drawIndirect(buffer0018, 0);
    render_pass_encoder0030.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1019, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1019, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder0000.end();
    render_pass_encoder0001.setIndexBuffer(buffer0027, "uint16");
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group107);
    render_pass_encoder0031.drawIndirect(buffer0020, 0);
    device10.queue.submit([]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0031.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder0001.draw(3);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0002.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0018, 0);
    render_pass_encoder0001.end();
    compute_pass_encoder1040.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0016, 0);
    device40.queue.submit([]);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0002.drawIndirect(buffer009, 0);
    render_pass_encoder0001.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    render_pass_encoder0030.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0030.drawIndirect(buffer0017, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0002.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0002.end();
    render_pass_encoder0000.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0020.end();
    compute_pass_encoder1040.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0002.end();
    render_pass_encoder0020.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0018, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0001.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0030.drawIndirect(buffer009, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0020.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1022, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1022, 0);
    render_pass_encoder0000.drawIndirect(buffer0015, 0);
    render_pass_encoder0002.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0012, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0002.end();
    compute_pass_encoder1010.end();
    render_pass_encoder0021.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer009, 0);
    device40.queue.submit([]);
    render_pass_encoder0031.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0040.end();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0030.drawIndirect(buffer009, 0);
    render_pass_encoder0002.drawIndirect(buffer006, 0);
    render_pass_encoder0020.drawIndexed(3);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0002.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0000.end();
    render_pass_encoder0001.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0021.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.drawIndexed(3);
    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0033,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0013);
    render_pass_encoder0002.drawIndirect(buffer0031, 0);
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0002.end();
    render_pass_encoder1020.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0002.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0018, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer003, 0);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder0001.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0026, 0);
    device40.queue.submit([]);
    render_pass_encoder0000.draw(3);
    compute_pass_encoder0010.end();
    render_pass_encoder0002.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0000.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0002.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0031.drawIndirect(buffer0026, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0027, "uint16");
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder0000.drawIndexedIndirect(buffer0030, 0);
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1024,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group108);
    render_pass_encoder0021.drawIndexedIndirect(buffer0026, 0);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0000.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0040.end();
    compute_pass_encoder1010.end();
    render_pass_encoder0001.drawIndirect(buffer002, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0022, "uint16");
    device40.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer0018, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndirect(buffer0012, 0);
    render_pass_encoder0040.drawIndirect(buffer0014, 0);
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0031.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0031.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0001.drawIndirect(buffer0014, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0002.drawIndirect(buffer0012, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0021.endOcclusionQuery()
    compute_pass_encoder1010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0020.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0017, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0035,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0014);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0002.draw(3);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0031, 0);
    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1026,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group109);
    render_pass_encoder0002.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1028,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1010);
    render_pass_encoder0002.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0021.drawIndirect(buffer0029, 0);
    render_pass_encoder0030.popDebugGroup();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1029, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1029, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0030.drawIndirect(buffer0027, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.end();
    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1031,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1011);
    render_pass_encoder0040.drawIndirect(buffer0012, 0);
    device40.queue.submit([]);
    render_pass_encoder0001.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder0000.end();
    render_pass_encoder0020.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0001.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.drawIndirect(buffer0018, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0023, 0);
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1032, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1032, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0018, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1033, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1033, 0);
    render_pass_encoder0001.drawIndirect(buffer0028, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0036, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0036, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.draw(3);
    render_pass_encoder0031.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer002, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0040.drawIndirect(buffer0031, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder0002.end();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0013, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndirect(buffer0030, 0);
    device10.queue.submit([command_buffer104, ]);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    device40.queue.submit([]);
    render_pass_encoder0030.setIndexBuffer(buffer0017, "uint16");
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0031.end();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0040.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0031.end();
    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1035,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1012);
    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1037,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1013);
    render_pass_encoder0002.end();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0002.drawIndexedIndirect(buffer0018, 0);
    device00.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.drawIndirect(buffer0023, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer003, 0);
    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1039,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1014);
    render_pass_encoder0031.drawIndirect(buffer0018, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0022, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1040, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1040, 0);
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    render_pass_encoder0001.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0002.drawIndirect(buffer005, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1042,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1015);
    render_pass_encoder0030.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0012, 0);
    device10.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0002.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0002.end();
    render_pass_encoder0001.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0002.end();
    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1044,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1016);
    device00.queue.submit([]);
    render_pass_encoder0002.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndirect(buffer0023, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer0012, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0001.drawIndirect(buffer0021, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0002.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0016, 0);
    compute_pass_encoder1040.end();
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0031, 0);
    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1046,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1017);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.end();
    device40.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0040.drawIndirect(buffer0025, 0);
    render_pass_encoder0000.drawIndexed(3);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer008, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0031.end();
    render_pass_encoder0002.drawIndirect(buffer0036, 0);
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0031, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0002.end();
    render_pass_encoder0002.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1048,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1018);
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    render_pass_encoder0002.drawIndirect(buffer0021, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0002.drawIndirect(buffer0012, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1049, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1049, 0);
    render_pass_encoder0001.drawIndirect(buffer000, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
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
        layout: compute_pipeline005.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0015);
    render_pass_encoder0002.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0002.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0031, 0);
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0028, 0);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder1040.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0031.end();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0000.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0020.drawIndexed(3);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer001, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0031, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0002.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0031.drawIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0040.drawIndirect(buffer0020, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.draw(3);
    compute_pass_encoder1040.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0002.drawIndirect(buffer0035, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1050, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1050, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0018, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0021.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0039, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0039, 0);
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    device00.queue.submit([command_buffer001, ]);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1010.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0017, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0031.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0030, 0);
    render_pass_encoder0002.drawIndirect(buffer0018, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0002.drawIndirect(buffer0036, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0000.drawIndirect(buffer006, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer003, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0021, 0);
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0031.drawIndexed(3);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.draw(3);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0040, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0040, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0031.drawIndirect(buffer0015, 0);
    render_pass_encoder0031.drawIndirect(buffer0039, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0031.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0031.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0002.drawIndirect(buffer0040, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0021.drawIndirect(buffer0040, 0);
    render_pass_encoder0002.drawIndirect(buffer0039, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0040.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device00.queue.submit([]);
    render_pass_encoder0000.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0031.setIndexBuffer(buffer004, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0002.end();
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0030, 0);
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer103, ]);
    render_pass_encoder0001.drawIndirect(buffer0040, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0000.drawIndirect(buffer004, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0039, 0);
    render_pass_encoder0001.drawIndirect(buffer0037, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0031.draw(3);
    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1052,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1019);
    render_pass_encoder0021.drawIndirect(buffer0021, 0);
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0012, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0010, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0002.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0001.drawIndirect(buffer0031, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0002.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0002.drawIndexedIndirect(buffer0039, 0);
    device40.queue.submit([]);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0021.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0040.drawIndirect(buffer003, 0);
    device00.queue.submit([command_buffer001, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1053, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1053, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0021.drawIndirect(buffer0031, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0040, 0);
    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1055,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1020);
    render_pass_encoder0002.end();
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0039, 0);
    render_pass_encoder0001.drawIndirect(buffer0036, 0);
    render_pass_encoder0001.drawIndirect(buffer0012, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0039, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0041, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.drawIndirect(buffer0010, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0002.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0002.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.drawIndirect(buffer0035, 0);
    device40.queue.submit([]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer009, 0);
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndirect(buffer0023, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0000.end();
    render_pass_encoder1020.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0042, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0042, 0);
    compute_pass_encoder0010.end();
    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1057,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1021);
    render_pass_encoder0040.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0040, 0);
    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1059,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1022);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder0000.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0023, "uint16");
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1060, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1060, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder0031.drawIndexed(3);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndirect(buffer004, 0);
    device00.queue.submit([]);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0000.end();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    device10.queue.submit([]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0018, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0021.drawIndirect(buffer0031, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0031.end();
    render_pass_encoder0031.drawIndirect(buffer0018, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0040, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0033, "uint16");
    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1062,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1023);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0002.drawIndirect(buffer0042, 0);
    render_pass_encoder0002.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0002.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0043, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0043, 0);
    render_pass_encoder0020.drawIndexed(3);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1063, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1063, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer003, 0);
    compute_pass_encoder1040.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0020.drawIndirect(buffer009, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0021.drawIndexed(3);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0001.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0002.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0030.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0024, "uint16");
    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1065,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1024);
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
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
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline005.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0016);
    render_pass_encoder0031.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0021, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0002.drawIndirect(buffer0018, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0002.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0002.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0000.drawIndirect(buffer0042, 0);
    render_pass_encoder0002.end();
    render_pass_encoder0002.drawIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1066, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1066, 0);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([]);
    render_pass_encoder0021.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    device40.queue.submit([]);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1040.end();
    render_pass_encoder0020.end();
    render_pass_encoder0000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1068,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1025);
    render_pass_encoder0021.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0031.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1069, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1069, 0);
    render_pass_encoder0001.drawIndirect(buffer0042, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.drawIndirect(buffer0014, 0);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0010.end();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1070, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1070, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer004, 0);
    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1072,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1026);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0023, 0);
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0002.drawIndirect(buffer0016, 0);
    render_pass_encoder0002.drawIndirect(buffer0039, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0012, 0);
    device00.queue.submit([]);
    render_pass_encoder0031.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0031, 0);
    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1074,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1027);
    render_pass_encoder0030.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0012, 0);
    render_pass_encoder0002.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0000.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0029, 0);
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
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline005.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0017);
    render_pass_encoder0040.end();
    compute_pass_encoder1010.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0002.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0042, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0001.drawIndirect(buffer0034, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0039, 0);
    compute_pass_encoder1010.popDebugGroup()
    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1076,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1028);
    render_pass_encoder0030.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0031.drawIndirect(buffer0036, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.drawIndexed(3);
    device00.queue.submit([]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0000.end();
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
}