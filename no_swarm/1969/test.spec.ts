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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array0 = new Float32Array([0.0, 0.5, 0.25, -0.5, 0.75, 0.75, 0.5, -0.75, -0.5, 0.25, 1.0, 0.75, 0.0, 0.5, 0.5, 0.5, 0.25, -0.5, -0.25, 0.5, 0.5, -1.0, 0.5, 0.5, -0.25, -0.25, 0.25, -0.5, 0.75, 0.75, 0.0, 0.5, -0.5, 0.5, 0.25, 0.5, 0.75, -1.0, 0.5, -0.5, -0.25, 1.0, -0.75, 1.0, 0.0, -0.25, 1.0, -1.0, -0.75, 1.0, -0.75, -0.75, -0.25, -0.25, -0.75, 0.75, 0.5, -0.75, -0.5, 0.75, 0.75, -0.25, 0.25, 0.5, 0.5, 0.5, 0.5, -1.0, -1.0, -0.25, 0.5, -0.75, 0.5, 0.75, 0.75, 0.25, -0.5, -0.25, -0.5, -0.25, 0.75, -0.25, 0.25, -0.75, 0.75, -0.25, 0.0, 0.75, 0.25, 0.5, -1.0, 0.5, -0.25, -0.75, -0.75, -1.0, -1.0, -0.5, 0.75, -0.75, ]);
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    texture000.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.pushErrorScope("internal");
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    render_bundle_encoder000.popDebugGroup();
    
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query000.destroy()
    query001.destroy()
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0000.popDebugGroup()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.destroy();
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder002.popDebugGroup();
    buffer000.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder002.setPipeline(render_pipeline000);
    buffer000.destroy()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
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
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    device00.pushErrorScope("out-of-memory");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    texture001.destroy();
    query200.destroy()
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder001.setPipeline(render_pipeline000);
    command_encoder400.pushDebugGroup("mygroupmarker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    
    
    render_bundle_encoder002.popDebugGroup();
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
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    query000.destroy()
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
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
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
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth32float",
        dimension: "2d"
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
    query200.destroy()
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    device00.pushErrorScope("out-of-memory");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    
    
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    render_bundle_encoder002.pushDebugGroup("group_marker");
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
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
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
        occlusionQuerySet: undefined
    });
    compute_pass_encoder2000.popDebugGroup()
    render_bundle_encoder000.popDebugGroup();
    query201.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder0010.setStencilReference(1);
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    render_bundle_encoder001.setVertexBuffer(0, buffer000);
    query001.destroy()
    compute_pass_encoder2000.popDebugGroup()
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    
    render_bundle_encoder201.setPipeline(render_pipeline201);
    render_bundle_encoder200.setPipeline(render_pipeline202);
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0010.insertDebugMarker("marker");
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0020.setPipeline(render_pipeline001);
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    texture400.destroy();
    
    command_encoder400.popDebugGroup()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    buffer002.destroy()
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group002);
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query002
    });
    buffer200.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device00.queue.submit([]);
    
    
    render_pass_encoder0010.popDebugGroup();
    
    
    
    
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder400.pushDebugGroup("mygroupmarker")
    render_pass_encoder0030.setPipeline(render_pipeline000);
    render_bundle_encoder400.insertDebugMarker("marker");
    
    command_encoder400.insertDebugMarker("mymarker");
    
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pass_encoder4011 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4011" });
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder201.popDebugGroup();
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device40.destroy();
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    device20.pushErrorScope("internal");
    render_bundle_encoder002.setVertexBuffer(0, buffer000);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
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
    render_pass_encoder0020.setVertexBuffer(0, buffer002);
    device20.pushErrorScope("validation");
    render_bundle_encoder202.setPipeline(render_pipeline204);
    render_bundle_encoder201.setVertexBuffer(0, buffer200);
    buffer201.destroy()
    
    render_pass_encoder0020.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0020.setStencilReference(1);
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture004.destroy();
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    
    compute_pass_encoder2000.popDebugGroup()
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    
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
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder001.insertDebugMarker("mymarker");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
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
    query201.destroy()
    
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0010.insertDebugMarker("marker");
    
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
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

    render_pass_encoder0030.setBindGroup(0, bind_group003);
    query001.destroy()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0010.setPipeline(render_pipeline005);
    buffer001.destroy()
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder002.insertDebugMarker("marker");
    buffer008.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group004);
    query001.destroy()
    
    command_encoder005.copyBufferToTexture(
        {
            buffer: buffer006
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
    render_pass_encoder0010.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    
    command_encoder005.copyBufferToTexture(
        {
            buffer: buffer000
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
    command_encoder005.insertDebugMarker("mymarker");
    command_encoder004.copyBufferToBuffer(
        buffer008,
        0,
        buffer007,
        0,
        400
    );
    query002.destroy()
    render_bundle_encoder201.draw(3);
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query000
    });
    
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
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group005);
    render_bundle_encoder002.draw(3);
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    buffer004.destroy()
    
    
    
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0030.setStencilReference(1);
    
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.insertDebugMarker("marker");
    
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0050.setPipeline(render_pipeline002);
    buffer003.destroy()
    buffer006.destroy()
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder003.insertDebugMarker("mymarker");
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    render_pass_encoder0040.setPipeline(render_pipeline006);
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer0012,
        0
    )
    render_pass_encoder0020.setIndexBuffer(buffer006, "uint16");
    command_encoder200.popDebugGroup()
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder004.copyBufferToBuffer(
        buffer000,
        0,
        buffer0011,
        0,
        400
    );
    render_bundle_encoder001.draw(3);
    render_pass_encoder0050.setStencilReference(1);
    command_encoder005.insertDebugMarker("mymarker");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    render_pass_encoder0010.insertDebugMarker("marker");
    device20.pushErrorScope("validation");
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
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

    render_pass_encoder0050.setBindGroup(0, bind_group006);
    
    render_pass_encoder0030.setVertexBuffer(0, buffer0015);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture002.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder0041.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    
    
    render_pass_encoder0050.popDebugGroup();
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    query200.destroy()
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.drawIndirect(buffer0013, 0);
    buffer204.destroy()
    render_pass_encoder0041.executeBundles([render_bundle_encoder001, ])
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0050.setStencilReference(1);
    device10.queue.submit([]);
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
    
    buffer206.destroy()
    render_pass_encoder0050.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder202.setVertexBuffer(0, buffer201);
    render_pass_encoder0050.setStencilReference(1);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer0013,
        0
    )
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    command_encoder201.copyBufferToBuffer(
        buffer206,
        0,
        buffer201,
        0,
        400
    );
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
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
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group007);
    
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture005.destroy();
    render_pass_encoder0000.setPipeline(render_pipeline000);
    render_pass_encoder0040.endOcclusionQuery()
    buffer0012.destroy()
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0050.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.popDebugGroup();
    buffer207.destroy()
    
    
    query002.destroy()
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
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
        occlusionQuerySet: query201
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
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
    render_bundle_encoder202.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0060.setPipeline(render_pipeline004);
    render_pass_encoder2020.setPipeline(render_pipeline201);
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder0010.setVertexBuffer(0, buffer009);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group008);
    compute_pass_encoder0020.setPipeline(compute_pipeline002);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer003, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0030.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0050.setVertexBuffer(0, buffer007);
    render_pass_encoder0030.drawIndirect(buffer0017, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.draw(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0050.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0030.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0020.draw(3);
    command_encoder400.popDebugGroup()
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    compute_pass_encoder2010.popDebugGroup()
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
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0060.setBindGroup(0, bind_group009);
    render_pass_encoder0040.setVertexBuffer(0, buffer003);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group202);
    render_pass_encoder0060.setVertexBuffer(0, buffer0021);
    render_pass_encoder0030.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0060.drawIndexed(3);
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group203);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2012, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2012, 0);
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0010, "uint16");
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group204);
    render_pass_encoder0041.drawIndirect(buffer0018, 0);
    render_pass_encoder0010.popDebugGroup();
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0040.draw(3);
    render_pass_encoder0010.end();
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder2020.setVertexBuffer(0, buffer2012);
    device00.queue.submit([]);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0060.drawIndirect(buffer0017, 0);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0020.end();
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder2020.end();
    render_pass_encoder0041.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0040.drawIndexed(3);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group0010);
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0011);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder2000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0024, 0);
    const command_buffer002 = command_encoder002.finish();
    const command_buffer006 = command_encoder006.finish();
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer003, ]);
    const command_buffer202 = command_encoder202.finish();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0060.drawIndirect(buffer0016, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0030.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0041.end();
    render_pass_encoder0000.setVertexBuffer(0, buffer0018);
    render_pass_encoder0000.drawIndirect(buffer0021, 0);
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0000.setIndexBuffer(buffer004, "uint16");
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
    compute_pass_encoder2010.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder0000.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0000.popDebugGroup();
    command_encoder000.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0050.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer003, "uint16");
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0012);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0030.draw(3);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer0013, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0040.popDebugGroup();
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0060.drawIndirect(buffer0017, 0);
    compute_pass_encoder0020.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0000.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0028, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0028, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0050.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0041.drawIndirect(buffer0013, 0);
    compute_pass_encoder2010.popDebugGroup()
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2020.end();
    render_pass_encoder0030.drawIndirect(buffer0023, 0);
    render_pass_encoder0060.drawIndirect(buffer0025, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0030.popDebugGroup();
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group205);
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    render_pass_encoder0000.drawIndirect(buffer0028, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0028, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0041.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0020.drawIndirect(buffer004, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder2020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0050.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0050.draw(3);
    render_pass_encoder0041.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0029, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0029, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0030, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0030, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0031, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0031, 0);
    render_pass_encoder0050.drawIndirect(buffer0031, 0);
    render_pass_encoder2020.drawIndirect(buffer2017, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0028, 0);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0040.drawIndirect(buffer0030, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder2020.draw(3);
    render_pass_encoder0000.end();
    render_pass_encoder0020.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0050.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    render_pass_encoder2020.drawIndirect(buffer2014, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0030.draw(3);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer001, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0060.draw(3);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0031, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0000.drawIndirect(buffer0028, 0);
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    render_pass_encoder0000.end();
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0013);
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0050.drawIndirect(buffer0031, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder2020.drawIndirect(buffer2015, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0060.drawIndirect(buffer0025, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0010.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0034, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0034, 0);
    render_pass_encoder0050.drawIndirect(buffer0029, 0);
    render_pass_encoder0040.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0060.drawIndexed(3);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0031, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0030.end();
    render_pass_encoder0040.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0040.draw(3);
    render_pass_encoder0040.drawIndirect(buffer0012, 0);
    const command_buffer400 = command_encoder400.finish();
    compute_pass_encoder2010.end();
    render_pass_encoder0010.setIndexBuffer(buffer0026, "uint16");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder0020.end();
    render_pass_encoder0041.setIndexBuffer(buffer0033, "uint16");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0020.drawIndirect(buffer0025, 0);
    device20.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0014, 0);
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0034, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2018, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2018, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer209, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0031, 0);
    render_pass_encoder0010.draw(3);
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0014);
    render_pass_encoder0000.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0020.end();
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0041.draw(3);
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0030.popDebugGroup();
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
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group206);
    render_pass_encoder0060.drawIndexedIndirect(buffer0010, 0);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0031, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0039, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0039, 0);
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0016);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0060.drawIndirect(buffer0024, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0000.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2015, 0);
    render_pass_encoder0050.end();
    compute_pass_encoder2000.end();
    render_pass_encoder0050.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0000.drawIndirect(buffer007, 0);
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0037, 0);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group207);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0042, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0042, 0);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0000.end();
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
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2025,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group208);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0043, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0043, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0050.drawIndirect(buffer0034, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0026, "uint16");
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
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0017);
    render_pass_encoder0060.drawIndirect(buffer0030, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0042, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2020.drawIndirect(buffer2023, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0040.drawIndirect(buffer0031, 0);
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0042, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2026, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2026, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2027, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2027, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0060.end();
    render_pass_encoder0010.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder0000.end();
    render_pass_encoder0000.drawIndirect(buffer0034, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2028, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2028, 0);
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0031, 0);
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0046, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0046, 0);
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2028, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2029, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2029, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0000.drawIndirect(buffer0013, 0);
    render_pass_encoder0030.drawIndirect(buffer0043, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0041.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0039, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder2020.draw(3);
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0030.drawIndirect(buffer004, 0);
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2018, 0);
    render_pass_encoder0030.drawIndirect(buffer0014, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0020, 0);
    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2031,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group209);
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
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0018);
    render_pass_encoder0041.drawIndexedIndirect(buffer0027, 0);
    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0050,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0019);
    render_pass_encoder2020.drawIndexedIndirect(buffer2015, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0010.drawIndirect(buffer0045, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0043, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0041.popDebugGroup();
    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
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
                    buffer: buffer2032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2033,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2010);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0034, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0034, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0050.drawIndirect(buffer0039, 0);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0000.end();
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0060.drawIndirect(buffer008, 0);
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0041.drawIndirect(buffer0039, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0045, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2020.drawIndirect(buffer2027, 0);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0041.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder2020.drawIndirect(buffer2021, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0034, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0018, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder0050.drawIndirect(buffer003, 0);
    render_pass_encoder0010.drawIndirect(buffer0046, 0);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0050.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer008, 0);
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0020.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0051, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0051, 0);
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    render_pass_encoder0041.drawIndirect(buffer0041, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0032, 0);
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
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0020);
    render_pass_encoder0040.end();
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0021, 0);
    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2035,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2011);
    render_pass_encoder0060.drawIndirect(buffer0024, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0017, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0050.drawIndirect(buffer0027, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0060.drawIndirect(buffer007, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0020.popDebugGroup();
    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
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
                    buffer: buffer2036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2037,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2012);
    render_pass_encoder0010.drawIndirect(buffer0031, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0000.drawIndirect(buffer0039, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2027, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0027, 0);
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0027, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2038, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2038, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0051, 0);
    render_pass_encoder0020.drawIndirect(buffer008, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0020.drawIndirect(buffer0042, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0000.end();
    compute_pass_encoder2010.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.draw(3);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device20.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer2017, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2034, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndirect(buffer0039, 0);
    render_pass_encoder0000.drawIndirect(buffer0042, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2028, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder0010.drawIndirect(buffer0042, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    render_pass_encoder0000.drawIndirect(buffer0034, 0);
    render_pass_encoder0030.drawIndirect(buffer0042, 0);
    render_pass_encoder0060.drawIndirect(buffer0043, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
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
                    buffer: buffer2039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2040,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2013);
    render_pass_encoder0010.end();
    render_pass_encoder0030.popDebugGroup();
    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2042,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2014);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    compute_pass_encoder2010.popDebugGroup()
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0054, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0054, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0041.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2043, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2043, 0);
    render_pass_encoder0010.drawIndirect(buffer0046, 0);
    render_pass_encoder0040.drawIndirect(buffer0042, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder2020.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2020.drawIndirect(buffer2028, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0050.drawIndirect(buffer0039, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0041.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2044, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2044, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0010.drawIndirect(buffer0039, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0041.draw(3);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer0043, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0043, 0);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    render_pass_encoder0020.drawIndirect(buffer0034, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0037, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0060.drawIndirect(buffer0043, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0050.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0020.end();
    compute_pass_encoder0020.end();
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder0050.drawIndirect(buffer0018, 0);
    render_pass_encoder0041.drawIndirect(buffer0054, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2044, 0);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0034, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2020.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0041.draw(3);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0055, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0055, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0000.end();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2023, 0);
    device20.queue.submit([]);
    render_pass_encoder0020.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0050.drawIndirect(buffer008, 0);
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2046,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2015);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2035, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0056, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0056, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0057, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0057, 0);
    render_pass_encoder0030.drawIndirect(buffer0025, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0038, 0);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0060.end();
    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
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
                    buffer: buffer0058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0059,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0021);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0060, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0060, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0050.drawIndirect(buffer0018, 0);
    render_pass_encoder2020.drawIndirect(buffer2044, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer0051, 0);
    render_pass_encoder0040.drawIndirect(buffer0042, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0041.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder0060.drawIndirect(buffer0050, 0);
    render_pass_encoder0000.drawIndirect(buffer0055, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndexed(3);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0054, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0030.drawIndirect(buffer0046, 0);
    render_pass_encoder0040.drawIndirect(buffer0020, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0027, 0);
    device20.queue.submit([command_buffer202, ]);
    device00.queue.submit([command_buffer005, ]);
    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2048,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2016);
    render_pass_encoder0041.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0041.drawIndirect(buffer0060, 0);
    render_pass_encoder0040.drawIndirect(buffer0041, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0059, "uint16");
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
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0022);
    render_pass_encoder0040.drawIndirect(buffer0051, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0055, 0);
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
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0023);
    render_pass_encoder0020.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2015, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder0041.end();
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
    render_pass_encoder0040.drawIndirect(buffer0057, 0);
    render_pass_encoder0000.drawIndirect(buffer0039, 0);
    render_pass_encoder0060.drawIndirect(buffer001, 0);
    device20.queue.submit([]);
    render_pass_encoder2020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0041.drawIndirect(buffer001, 0);
    render_pass_encoder0030.drawIndirect(buffer0042, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndirect(buffer0031, 0);
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0060.drawIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndirect(buffer0057, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0039, 0);
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
    render_pass_encoder2020.drawIndexedIndirect(buffer2033, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer0031, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0065, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0065, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder0041.end();
    compute_pass_encoder2010.popDebugGroup()
    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
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
                    buffer: buffer2051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2052,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2017);
    render_pass_encoder0050.end();
    render_pass_encoder0041.drawIndirect(buffer0031, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0034, "uint16");
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0060.draw(3);
    device00.queue.submit([command_buffer001, ]);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2053, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2053, 0);
    render_pass_encoder0060.drawIndirect(buffer0014, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0060.drawIndirect(buffer0013, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0047, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0066, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0066, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0020.drawIndirect(buffer0051, 0);
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0039, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0060.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder2020.popDebugGroup();
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder0040.popDebugGroup();
    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
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
                    buffer: buffer0067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0068,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0024);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.end();
    render_pass_encoder0000.drawIndirect(buffer0068, 0);
    render_pass_encoder0050.drawIndirect(buffer0046, 0);
    device00.queue.submit([command_buffer002, ]);
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
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0025);
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
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0026);
    render_pass_encoder0010.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0071, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0041.setIndexBuffer(buffer0027, "uint16");
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
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0027);
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
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2018);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0000.drawIndirect(buffer0070, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0031, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0000.drawIndirect(buffer0056, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0000.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0065, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0075, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0075, 0);
    render_pass_encoder0000.drawIndirect(buffer0018, 0);
    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
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
                    buffer: buffer2056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2057,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2019);
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer0075, 0);
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
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0028);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer0023, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0010, 0);
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0050.drawIndirect(buffer0031, 0);
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder0060.drawIndirect(buffer0066, 0);
    render_pass_encoder0040.drawIndirect(buffer0056, 0);
    render_pass_encoder0050.setIndexBuffer(buffer003, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0049, 0);
    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0079,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0029);
    render_pass_encoder0041.drawIndirect(buffer0054, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0080, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0080, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0010.drawIndirect(buffer0033, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0040, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0040.drawIndirect(buffer0031, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0060.setIndexBuffer(buffer000, "uint16");
    device00.queue.submit([command_buffer001, command_buffer004, command_buffer005, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder2020.drawIndirect(buffer2053, 0);
    compute_pass_encoder2000.end();
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0066, 0);
    render_pass_encoder0040.drawIndirect(buffer0065, 0);
    render_pass_encoder0050.endOcclusionQuery()
    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0082,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0030);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder0020.end();
    render_pass_encoder0030.drawIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndirect(buffer0043, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0013, 0);
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndirect(buffer0017, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    render_pass_encoder2020.drawIndirect(buffer2049, 0);
    render_pass_encoder0050.drawIndirect(buffer0066, 0);
    const buffer2058 = device20.createBuffer({
        label: "buffer2058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2059,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2020);
    render_pass_encoder2020.drawIndirect(buffer2043, 0);
    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0084,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0031);
    render_pass_encoder0041.drawIndexedIndirect(buffer006, 0);
    device00.queue.submit([command_buffer003, ]);
    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
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
                    buffer: buffer2060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2061,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2021);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0080, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder0041.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0041.drawIndirect(buffer0083, 0);
    render_pass_encoder0050.drawIndirect(buffer002, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder0060.drawIndirect(buffer0075, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0066, 0);
    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2063,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2022);
    render_pass_encoder0030.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0059, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0000.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0010.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2020.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0065, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0041.drawIndirect(buffer0060, 0);
    render_pass_encoder0040.drawIndirect(buffer0046, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder0000.drawIndirect(buffer0065, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0000.drawIndirect(buffer0048, 0);
    render_pass_encoder0060.drawIndirect(buffer0054, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0051, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0013, 0);
    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2065,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2023);
    render_pass_encoder0041.drawIndirect(buffer0056, 0);
    render_pass_encoder0030.drawIndirect(buffer0056, 0);
    render_pass_encoder0041.drawIndirect(buffer0075, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0043, 0);
    compute_pass_encoder2000.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0073, 0);
    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0086,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0032);
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
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
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2024);
    device20.queue.submit([]);
    compute_pass_encoder0000.end();
    render_pass_encoder0010.drawIndirect(buffer0012, 0);
    render_pass_encoder0020.drawIndirect(buffer0078, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0025, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0036, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2068 = device20.createBuffer({
        label: "buffer2068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2068, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2068, 0);
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    device30.queue.submit([]);
    render_pass_encoder0010.setIndexBuffer(buffer0085, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0040.endOcclusionQuery()
    compute_pass_encoder0000.end();
    render_pass_encoder0000.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0034, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0087, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0087, 0);
    render_pass_encoder0041.end();
    device00.queue.submit([command_buffer003, command_buffer004, command_buffer006, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0000.drawIndirect(buffer000, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0075, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0042, 0);
    device20.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0044, 0);
    render_pass_encoder0020.drawIndirect(buffer0066, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0041.drawIndirect(buffer0087, 0);
    render_pass_encoder0040.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0010.drawIndirect(buffer0027, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer0043, 0);
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0037, 0);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0050.drawIndirect(buffer0028, 0);
    render_pass_encoder0041.drawIndirect(buffer0056, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2015, 0);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0030, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0050.drawIndirect(buffer0051, 0);
    render_pass_encoder0060.drawIndirect(buffer0056, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0010.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0061, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0060.draw(3);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2069, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2069, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0050.end();
    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2071 = device20.createBuffer({
        label: "buffer2071",
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
                    buffer: buffer2070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2071,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2025);
    render_pass_encoder0060.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0048, 0);
    const buffer2072 = device20.createBuffer({
        label: "buffer2072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2073 = device20.createBuffer({
        label: "buffer2073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2073,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2026);
    render_pass_encoder0030.drawIndirect(buffer0043, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0040.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0020.drawIndirect(buffer0056, 0);
    render_pass_encoder0020.drawIndirect(buffer0046, 0);
    compute_pass_encoder2010.end();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2074 = device20.createBuffer({
        label: "buffer2074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2074, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2074, 0);
    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0088,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0089,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0033);
    const buffer2075 = device20.createBuffer({
        label: "buffer2075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2076 = device20.createBuffer({
        label: "buffer2076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2027 = device20.createBindGroup({
        label: "bind_group2027",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2076,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2027);
    render_pass_encoder0000.drawIndirect(buffer0065, 0);
    render_pass_encoder0060.drawIndirect(buffer0011, 0);
    render_pass_encoder0030.drawIndirect(buffer0060, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder0000.end();
    device20.queue.submit([]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device20.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0030.drawIndirect(buffer0016, 0);
    render_pass_encoder0010.drawIndirect(buffer0075, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndirect(buffer0066, 0);
    render_pass_encoder2020.drawIndirect(buffer2026, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0060.drawIndirect(buffer004, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0060.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.end();
    compute_pass_encoder2010.popDebugGroup()
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2077 = device20.createBuffer({
        label: "buffer2077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2077, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2077, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0056, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0060.setIndexBuffer(buffer0027, "uint16");
    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0091,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0034);
    render_pass_encoder0060.drawIndirect(buffer0034, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0034, 0);
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
        
    const bind_group2028 = device20.createBindGroup({
        label: "bind_group2028",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2028);
    render_pass_encoder0010.drawIndirect(buffer0039, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer0034, 0);
    render_pass_encoder0040.drawIndirect(buffer0043, 0);
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0028, 0);
    device00.queue.submit([command_buffer001, command_buffer005, command_buffer006, ]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer0040, "uint16");
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2080 = device20.createBuffer({
        label: "buffer2080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2080, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2080, 0);
    render_pass_encoder0060.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0060.drawIndirect(buffer0013, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0080, 0);
    compute_pass_encoder4011.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0011, 0);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0046, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0056, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2029, 0);
    render_pass_encoder0010.drawIndirect(buffer0064, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0031, 0);
    render_pass_encoder0000.drawIndirect(buffer0066, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0066, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer0039, 0);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0000.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0056, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0060.setIndexBuffer(buffer0072, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0090, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0051, 0);
    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0093,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0035);
    render_pass_encoder0020.drawIndirect(buffer0065, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0020.drawIndirect(buffer0067, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2068, 0);
    render_pass_encoder2020.drawIndirect(buffer2044, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder0041.drawIndirect(buffer0042, 0);
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder0010.end();
    device20.queue.submit([]);
    render_pass_encoder0000.setIndexBuffer(buffer0078, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const buffer2081 = device20.createBuffer({
        label: "buffer2081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2082 = device20.createBuffer({
        label: "buffer2082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2029 = device20.createBindGroup({
        label: "bind_group2029",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2082,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2029);
    render_pass_encoder0060.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    render_pass_encoder0050.end();
    render_pass_encoder2020.drawIndirect(buffer2027, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0050.drawIndirect(buffer0042, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0020, "uint16");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0030, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0000.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0060.drawIndirect(buffer001, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0020.drawIndirect(buffer0066, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0040.drawIndirect(buffer0042, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0050.drawIndirect(buffer0060, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder2020.draw(3);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0039, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0050.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0080, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2080, 0);
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0040.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0041.drawIndirect(buffer0084, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0049, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0030.drawIndirect(buffer0039, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder2020.drawIndirect(buffer203, 0);
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
        
    const bind_group2030 = device20.createBindGroup({
        label: "bind_group2030",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2030);
    render_pass_encoder0040.drawIndirect(buffer0056, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0086, 0);
    render_pass_encoder0050.drawIndirect(buffer0055, 0);
    render_pass_encoder2020.drawIndirect(buffer2043, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0066, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0030.drawIndirect(buffer0042, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0054, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0041.end();
    render_pass_encoder0030.setIndexBuffer(buffer0068, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device20.queue.submit([]);
    compute_pass_encoder0020.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0000.drawIndirect(buffer0056, 0);
    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0095 = device00.createBuffer({
        label: "buffer0095",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0094,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0095,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0036);
    render_pass_encoder0030.drawIndirect(buffer0043, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0031, 0);
    const buffer0096 = device00.createBuffer({
        label: "buffer0096",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0037 = device00.createBindGroup({
        label: "bind_group0037",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0096,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0097,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0037);
    render_pass_encoder0041.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0039, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0020.end();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2085 = device20.createBuffer({
        label: "buffer2085",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2085, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2085, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2020.drawIndirect(buffer2026, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0058, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder0020.drawIndirect(buffer003, 0);
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    device00.queue.submit([command_buffer002, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0060, 0);
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    render_pass_encoder0060.setIndexBuffer(buffer0089, "uint16");
    const buffer0098 = device00.createBuffer({
        label: "buffer0098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0099 = device00.createBuffer({
        label: "buffer0099",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0038 = device00.createBindGroup({
        label: "bind_group0038",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0099,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0038);
    render_pass_encoder0041.drawIndexedIndirect(buffer0087, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0049, 0);
    device00.queue.submit([command_buffer006, ]);
    const buffer00100 = device00.createBuffer({
        label: "buffer00100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00101 = device00.createBuffer({
        label: "buffer00101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0039 = device00.createBindGroup({
        label: "bind_group0039",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00101,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0039);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndirect(buffer0025, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2080, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0040.drawIndirect(buffer0060, 0);
    render_pass_encoder0000.drawIndirect(buffer0080, 0);
    const buffer00102 = device00.createBuffer({
        label: "buffer00102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00103 = device00.createBuffer({
        label: "buffer00103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0040 = device00.createBindGroup({
        label: "bind_group0040",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00103,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0040);
    render_pass_encoder0041.drawIndirect(buffer0057, 0);
    render_pass_encoder0041.drawIndirect(buffer0039, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0094, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0050.drawIndirect(buffer0075, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder0020.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2086 = device20.createBuffer({
        label: "buffer2086",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2086, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2086, 0);
    render_pass_encoder2020.drawIndirect(buffer2028, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0060.drawIndirect(buffer0081, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0041.drawIndirect(buffer0068, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0000.drawIndirect(buffer0054, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0030.drawIndirect(buffer0066, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0060.end();
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0000.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0046, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0080, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    render_pass_encoder0000.end();
    render_pass_encoder2020.drawIndirect(buffer2028, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0010.drawIndirect(buffer0056, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0082, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2087 = device20.createBuffer({
        label: "buffer2087",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2087, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2087, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0060.drawIndirect(buffer0013, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder0050.drawIndirect(buffer0065, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0014, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2088 = device20.createBuffer({
        label: "buffer2088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2088, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2088, 0);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer0082, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0060.drawIndirect(buffer0039, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0086, 0);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.end();
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder2020.drawIndirect(buffer2018, 0);
    render_pass_encoder0000.drawIndirect(buffer0071, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0040.drawIndirect(buffer0055, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0086, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0060.drawIndirect(buffer0080, 0);
    const buffer00104 = device00.createBuffer({
        label: "buffer00104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00105 = device00.createBuffer({
        label: "buffer00105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0041 = device00.createBindGroup({
        label: "bind_group0041",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00105,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0041);
    render_pass_encoder0010.drawIndexedIndirect(buffer0080, 0);
    const buffer2089 = device20.createBuffer({
        label: "buffer2089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2090 = device20.createBuffer({
        label: "buffer2090",
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
                    buffer: buffer2089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2090,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2031);
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0057, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0020, 0);
    const buffer00106 = device00.createBuffer({
        label: "buffer00106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00107 = device00.createBuffer({
        label: "buffer00107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0042 = device00.createBindGroup({
        label: "bind_group0042",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00107,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0042);
    render_pass_encoder0050.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0030.drawIndexed(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0080, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0041.popDebugGroup();
    const buffer2091 = device20.createBuffer({
        label: "buffer2091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2092 = device20.createBuffer({
        label: "buffer2092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2032 = device20.createBindGroup({
        label: "bind_group2032",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2092,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2032);
    render_pass_encoder0041.drawIndirect(buffer0099, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2025, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0050.draw(3);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer0013, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0071, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0065, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder2020.drawIndirect(buffer2027, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00107, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0069, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0041.drawIndirect(buffer0028, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0041.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00108 = device00.createBuffer({
        label: "buffer00108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00108, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00108, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0040.setIndexBuffer(buffer0081, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0091, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0030.end();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2044, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0041.drawIndirect(buffer0034, 0);
    compute_pass_encoder0020.end();
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndirect(buffer0055, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0043, 0);
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    render_pass_encoder0030.popDebugGroup();
    const buffer2093 = device20.createBuffer({
        label: "buffer2093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2094 = device20.createBuffer({
        label: "buffer2094",
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
                    buffer: buffer2093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2094,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2033);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0000.drawIndirect(buffer0034, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    device00.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0057, 0);
    const buffer00109 = device00.createBuffer({
        label: "buffer00109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00110 = device00.createBuffer({
        label: "buffer00110",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0043 = device00.createBindGroup({
        label: "bind_group0043",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00110,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0043);
    render_pass_encoder0030.end();
    render_pass_encoder2020.drawIndirect(buffer2018, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0063, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0080, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00102, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder2020.drawIndirect(buffer2086, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0000.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0021, 0);
    const buffer00111 = device00.createBuffer({
        label: "buffer00111",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00112 = device00.createBuffer({
        label: "buffer00112",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0044 = device00.createBindGroup({
        label: "bind_group0044",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00111,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00112,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0044);
    const buffer2095 = device20.createBuffer({
        label: "buffer2095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2096 = device20.createBuffer({
        label: "buffer2096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2034 = device20.createBindGroup({
        label: "bind_group2034",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2096,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2034);
    render_pass_encoder0030.drawIndirect(buffer00111, 0);
    render_pass_encoder0050.end();
    const buffer2097 = device20.createBuffer({
        label: "buffer2097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2098 = device20.createBuffer({
        label: "buffer2098",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2035 = device20.createBindGroup({
        label: "bind_group2035",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2098,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2035);
    render_pass_encoder0030.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0010.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    device20.queue.submit([]);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0000.end();
    render_pass_encoder0000.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0020.end();
    const buffer2099 = device20.createBuffer({
        label: "buffer2099",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20100 = device20.createBuffer({
        label: "buffer20100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2036 = device20.createBindGroup({
        label: "bind_group2036",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2099,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20100,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2036);
    render_pass_encoder0050.setIndexBuffer(buffer0084, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0075, 0);
    render_pass_encoder0050.drawIndirect(buffer0013, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0097, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0051, 0);
    render_pass_encoder0041.drawIndirect(buffer0043, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0060, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0000.drawIndirect(buffer0087, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0013, 0);
    device40.queue.submit([]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder0000.drawIndirect(buffer0013, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer0065, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0040.drawIndirect(buffer0080, 0);
    render_pass_encoder0020.drawIndirect(buffer0081, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0030.end();
    render_pass_encoder0041.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder2020.setIndexBuffer(buffer2098, "uint16");
    const buffer00113 = device00.createBuffer({
        label: "buffer00113",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00114 = device00.createBuffer({
        label: "buffer00114",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0045 = device00.createBindGroup({
        label: "bind_group0045",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00113,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00114,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0045);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0041.drawIndirect(buffer0060, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00115 = device00.createBuffer({
        label: "buffer00115",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00115, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00115, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0075, 0);
    compute_pass_encoder2010.popDebugGroup()
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00116 = device00.createBuffer({
        label: "buffer00116",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00116, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00116, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0030.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2085, 0);
    render_pass_encoder0030.drawIndirect(buffer0045, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00116, 0);
    const buffer20101 = device20.createBuffer({
        label: "buffer20101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20102 = device20.createBuffer({
        label: "buffer20102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2037 = device20.createBindGroup({
        label: "bind_group2037",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20102,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2037);
    render_pass_encoder0040.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0095, "uint16");
    render_pass_encoder0020.draw(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0020.drawIndirect(buffer00116, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0028, 0);
    const buffer20103 = device20.createBuffer({
        label: "buffer20103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20104 = device20.createBuffer({
        label: "buffer20104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2038 = device20.createBindGroup({
        label: "bind_group2038",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20104,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2038);
    render_pass_encoder2020.end();
    render_pass_encoder0010.drawIndirect(buffer0043, 0);
    render_pass_encoder0050.end();
    const buffer20105 = device20.createBuffer({
        label: "buffer20105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20106 = device20.createBuffer({
        label: "buffer20106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2039 = device20.createBindGroup({
        label: "bind_group2039",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20106,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2039);
    render_pass_encoder2020.drawIndirect(buffer2029, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00113, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2023, 0);
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0057, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer00103, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndirect(buffer0060, 0);
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder0020.drawIndirect(buffer0087, 0);
    render_pass_encoder0060.drawIndirect(buffer0048, 0);
    render_pass_encoder0041.drawIndirect(buffer0064, 0);
    render_pass_encoder0050.drawIndirect(buffer0051, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0040.drawIndirect(buffer0084, 0);
    render_pass_encoder0060.drawIndirect(buffer0047, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer0065, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00117 = device00.createBuffer({
        label: "buffer00117",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00117, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00117, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0046, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0010.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0057, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00108, 0);
    render_pass_encoder0050.drawIndirect(buffer0051, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0043, 0);
    render_pass_encoder0020.drawIndirect(buffer0072, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndirect(buffer0061, 0);
    render_pass_encoder0010.drawIndirect(buffer0088, 0);
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
        
    const bind_group2040 = device20.createBindGroup({
        label: "bind_group2040",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2040);
    render_pass_encoder0040.drawIndirect(buffer0066, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0092, "uint16");
    render_pass_encoder0060.end();
    render_pass_encoder0010.drawIndirect(buffer0034, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0050.drawIndirect(buffer0042, 0);
    render_pass_encoder0030.drawIndirect(buffer0033, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0045, "uint16");
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder2000.end();
    render_pass_encoder0030.setIndexBuffer(buffer0092, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    device20.queue.submit([]);
    render_pass_encoder0040.setIndexBuffer(buffer00104, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder2020.drawIndirect(buffer206, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00118 = device00.createBuffer({
        label: "buffer00118",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00118, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00118, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00108, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2088, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0092, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00108, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0010.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0039, 0);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00119 = device00.createBuffer({
        label: "buffer00119",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00119, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00119, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0030.drawIndirect(buffer0087, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0060.drawIndirect(buffer0087, 0);
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
        
    const bind_group2041 = device20.createBindGroup({
        label: "bind_group2041",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2041);
    render_pass_encoder0041.drawIndirect(buffer0029, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0039, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0030.drawIndirect(buffer0095, 0);
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    render_pass_encoder0000.end();
    const buffer20111 = device20.createBuffer({
        label: "buffer20111",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20112 = device20.createBuffer({
        label: "buffer20112",
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
                    buffer: buffer20111,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20112,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2042);
    render_pass_encoder0040.drawIndirect(buffer00108, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0046, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0087, 0);
    device20.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer0028, 0);
    render_pass_encoder0000.drawIndirect(buffer0056, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer007, 0);
    const buffer20113 = device20.createBuffer({
        label: "buffer20113",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20114 = device20.createBuffer({
        label: "buffer20114",
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
                    buffer: buffer20113,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20114,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2043);
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0040.drawIndirect(buffer00107, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder2020.drawIndirect(buffer2080, 0);
    render_pass_encoder0060.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0050.end();
    render_pass_encoder0050.drawIndirect(buffer0066, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20115 = device20.createBuffer({
        label: "buffer20115",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20115, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20115, 0);
    render_pass_encoder0060.drawIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0000.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0040.drawIndirect(buffer0034, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0060, "uint16");
    const buffer00120 = device00.createBuffer({
        label: "buffer00120",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00121 = device00.createBuffer({
        label: "buffer00121",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0046 = device00.createBindGroup({
        label: "bind_group0046",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00120,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00121,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0046);
    render_pass_encoder0040.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0050.drawIndirect(buffer0013, 0);
    render_pass_encoder0000.drawIndirect(buffer00115, 0);
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2020.drawIndirect(buffer2077, 0);
    device00.queue.submit([]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0041.drawIndirect(buffer00119, 0);
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder0050.drawIndirect(buffer00115, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0090, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0000.drawIndirect(buffer00119, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0089, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndirect(buffer0090, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0041.drawIndirect(buffer0079, 0);
    render_pass_encoder0041.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00122 = device00.createBuffer({
        label: "buffer00122",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00122, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00122, 0);
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer008, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00108, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0020.drawIndirect(buffer0046, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00119, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00117, 0);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer00122, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0060.drawIndirect(buffer00120, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00117, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0066, 0);
    device00.queue.submit([command_buffer004, command_buffer006, ]);
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
        
    const bind_group2044 = device20.createBindGroup({
        label: "bind_group2044",
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2044);
    render_pass_encoder0041.drawIndirect(buffer0057, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0050.drawIndirect(buffer00119, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0060.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0060.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    render_pass_encoder0010.drawIndirect(buffer0049, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00119, 0);
    const buffer00123 = device00.createBuffer({
        label: "buffer00123",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00124 = device00.createBuffer({
        label: "buffer00124",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0047 = device00.createBindGroup({
        label: "bind_group0047",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00123,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00124,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0047);
    const buffer20118 = device20.createBuffer({
        label: "buffer20118",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20119 = device20.createBuffer({
        label: "buffer20119",
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
                    buffer: buffer20118,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20119,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2045);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0000.drawIndirect(buffer0087, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00125 = device00.createBuffer({
        label: "buffer00125",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00125, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00125, 0);
    render_pass_encoder0000.drawIndirect(buffer0028, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0092, 0);
    device00.queue.submit([command_buffer000, ]);
    const buffer20120 = device20.createBuffer({
        label: "buffer20120",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20121 = device20.createBuffer({
        label: "buffer20121",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2046 = device20.createBindGroup({
        label: "bind_group2046",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20120,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20121,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2046);
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0052, 0);
    compute_pass_encoder2010.end();
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2000.end();
    render_pass_encoder0040.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00103, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder0010.drawIndirect(buffer0031, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0013, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0030.drawIndirect(buffer0064, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0051, 0);
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2060, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2083, "uint16");
    render_pass_encoder2020.drawIndirect(buffer20112, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0030.drawIndirect(buffer0086, 0);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder0020.drawIndirect(buffer0080, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer00112, 0);
    render_pass_encoder0060.drawIndirect(buffer0090, 0);
    render_pass_encoder0030.drawIndirect(buffer0045, 0);
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0096, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00112, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0060.end();
    device20.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0051, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2020.drawIndirect(buffer2054, 0);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    device00.queue.submit([command_buffer001, command_buffer005, command_buffer006, ]);
    render_pass_encoder0060.drawIndirect(buffer0042, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    render_pass_encoder2020.end();
    const buffer00126 = device00.createBuffer({
        label: "buffer00126",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00127 = device00.createBuffer({
        label: "buffer00127",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0048 = device00.createBindGroup({
        label: "bind_group0048",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00126,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00127,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0048);
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer005, command_buffer006, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    render_pass_encoder0040.drawIndirect(buffer00103, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer208, "uint16");
    const buffer00128 = device00.createBuffer({
        label: "buffer00128",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00129 = device00.createBuffer({
        label: "buffer00129",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0049 = device00.createBindGroup({
        label: "bind_group0049",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00128,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00129,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0049);
    render_pass_encoder0030.drawIndirect(buffer0093, 0);
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndirect(buffer00118, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer002, 0);
    compute_pass_encoder2000.end();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0030.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0057, 0);
    const buffer20122 = device20.createBuffer({
        label: "buffer20122",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20123 = device20.createBuffer({
        label: "buffer20123",
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
                    buffer: buffer20122,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20123,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2047);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0075, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder2020.drawIndirect(buffer20106, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0083, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0050.drawIndirect(buffer0080, 0);
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0014, 0);
    compute_pass_encoder2000.end();
    compute_pass_encoder2000.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0000.drawIndirect(buffer0034, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0041.end();
    render_pass_encoder2020.end();
    render_pass_encoder0040.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00122, 0);
    const buffer00130 = device00.createBuffer({
        label: "buffer00130",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00131 = device00.createBuffer({
        label: "buffer00131",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0050 = device00.createBindGroup({
        label: "bind_group0050",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00130,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00131,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0050);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0065, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0040.popDebugGroup();
    const buffer20124 = device20.createBuffer({
        label: "buffer20124",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20125 = device20.createBuffer({
        label: "buffer20125",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2048 = device20.createBindGroup({
        label: "bind_group2048",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20124,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20125,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2048);
    device30.queue.submit([command_buffer300, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20126 = device20.createBuffer({
        label: "buffer20126",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20126, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20126, 0);
    render_pass_encoder0050.drawIndirect(buffer0028, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0093, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00127, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0080, 0);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0010.drawIndirect(buffer00116, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0000.popDebugGroup();
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
        
    const bind_group2049 = device20.createBindGroup({
        label: "bind_group2049",
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2049);
    render_pass_encoder0010.drawIndirect(buffer0042, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00125, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0047, 0);
    render_pass_encoder0020.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00132 = device00.createBuffer({
        label: "buffer00132",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00132, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00132, 0);
    render_pass_encoder0030.drawIndirect(buffer0042, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0060.drawIndirect(buffer0044, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0040.drawIndirect(buffer0027, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00133 = device00.createBuffer({
        label: "buffer00133",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00133, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00133, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder0040.drawIndirect(buffer0046, 0);
    render_pass_encoder0000.drawIndirect(buffer0042, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0041.drawIndirect(buffer00133, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0056, 0);
    render_pass_encoder0041.drawIndirect(buffer0066, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00125, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder2020.setIndexBuffer(buffer20108, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0020.drawIndirect(buffer00122, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00110, "uint16");
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder0020.end();
    render_pass_encoder0030.end();
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0098, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0075, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0050.drawIndirect(buffer00108, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00108, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.drawIndirect(buffer0067, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder2020.drawIndirect(buffer2038, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0050.drawIndirect(buffer00125, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder0060.end();
    render_pass_encoder0000.drawIndirect(buffer00133, 0);
    render_pass_encoder0060.drawIndirect(buffer0043, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0060.end();
    render_pass_encoder2020.drawIndirect(buffer2011, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0041.drawIndirect(buffer0080, 0);
    render_pass_encoder0020.drawIndirect(buffer00118, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0060, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0039, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0010.drawIndirect(buffer0067, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20129 = device20.createBuffer({
        label: "buffer20129",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20129, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20129, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00134 = device00.createBuffer({
        label: "buffer00134",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00134, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00134, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2020.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0043, 0);
    device20.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00108, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0010.drawIndirect(buffer00115, 0);
    render_pass_encoder2020.drawIndirect(buffer2082, 0);
    render_pass_encoder0041.drawIndirect(buffer0039, 0);
    render_pass_encoder0030.drawIndirect(buffer0065, 0);
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0020.drawIndirect(buffer0065, 0);
    render_pass_encoder0000.drawIndirect(buffer0055, 0);
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
    render_pass_encoder0040.drawIndirect(buffer00133, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00135 = device00.createBuffer({
        label: "buffer00135",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00135, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00135, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2068, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0079, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0057, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0050.drawIndirect(buffer0086, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer00116, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2085, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer0070, 0);
    render_pass_encoder0050.drawIndirect(buffer0034, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder2000.end();
    render_pass_encoder2020.drawIndirect(buffer2015, 0);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0015, "uint16");
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0060.drawIndirect(buffer00123, 0);
    render_pass_encoder0000.drawIndirect(buffer0028, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2078, 0);
    render_pass_encoder2020.drawIndirect(buffer2049, 0);
    render_pass_encoder0000.drawIndirect(buffer00135, 0);
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0000.setIndexBuffer(buffer0083, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0082, 0);
    const buffer00136 = device00.createBuffer({
        label: "buffer00136",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00137 = device00.createBuffer({
        label: "buffer00137",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0051 = device00.createBindGroup({
        label: "bind_group0051",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00136,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00137,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0051);
    render_pass_encoder0040.drawIndirect(buffer0013, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0065, 0);
    render_pass_encoder0030.drawIndirect(buffer0087, 0);
    render_pass_encoder0040.drawIndirect(buffer0089, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0042, 0);
    render_pass_encoder0041.drawIndirect(buffer00118, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0080, 0);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00115, 0);
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00103, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0040.drawIndirect(buffer00115, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00125, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0030.drawIndirect(buffer00134, 0);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0040.drawIndirect(buffer00125, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0050.drawIndirect(buffer0060, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2077, 0);
    device00.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0041.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00118, 0);
    render_pass_encoder0010.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0065, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0066, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer00134, 0);
    render_pass_encoder0041.drawIndirect(buffer0054, 0);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0020.drawIndirect(buffer00114, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0054, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndexed(3);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0060.drawIndirect(buffer0039, 0);
    render_pass_encoder0020.drawIndirect(buffer0059, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00118, 0);
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20115, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00119, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20130 = device20.createBuffer({
        label: "buffer20130",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20130, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20130, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0060.drawIndirect(buffer0055, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00102, 0);
}