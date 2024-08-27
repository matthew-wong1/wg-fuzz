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
    const array0 = new Float32Array([0.25, 0.0, 1.0, -0.25, -1.0, 0.5, 1.0, 1.0, -0.5, 0.0, -0.75, 0.0, 0.25, 0.75, -0.75, 0.0, 0.5, 0.0, 0.5, -0.75, 1.0, -1.0, -1.0, -0.25, -0.25, -0.25, 0.75, 0.5, -0.5, -0.75, -1.0, 0.75, 1.0, 0.25, -0.5, -1.0, -0.5, 0.25, -0.25, -1.0, 0.0, 0.0, -0.5, 1.0, 1.0, 0.25, -0.5, -1.0, 0.75, 1.0, -0.5, -0.5, 0.25, -0.25, 0.25, 1.0, 1.0, -1.0, -0.5, 0.5, -0.25, -0.5, 0.75, 1.0, 1.0, -1.0, 0.25, -0.75, -0.5, 0.0, -0.75, 0.0, 0.25, 1.0, -0.25, -1.0, -1.0, -0.5, 0.75, 0.25, 0.75, 0.5, 1.0, 1.0, 0.25, 0.0, 0.0, 0.0, -0.25, 0.0, -1.0, -0.5, 0.75, 0.75, 0.75, 0.5, 1.0, -1.0, 1.0, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
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
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer101.destroy()
    
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
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device10.destroy();
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder001.popDebugGroup();
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    buffer001.destroy()
    
    device00.pushErrorScope("out-of-memory");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
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
    
    
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("out-of-memory");
    buffer000.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    device00.queue.submit([]);
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const array1 = new Float32Array([0.0, -0.75, 0.75, 0.25, -0.25, -1.0, 0.5, 0.5, -0.5, -0.75, -0.25, 0.0, 0.75, 0.5, -1.0, 0.75, -0.5, 0.25, -0.75, -1.0, 0.5, -1.0, -1.0, -0.75, -0.75, 0.5, -0.5, 1.0, 0.75, 0.5, -0.5, 0.25, -0.5, 0.75, -0.25, 0.5, 0.0, 1.0, 1.0, 1.0, -0.25, 1.0, 1.0, 0.0, -1.0, -0.25, 0.5, 0.5, 1.0, 0.0, -1.0, 0.0, 0.5, 0.5, 0.5, -0.25, 0.25, 1.0, -0.25, 0.5, 0.5, 0.25, -0.25, 0.5, 0.25, 0.25, -0.25, -0.5, 0.75, 0.25, 1.0, -0.75, -0.75, -0.5, -1.0, -0.75, -0.5, -0.75, 0.5, 0.75, 0.0, -1.0, -0.25, -1.0, 0.5, 0.25, 0.5, 0.25, 0.5, 0.25, -0.25, -0.75, -0.25, 0.75, 0.75, 0.5, -0.75, 0.5, 0.5, 0.5, ]);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder000.popDebugGroup();
    const array2 = new Float32Array([-0.75, 0.5, 0.5, -0.5, 0.75, -0.75, -0.5, 0.0, 0.5, -0.75, 0.75, 0.75, -0.25, 0.25, -0.25, 0.0, -0.5, -1.0, 0.75, -1.0, 1.0, 1.0, 0.75, 1.0, 0.0, -1.0, 1.0, -0.25, 0.5, -1.0, 0.5, -0.5, 0.25, 0.0, 0.0, -1.0, 0.25, 0.25, -0.5, -0.5, 0.75, 0.0, -0.75, 0.75, -1.0, 0.0, -0.75, -0.5, -1.0, -1.0, 1.0, 0.5, -0.25, -1.0, -0.25, -0.75, 0.75, 0.75, -0.5, 0.75, 1.0, -0.75, -0.75, -0.25, -0.5, -0.25, 0.5, 0.5, 1.0, 1.0, 0.0, 0.75, 1.0, -0.75, -1.0, -0.25, 0.75, -0.75, 0.0, 0.0, -0.5, -1.0, 0.75, -0.25, 0.25, 0.25, 0.75, 1.0, -0.25, 0.0, -0.5, -0.25, 0.5, 0.25, -0.5, 0.0, -1.0, 0.25, 1.0, 0.75, ]);
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const array3 = new Float32Array([-0.75, 0.5, 0.25, -0.75, -0.25, -1.0, 0.5, -0.5, 1.0, -1.0, -1.0, 0.5, 1.0, -0.25, 0.5, 0.25, 0.5, 0.75, 0.0, 0.0, -1.0, 0.25, 0.0, 1.0, 1.0, 0.75, 0.5, -0.75, 0.5, 0.0, -0.75, -1.0, -1.0, -1.0, 1.0, 0.0, -1.0, -0.5, 0.5, 0.0, 0.25, -0.25, -1.0, 0.25, 0.0, 0.75, 0.75, -0.5, -0.25, -0.25, -0.5, 1.0, -0.75, 1.0, 0.75, 0.0, 0.5, 0.5, 1.0, 1.0, 1.0, 1.0, -0.25, -0.5, 1.0, 0.5, 0.0, -0.75, -0.5, 0.5, 0.75, 0.5, 0.25, -0.5, 0.25, 0.0, -1.0, 0.0, 1.0, -0.75, 0.25, 0.75, 1.0, -0.25, 0.25, -0.25, 0.0, -0.25, 1.0, 1.0, -0.25, 0.0, 0.5, -0.75, 0.25, -0.75, 1.0, 0.75, 0.0, 0.5, ]);
    command_encoder002.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.popDebugGroup();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0000.popDebugGroup()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
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
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
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
    texture000.destroy();
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    render_bundle_encoder000.setVertexBuffer(0, buffer001);
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    texture001.destroy();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.draw(3);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture002.destroy();
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer102.destroy()
    
    
    device00.pushErrorScope("out-of-memory");
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    compute_pass_encoder0010.popDebugGroup()
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
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.setStencilReference(1);
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    device00.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device30.destroy();
    
    buffer003.destroy()
    
    device20.pushErrorScope("out-of-memory");
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder000.finish();
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer200.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    render_bundle_encoder200.setPipeline(render_pipeline200);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    texture200.destroy();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
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
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    
    texture200.destroy();
    
    render_bundle_encoder200.popDebugGroup();
    device40.destroy();
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    device20.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const array4 = new Float32Array([-0.5, -0.75, 0.5, -0.75, -1.0, 0.0, -0.5, 0.75, 0.5, 0.25, -0.5, 0.5, -0.25, 0.0, 1.0, -1.0, -0.5, 0.5, 0.5, -0.5, -0.5, 0.75, -1.0, 1.0, 0.25, 0.0, 0.0, 1.0, 0.0, 0.75, -0.75, 1.0, 0.75, 0.0, -0.5, -0.5, 1.0, 0.0, 0.25, 0.75, -1.0, 1.0, 0.25, -0.25, -0.5, -0.75, -0.75, 0.25, -0.25, 1.0, 1.0, 0.5, -0.75, 0.75, -0.5, 0.0, 0.25, 1.0, 0.75, -0.75, -0.75, -1.0, -1.0, 0.0, 0.25, -1.0, -0.5, -0.25, 1.0, 0.5, 0.0, 0.0, -1.0, -0.25, -0.75, 0.0, -0.25, 0.0, 0.0, 0.75, 0.25, 0.0, 0.0, 0.5, -0.75, 0.5, 0.5, -0.25, 0.25, 0.75, 1.0, 1.0, -1.0, 0.25, 0.25, -0.25, 1.0, 0.25, -0.5, -1.0, ]);
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    
    const array5 = new Float32Array([-0.75, 0.0, 0.75, -1.0, 0.25, 1.0, 1.0, -0.75, 0.0, -0.5, -1.0, 1.0, -0.75, 0.75, -0.25, 0.75, -0.25, 0.25, -0.75, 0.5, -0.25, -0.75, 1.0, 1.0, -0.75, 0.75, -0.75, 1.0, -0.5, -0.25, 0.75, -0.25, 0.75, 0.5, -0.5, 1.0, 0.5, 0.25, 0.25, 1.0, -1.0, -0.75, 0.0, 0.0, -0.75, -1.0, 0.75, -0.5, 0.25, 0.25, -0.75, -0.25, -0.75, 0.25, 0.25, 0.25, 0.5, 0.5, 0.25, 0.25, 0.0, 0.25, -0.75, 0.5, -0.75, 1.0, 1.0, 1.0, -0.25, 0.0, 1.0, 0.5, -0.25, -0.25, -0.25, -1.0, -0.25, -0.5, 0.0, 0.25, -0.75, 1.0, 1.0, 0.0, -0.5, 0.75, -0.5, -0.75, 0.5, 1.0, 1.0, 0.25, 1.0, 0.5, 1.0, -0.25, -0.25, -1.0, -0.5, 0.75, ]);
    const array6 = new Float32Array([0.5, -0.75, 1.0, -0.5, 0.75, -0.75, -0.75, -0.5, 1.0, -0.5, -0.5, -0.75, 0.5, -0.75, -1.0, 0.0, 1.0, 0.5, 0.0, 0.5, 0.75, -0.5, 1.0, -0.5, 0.75, -0.5, 1.0, -0.75, -0.25, 0.75, 0.0, -0.5, 0.75, 0.0, 0.25, 0.75, -0.75, -0.25, 0.25, -0.5, -0.5, 0.5, 0.25, 1.0, -1.0, -0.25, -1.0, 1.0, 0.25, 0.0, 0.0, 0.5, 1.0, -0.5, 0.0, -0.75, 1.0, -0.5, -1.0, 0.25, 0.5, 0.0, -0.75, 0.5, 0.5, -0.75, 1.0, 0.0, 0.0, 0.0, -0.5, -0.5, -0.25, 0.25, 1.0, -0.5, -0.25, -0.75, 0.0, -1.0, 0.5, -0.5, 1.0, 1.0, 0.25, 1.0, 0.75, 1.0, 0.0, 0.75, 1.0, 0.75, -0.75, 0.75, -0.25, -0.5, 0.5, 0.75, -1.0, 0.5, ]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    command_encoder100.insertDebugMarker("mymarker");
    
    render_bundle_encoder100.popDebugGroup();
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    
    
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    
    
    
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const command_buffer501 = command_encoder501.finish();
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    command_encoder100.clearBuffer(buffer100);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder102.clearBuffer(buffer100);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    command_encoder500.pushDebugGroup("mygroupmarker")
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    command_encoder300.insertDebugMarker("mymarker");
    
    buffer203.destroy()
    const array7 = new Float32Array([0.5, 1.0, -1.0, 0.75, 0.25, 0.5, 0.0, -0.25, -1.0, 0.5, -0.75, 1.0, -1.0, 1.0, -0.25, -0.25, -1.0, 0.75, 1.0, -0.75, -0.5, -1.0, -0.25, 0.25, -0.25, 0.25, 1.0, 0.0, 0.5, 0.0, 0.75, 0.0, 0.5, 0.25, 1.0, 0.75, 0.5, -1.0, -0.25, -0.75, -0.75, 0.25, 0.5, -0.25, -1.0, 0.25, 0.5, 0.5, -0.5, 0.5, -0.5, -0.75, 1.0, 0.25, -0.5, -0.25, 0.5, -0.25, 0.25, -0.75, 0.25, 0.75, 1.0, -0.5, 0.5, 1.0, -0.25, 0.75, 0.75, 0.25, -0.75, -0.75, 0.0, -0.25, -0.5, 0.75, 0.5, 1.0, 0.75, 1.0, 0.5, 1.0, -0.75, -1.0, -0.5, 0.25, -0.5, 0.25, 0.25, -0.25, 1.0, -0.5, 0.5, 0.0, 1.0, 0.25, -0.5, 1.0, 0.75, 0.25, ]);
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
    
    command_encoder500.insertDebugMarker("mymarker");
    
    
    buffer501.destroy()
    command_encoder500.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    const array8 = new Float32Array([-1.0, 0.75, 0.75, 0.75, 0.75, -1.0, -1.0, -0.75, -1.0, -0.75, -0.25, 0.5, 0.25, 0.75, -1.0, -1.0, -0.75, 0.5, -0.75, 0.5, 0.0, -0.5, -0.25, -0.5, -1.0, -0.5, 0.0, -1.0, 0.5, 0.25, -0.5, -0.5, 1.0, -0.5, 0.75, -0.75, -0.75, 0.75, -0.75, 0.0, 0.0, 0.75, -0.75, -1.0, 0.25, 0.5, 0.0, -1.0, 1.0, -1.0, 0.25, -1.0, 1.0, 1.0, 0.25, -1.0, 0.0, 0.5, -0.5, 0.25, 0.25, 0.5, 0.5, -0.75, 1.0, -0.5, -0.5, 0.25, 0.0, 0.0, 1.0, -0.5, -0.5, -0.75, 0.75, 0.75, -0.25, -0.25, 1.0, 0.5, 1.0, 0.25, 0.0, 1.0, 0.5, 0.0, 0.0, 0.0, -0.5, -1.0, 0.75, -0.75, -0.75, -0.25, 0.5, -0.75, -0.5, 0.75, 0.0, 1.0, ]);
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
    device50.destroy();
    
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array9 = new Float32Array([1.0, 0.25, -0.5, 0.25, 0.5, 0.5, -0.75, 0.25, 0.75, 0.75, 1.0, -1.0, 0.0, 0.5, -0.5, 1.0, 1.0, 0.0, -1.0, -0.5, 0.5, -0.25, 0.0, 1.0, -0.5, -1.0, -0.75, 0.25, -0.75, -0.25, -0.5, 0.0, -0.25, -0.25, -1.0, 0.25, 0.5, 0.5, -0.25, -0.75, 0.25, 1.0, -0.5, -0.75, 0.25, -1.0, -0.5, -0.5, 0.5, 1.0, -0.75, 0.0, -1.0, 0.75, -0.5, 0.75, -0.25, 0.25, 0.5, 0.75, 0.0, -0.25, -0.5, -0.25, -1.0, 1.0, 1.0, -0.25, -1.0, -1.0, -0.5, -0.25, -1.0, 0.0, -0.75, 1.0, 0.25, -0.75, 0.0, -0.5, -1.0, 0.0, 0.75, 1.0, -0.75, 0.5, -0.25, 0.0, -0.25, 0.25, -0.75, -0.75, -0.25, 0.25, -1.0, 1.0, 1.0, 0.75, -0.5, -0.25, ]);
    render_pass_encoder0010.setPipeline(render_pipeline000);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    buffer601.destroy()
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    
    device60.destroy();
    render_bundle_encoder000.setIndexBuffer(buffer000, "uint16");
    command_encoder102.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    device70.queue.writeTexture({ texture: texture700 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    render_pass_encoder0010.insertDebugMarker("marker");
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    device80.destroy();
    
    
    query700.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    device70.pushErrorScope("validation");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const array10 = new Float32Array([0.0, 0.5, 0.5, 0.75, 0.25, 0.75, 0.25, -0.75, -1.0, 0.0, -0.5, 0.25, -0.25, 0.25, -0.5, 0.0, 0.5, 0.75, 1.0, 0.0, 0.25, -1.0, -0.5, 1.0, -1.0, -0.25, 0.5, 0.25, -0.75, -1.0, 1.0, 0.25, -0.75, 1.0, -1.0, 0.75, 0.5, -1.0, 0.75, 0.25, 1.0, -0.75, -1.0, -1.0, -0.75, 0.25, -0.75, -0.5, 0.0, 0.0, 1.0, -0.25, 0.25, -0.5, 0.75, 0.0, 1.0, -0.5, -0.5, 0.0, -0.75, -0.25, -0.25, -1.0, -0.25, 0.75, 0.75, -0.75, 0.25, -1.0, 0.0, 0.0, -1.0, 0.5, -0.75, 0.25, 0.75, -0.25, -0.25, 0.5, -0.75, -1.0, 0.0, -1.0, 0.0, 0.25, 0.25, -0.75, 1.0, -1.0, -0.75, -0.75, 0.0, 0.25, 0.75, 0.5, 1.0, 0.0, 0.5, -0.75, ]);
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pipeline900 = device90.createComputePipeline({
        label: "compute_pipeline900",
        layout: pipeline_layout900,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder900.pushDebugGroup("group_marker");
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    
    render_bundle_encoder900.popDebugGroup();
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    query900.destroy()
    buffer600.destroy()
    buffer401.destroy()
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    render_bundle_encoder900.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    render_bundle_encoder701.insertDebugMarker("marker");
    render_bundle_encoder700.popDebugGroup();
    
    buffer004.destroy()
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
    texture900.destroy();
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder7010 = command_encoder701.beginRenderPass({
        label: "render_pass_encoder7010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder900.pushDebugGroup("group_marker");
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    
    render_bundle_encoder700.setPipeline(render_pipeline701);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    render_pass_encoder7010.setPipeline(render_pipeline701);
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query701.destroy()
    render_pass_encoder7010.setViewport(0, 0, texture700.width / 2, texture700.height / 2, 0, 1);
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query702.destroy()
    
    
    const render_pass_encoder7000 = command_encoder700.beginRenderPass({
        label: "render_pass_encoder7000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7001,
            },
        ],
        occlusionQuerySet: query702
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const command_buffer700 = command_encoder700.finish();
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    query701.destroy()
    device70.queue.writeTexture({ texture: texture700 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder900.popDebugGroup();
    render_pass_encoder7010.insertDebugMarker("marker");
    render_bundle_encoder900.insertDebugMarker("marker");
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    render_pass_encoder7000.setPipeline(render_pipeline701);
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_pass_encoder7010.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.destroy();
    device20.destroy();
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    
    
    const command_buffer702 = command_encoder702.finish();
    compute_pass_encoder7000.popDebugGroup()
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    render_pass_encoder7000.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const array11 = new Float32Array([0.5, 0.0, -1.0, -0.25, 0.5, 0.75, 0.75, -1.0, -1.0, 1.0, 1.0, -0.5, -0.75, -0.5, 0.5, 1.0, 1.0, 0.5, 0.75, -1.0, 0.0, -1.0, 0.5, -0.75, -0.5, -1.0, 0.0, -0.75, 0.5, -0.75, -0.25, 0.75, -0.75, 0.5, -1.0, 0.75, -1.0, 1.0, 0.75, 1.0, 0.75, 0.25, -0.5, -0.5, 0.0, -0.25, -1.0, 1.0, -0.25, 0.0, 0.25, -0.25, 0.5, -1.0, -0.5, -1.0, -0.25, -1.0, 0.75, -0.25, 0.0, -0.75, 1.0, -1.0, 0.25, 0.25, 0.0, 0.75, 1.0, -0.5, 0.5, 0.0, -0.75, 0.5, 1.0, 1.0, 0.0, 0.5, 0.75, 0.5, 0.25, 1.0, -0.75, -1.0, 1.0, 0.25, -0.75, 1.0, -1.0, -0.75, 0.75, -0.75, -0.5, -1.0, -1.0, 0.0, -0.5, -0.75, -0.5, 0.25, ]);
    
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer700,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer701,
                },
            },
        ],
    });

    render_pass_encoder7010.setBindGroup(0, bind_group700);
    render_bundle_encoder901.pushDebugGroup("group_marker");
    device70.queue.writeBuffer(buffer701, 0, array6, 0, array6.length);
    
    command_encoder703.insertDebugMarker("mymarker");
    
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    render_pass_encoder7000.popDebugGroup();
    command_encoder703.insertDebugMarker("mymarker");
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: render_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer702,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer703,
                },
            },
        ],
    });

    render_pass_encoder7000.setBindGroup(0, bind_group701);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32sint",
        dimension: "2d"
    });
    
    render_pass_encoder7000.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    device70.queue.writeBuffer(buffer701, 0, array9, 0, array9.length);
    render_pass_encoder7010.popDebugGroup();
    device70.queue.submit([command_buffer700, command_buffer702, ]);
    const command_buffer703 = command_encoder703.finish();
    render_pass_encoder7000.endOcclusionQuery()
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder7010.setVertexBuffer(0, buffer702);
    render_pass_encoder7010.draw(3);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder7010.setIndexBuffer(buffer703, "uint16");
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
    render_pass_encoder7000.endOcclusionQuery()
    device70.queue.submit([command_buffer703, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder7000.setVertexBuffer(0, buffer700);
    device30.queue.submit([]);
    render_pass_encoder7010.drawIndexedIndirect(buffer703, 0);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder7010.end();
    render_pass_encoder7000.setIndexBuffer(buffer703, "uint16");
    render_pass_encoder0020.setPipeline(render_pipeline001);
    device70.queue.submit([command_buffer702, ]);
    render_pass_encoder7000.draw(3);
    render_pass_encoder7000.end();
    const command_buffer701 = command_encoder701.finish();
    device90.queue.submit([]);
}