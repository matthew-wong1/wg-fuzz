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
        powerPreference: undefined
    });
    
    const array0 = new Float32Array([0.0, 1.0, 0.0, -0.25, 0.5, 0.25, 0.5, 0.0, 0.75, 0.5, 0.25, 1.0, 0.75, 0.0, -0.25, 0.5, -0.5, 0.0, -1.0, -0.25, 0.5, 0.25, -1.0, 0.25, 1.0, -0.25, 0.5, -1.0, -0.5, 0.0, -0.75, -0.25, 0.0, 1.0, 0.0, -0.25, 0.75, 0.25, 0.0, -1.0, 0.0, 0.0, 0.75, -0.5, 1.0, -1.0, 1.0, 0.75, -0.75, -0.5, 0.0, -1.0, 0.5, 0.25, 0.25, 1.0, -0.25, -0.75, 0.0, 1.0, 0.0, 1.0, -0.75, -0.5, 1.0, -0.25, -1.0, 0.25, -0.75, -0.75, 0.25, 1.0, -1.0, -1.0, 0.5, 0.5, 1.0, 1.0, 0.0, 1.0, 0.0, -0.5, 0.75, -0.75, 0.5, 1.0, 1.0, -1.0, -0.75, 0.75, 1.0, 0.25, 0.5, -0.75, -0.25, -1.0, 0.75, -1.0, -1.0, -1.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
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
    const array1 = new Float32Array([-0.5, 1.0, -0.25, -0.75, 0.75, -0.75, 0.5, 0.5, 0.0, -1.0, 0.75, -0.25, 1.0, 0.0, -1.0, 0.0, 0.25, 0.25, -1.0, 0.0, -1.0, -1.0, 0.0, -0.5, 0.25, -0.5, 0.0, -0.5, 0.0, -0.75, -0.5, -0.25, 0.0, -0.75, 0.0, 0.5, 0.75, 0.75, -1.0, 0.0, 0.25, 0.25, 0.0, -1.0, -1.0, 0.25, 0.75, 0.0, 0.75, -0.25, 1.0, -0.25, 0.5, -1.0, -0.25, -0.25, 0.75, 1.0, -1.0, 0.25, 0.75, 0.75, 0.75, 1.0, -0.25, -1.0, 0.5, 0.5, 0.5, -1.0, 0.75, 0.25, -0.25, -0.5, -0.75, 0.75, 1.0, 0.5, 0.0, 0.5, 0.0, 0.0, 0.75, 0.5, -0.5, 0.0, 0.5, 0.0, 0.75, -0.25, -1.0, -0.5, -0.75, 0.25, -0.5, -0.5, -0.5, 0.0, 0.75, 0.25, ]);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    command_encoder000.clearBuffer(buffer001);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    device00.queue.submit([]);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    buffer000.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    buffer001.destroy()
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
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
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.queue.submit([]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    device10.destroy();
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    query101.destroy()
    device00.pushErrorScope("internal");
    render_bundle_encoder000.setPipeline(render_pipeline000);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.insertDebugMarker("marker")
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    render_pass_encoder0010.insertDebugMarker("marker");
    
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    buffer002.destroy()
    
    render_pass_encoder0010.executeBundles([])
    texture002.destroy();
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    
    
    
    
    render_pass_encoder0010.executeBundles([])
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array2 = new Float32Array([0.75, -0.25, -0.75, -0.5, 0.75, 0.25, -0.75, 1.0, -0.5, 0.0, 0.0, 0.5, -1.0, -0.5, 1.0, 1.0, -0.25, -0.25, -1.0, 1.0, 0.0, -1.0, 0.25, -0.25, 0.5, 1.0, -0.75, -0.5, 0.25, -0.75, -0.25, -0.75, 0.25, -0.75, -1.0, -1.0, 1.0, 1.0, -0.25, -0.75, -0.25, -1.0, -0.5, -0.75, -0.75, 0.75, 0.25, -0.5, 1.0, 0.0, 0.25, -0.5, -0.75, 0.0, 0.75, -0.5, -1.0, 0.0, -0.5, 1.0, 0.25, 0.0, -0.5, 0.75, -0.75, 0.25, -1.0, 0.75, 0.5, 1.0, 1.0, -0.25, 0.5, 0.75, 0.25, 0.5, -0.75, -1.0, -1.0, 1.0, -1.0, 0.5, 0.75, 0.25, -0.75, -0.5, -0.25, -0.5, 0.75, 0.0, -1.0, 0.5, 0.0, -0.5, -0.25, -1.0, 0.0, -0.5, 0.0, -0.5, ]);
    
    render_pass_encoder0010.insertDebugMarker("marker");
    
    
    
    buffer006.destroy()
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    texture003.destroy();
    
    buffer003.destroy()
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
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.setVertexBuffer(0, buffer006);
    render_bundle_encoder000.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0010.popDebugGroup();
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
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
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
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
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder000.draw(3);
    render_bundle_encoder000.finish();
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    
    render_pass_encoder0010.setPipeline(render_pipeline001);
    texture001.destroy();
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0010.setStencilReference(1);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
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
    command_encoder001.insertDebugMarker("mymarker");
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_pass_encoder0020.setPipeline(render_pipeline002);
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer001.destroy()
    
    buffer004.destroy()
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    texture000.destroy();
    command_encoder000.clearBuffer(buffer005);
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.executeBundles([render_bundle_encoder000, ])
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0003,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer005.destroy()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0011.setPipeline(compute_pipeline000);
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.executeBundles([render_bundle_encoder000, ])
    const array3 = new Float32Array([-0.25, 0.0, 0.75, -1.0, 0.0, 0.75, 0.0, -1.0, -0.25, 1.0, 0.75, -0.25, 0.25, 0.25, -1.0, -1.0, 0.75, -0.25, 0.5, 0.5, -0.5, 0.75, -0.25, 0.5, -0.25, 0.25, -0.5, 0.0, -0.25, -1.0, 0.0, -1.0, 0.75, -0.25, 0.75, -0.75, -0.75, 0.25, 1.0, 1.0, 0.75, -0.25, 0.5, 1.0, -0.5, 0.75, 1.0, 0.75, 1.0, -1.0, 1.0, 0.75, -1.0, 0.75, -0.5, -1.0, 0.5, -0.5, 0.75, 0.25, 0.0, 0.0, -1.0, 0.0, 0.0, 0.75, 0.75, -1.0, -0.25, 0.5, -0.75, 0.5, 0.5, -0.25, 0.0, 0.5, 1.0, 0.75, -0.75, -1.0, 0.5, 0.25, 0.5, -1.0, -0.25, 0.75, 0.25, 0.75, -0.25, -0.25, -0.25, -0.5, 1.0, -0.25, 0.0, -1.0, -0.25, -0.5, -0.5, 0.25, ]);
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0004,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.setPipeline(render_pipeline003);
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    
    compute_pass_encoder0010.popDebugGroup()
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group001);
    
    
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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

    render_pass_encoder0010.setBindGroup(0, bind_group002);
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group003);
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    command_encoder000.clearBuffer(buffer007);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0011.insertDebugMarker("marker")
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
    
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.pushErrorScope("validation");
    
    render_pass_encoder0020.setStencilReference(1);
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0010, 0, array1, 0, array1.length);
    
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0031.pushDebugGroup("group_marker");
    command_encoder001.copyBufferToBuffer(
        buffer007,
        0,
        buffer005,
        0,
        400
    );
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0031.insertDebugMarker("marker");
    compute_pass_encoder0010.setPipeline(compute_pipeline002);
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    
    command_encoder004.copyBufferToBuffer(
        buffer006,
        0,
        buffer002,
        0,
        400
    );
    render_bundle_encoder001.setPipeline(render_pipeline003);
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0031.setStencilReference(1);
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder004.clearBuffer(buffer0013);
    
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setVertexBuffer(0, buffer006);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder002.setPipeline(render_pipeline005);
    const array4 = new Float32Array([-0.5, 1.0, -1.0, 0.0, 0.75, 0.75, 0.25, -1.0, 0.0, -0.25, 0.25, -0.25, 0.25, -1.0, -1.0, -0.5, 1.0, -1.0, 0.5, -0.75, -0.75, -1.0, -0.75, 0.25, -0.25, 0.25, 0.75, -0.5, -0.25, 0.25, 0.0, 0.0, -0.25, -0.25, -0.5, -0.25, -1.0, -1.0, 0.75, -0.5, 1.0, 0.25, 0.75, -1.0, -0.5, 0.25, 0.25, 1.0, 0.25, -0.25, 1.0, 0.25, -0.75, 0.25, 0.25, 0.0, -0.75, -0.5, 0.0, -0.5, -0.75, -0.25, -0.75, 0.5, 0.75, -0.75, -1.0, 0.75, 0.25, -0.5, 0.5, 0.5, 1.0, 0.0, -0.75, -1.0, 1.0, 0.5, -0.5, -0.5, -0.5, 0.25, -0.5, -1.0, -0.25, 0.5, -1.0, -0.25, -0.75, -0.5, 1.0, 0.5, -0.75, -1.0, 0.0, -0.5, 1.0, -0.5, -0.75, 1.0, ]);
    render_pass_encoder0031.setVertexBuffer(0, buffer008);
    device00.queue.writeBuffer(buffer0013, 0, array3, 0, array3.length);
    render_pass_encoder0010.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0010.drawIndexed(3);
    
    buffer0011.destroy()
    
    buffer007.destroy()
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer0013, 0, array4, 0, array4.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    const command_buffer000 = command_encoder000.finish();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder002.copyTextureToTexture(
        {
            texture: texture001
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
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder005.clearBuffer(buffer0013);
    compute_pass_encoder0011.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer0013, 0, array4, 0, array4.length);
    buffer0012.destroy()
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group004);
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer0013, 0, array1, 0, array1.length);
    render_pass_encoder0031.drawIndirect(buffer000, 0);
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0050.setPipeline(compute_pipeline006);
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group006);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0040.setPipeline(render_pipeline007);
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder0031.setStencilReference(1);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_bundle_encoder001.setVertexBuffer(0, buffer004);
    compute_pass_encoder0011.popDebugGroup()
    
    
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0004,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    buffer0017.destroy()
    device00.queue.writeBuffer(buffer0016, 0, array1, 0, array1.length);
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    command_encoder003.copyBufferToBuffer(
        buffer0013,
        0,
        buffer0016,
        0,
        400
    );
    
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0031.pushDebugGroup("group_marker");
    render_pass_encoder0041.setPipeline(render_pipeline007);
    buffer0016.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    buffer008.destroy()
    render_pass_encoder0010.end();
    device00.queue.writeBuffer(buffer0010, 0, array0, 0, array0.length);
    
    render_pass_encoder0041.insertDebugMarker("marker");
    command_encoder005.insertDebugMarker("mymarker");
    
    compute_pass_encoder0050.popDebugGroup()
    
    buffer0014.destroy()
    render_bundle_encoder001.drawIndirect(buffer003, 0);
    render_pass_encoder0031.insertDebugMarker("marker");
    render_pass_encoder0020.popDebugGroup();
    device00.queue.writeBuffer(buffer0015, 0, array0, 0, array0.length);
    command_encoder003.copyBufferToBuffer(
        buffer0015,
        0,
        buffer0016,
        0,
        400
    );
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0020.insertDebugMarker("marker");
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder002.clearBuffer(buffer0013);
    device00.queue.writeBuffer(buffer0013, 0, array3, 0, array3.length);
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
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline006.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group007);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout002,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0050.setPipeline(render_pipeline000);
    buffer0013.destroy()
    buffer0020.destroy()
    
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
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_pass_encoder0041.setStencilReference(1);
    
    buffer009.destroy()
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.setStencilReference(1);
    
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group008);
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
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
    command_encoder005.insertDebugMarker("mymarker");
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setVertexBuffer(0, buffer008);
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    buffer0021.destroy()
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    buffer0018.destroy()
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder001.clearBuffer(buffer003);
    compute_pass_encoder0010.popDebugGroup()
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer0024
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setVertexBuffer(0, buffer005);
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group009);
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder004.clearBuffer(buffer0016);
    device00.queue.writeBuffer(buffer0010, 0, array3, 0, array3.length);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder0031.setStencilReference(1);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder100.popDebugGroup()
    
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout003,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder0020.popDebugGroup();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    query100.destroy()
    render_pass_encoder0041.pushDebugGroup("group_marker");
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0050.insertDebugMarker("marker")
    buffer0022.destroy()
    
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
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group0010);
    command_encoder003.copyBufferToBuffer(
        buffer0014,
        0,
        buffer0018,
        0,
        400
    );
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout002,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0024, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer0015, 0, array2, 0, array2.length);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    compute_pass_encoder0011.insertDebugMarker("marker")
    
    buffer0010.destroy()
    
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group0011);
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
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
    buffer0024.destroy()
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setIndexBuffer(buffer0020, "uint16");
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    buffer0029.destroy()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder0050.drawIndexedIndirect(buffer003, 0);
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    device30.queue.submit([]);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0031.end();
    
    render_bundle_encoder001.finish();
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder003.copyBufferToTexture(
        {
            buffer: buffer0028
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query301.destroy()
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group0012);
    device00.queue.submit([command_buffer000, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.setVertexBuffer(0, buffer0024);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer003, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0033, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0033, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer0016, "uint16");
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
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group0013);
    render_pass_encoder0010.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0010.end();
    compute_pass_encoder0000.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer0024, "uint16");
    compute_pass_encoder0050.end();
    render_pass_encoder0011.drawIndirect(buffer0016, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0020.end();
    render_pass_encoder0041.setVertexBuffer(0, buffer0018);
    render_pass_encoder0041.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.setIndexBuffer(buffer003, "uint16");
    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
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
                    buffer: buffer0036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0037,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0014);
    render_pass_encoder0010.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0041.drawIndirect(buffer008, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0033, 0);
    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
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
                    buffer: buffer0038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0039,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0015);
    render_pass_encoder0010.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0040.draw(3);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0010.setIndexBuffer(buffer0014, "uint16");
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0010.drawIndirect(buffer0025, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0041.end();
    render_pass_encoder0050.drawIndirect(buffer001, 0);
    compute_pass_encoder0011.end();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0040.drawIndexedIndirect(buffer0033, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder0011.end();
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0040.popDebugGroup();
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0016);
    const command_buffer005 = command_encoder005.finish();
    compute_pass_encoder0000.end();
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0017);
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0041.end();
    device00.queue.submit([command_buffer001, command_buffer004, command_buffer005, ]);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0011, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0044, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0044, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0013, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0045, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0045, 0);
    render_pass_encoder0020.drawIndirect(buffer009, 0);
    device10.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer0013, 0);
    device30.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0022, 0);
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
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline006.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0018);
    render_pass_encoder0040.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0050.end();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0041.end();
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
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline006.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0019);
    render_pass_encoder0020.popDebugGroup();
    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0051,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0020);
    render_pass_encoder0031.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0050.drawIndirect(buffer003, 0);
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0052, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0052, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0053, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0053, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0031.drawIndirect(buffer0025, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0052, 0);
    device00.queue.submit([command_buffer001, command_buffer003, command_buffer005, ]);
    render_pass_encoder0011.drawIndirect(buffer005, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0033, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0031.end();
    device20.queue.submit([]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0053, 0);
    device30.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder0050.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0030.drawIndirect(buffer0033, 0);
    render_pass_encoder0050.popDebugGroup();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0010.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0011.drawIndirect(buffer0050, 0);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer0052, 0);
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder0011.drawIndirect(buffer003, 0);
    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0055,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0021);
    render_pass_encoder0031.drawIndexedIndirect(buffer0054, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0056, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0056, 0);
    device00.queue.submit([command_buffer003, command_buffer004, command_buffer005, ]);
    render_pass_encoder0020.popDebugGroup();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0057, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0057, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndirect(buffer0045, 0);
    compute_pass_encoder0000.end();
    device00.queue.submit([]);
    device00.queue.submit([]);
    render_pass_encoder0020.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0044, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer0033, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0040.end();
    device00.queue.submit([]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0058, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0058, 0);
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer0045, 0);
    render_pass_encoder0030.drawIndirect(buffer0045, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0011.drawIndirect(buffer0053, 0);
    render_pass_encoder0011.drawIndirect(buffer0037, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0040.drawIndirect(buffer0058, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0052, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer003, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0059, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0059, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0040.end();
    compute_pass_encoder0050.end();
    render_pass_encoder0031.end();
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0025, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0012, 0);
    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0061,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0022);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0033, 0);
    device00.queue.submit([command_buffer001, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0062, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0062, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0030.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0031.drawIndirect(buffer0053, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0031.drawIndirect(buffer0033, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0031.draw(3);
    compute_pass_encoder0011.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0011.popDebugGroup();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0063, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0063, 0);
    compute_pass_encoder0010.end();
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
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0023);
    render_pass_encoder0011.drawIndirect(buffer005, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer003, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder0050.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.drawIndexed(3);
}