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
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array0 = new Float32Array([0.5, -0.25, 0.5, -0.25, -0.5, 1.0, -0.75, 0.0, 0.25, 0.75, 1.0, -0.75, 0.25, -0.25, 0.5, -1.0, 0.0, -0.75, 0.75, 0.75, -0.25, 1.0, -0.75, 1.0, 1.0, 1.0, -1.0, -0.75, 0.5, 0.5, 1.0, 1.0, 1.0, -1.0, 0.25, 0.5, -0.75, -0.25, 0.0, 0.25, 1.0, 0.25, 1.0, -1.0, 1.0, 0.0, -0.75, 0.5, 0.25, 0.75, -0.25, 0.0, -1.0, -0.5, 0.75, 0.0, 1.0, 0.0, -0.75, 1.0, 0.5, 0.75, -1.0, 0.0, 0.25, -1.0, 0.25, -0.5, -0.5, 0.0, 0.5, 0.5, -1.0, -0.75, -0.5, 0.0, -0.5, -0.25, 0.0, 0.5, 0.5, 0.5, -1.0, -0.25, -1.0, -0.5, 0.0, 1.0, -1.0, -0.75, 0.25, 0.25, 0.5, 0.5, 0.25, 1.0, 1.0, 0.5, -0.5, 0.5, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_buffer000 = command_encoder000.finish();
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    buffer001.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    texture000.destroy();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("internal");
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
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
        occlusionQuerySet: undefined
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0020.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    device10.pushErrorScope("internal");
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.setStencilReference(1);
    const command_buffer001 = command_encoder001.finish();
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
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
    query000.destroy()
    
    render_pass_encoder0020.setPipeline(render_pipeline000);
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    
    render_pass_encoder0020.setStencilReference(1);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
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
    
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.insertDebugMarker("mymarker");
    
    
    query000.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0020.setStencilReference(1);
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    
    
    render_bundle_encoder000.popDebugGroup();
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer003.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder100.insertDebugMarker("mymarker");
    const array1 = new Float32Array([-0.5, 0.75, -0.25, -0.25, 1.0, 1.0, 0.25, -0.5, 1.0, -0.25, 1.0, 1.0, 0.0, -0.25, -0.25, 1.0, 0.75, 0.0, -0.75, -0.5, -0.5, 0.25, 1.0, 0.5, -1.0, 0.75, 0.75, 0.5, 0.25, -0.75, -0.5, 0.25, 0.0, -0.75, -0.75, 0.5, -0.75, -1.0, -0.5, 1.0, 1.0, -0.5, 0.75, 1.0, 0.75, -0.75, -0.5, 0.0, -0.5, -0.5, 0.25, 1.0, 0.25, 1.0, -1.0, 0.25, 0.25, 0.0, -0.5, 0.25, 1.0, 1.0, -0.75, -1.0, -0.75, 0.75, -0.25, 0.75, -1.0, 0.0, 0.5, 0.0, 1.0, 0.75, -0.75, 0.0, 0.5, 0.0, 0.5, -0.5, 0.5, 0.25, -0.25, -0.5, 1.0, 0.75, -1.0, -0.75, 0.75, -1.0, 0.25, -0.5, 0.25, -0.75, -1.0, 0.25, 1.0, -0.25, -0.25, -0.25, ]);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    texture101.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture001.destroy();
    
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
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

    render_pass_encoder0020.setBindGroup(0, bind_group000);
    buffer001.destroy()
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    buffer006.destroy()
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer004.destroy()
    
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer004.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    command_encoder100.insertDebugMarker("mymarker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    command_encoder002.clearBuffer(buffer000);
    command_encoder100.popDebugGroup()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
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
    
    buffer008.destroy()
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    buffer0011.destroy()
    texture100.destroy();
    
    render_bundle_encoder000.popDebugGroup();
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
    
    const command_buffer100 = command_encoder100.finish();
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    device00.queue.writeBuffer(buffer0010, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    render_pass_encoder0020.setStencilReference(1);
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer001.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.popDebugGroup();
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
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    buffer005.destroy()
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder000.setVertexBuffer(0, buffer004);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
    
    render_bundle_encoder000.drawIndirect(buffer002, 0);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder101.setPipeline(render_pipeline101);
    texture001.destroy();
    render_bundle_encoder100.popDebugGroup();
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    buffer002.destroy()
    
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    
    
    
    
    
    
    device10.queue.submit([command_buffer100, ]);
    
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer009, 0, array1, 0, array1.length);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    buffer0010.destroy()
    buffer000.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    render_pass_encoder0020.setVertexBuffer(0, buffer0012);
    compute_pass_encoder1010.setPipeline(compute_pipeline103);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    query102.destroy()
    buffer009.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    buffer006.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    device00.pushErrorScope("validation");
    query101.destroy()
    
    
    
    render_pass_encoder0020.setIndexBuffer(buffer005, "uint16");
    
    compute_pass_encoder1010.popDebugGroup()
    render_bundle_encoder100.insertDebugMarker("marker");
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
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const array2 = new Float32Array([-0.25, -0.5, 0.0, 0.5, -0.75, 0.75, -1.0, -0.5, 0.5, 1.0, 0.5, 1.0, -1.0, -1.0, 0.75, -0.25, -0.5, 0.25, 1.0, 0.5, 1.0, -0.25, -0.25, 0.75, 0.25, 0.75, 0.25, -1.0, -0.25, 1.0, 1.0, 0.25, 0.75, -1.0, 0.25, 0.5, 0.5, 0.0, 0.75, -0.25, 1.0, -1.0, 0.5, 0.75, 0.5, -0.75, -0.5, 0.75, 1.0, 0.25, 0.75, 0.25, -0.25, 0.5, 0.75, -0.25, 0.75, -0.5, 0.25, 0.0, 1.0, -0.25, -1.0, -1.0, 0.5, 1.0, -0.5, -0.75, 0.0, 0.25, 1.0, -0.5, 0.25, -0.5, 0.5, -0.75, -0.5, 1.0, -0.5, 0.25, -0.5, -0.5, 0.5, -0.25, -0.5, 0.0, 0.0, -0.5, -0.75, 1.0, -0.5, 0.5, 0.0, -0.25, -1.0, -0.25, 0.5, 0.25, 0.75, 0.75, ]);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    query102.destroy()
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.drawIndexedIndirect(buffer005, 0);
    device10.pushErrorScope("out-of-memory");
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    command_encoder103.pushDebugGroup("mygroupmarker")
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1030.setStencilReference(1);
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query100
    });
    command_encoder003.insertDebugMarker("mymarker");
    
    render_bundle_encoder102.setPipeline(render_pipeline100);
    
    
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_pass_encoder1030.setPipeline(render_pipeline104);
    
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture002.destroy();
    
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
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
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group101);
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setStencilReference(1);
    compute_pass_encoder1010.insertDebugMarker("marker")
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
    render_bundle_encoder100.setVertexBuffer(0, buffer102);
    const command_buffer101 = command_encoder101.finish();
    command_encoder003.copyBufferToBuffer(
        buffer006,
        0,
        buffer0012,
        0,
        400
    );
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
        occlusionQuerySet: query002
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1022 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query101
    });
    texture104.destroy();
    render_pass_encoder1021.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    render_pass_encoder1021.executeBundles([])
    
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group102);
    render_pass_encoder1021.setPipeline(render_pipeline102);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder1022.setPipeline(render_pipeline102);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder1022.setStencilReference(1);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.setVertexBuffer(0, buffer100);
    render_bundle_encoder100.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group103);
    render_bundle_encoder100.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1021.insertDebugMarker("marker");
    buffer105.destroy()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1022.setBindGroup(0, bind_group104);
    command_encoder102.copyBufferToBuffer(
        buffer107,
        0,
        buffer101,
        0,
        400
    );
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    query000.destroy()
    command_encoder103.clearBuffer(buffer107);
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder1021.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1020.setPipeline(render_pipeline104);
    query101.destroy()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query100.destroy()
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    
    render_pass_encoder0030.popDebugGroup();
    device10.pushErrorScope("out-of-memory");
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer100.destroy()
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer008,
        0
    )
    {
        await buffer109.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer109.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer109.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
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
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout102,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    query101.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0020.end();
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
        occlusionQuerySet: query002
    });
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.setPipeline(compute_pipeline002);
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder0021.setPipeline(render_pipeline003);
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query101.destroy()
    buffer101.destroy()
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0020.drawIndexedIndirect(buffer000, 0);
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1022.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder0031.setPipeline(render_pipeline003);
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer1010,
        0
    )
    render_pass_encoder1021.setVertexBuffer(0, buffer109);
    render_bundle_encoder002.setPipeline(render_pipeline002);
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group003);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const array3 = new Float32Array([0.75, 0.0, 0.75, 0.0, -0.75, 0.5, 0.25, -1.0, 0.0, 0.5, 0.0, 0.5, 0.75, 0.0, -0.25, 0.75, 1.0, -0.5, 1.0, 0.5, -0.5, 0.75, 0.75, 0.75, -0.75, -0.5, -0.75, -0.5, -1.0, -0.75, -0.75, 0.5, 0.5, 0.25, -0.75, 0.5, 1.0, -1.0, 0.5, -0.5, 0.75, 0.25, 0.25, -0.25, 0.0, -1.0, -0.5, 0.5, 0.5, -1.0, -0.25, -0.75, 0.25, 0.25, -1.0, 1.0, 0.75, 0.0, 0.0, -0.25, -0.5, 0.5, 0.0, -0.5, 1.0, -0.25, 1.0, -1.0, 0.75, 0.0, -0.75, 0.0, 0.25, -0.5, 0.5, 0.0, -0.5, 1.0, 0.25, -0.5, -1.0, 0.25, -1.0, -1.0, -0.75, 0.25, 1.0, 0.5, 0.75, 0.0, 1.0, 0.5, -1.0, 0.75, -0.25, 0.5, -0.75, 0.25, 0.75, -0.75, ]);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0031.setStencilReference(1);
    
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.popDebugGroup();
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.setStencilReference(1);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    
    
    
    
    
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer007.destroy()
    const render_pass_encoder0032 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0032",
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
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group105);
    
    
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    buffer107.destroy()
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout104,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout102,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("internal");
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder000.draw(3);
    render_pass_encoder1022.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    render_pass_encoder0030.setPipeline(render_pipeline002);
    device00.queue.submit([command_buffer001, ]);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder0032.setPipeline(render_pipeline001);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1021.draw(3);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1015, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder1022.setVertexBuffer(0, buffer1015);
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group004);
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder1021.end();
    compute_pass_encoder1010.end();
    render_pass_encoder1022.draw(3);
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group005);
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0021.setVertexBuffer(0, buffer007);
    render_pass_encoder0030.setVertexBuffer(0, buffer0013);
    render_pass_encoder1022.end();
    render_pass_encoder1022.drawIndirect(buffer1015, 0);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.draw(3);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1030.end();
    render_pass_encoder0030.end();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0021.end();
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
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
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group006);
    render_pass_encoder0031.setVertexBuffer(0, buffer0015);
    render_pass_encoder1022.end();
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1021.end();
    render_pass_encoder0031.drawIndirect(buffer002, 0);
    const command_buffer002 = command_encoder002.finish();
    command_encoder103.popDebugGroup()
    compute_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer002, 0);
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1021.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder1022.drawIndirect(buffer1012, 0);
    render_pass_encoder0021.popDebugGroup();
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder0030.draw(3);
    device00.queue.submit([command_buffer000, ]);
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group106);
    render_pass_encoder0020.popDebugGroup();
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group107);
    render_pass_encoder1020.setVertexBuffer(0, buffer1016);
    render_pass_encoder1030.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1022.drawIndirect(buffer102, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1021.drawIndirect(buffer107, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder0030.draw(3);
    compute_pass_encoder1010.end();
    render_pass_encoder1022.drawIndirect(buffer1015, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1022.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1020.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder1022.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder0031.drawIndirect(buffer003, 0);
    render_pass_encoder0030.drawIndirect(buffer006, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder1021.drawIndirect(buffer1015, 0);
    render_pass_encoder0031.end();
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder0021.drawIndirect(buffer0013, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1022.end();
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0032.setBindGroup(0, bind_group007);
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    render_pass_encoder0031.drawIndirect(buffer002, 0);
    render_pass_encoder0032.setVertexBuffer(0, buffer0023);
    render_pass_encoder0032.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder1030.draw(3);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder0032.drawIndirect(buffer0012, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0032.drawIndirect(buffer002, 0);
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0031.drawIndirect(buffer002, 0);
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer006, 0);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder1022.drawIndirect(buffer1015, 0);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1020.setIndexBuffer(buffer1013, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder1022.end();
    render_pass_encoder0032.drawIndirect(buffer006, 0);
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
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
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group008);
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder1022.drawIndirect(buffer103, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0031.setIndexBuffer(buffer0017, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0021.end();
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder0031.drawIndirect(buffer0021, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    device10.queue.submit([]);
    compute_pass_encoder0010.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer107, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    render_pass_encoder1022.drawIndirect(buffer104, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder1030.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder0032.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0021.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1021.draw(3);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1010, "uint16");
    device00.queue.submit([]);
    compute_pass_encoder1010.end();
    render_pass_encoder1020.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer006, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0021.draw(3);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1020.draw(3);
    compute_pass_encoder0010.end();
    render_pass_encoder0021.drawIndirect(buffer0011, 0);
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1014, "uint16");
    compute_pass_encoder0010.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1030.end();
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0031.drawIndirect(buffer003, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder1020.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer003, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1022.drawIndirect(buffer1012, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0017, "uint16");
    compute_pass_encoder1010.end();
    render_pass_encoder0030.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1015, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder1022.end();
    render_pass_encoder0030.drawIndirect(buffer006, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder1030.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0031.drawIndirect(buffer006, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder1010.end();
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
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
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

    compute_pass_encoder0010.setBindGroup(0, bind_group009);
    render_pass_encoder1021.end();
    render_pass_encoder0020.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0021.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0032.drawIndirect(buffer006, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0031.end();
    render_pass_encoder0030.drawIndirect(buffer0027, 0);
    render_pass_encoder1020.drawIndirect(buffer1012, 0);
    render_pass_encoder1022.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer003, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1020.end();
    render_pass_encoder1020.drawIndirect(buffer1014, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer003, 0);
    device10.queue.submit([]);
    render_pass_encoder0032.end();
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
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group108);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.draw(3);
    compute_pass_encoder0010.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0030.draw(3);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder1020.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1022.end();
    render_pass_encoder1021.end();
    render_pass_encoder0031.drawIndirect(buffer003, 0);
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    render_pass_encoder0031.end();
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
    render_pass_encoder0031.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1016, 0);
    device00.queue.submit([command_buffer001, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1023, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1023, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1013, "uint16");
    compute_pass_encoder0010.end();
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1025,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group109);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder0020.drawIndirect(buffer003, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder0021.drawIndirect(buffer003, 0);
    device00.queue.submit([]);
    compute_pass_encoder1010.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0028, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0028, 0);
    render_pass_encoder0020.popDebugGroup();
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1010);
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder0020.popDebugGroup();
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
    render_pass_encoder0031.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder1021.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1028, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1028, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer003, 0);
    render_pass_encoder0021.drawIndirect(buffer0014, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0032.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder1022.end();
    render_pass_encoder1020.end();
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
    render_pass_encoder1020.drawIndirect(buffer109, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder1030.drawIndirect(buffer1029, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder0032.drawIndirect(buffer0029, 0);
    render_pass_encoder1030.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1030.draw(3);
    compute_pass_encoder0010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1030, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1030, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0031.drawIndirect(buffer0010, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder1020.popDebugGroup();
    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1032,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1011);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1021.drawIndexed(3);
    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1034,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1012);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0032.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder1030.drawIndirect(buffer1023, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1028, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0020.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0020.draw(3);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1035, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1035, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1021.drawIndirect(buffer1015, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder0032.drawIndirect(buffer009, 0);
    render_pass_encoder0032.setIndexBuffer(buffer006, "uint16");
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0030.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
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
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0010);
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    render_pass_encoder0030.end();
    render_pass_encoder1020.end();
    device00.queue.submit([]);
    render_pass_encoder0032.setIndexBuffer(buffer0031, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1020.end();
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0032.drawIndirect(buffer0028, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1020.drawIndirect(buffer1030, 0);
    render_pass_encoder1020.drawIndirect(buffer1023, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0031.drawIndirect(buffer002, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1030.drawIndirect(buffer105, 0);
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0010.end();
    render_pass_encoder0021.end();
    render_pass_encoder1030.drawIndirect(buffer1022, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder1020.drawIndirect(buffer1022, 0);
    render_pass_encoder0031.drawIndirect(buffer006, 0);
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer003, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0021.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1030.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder0021.drawIndirect(buffer0017, 0);
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.end();
    render_pass_encoder1021.drawIndirect(buffer104, 0);
    render_pass_encoder0031.drawIndirect(buffer0020, 0);
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder0020.drawIndirect(buffer000, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1022.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder0032.setIndexBuffer(buffer005, "uint16");
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0021.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0031.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndirect(buffer0012, 0);
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
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1013);
    render_pass_encoder1022.draw(3);
    render_pass_encoder1030.end();
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder1022.drawIndirect(buffer1029, 0);
    render_pass_encoder1021.drawIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0032.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0031.drawIndirect(buffer002, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1030, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.drawIndirect(buffer1028, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder1021.drawIndirect(buffer1022, 0);
    render_pass_encoder0021.end();
    render_pass_encoder1022.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer003, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1023, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0031.drawIndirect(buffer0015, 0);
    render_pass_encoder0030.drawIndirect(buffer0010, 0);
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0030.end();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder1022.setIndexBuffer(buffer1012, "uint16");
    device10.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1022.drawIndirect(buffer106, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0032.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1031, 0);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer002, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1022.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1030, "uint16");
    device10.queue.submit([command_buffer103, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0032.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder1022.drawIndirect(buffer1021, 0);
    render_pass_encoder0021.drawIndirect(buffer002, 0);
}