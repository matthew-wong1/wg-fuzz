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
    const array0 = new Float32Array([-0.5, -1.0, -0.25, 0.0, 1.0, 0.25, 0.0, 0.0, -0.25, -0.75, -0.25, 0.75, 0.5, -0.25, 1.0, -0.25, -0.25, -0.25, -0.75, 0.0, 0.25, -1.0, -0.75, 0.0, 0.0, -0.25, 1.0, -0.25, 0.5, 0.5, -1.0, 0.75, 0.5, 0.75, -0.25, -1.0, 0.5, -1.0, -1.0, 0.5, -0.25, 0.0, -0.25, 0.0, 0.5, -0.5, 1.0, 0.0, -1.0, 1.0, 0.0, -1.0, 0.5, -0.5, 0.5, 0.0, -0.75, 1.0, 0.5, 0.25, 0.0, 0.75, 0.75, -0.75, 0.75, 0.0, -1.0, -0.25, 0.75, 0.75, -0.75, -0.25, -0.75, -0.25, 0.25, -0.75, 0.75, -0.25, 0.5, 0.25, -0.75, 0.5, -0.75, 0.75, 1.0, 1.0, 1.0, 1.0, 0.75, -1.0, 1.0, 1.0, -0.25, 0.0, -0.75, -0.75, 1.0, 0.0, -0.25, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    command_encoder000.insertDebugMarker("mymarker");
    device00.queue.submit([]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.pushErrorScope("out-of-memory");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32float",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const command_buffer003 = command_encoder003.finish();
    
    command_encoder000.copyTextureToTexture(
        {
            texture: texture000
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.pushErrorScope("validation");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device30.pushErrorScope("out-of-memory");
    
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device10.destroy();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer300.destroy()
    device30.destroy();
    device20.pushErrorScope("out-of-memory");
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
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder002.insertDebugMarker("mymarker");
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    
    device40.pushErrorScope("internal");
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
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
    texture001.destroy();
    command_encoder200.insertDebugMarker("mymarker");
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
    device40.destroy();
    command_encoder002.insertDebugMarker("mymarker");
    
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.insertDebugMarker("mymarker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const array1 = new Float32Array([0.75, -1.0, 0.5, -0.25, -1.0, -0.25, 1.0, 1.0, -0.75, 0.25, 0.5, -0.5, -0.75, 0.25, -0.75, -0.25, 0.5, -0.25, 0.0, 0.0, -0.75, 1.0, 0.75, -0.75, 1.0, 0.0, -1.0, -1.0, 0.5, -1.0, 0.75, -0.75, -0.5, -0.25, 0.25, -0.75, 0.5, 0.75, -0.75, -0.25, 0.75, 1.0, -0.5, -0.5, -0.75, -1.0, 0.5, 1.0, 0.25, 0.5, 0.5, -0.5, -0.25, 0.25, 1.0, 0.25, -0.25, -1.0, -0.5, 0.5, -0.25, -1.0, -1.0, 0.5, -0.25, 0.75, -0.75, -0.25, -0.25, 1.0, 0.75, 0.0, 0.0, -0.75, 0.75, -0.5, 0.75, 0.0, 0.5, 1.0, -0.75, -0.5, 0.0, -0.25, -1.0, -0.5, -0.25, 0.5, -0.25, 0.25, 1.0, 0.0, -0.75, 1.0, -0.25, -0.75, 1.0, -0.5, -0.25, 0.0, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    texture002.destroy();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder001.popDebugGroup();
    query000.destroy()
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
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
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0000.pushDebugGroup("group_marker");
    query200.destroy()
    command_encoder200.insertDebugMarker("mymarker");
    render_pass_encoder0001.insertDebugMarker("marker");
    device00.queue.submit([command_buffer003, ]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder200.popDebugGroup();
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
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
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    query200.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0001.setPipeline(render_pipeline002);
    query000.destroy()
    render_pass_encoder0000.setPipeline(render_pipeline000);
    
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder0020.setPipeline(render_pipeline001);
    
    
    query200.destroy()
    query000.destroy()
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0001.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0000.setStencilReference(1);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
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
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
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
        occlusionQuerySet: undefined
    });
    
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
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
    
    render_pass_encoder0001.insertDebugMarker("marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0050.executeBundles([])
    render_pass_encoder0000.setStencilReference(1);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.popDebugGroup();
    const array2 = new Float32Array([-1.0, 0.0, 1.0, -1.0, 0.75, -0.25, -0.75, 0.75, 0.0, 1.0, -1.0, -1.0, -0.75, -1.0, 0.5, -1.0, 0.75, 0.5, 0.75, 0.0, -0.75, -0.25, -1.0, -0.5, -0.25, 0.5, -0.5, 0.25, 0.25, 1.0, -0.25, 0.75, -1.0, 0.75, -0.5, -0.75, 0.25, 0.5, -0.25, -0.75, 0.25, -1.0, -0.25, 0.75, 0.75, 0.5, 0.5, -0.25, -0.5, 1.0, 0.0, -0.75, -0.5, 0.25, -0.25, 1.0, 0.5, 0.5, 1.0, 1.0, -0.25, -0.25, 1.0, -1.0, 0.0, -0.75, -1.0, 0.75, 0.5, -0.5, -0.5, -0.5, 0.75, -0.25, 0.75, -0.75, -0.25, 0.75, -0.5, 0.75, -0.25, -0.5, 1.0, 0.75, -0.25, 0.0, 0.5, 0.25, 0.0, -1.0, -0.25, 1.0, -1.0, -1.0, -1.0, -0.75, 0.25, -0.5, -0.25, -0.75, ]);
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_pass_encoder0020.setStencilReference(1);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
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
    
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0040.setPipeline(render_pipeline004);
    render_pass_encoder0050.setPipeline(render_pipeline005);
    
    
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    
    render_pass_encoder0040.insertDebugMarker("marker");
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0051.executeBundles([])
    render_pass_encoder0001.pushDebugGroup("group_marker");
    buffer003.destroy()
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0001.insertDebugMarker("marker");
    render_pass_encoder0051.setPipeline(render_pipeline005);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    
    render_pass_encoder0000.setStencilReference(1);
    buffer201.destroy()
    render_pass_encoder0050.pushDebugGroup("group_marker");
    render_pass_encoder0000.popDebugGroup();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    
    
    
    render_pass_encoder0040.insertDebugMarker("marker");
    const array3 = new Float32Array([-0.5, -0.5, 0.5, -1.0, 0.5, -0.5, 0.5, 0.0, 0.5, 0.5, 0.75, 0.0, -1.0, 0.0, 0.5, 1.0, 1.0, 0.25, -1.0, -1.0, -0.75, 0.0, 1.0, 1.0, 1.0, -0.25, 0.0, -0.25, -1.0, 0.5, -0.75, 0.25, -0.5, -0.25, 0.5, -0.5, 1.0, 0.25, 0.5, 0.0, 1.0, -0.25, 0.5, -1.0, -0.25, -0.75, 0.75, -0.75, -1.0, -0.25, -0.5, 0.5, 1.0, 0.5, -0.25, 0.75, 0.0, 1.0, 0.25, -0.25, -1.0, 0.5, -0.25, 0.75, 1.0, 0.5, 0.0, 1.0, -0.25, -0.25, 1.0, 0.0, 0.0, -0.5, 0.0, -0.75, 1.0, 0.0, 1.0, -0.25, -0.75, -0.75, 0.5, 0.5, -0.5, -0.75, 0.75, 1.0, 1.0, -0.75, -1.0, 0.5, 0.0, -0.5, -0.25, 0.75, 0.25, -0.75, 0.0, -0.5, ]);
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    query000.destroy()
    query200.destroy()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setStencilReference(1);
    
    render_pass_encoder0051.insertDebugMarker("marker");
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0001.insertDebugMarker("marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    buffer000.destroy()
    query200.destroy()
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0001.setBindGroup(0, bind_group001);
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder201.popDebugGroup();
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    texture000.destroy();
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0051.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0001.insertDebugMarker("marker");
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_pass_encoder0001.beginOcclusionQuery(0)
    texture600.destroy();
    render_pass_encoder0000.setStencilReference(1);
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query002
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    query003.destroy()
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.setPipeline(render_pipeline007);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    render_pass_encoder0040.pushDebugGroup("group_marker");
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16float",
        dimension: "2d"
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0001.endOcclusionQuery()
    const command_buffer004 = command_encoder004.finish();
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    command_encoder202.insertDebugMarker("mymarker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder000.clearBuffer(buffer004);
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    
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
    render_bundle_encoder001.setVertexBuffer(0, buffer000);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_pass_encoder0001.insertDebugMarker("marker");
    render_bundle_encoder202.popDebugGroup();
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query001
    });
    command_encoder200.insertDebugMarker("mymarker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
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

    render_pass_encoder0000.setBindGroup(0, bind_group003);
    render_pass_encoder0020.setStencilReference(1);
    render_bundle_encoder000.setVertexBuffer(0, buffer007);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
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
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.draw(3);
    render_pass_encoder0021.executeBundles([render_bundle_encoder000, ])
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    
    
    
    
    device00.pushErrorScope("out-of-memory");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0011.setPipeline(render_pipeline005);
    device60.pushErrorScope("validation");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    compute_pass_encoder2020.setPipeline(compute_pipeline201);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0050.setStencilReference(1);
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_pass_encoder0001.setVertexBuffer(0, buffer006);
    render_pass_encoder0040.popDebugGroup();
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    buffer200.destroy()
    buffer004.destroy()
    render_pass_encoder0001.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    
    
    render_bundle_encoder001.draw(3);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const array4 = new Float32Array([0.0, 0.5, -0.25, -0.5, -1.0, -0.25, -0.5, 0.75, -0.5, 0.5, 0.25, 0.5, 1.0, -0.75, 0.5, 0.75, 0.0, -0.25, 0.75, 1.0, -1.0, 0.0, 0.25, 0.0, 0.0, 1.0, 0.5, 1.0, -1.0, 1.0, -0.75, -0.25, 0.75, 0.25, 1.0, -0.25, -0.5, 0.5, 1.0, -1.0, 0.0, 0.5, 0.0, -0.75, -0.75, 0.25, -0.75, -1.0, -0.75, -0.5, 0.0, 0.5, -0.25, 0.5, 1.0, -0.25, 0.25, 0.75, 0.5, 0.5, 0.5, 0.75, 0.75, 0.25, 0.5, 1.0, -0.5, -0.75, 0.5, 0.5, -1.0, 0.75, -0.5, 0.0, -1.0, -1.0, -0.25, 0.0, -0.25, -0.25, 1.0, -0.75, -0.5, 0.75, 0.75, 0.25, 1.0, 0.0, 0.25, 0.0, 0.25, 0.25, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.0, -0.75, ]);
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group200);
    render_pass_encoder0051.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0040.setStencilReference(1);
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0011.insertDebugMarker("marker");
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    command_encoder400.copyBufferToBuffer(
        buffer402,
        0,
        buffer401,
        0,
        400
    );
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0001.drawIndirect(buffer005, 0);
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    
    buffer002.destroy()
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    render_bundle_encoder002.setPipeline(render_pipeline002);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setStencilReference(1);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const command_buffer000 = command_encoder000.finish();
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
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group004);
    
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    render_pass_encoder0010.insertDebugMarker("marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0011.pushDebugGroup("group_marker");
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.insertDebugMarker("marker");
    buffer202.destroy()
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    buffer009.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query201
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0011.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder0010.popDebugGroup();
    buffer601.destroy()
    render_pass_encoder0011.insertDebugMarker("marker");
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.popDebugGroup()
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    query002.destroy()
    
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_pass_encoder0050.insertDebugMarker("marker");
    compute_pass_encoder2010.popDebugGroup()
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    query201.destroy()
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query201
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    query201.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0050.setStencilReference(1);
    render_bundle_encoder600.insertDebugMarker("marker");
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
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

    render_pass_encoder0020.setBindGroup(0, bind_group005);
    {
        await buffer203.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer203.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer203.unmap();
        console.log(new Float32Array(data));
    }
    query200.destroy()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0050.setStencilReference(1);
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    const array5 = new Float32Array([-0.25, 1.0, 0.5, -0.25, 0.25, 0.75, 0.5, 0.25, 1.0, 1.0, -0.75, -1.0, -1.0, 1.0, -0.5, 0.75, -0.5, 1.0, -0.75, 1.0, -0.5, -0.5, 0.75, 0.5, -0.25, -0.75, 0.5, 0.5, -0.5, -0.25, 0.75, -0.25, 0.0, -0.5, 0.25, -0.25, 0.75, -0.25, -0.75, 0.75, 0.25, -0.5, 0.5, 0.75, -0.5, -1.0, -0.25, 0.75, 0.0, 1.0, 1.0, -0.25, 0.25, -0.5, -0.75, 0.0, -0.75, -1.0, -0.75, 0.75, -0.25, 0.75, -0.75, 0.5, 0.5, -0.75, -1.0, 0.5, -1.0, 0.5, 0.75, -0.5, 0.5, -0.5, -1.0, 0.5, 1.0, -0.75, -0.5, 0.25, 1.0, -0.75, 0.0, -0.25, 0.0, 1.0, 0.75, 0.0, 1.0, 1.0, 0.5, 0.0, -1.0, 0.75, 0.25, -0.25, 1.0, -0.5, -0.5, 0.5, ]);
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    query002.destroy()
    render_pass_encoder0011.setVertexBuffer(0, buffer003);
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    const compute_pass_encoder2011 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2011" });
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
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0011.insertDebugMarker("marker");
    texture004.destroy();
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder0020.setStencilReference(1);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0001.insertDebugMarker("marker");
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2010.setPipeline(compute_pipeline204);
    render_pass_encoder0020.setVertexBuffer(0, buffer009);
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    render_pass_encoder2030.setPipeline(render_pipeline200);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder0011.setIndexBuffer(buffer004, "uint16");
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0051.setBindGroup(0, bind_group006);
    render_pass_encoder0011.setIndexBuffer(buffer004, "uint16");
    compute_pass_encoder2011.setPipeline(compute_pipeline200);
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
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
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
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

    compute_pass_encoder0010.setBindGroup(0, bind_group007);
    compute_pass_encoder2020.end();
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group201);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2011.setBindGroup(0, bind_group202);
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer208, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer208, 0);
    render_pass_encoder2030.endOcclusionQuery()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer002, 0);
    compute_pass_encoder2011.dispatchWorkgroups(100);
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group008);
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
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group009);
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
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group0010);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2011, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2011, 0);
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder0010.setVertexBuffer(0, buffer0010);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0040.setVertexBuffer(0, buffer006);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.drawIndirect(buffer007, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0040.drawIndirect(buffer0020, 0);
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    render_pass_encoder0001.drawIndirect(buffer0010, 0);
    render_pass_encoder0000.setVertexBuffer(0, buffer001);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder0020.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder2030.endOcclusionQuery()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0000.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0051.setVertexBuffer(0, buffer000);
    render_pass_encoder0000.draw(3);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2012, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2012, 0);
    compute_pass_encoder2011.end();
    render_pass_encoder0040.end();
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
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2030.setBindGroup(0, bind_group204);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.end();
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
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group0011);
    render_pass_encoder0050.setVertexBuffer(0, buffer0021);
    render_pass_encoder0050.drawIndirect(buffer0021, 0);
    render_pass_encoder2031.setPipeline(render_pipeline201);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0051.drawIndirect(buffer006, 0);
    render_pass_encoder0010.drawIndirect(buffer0015, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder0040.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder2030.setVertexBuffer(0, buffer200);
    compute_pass_encoder0010.end();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2030.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer206, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2015, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2015, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0011.drawIndirect(buffer0013, 0);
    render_pass_encoder0010.popDebugGroup();
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder0051.end();
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder2010.end();
    render_pass_encoder0001.drawIndirect(buffer007, 0);
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder0051.end();
    render_pass_encoder0040.drawIndirect(buffer0012, 0);
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    render_pass_encoder2031.setBindGroup(0, bind_group205);
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder2031.setVertexBuffer(0, buffer2012);
    render_pass_encoder2031.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2030.drawIndirect(buffer209, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2031.drawIndirect(buffer201, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0040.drawIndexed(3);
    command_encoder200.popDebugGroup()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.setIndexBuffer(buffer003, "uint16");
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder2000.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0017, "uint16");
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2011.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder0021.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder2031.end();
    device00.queue.submit([]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder2030.end();
    render_pass_encoder0001.drawIndirect(buffer003, 0);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0050.drawIndirect(buffer005, 0);
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder0050.setIndexBuffer(buffer0021, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group206);
    const command_buffer200 = command_encoder200.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2030.drawIndirect(buffer208, 0);
    render_pass_encoder0000.setIndexBuffer(buffer002, "uint16");
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
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0012);
    render_pass_encoder0011.end();
    render_pass_encoder0051.drawIndirect(buffer0016, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2018, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2030.setIndexBuffer(buffer2015, "uint16");
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
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0013);
    render_pass_encoder0051.setIndexBuffer(buffer0029, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0010.end();
    command_encoder001.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0021, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0001.drawIndirect(buffer007, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2012, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0018, 0);
    compute_pass_encoder2020.popDebugGroup()
    command_encoder002.popDebugGroup()
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder2031.drawIndirect(buffer2012, 0);
    device20.queue.submit([command_buffer203, ]);
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
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0014);
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    render_pass_encoder0001.drawIndirect(buffer0031, 0);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0021.drawIndirect(buffer0031, 0);
    render_pass_encoder2031.setIndexBuffer(buffer208, "uint16");
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2020, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2020, 0);
    render_pass_encoder2031.drawIndirect(buffer2011, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0050.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2031.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0030, "uint16");
    compute_pass_encoder2010.dispatchWorkgroups(100);
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
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0015);
    render_pass_encoder0021.draw(3);
    compute_pass_encoder2010.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2031.drawIndirect(buffer2015, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.draw(3);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0000.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0050.end();
    render_pass_encoder0000.drawIndexed(3);
    compute_pass_encoder0010.end();
    device00.queue.submit([command_buffer004, ]);
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2022,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group207);
    render_pass_encoder0011.drawIndirect(buffer0022, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2023, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2023, 0);
    render_pass_encoder0020.draw(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0000.drawIndirect(buffer0013, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder0051.drawIndexedIndirect(buffer0027, 0);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0028, 0);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer208, 0);
    compute_pass_encoder2011.dispatchWorkgroups(100);
    render_pass_encoder0010.setIndexBuffer(buffer008, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0021.drawIndirect(buffer0021, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0021.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0051.drawIndirect(buffer009, 0);
    render_pass_encoder0050.draw(3);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2024, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2024, 0);
    render_pass_encoder0010.drawIndexed(3);
    device20.queue.submit([]);
    render_pass_encoder2031.drawIndirect(buffer2012, 0);
    render_pass_encoder2030.popDebugGroup();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0016, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    device60.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0021, "uint16");
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder0001.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer005, 0);
    compute_pass_encoder0010.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0034, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0034, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer000, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2023, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0040.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0021, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2030.draw(3);
    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2026,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group208);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer0030, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0021.drawIndirect(buffer0019, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer2016, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0011.drawIndirect(buffer0013, 0);
    render_pass_encoder0021.drawIndirect(buffer0024, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0000.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0010.end();
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    render_pass_encoder0051.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder0021.drawIndirect(buffer0034, 0);
    render_pass_encoder2031.drawIndirect(buffer2015, 0);
    render_pass_encoder0021.drawIndirect(buffer0030, 0);
    render_pass_encoder2031.drawIndirect(buffer2011, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder2030.drawIndirect(buffer2023, 0);
    render_pass_encoder2030.drawIndirect(buffer201, 0);
    render_pass_encoder0050.drawIndirect(buffer0027, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0034, 0);
    render_pass_encoder2031.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2027, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2027, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0001.drawIndirect(buffer0027, 0);
    device00.queue.submit([]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2015, 0);
    compute_pass_encoder2011.end();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer0016, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2028, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2028, 0);
    render_pass_encoder0050.drawIndirect(buffer0017, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2031.popDebugGroup();
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
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0016);
    render_pass_encoder0011.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2031.endOcclusionQuery()
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    render_pass_encoder0040.drawIndirect(buffer0012, 0);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2031.draw(3);
    compute_pass_encoder2011.end();
    render_pass_encoder2031.end();
    render_pass_encoder0021.end();
    render_pass_encoder0040.draw(3);
    render_pass_encoder2030.end();
    render_pass_encoder2030.drawIndirect(buffer207, 0);
    render_pass_encoder0050.drawIndirect(buffer003, 0);
    render_pass_encoder2030.drawIndirect(buffer205, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0011.drawIndirect(buffer007, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0034, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2031.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
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
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0017);
    render_pass_encoder0040.drawIndirect(buffer0034, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0034, 0);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0021.setIndexBuffer(buffer0017, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0016, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0034, 0);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2031.drawIndirect(buffer2023, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.drawIndirect(buffer003, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0000.drawIndirect(buffer006, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0020.end();
    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2030,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group209);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2027, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    render_pass_encoder2030.drawIndirect(buffer208, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0033, 0);
    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0040,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0018);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2023, 0);
    render_pass_encoder2030.drawIndirect(buffer2028, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0021.end();
    compute_pass_encoder2011.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    render_pass_encoder0050.end();
    render_pass_encoder2031.drawIndirect(buffer2015, 0);
    render_pass_encoder0000.drawIndirect(buffer007, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0050.drawIndirect(buffer0021, 0);
    render_pass_encoder0040.drawIndirect(buffer004, 0);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder2030.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder0010.end();
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
    render_pass_encoder2031.drawIndirect(buffer2027, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder2031.drawIndirect(buffer2023, 0);
    compute_pass_encoder2011.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    render_pass_encoder0000.drawIndirect(buffer0039, 0);
    render_pass_encoder0010.drawIndirect(buffer008, 0);
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    compute_pass_encoder2011.end();
    render_pass_encoder2031.drawIndirect(buffer2028, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0051.setIndexBuffer(buffer0019, "uint16");
    compute_pass_encoder2011.end();
    device00.queue.submit([command_buffer005, ]);
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2031, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2031, 0);
    render_pass_encoder0000.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer2012, 0);
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2032, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2032, 0);
    render_pass_encoder2030.drawIndirect(buffer2011, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0040.drawIndirect(buffer0013, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0011.drawIndirect(buffer0033, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0034, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0001.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0012, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder0020.end();
    render_pass_encoder0051.end();
    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2034,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2010);
    render_pass_encoder0000.drawIndirect(buffer009, 0);
    render_pass_encoder0011.drawIndirect(buffer0025, 0);
    render_pass_encoder0021.setIndexBuffer(buffer006, "uint16");
    device20.queue.submit([command_buffer201, ]);
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
    render_pass_encoder0051.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2026, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2023, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0010.end();
    compute_pass_encoder2000.end();
    compute_pass_encoder2000.end();
    render_pass_encoder0020.setIndexBuffer(buffer0017, "uint16");
    compute_pass_encoder2010.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0012, 0);
    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2036,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2011);
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0050.drawIndirect(buffer0014, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer2031, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder0040.end();
    render_pass_encoder0011.drawIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0040.end();
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer204, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2030.drawIndirect(buffer2031, 0);
    render_pass_encoder0011.popDebugGroup();
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
    render_pass_encoder0040.drawIndirect(buffer0043, 0);
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0040.draw(3);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2037, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2037, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0021, 0);
    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2039,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2012);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0001.draw(3);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer001, 0);
    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2041,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2013);
    render_pass_encoder2031.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0021.draw(3);
    render_pass_encoder2031.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer0043, 0);
    render_pass_encoder2030.drawIndirect(buffer2024, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder2031.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2030.draw(3);
    device20.queue.submit([]);
    render_pass_encoder0021.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0042, 0);
    render_pass_encoder0010.drawIndirect(buffer0023, 0);
    render_pass_encoder0011.drawIndirect(buffer0041, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder0010.drawIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0000.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0040, 0);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer002, command_buffer005, ]);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder0010.drawIndexed(3);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder2030.draw(3);
    render_pass_encoder0021.drawIndirect(buffer0037, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0011.drawIndirect(buffer0026, 0);
    render_pass_encoder2030.drawIndirect(buffer2032, 0);
    render_pass_encoder0011.end();
    render_pass_encoder2030.end();
    render_pass_encoder2031.drawIndirect(buffer2011, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder2031.drawIndirect(buffer208, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0021.drawIndirect(buffer0043, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0043, 0);
    device20.queue.submit([]);
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0040.setIndexBuffer(buffer0022, "uint16");
    compute_pass_encoder2011.dispatchWorkgroups(100);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2023, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0021.drawIndirect(buffer0034, 0);
    render_pass_encoder0050.draw(3);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2042, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2042, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0020.end();
    compute_pass_encoder2000.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder2030.drawIndirect(buffer2032, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer2023, 0);
    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2044,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2014);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2030.endOcclusionQuery()
    render_pass_encoder2030.popDebugGroup();
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2045, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2045, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder2031.drawIndirect(buffer2045, 0);
    render_pass_encoder0020.end();
    device20.queue.submit([command_buffer200, ]);
    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2047,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2015);
    render_pass_encoder0050.end();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2048, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2048, 0);
    render_pass_encoder2031.drawIndirect(buffer208, 0);
    render_pass_encoder0020.drawIndirect(buffer0034, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0027, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder0011.drawIndirect(buffer0034, 0);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0011, "uint16");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2049, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2049, 0);
    render_pass_encoder0040.drawIndirect(buffer0043, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0021.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0051.drawIndirect(buffer0017, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer008, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0041, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2050, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2050, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0050.drawIndirect(buffer0039, 0);
    render_pass_encoder0020.drawIndirect(buffer0042, 0);
    render_pass_encoder0010.drawIndirect(buffer004, 0);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0051.drawIndirect(buffer0041, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0021.drawIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndirect(buffer0041, 0);
    render_pass_encoder2031.drawIndirect(buffer2023, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0051.drawIndirect(buffer0034, 0);
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2051, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2051, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer001, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2053,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2016);
    render_pass_encoder0050.drawIndirect(buffer0039, 0);
    render_pass_encoder0040.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2031.drawIndirect(buffer2022, 0);
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0042, 0);
    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2055,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2017);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2056, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2056, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0001.drawIndirect(buffer008, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder2030.drawIndirect(buffer2015, 0);
    render_pass_encoder0040.popDebugGroup();
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
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0019);
    render_pass_encoder0000.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2012, 0);
    compute_pass_encoder2010.end();
    device20.queue.submit([command_buffer203, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0042, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0046, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndirect(buffer0044, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder2030.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer0041, 0);
    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2058 = device20.createBuffer({
        label: "buffer2058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2058,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2018);
    render_pass_encoder0001.drawIndirect(buffer0043, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0050.drawIndirect(buffer0010, 0);
    render_pass_encoder0021.drawIndirect(buffer0034, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer0034, 0);
    render_pass_encoder2031.drawIndirect(buffer2042, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0041, 0);
    device20.queue.submit([]);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0034, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0010.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0021.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder0010.drawIndirect(buffer0034, 0);
    render_pass_encoder0020.drawIndirect(buffer0015, 0);
    render_pass_encoder2030.drawIndirect(buffer2020, 0);
    render_pass_encoder0001.drawIndirect(buffer0041, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder2030.drawIndirect(buffer2011, 0);
    render_pass_encoder0001.drawIndirect(buffer0034, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder2030.drawIndirect(buffer2027, 0);
    compute_pass_encoder2011.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0046, 0);
    render_pass_encoder0001.drawIndirect(buffer002, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2051, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0050.drawIndirect(buffer004, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0046, 0);
    render_pass_encoder0001.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2023, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0039, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder2031.endOcclusionQuery()
    render_pass_encoder0011.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0039, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0001.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2051, 0);
    device20.queue.submit([command_buffer201, ]);
    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2060,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2019);
    render_pass_encoder0040.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2028, 0);
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer003, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder2031.drawIndirect(buffer2037, 0);
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0012, 0);
    render_pass_encoder0020.setIndexBuffer(buffer009, "uint16");
    compute_pass_encoder2010.end();
    render_pass_encoder2031.drawIndirect(buffer2051, 0);
    render_pass_encoder2031.drawIndirect(buffer2020, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2061, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2061, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0034, 0);
    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0048,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0020);
    compute_pass_encoder2000.end();
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndirect(buffer0043, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0051.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer006, 0);
    compute_pass_encoder2000.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0001.drawIndirect(buffer0042, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0020.drawIndirect(buffer0042, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2062, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2062, 0);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0040.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0043, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0011.drawIndirect(buffer002, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0044, 0);
    device00.queue.submit([command_buffer001, command_buffer003, command_buffer004, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0038, 0);
    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2064,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2020);
    render_pass_encoder0001.drawIndirect(buffer006, 0);
    render_pass_encoder0001.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0032, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2020.end();
    render_pass_encoder0001.end();
    compute_pass_encoder2011.end();
    render_pass_encoder0020.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0000.drawIndirect(buffer001, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0041, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0011.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder2031.drawIndirect(buffer2048, 0);
    render_pass_encoder0040.drawIndirect(buffer0034, 0);
    render_pass_encoder0051.popDebugGroup();
    device60.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0043, 0);
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0041, 0);
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2065, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2065, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder0021.drawIndirect(buffer0046, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0021, "uint16");
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder2030.drawIndirect(buffer2057, 0);
    render_pass_encoder0021.drawIndirect(buffer0032, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer002, 0);
    render_pass_encoder0010.drawIndirect(buffer0046, 0);
    render_pass_encoder2030.end();
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2020.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0042, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer2028, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder0011.drawIndirect(buffer0046, 0);
    render_pass_encoder0001.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder0010.end();
    render_pass_encoder2030.drawIndirect(buffer208, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0023, "uint16");
    device40.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0014, "uint16");
    const buffer2066 = device20.createBuffer({
        label: "buffer2066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2067 = device20.createBuffer({
        label: "buffer2067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2067,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2021);
    render_pass_encoder0021.drawIndirect(buffer0044, 0);
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2068 = device20.createBuffer({
        label: "buffer2068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2068, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2068, 0);
    device60.queue.submit([]);
    render_pass_encoder0011.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2030.drawIndirect(buffer2028, 0);
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0020.draw(3);
    render_pass_encoder0050.drawIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0000.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0046, 0);
    render_pass_encoder0040.drawIndirect(buffer0034, 0);
    render_pass_encoder0000.drawIndirect(buffer0047, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0043, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2030.drawIndirect(buffer2025, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer0042, 0);
    render_pass_encoder2031.drawIndirect(buffer2020, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0021.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer206, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0049, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0049, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0001.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2056, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0051.drawIndirect(buffer0024, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer009, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0050, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0050, 0);
    render_pass_encoder2031.end();
    render_pass_encoder0011.drawIndirect(buffer0036, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2028, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder2031.drawIndirect(buffer2029, 0);
    render_pass_encoder0021.drawIndirect(buffer0046, 0);
    render_pass_encoder0021.drawIndirect(buffer0034, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2064, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0010.drawIndirect(buffer0041, 0);
    compute_pass_encoder2000.end();
    compute_pass_encoder0010.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0050, 0);
    device00.queue.submit([command_buffer000, ]);
    device20.queue.submit([command_buffer201, command_buffer202, command_buffer203, command_buffer204, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0021.drawIndirect(buffer0022, 0);
    render_pass_encoder0050.drawIndirect(buffer0050, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0025, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0051, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0051, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndirect(buffer0034, 0);
    render_pass_encoder0051.drawIndirect(buffer0043, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0047, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0050.end();
    compute_pass_encoder2000.end();
    render_pass_encoder0050.draw(3);
    device40.queue.submit([]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2051, 0);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0001.drawIndirect(buffer0050, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2031.drawIndirect(buffer2023, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder2031.drawIndirect(buffer2031, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2070,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2022);
    render_pass_encoder0051.drawIndexedIndirect(buffer0034, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0047, 0);
    const buffer2071 = device20.createBuffer({
        label: "buffer2071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2072 = device20.createBuffer({
        label: "buffer2072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2072,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2023);
    render_pass_encoder0000.drawIndexedIndirect(buffer0048, 0);
    device40.queue.submit([]);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    render_pass_encoder2031.drawIndirect(buffer208, 0);
    render_pass_encoder0051.drawIndirect(buffer0043, 0);
    const buffer2073 = device20.createBuffer({
        label: "buffer2073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2074 = device20.createBuffer({
        label: "buffer2074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2074,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2024);
    render_pass_encoder0021.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0040.popDebugGroup();
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2075 = device20.createBuffer({
        label: "buffer2075",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2075, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2075, 0);
    device60.queue.submit([]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder2031.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0050.draw(3);
    device60.queue.submit([]);
    const buffer2076 = device20.createBuffer({
        label: "buffer2076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2077 = device20.createBuffer({
        label: "buffer2077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2077,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2025);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0034, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0011, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2051, 0);
    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0053,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0021);
    render_pass_encoder0000.drawIndirect(buffer0015, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0011.drawIndirect(buffer0041, 0);
    render_pass_encoder2031.drawIndirect(buffer2048, 0);
    device40.queue.submit([]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0042, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0049, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0054, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0054, 0);
    render_pass_encoder0011.drawIndirect(buffer0046, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2034, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2023, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2030.popDebugGroup();
    const buffer2078 = device20.createBuffer({
        label: "buffer2078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2079 = device20.createBuffer({
        label: "buffer2079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2079,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2026);
    const buffer2080 = device20.createBuffer({
        label: "buffer2080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2081 = device20.createBuffer({
        label: "buffer2081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2027 = device20.createBindGroup({
        label: "bind_group2027",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2081,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2027);
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2082 = device20.createBuffer({
        label: "buffer2082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2082, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2082, 0);
    render_pass_encoder2030.drawIndirect(buffer2061, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer208, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0001.drawIndirect(buffer0051, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0010.drawIndirect(buffer0034, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0021.end();
    device60.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0011.drawIndexed(3);
    compute_pass_encoder2011.dispatchWorkgroups(100);
    render_pass_encoder2031.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder2031.endOcclusionQuery()
    render_pass_encoder0021.drawIndirect(buffer0051, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0010.drawIndexed(3);
    const buffer2083 = device20.createBuffer({
        label: "buffer2083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2084 = device20.createBuffer({
        label: "buffer2084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2028 = device20.createBindGroup({
        label: "bind_group2028",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2084,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2028);
    render_pass_encoder0050.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder2031.drawIndirect(buffer2062, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder0050.drawIndirect(buffer0010, 0);
    render_pass_encoder2031.drawIndirect(buffer202, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0011.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2085 = device20.createBuffer({
        label: "buffer2085",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2085, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2085, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2069, 0);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    const buffer2086 = device20.createBuffer({
        label: "buffer2086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2087 = device20.createBuffer({
        label: "buffer2087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2029 = device20.createBindGroup({
        label: "bind_group2029",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2087,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2029);
    render_pass_encoder0051.drawIndirect(buffer0049, 0);
    render_pass_encoder0050.drawIndirect(buffer0046, 0);
    render_pass_encoder0011.end();
    device00.queue.submit([command_buffer002, ]);
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
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0022);
    compute_pass_encoder2000.end();
    render_pass_encoder0001.end();
    render_pass_encoder0040.drawIndirect(buffer0034, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0011.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0054, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2061, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0010.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer2035, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0041, 0);
    const buffer2088 = device20.createBuffer({
        label: "buffer2088",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2089 = device20.createBuffer({
        label: "buffer2089",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2030 = device20.createBindGroup({
        label: "bind_group2030",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2088,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2089,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2030);
    render_pass_encoder2031.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder0051.drawIndirect(buffer0018, 0);
    render_pass_encoder0011.drawIndirect(buffer0034, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0021, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0050.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2090 = device20.createBuffer({
        label: "buffer2090",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2090, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2090, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2065, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0051.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0049, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2091 = device20.createBuffer({
        label: "buffer2091",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2091, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2091, 0);
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0000.drawIndirect(buffer0049, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2015, 0);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0000.drawIndirect(buffer0043, 0);
    render_pass_encoder0040.drawIndirect(buffer0035, 0);
    render_pass_encoder2030.drawIndirect(buffer2010, 0);
    render_pass_encoder0000.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0028, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer0049, 0);
    render_pass_encoder0001.drawIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndirect(buffer0042, 0);
    render_pass_encoder0000.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2050, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    render_pass_encoder0001.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0011.end();
    device00.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer0034, 0);
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2014, "uint16");
    const buffer2092 = device20.createBuffer({
        label: "buffer2092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2093 = device20.createBuffer({
        label: "buffer2093",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2031 = device20.createBindGroup({
        label: "bind_group2031",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2093,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2031);
    render_pass_encoder0020.end();
    render_pass_encoder2031.popDebugGroup();
    const buffer2094 = device20.createBuffer({
        label: "buffer2094",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2095 = device20.createBuffer({
        label: "buffer2095",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2032 = device20.createBindGroup({
        label: "bind_group2032",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2094,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2095,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2032);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder2031.end();
    render_pass_encoder0011.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.end();
    const buffer2096 = device20.createBuffer({
        label: "buffer2096",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2097 = device20.createBuffer({
        label: "buffer2097",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2033 = device20.createBindGroup({
        label: "bind_group2033",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2096,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2097,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2033);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer206, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0048, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0057, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0057, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0000.drawIndirect(buffer0050, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0001.drawIndirect(buffer0028, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0038, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer2024, 0);
    render_pass_encoder2031.drawIndirect(buffer2065, 0);
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2023, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2095, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2049, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder0051.setIndexBuffer(buffer005, "uint16");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0051.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0049, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0048, 0);
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2098 = device20.createBuffer({
        label: "buffer2098",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2098, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2098, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2031.drawIndirect(buffer2020, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder2030.drawIndirect(buffer2075, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder0051.popDebugGroup();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2099 = device20.createBuffer({
        label: "buffer2099",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2099, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2099, 0);
    render_pass_encoder0001.drawIndirect(buffer0041, 0);
    const buffer20100 = device20.createBuffer({
        label: "buffer20100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20101 = device20.createBuffer({
        label: "buffer20101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2034 = device20.createBindGroup({
        label: "bind_group2034",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20101,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2034);
    render_pass_encoder0011.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0041, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0051.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0001.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0051.drawIndirect(buffer0054, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder2030.drawIndirect(buffer2032, 0);
    render_pass_encoder0050.drawIndirect(buffer0049, 0);
    const buffer20102 = device20.createBuffer({
        label: "buffer20102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20103 = device20.createBuffer({
        label: "buffer20103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2035 = device20.createBindGroup({
        label: "bind_group2035",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20103,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2035);
    render_pass_encoder0050.drawIndirect(buffer0051, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0046, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20104 = device20.createBuffer({
        label: "buffer20104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20104, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20104, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2030.drawIndirect(buffer2085, 0);
    render_pass_encoder0011.drawIndirect(buffer0034, 0);
    render_pass_encoder2031.end();
    compute_pass_encoder2011.dispatchWorkgroups(100);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20105 = device20.createBuffer({
        label: "buffer20105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20105, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20105, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0001.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2082, 0);
    render_pass_encoder0000.end();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20106 = device20.createBuffer({
        label: "buffer20106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20106, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20106, 0);
    render_pass_encoder0020.drawIndirect(buffer0046, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0000.drawIndirect(buffer0044, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0051, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer0032, "uint16");
    compute_pass_encoder2020.end();
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2030.drawIndirect(buffer2099, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0010.drawIndirect(buffer0043, 0);
    compute_pass_encoder2011.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer2048, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2062, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0042, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0051.drawIndirect(buffer0039, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer0034, 0);
    render_pass_encoder2030.drawIndirect(buffer2082, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0021.draw(3);
    render_pass_encoder2031.endOcclusionQuery()
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
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0020.drawIndirect(buffer004, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0042, 0);
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2061, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0011, 0);
    render_pass_encoder0011.drawIndirect(buffer0041, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder2031.drawIndirect(buffer2023, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0034, 0);
    compute_pass_encoder2010.end();
    compute_pass_encoder2000.end();
    render_pass_encoder2030.drawIndirect(buffer2091, 0);
    render_pass_encoder0001.drawIndirect(buffer0029, 0);
    render_pass_encoder0050.popDebugGroup();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0049, 0);
    const buffer20107 = device20.createBuffer({
        label: "buffer20107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20108 = device20.createBuffer({
        label: "buffer20108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2036 = device20.createBindGroup({
        label: "bind_group2036",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20108,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2036);
    render_pass_encoder2031.drawIndirect(buffer2065, 0);
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    render_pass_encoder2030.setIndexBuffer(buffer20102, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2011, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.endOcclusionQuery()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0000.drawIndirect(buffer0010, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0021.end();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndirect(buffer2052, 0);
    render_pass_encoder0040.drawIndirect(buffer0049, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer20105, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0051.drawIndirect(buffer0051, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0010.drawIndirect(buffer0041, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder2031.drawIndirect(buffer2011, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0050.drawIndirect(buffer0049, 0);
    render_pass_encoder0040.popDebugGroup();
    const buffer20109 = device20.createBuffer({
        label: "buffer20109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20110 = device20.createBuffer({
        label: "buffer20110",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2037 = device20.createBindGroup({
        label: "bind_group2037",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20110,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2037);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2030.drawIndirect(buffer20106, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder2030.end();
    device00.queue.submit([command_buffer003, ]);
    device20.queue.submit([command_buffer204, ]);
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer20111 = device20.createBuffer({
        label: "buffer20111",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20111, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer20111, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0020, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0020.drawIndirect(buffer0058, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder0000.drawIndirect(buffer0041, 0);
    const buffer20112 = device20.createBuffer({
        label: "buffer20112",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20113 = device20.createBuffer({
        label: "buffer20113",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2038 = device20.createBindGroup({
        label: "bind_group2038",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20112,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20113,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2038);
    render_pass_encoder2030.drawIndirect(buffer2084, 0);
    compute_pass_encoder2010.popDebugGroup()
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
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0023);
    render_pass_encoder0050.drawIndirect(buffer0033, 0);
    render_pass_encoder2031.endOcclusionQuery()
    render_pass_encoder2031.drawIndexedIndirect(buffer2097, 0);
    render_pass_encoder0001.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2091, 0);
    render_pass_encoder0050.drawIndirect(buffer0057, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0054, 0);
    const buffer20114 = device20.createBuffer({
        label: "buffer20114",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20115 = device20.createBuffer({
        label: "buffer20115",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2039 = device20.createBindGroup({
        label: "bind_group2039",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20114,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20115,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2039);
    render_pass_encoder2030.setIndexBuffer(buffer2077, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2014, 0);
    render_pass_encoder2030.drawIndirect(buffer2042, 0);
    render_pass_encoder0001.drawIndirect(buffer0050, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0028, "uint16");
    const buffer20116 = device20.createBuffer({
        label: "buffer20116",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20117 = device20.createBuffer({
        label: "buffer20117",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2040 = device20.createBindGroup({
        label: "bind_group2040",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20116,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20117,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2040);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder0051.end();
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0000.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder2030.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer2011, 0);
    render_pass_encoder0050.drawIndirect(buffer008, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0010.drawIndirect(buffer0058, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer2051, 0);
    render_pass_encoder0021.drawIndirect(buffer0049, 0);
    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0062,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0024);
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    render_pass_encoder2030.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0043, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0040.drawIndirect(buffer0058, 0);
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0037, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder0050.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder2030.drawIndirect(buffer2059, 0);
    render_pass_encoder0011.drawIndirect(buffer0034, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder0051.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2099, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0050.drawIndirect(buffer0047, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer20105, 0);
    render_pass_encoder0001.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0051, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0020.drawIndirect(buffer0057, 0);
    render_pass_encoder2030.drawIndirect(buffer2042, 0);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2031.drawIndirect(buffer2085, 0);
    render_pass_encoder0010.drawIndirect(buffer007, 0);
    compute_pass_encoder2011.popDebugGroup()
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0000.drawIndirect(buffer0049, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2025, "uint16");
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0034, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder0011.drawIndirect(buffer0033, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0050.drawIndirect(buffer009, 0);
    render_pass_encoder0000.drawIndirect(buffer0034, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20118 = device20.createBuffer({
        label: "buffer20118",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20118, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20118, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2050, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder0001.drawIndirect(buffer0043, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0046, 0);
    compute_pass_encoder2011.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndirect(buffer0041, 0);
    render_pass_encoder0020.drawIndirect(buffer0058, 0);
    render_pass_encoder0000.drawIndirect(buffer0042, 0);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0021.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    const buffer20119 = device20.createBuffer({
        label: "buffer20119",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20120 = device20.createBuffer({
        label: "buffer20120",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2041 = device20.createBindGroup({
        label: "bind_group2041",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20119,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20120,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2041);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2091, 0);
    render_pass_encoder0001.drawIndirect(buffer0043, 0);
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0051.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0050.popDebugGroup();
    const buffer20121 = device20.createBuffer({
        label: "buffer20121",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20122 = device20.createBuffer({
        label: "buffer20122",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2042 = device20.createBindGroup({
        label: "bind_group2042",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20121,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20122,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2042);
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20123 = device20.createBuffer({
        label: "buffer20123",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20123, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20123, 0);
    render_pass_encoder0001.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0059, "uint16");
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20124 = device20.createBuffer({
        label: "buffer20124",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20124, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20124, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0019, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2031.setIndexBuffer(buffer20122, "uint16");
    const buffer20125 = device20.createBuffer({
        label: "buffer20125",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20126 = device20.createBuffer({
        label: "buffer20126",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2043 = device20.createBindGroup({
        label: "bind_group2043",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20125,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20126,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2043);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder2030.drawIndirect(buffer2085, 0);
    const buffer20127 = device20.createBuffer({
        label: "buffer20127",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20128 = device20.createBuffer({
        label: "buffer20128",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2044 = device20.createBindGroup({
        label: "bind_group2044",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20127,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20128,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2044);
    render_pass_encoder0001.drawIndirect(buffer0042, 0);
    render_pass_encoder2030.end();
    render_pass_encoder0001.draw(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0049, 0);
    render_pass_encoder0010.drawIndirect(buffer0046, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0058, 0);
    render_pass_encoder2031.drawIndirect(buffer2025, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer20103, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0049, 0);
    render_pass_encoder0021.end();
    const buffer20129 = device20.createBuffer({
        label: "buffer20129",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20130 = device20.createBuffer({
        label: "buffer20130",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2045 = device20.createBindGroup({
        label: "bind_group2045",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20129,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20130,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2045);
    device00.queue.submit([]);
    render_pass_encoder2031.end();
    render_pass_encoder0011.drawIndirect(buffer0040, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0064,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0025);
    render_pass_encoder0021.drawIndirect(buffer0044, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.drawIndirect(buffer0018, 0);
    render_pass_encoder0020.drawIndirect(buffer0042, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0034, 0);
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0058, 0);
    device60.queue.submit([]);
    render_pass_encoder2030.drawIndexedIndirect(buffer20105, 0);
    render_pass_encoder0011.drawIndirect(buffer0042, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0021.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0051, 0);
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0051.drawIndirect(buffer0051, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2055, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0021.drawIndirect(buffer0058, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2031.setIndexBuffer(buffer2098, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0052, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer20125, 0);
    render_pass_encoder2031.drawIndirect(buffer20100, 0);
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2031, 0);
    const buffer20131 = device20.createBuffer({
        label: "buffer20131",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20132 = device20.createBuffer({
        label: "buffer20132",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2046 = device20.createBindGroup({
        label: "bind_group2046",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20131,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20132,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2046);
    render_pass_encoder0001.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0021.drawIndirect(buffer0049, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder2030.drawIndirect(buffer2048, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2030.drawIndirect(buffer2048, 0);
    render_pass_encoder0040.end();
    const buffer20133 = device20.createBuffer({
        label: "buffer20133",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20134 = device20.createBuffer({
        label: "buffer20134",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2047 = device20.createBindGroup({
        label: "bind_group2047",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20133,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20134,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2047);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0010.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer20129, 0);
    render_pass_encoder0021.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0001.drawIndirect(buffer0034, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0040.drawIndirect(buffer0054, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer20105, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2044, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0011.drawIndirect(buffer0041, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0011.drawIndirect(buffer0059, 0);
    render_pass_encoder2031.drawIndirect(buffer20101, 0);
    render_pass_encoder0040.drawIndirect(buffer0061, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer009, 0);
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0051.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0001.drawIndirect(buffer006, 0);
    device60.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0049, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0049, 0);
    device00.queue.submit([]);
    render_pass_encoder0001.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2015, 0);
    render_pass_encoder0050.drawIndirect(buffer0060, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2031.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0049, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer20124, "uint16");
    device00.queue.submit([command_buffer001, command_buffer004, command_buffer005, ]);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2020.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0050.drawIndirect(buffer005, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0021.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2065, 0);
    render_pass_encoder0051.draw(3);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2090, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2030.end();
    const buffer20135 = device20.createBuffer({
        label: "buffer20135",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20136 = device20.createBuffer({
        label: "buffer20136",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2048 = device20.createBindGroup({
        label: "bind_group2048",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20135,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20136,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2048);
    render_pass_encoder0010.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0046, 0);
    render_pass_encoder0010.popDebugGroup();
    device60.queue.submit([]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0057, 0);
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer20137 = device20.createBuffer({
        label: "buffer20137",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20137, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer20137, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0057, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder0000.drawIndirect(buffer0034, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0042, 0);
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer20138 = device20.createBuffer({
        label: "buffer20138",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20138, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer20138, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const buffer20139 = device20.createBuffer({
        label: "buffer20139",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20140 = device20.createBuffer({
        label: "buffer20140",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2049 = device20.createBindGroup({
        label: "bind_group2049",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20139,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20140,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2049);
    render_pass_encoder2031.drawIndirect(buffer20123, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndirect(buffer008, 0);
    render_pass_encoder2030.end();
    render_pass_encoder0051.drawIndirect(buffer0012, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2049, 0);
    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0066,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0026);
    render_pass_encoder0051.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer20125, 0);
    render_pass_encoder0021.drawIndirect(buffer0056, 0);
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2068, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2031.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2042, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0021.drawIndirect(buffer0057, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0042, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder2031.draw(3);
    render_pass_encoder0011.drawIndirect(buffer0049, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2065, 0);
    device10.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder2031.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder0050.drawIndirect(buffer000, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0046, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0067, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0067, 0);
    const buffer20141 = device20.createBuffer({
        label: "buffer20141",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20142 = device20.createBuffer({
        label: "buffer20142",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2050 = device20.createBindGroup({
        label: "bind_group2050",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20141,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20142,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2050);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0051, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0011.drawIndirect(buffer0067, 0);
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    render_pass_encoder0001.drawIndirect(buffer0041, 0);
    device20.queue.submit([]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20143 = device20.createBuffer({
        label: "buffer20143",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20143, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20143, 0);
    device60.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0049, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndexedIndirect(buffer20136, 0);
    render_pass_encoder0050.drawIndirect(buffer0021, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0056, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0061, 0);
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder2031.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0054, 0);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0050, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0068, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0068, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder2031.drawIndirect(buffer20104, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0046, 0);
    device00.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2051, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0020.drawIndirect(buffer0057, 0);
    render_pass_encoder0010.drawIndirect(buffer0042, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder2030.drawIndirect(buffer2042, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder0051.popDebugGroup();
    const buffer20144 = device20.createBuffer({
        label: "buffer20144",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20145 = device20.createBuffer({
        label: "buffer20145",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2051 = device20.createBindGroup({
        label: "bind_group2051",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20144,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20145,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2051);
    compute_pass_encoder2011.end();
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder0040.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0051.drawIndirect(buffer005, 0);
    compute_pass_encoder2011.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0051.end();
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder0011.drawIndirect(buffer0046, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer20105, 0);
    render_pass_encoder0000.drawIndirect(buffer0057, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2075, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0021.drawIndirect(buffer0046, 0);
    render_pass_encoder2030.drawIndirect(buffer20111, 0);
    render_pass_encoder2031.drawIndirect(buffer2028, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20146 = device20.createBuffer({
        label: "buffer20146",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20146, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20146, 0);
    device60.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer0022, 0);
    render_pass_encoder2031.drawIndirect(buffer20114, 0);
    render_pass_encoder0050.drawIndirect(buffer0058, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0043, 0);
    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0070,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0027);
    render_pass_encoder0050.drawIndirect(buffer0037, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder2030.drawIndirect(buffer2031, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer20146, 0);
    compute_pass_encoder0010.end();
    device00.queue.submit([command_buffer004, ]);
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer20147 = device20.createBuffer({
        label: "buffer20147",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20147, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer20147, 0);
    render_pass_encoder2031.setIndexBuffer(buffer20128, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0051.end();
    device60.queue.submit([]);
    render_pass_encoder0000.drawIndirect(buffer0051, 0);
    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0072,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0028);
    render_pass_encoder0051.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0040.drawIndirect(buffer0042, 0);
    render_pass_encoder2030.drawIndirect(buffer20111, 0);
    render_pass_encoder2031.drawIndirect(buffer2048, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0050.drawIndirect(buffer0042, 0);
    const buffer20148 = device20.createBuffer({
        label: "buffer20148",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20149 = device20.createBuffer({
        label: "buffer20149",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2052 = device20.createBindGroup({
        label: "bind_group2052",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20148,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20149,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2052);
    render_pass_encoder0020.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder2031.drawIndirect(buffer2061, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0000.end();
    render_pass_encoder2030.drawIndirect(buffer20143, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2068, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2024, 0);
    render_pass_encoder2030.drawIndirect(buffer2027, 0);
    device00.queue.submit([command_buffer000, ]);
    const buffer20150 = device20.createBuffer({
        label: "buffer20150",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20151 = device20.createBuffer({
        label: "buffer20151",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2053 = device20.createBindGroup({
        label: "bind_group2053",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20150,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20151,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2053);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder2031.drawIndirect(buffer20149, 0);
    compute_pass_encoder2011.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer20106, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0049, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0000.drawIndirect(buffer0067, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0040.drawIndirect(buffer0043, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0051.drawIndirect(buffer0051, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer20146, 0);
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0040, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2010.end();
    render_pass_encoder0000.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0066, 0);
    render_pass_encoder0021.drawIndirect(buffer0065, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder2031.drawIndirect(buffer2062, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder2030.drawIndirect(buffer2098, 0);
    render_pass_encoder0001.drawIndirect(buffer0068, 0);
    render_pass_encoder0001.drawIndirect(buffer0042, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0010.drawIndirect(buffer0042, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0011.setIndexBuffer(buffer0014, "uint16");
    compute_pass_encoder2020.end();
    render_pass_encoder0010.drawIndirect(buffer0065, 0);
    render_pass_encoder2030.drawIndirect(buffer2031, 0);
    render_pass_encoder0021.drawIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0058, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0040.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2061, 0);
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    render_pass_encoder0021.drawIndirect(buffer0041, 0);
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0001.end();
    render_pass_encoder2030.drawIndirect(buffer20106, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer20118, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0058, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0071, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2062, 0);
    compute_pass_encoder2010.end();
    compute_pass_encoder0010.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0054, 0);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    render_pass_encoder0021.drawIndirect(buffer0043, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0011.drawIndirect(buffer0042, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer20124, 0);
    render_pass_encoder2031.drawIndirect(buffer2062, 0);
    render_pass_encoder0020.end();
    compute_pass_encoder2000.popDebugGroup()
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer20152 = device20.createBuffer({
        label: "buffer20152",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20152, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer20152, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0051, 0);
    compute_pass_encoder2000.popDebugGroup()
    const buffer20153 = device20.createBuffer({
        label: "buffer20153",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20154 = device20.createBuffer({
        label: "buffer20154",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2054 = device20.createBindGroup({
        label: "bind_group2054",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20153,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20154,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2054);
    render_pass_encoder0020.drawIndexedIndirect(buffer0034, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer20152, 0);
    const buffer20155 = device20.createBuffer({
        label: "buffer20155",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20156 = device20.createBuffer({
        label: "buffer20156",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2055 = device20.createBindGroup({
        label: "bind_group2055",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20155,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20156,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2055);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0046, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndexedIndirect(buffer2098, 0);
    render_pass_encoder2031.drawIndirect(buffer20143, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder0010.draw(3);
    render_pass_encoder0040.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0068, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0011.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0058, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder2031.setIndexBuffer(buffer2082, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0042, 0);
    compute_pass_encoder2010.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder2031.drawIndirect(buffer2037, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20157 = device20.createBuffer({
        label: "buffer20157",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20157, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20157, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0021.drawIndirect(buffer0041, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer20103, 0);
    render_pass_encoder0011.drawIndirect(buffer0029, 0);
    render_pass_encoder0000.drawIndirect(buffer0036, 0);
    const buffer20158 = device20.createBuffer({
        label: "buffer20158",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20159 = device20.createBuffer({
        label: "buffer20159",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2056 = device20.createBindGroup({
        label: "bind_group2056",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20158,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20159,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2056);
    compute_pass_encoder0010.end();
    render_pass_encoder2030.end();
    render_pass_encoder0021.setIndexBuffer(buffer0021, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2031.setIndexBuffer(buffer2059, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0070, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0000.drawIndirect(buffer0067, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer20137, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer20133, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2031.drawIndirect(buffer2075, 0);
    compute_pass_encoder2010.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20160 = device20.createBuffer({
        label: "buffer20160",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20160, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20160, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.drawIndirect(buffer0046, 0);
    render_pass_encoder0050.drawIndirect(buffer0042, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2021, "uint16");
    const buffer20161 = device20.createBuffer({
        label: "buffer20161",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20162 = device20.createBuffer({
        label: "buffer20162",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2057 = device20.createBindGroup({
        label: "bind_group2057",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20161,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20162,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2057);
    render_pass_encoder0050.end();
    render_pass_encoder0040.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0043, 0);
    const buffer20163 = device20.createBuffer({
        label: "buffer20163",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20164 = device20.createBuffer({
        label: "buffer20164",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2058 = device20.createBindGroup({
        label: "bind_group2058",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20163,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20164,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2058);
    render_pass_encoder0001.drawIndirect(buffer0012, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0068, 0);
    const buffer20165 = device20.createBuffer({
        label: "buffer20165",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20166 = device20.createBuffer({
        label: "buffer20166",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2059 = device20.createBindGroup({
        label: "bind_group2059",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20165,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20166,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2059);
    render_pass_encoder0000.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0001.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0049, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0049, 0);
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0072, "uint16");
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20167 = device20.createBuffer({
        label: "buffer20167",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20167, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20167, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0065, 0);
    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0074,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0029);
    render_pass_encoder2030.drawIndexedIndirect(buffer20111, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0046, "uint16");
    const buffer20168 = device20.createBuffer({
        label: "buffer20168",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20169 = device20.createBuffer({
        label: "buffer20169",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2060 = device20.createBindGroup({
        label: "bind_group2060",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20168,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20169,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2060);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer20105, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20170 = device20.createBuffer({
        label: "buffer20170",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20170, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20170, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0020.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0075, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0075, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0058, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0067, 0);
    render_pass_encoder2031.drawIndirect(buffer206, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder0000.drawIndirect(buffer0042, 0);
    render_pass_encoder0021.drawIndirect(buffer0043, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    compute_pass_encoder2020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0043, 0);
    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0077,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0030);
    compute_pass_encoder0010.end();
    render_pass_encoder2031.drawIndirect(buffer20104, 0);
}