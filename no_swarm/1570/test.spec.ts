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
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
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
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    device10.pushErrorScope("out-of-memory");
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_buffer000 = command_encoder000.finish();
    const texture_view1005 = texture100.createView({ label: "texture_view1005" });
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query103.destroy()
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query103
    });
    
    
    texture100.destroy();
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query100
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query101.destroy()
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
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
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    query100.destroy()
    device00.queue.submit([command_buffer000, ]);
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
    device10.destroy();
    
    render_pass_encoder1000.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    query000.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder001.popDebugGroup()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    command_encoder001.insertDebugMarker("mymarker");
    
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const render_pass_encoder1002 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query102
    });
    command_encoder001.insertDebugMarker("mymarker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    query101.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    query001.destroy()
    query000.destroy()
    const array0 = new Float32Array([-1.0, -0.75, 1.0, 0.75, -1.0, 0.75, 0.25, -0.25, 0.5, 1.0, 0.75, 0.5, 1.0, -0.25, -0.75, -0.25, -1.0, 0.25, 0.75, -0.25, 0.75, 0.0, -0.25, -0.75, 0.0, -0.75, 0.75, 0.25, -0.25, 0.5, -0.25, -0.25, -0.5, 0.5, -1.0, 0.0, 0.25, -0.5, 0.5, -0.5, 0.0, -0.75, 0.75, -0.75, -0.75, 0.75, 1.0, -1.0, 0.5, 0.75, 0.25, -0.75, 0.75, 0.0, 0.0, -0.25, -0.25, 0.75, -0.5, -0.25, 0.0, -1.0, -0.25, 0.5, -0.5, 0.5, -0.5, 1.0, 0.5, -0.25, -0.5, 0.75, 1.0, 0.5, 0.75, -0.25, -0.75, -1.0, 1.0, -0.25, -0.25, -0.75, -0.75, 0.75, -0.75, 1.0, 0.25, 0.5, 0.75, 0.75, -0.5, 0.75, -0.25, 0.0, 0.75, 0.0, 1.0, 0.0, 0.5, -0.25, ]);
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
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    compute_pass_encoder0010.popDebugGroup()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array1 = new Float32Array([0.0, -0.5, -0.75, 0.5, -0.5, 0.0, -1.0, -1.0, 0.75, 0.75, -0.75, 1.0, 0.25, 0.0, -1.0, 0.75, 0.5, 0.75, -0.5, 0.0, 0.75, 0.5, -0.75, 0.0, -0.75, 0.5, 0.25, -1.0, 0.25, 0.5, 0.75, 1.0, 0.0, 0.75, -0.5, 0.75, -0.5, 0.0, 1.0, 0.75, -0.5, -1.0, -0.5, 0.75, -0.5, 0.25, 1.0, 0.25, 0.75, 0.5, -0.25, -0.5, 0.0, 1.0, 0.0, -0.25, 0.0, -1.0, 0.75, 1.0, 0.5, 0.25, 0.75, -0.25, 0.5, -0.25, 0.0, 0.25, -0.5, 1.0, 1.0, -0.25, 0.25, -1.0, -0.75, 0.5, -0.5, 0.25, 0.75, -0.75, -0.25, -0.25, 0.25, 0.5, 0.25, -1.0, 0.0, 0.75, -0.25, -0.5, -0.5, 1.0, -0.25, -0.25, 0.25, 0.5, 0.75, 0.75, 1.0, -1.0, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    query101.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.destroy();
    texture000.destroy();
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query001.destroy()
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder000.popDebugGroup();
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    render_pass_encoder1000.popDebugGroup();
    
    
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
        occlusionQuerySet: query001
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    render_pass_encoder0020.executeBundles([render_bundle_encoder002, ])
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    buffer000.destroy()
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    texture002.destroy();
    buffer001.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    command_encoder300.pushDebugGroup("mygroupmarker")
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    
    render_pass_encoder1001.setStencilReference(1);
    render_bundle_encoder300.setPipeline(render_pipeline301);
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
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
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer301,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
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
        occlusionQuerySet: query000
    });
    query002.destroy()
    render_bundle_encoder001.popDebugGroup();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0021.setStencilReference(1);
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
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    render_pass_encoder0011.executeBundles([])
    render_bundle_encoder001.setPipeline(render_pipeline001);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
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
    device30.pushErrorScope("out-of-memory");
    command_encoder002.clearBuffer(buffer002);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    render_pass_encoder0021.pushDebugGroup("group_marker");
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
    device00.pushErrorScope("out-of-memory");
    
    render_pass_encoder0011.setPipeline(render_pipeline000);
    device00.pushErrorScope("out-of-memory");
    render_pass_encoder0010.beginOcclusionQuery(0)
    render_pass_encoder0011.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder0010.setPipeline(render_pipeline003);
    compute_pass_encoder0030.setPipeline(compute_pipeline002);
    device40.destroy();
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group000);
    texture300.destroy();
    compute_pass_encoder0010.insertDebugMarker("marker")
    
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
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

    render_pass_encoder0011.setBindGroup(0, bind_group001);
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    texture000.destroy();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group003);
    render_bundle_encoder002.setPipeline(render_pipeline003);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.setPipeline(render_pipeline001);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0011, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0011, 0);
    buffer0011.destroy()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder0011.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0021.setPipeline(render_pipeline001);
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    render_pass_encoder0021.pushDebugGroup("group_marker");
    buffer007.destroy()
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    buffer0010.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer002.destroy()
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
    render_bundle_encoder000.insertDebugMarker("marker");
    query300.destroy()
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group004);
    
    render_pass_encoder0010.endOcclusionQuery()
    
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

    render_bundle_encoder002.setBindGroup(0, bind_group005);
    
    device00.queue.writeBuffer(buffer0012, 0, array0, 0, array0.length);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    texture300.destroy();
    
    command_encoder300.popDebugGroup()
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group006);
    
    buffer003.destroy()
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query003
    });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    texture001.destroy();
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder301.setPipeline(render_pipeline304);
    render_pass_encoder0011.pushDebugGroup("group_marker");
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    buffer0016.destroy()
    
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    buffer0014.destroy()
    
    
    buffer005.destroy()
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0010.popDebugGroup();
    device00.pushErrorScope("out-of-memory");
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group007);
    render_pass_encoder0011.setVertexBuffer(0, buffer0017);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder0030.beginOcclusionQuery(0)
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder3000.insertDebugMarker("marker")
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_pass_encoder0021.popDebugGroup();
    
    render_pass_encoder0011.setStencilReference(1);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    render_bundle_encoder000.setVertexBuffer(0, buffer006);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.popDebugGroup();
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    buffer0019.destroy()
    render_pass_encoder3001.setPipeline(render_pipeline303);
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3001.setStencilReference(1);
    render_pass_encoder3000.setPipeline(render_pipeline301);
    render_bundle_encoder302.popDebugGroup();
    render_pass_encoder3001.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    render_pass_encoder3020.setPipeline(render_pipeline301);
    const command_buffer301 = command_encoder301.finish();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    buffer303.destroy()
    render_pass_encoder0021.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query001.destroy()
    render_pass_encoder0011.drawIndirect(buffer0017, 0);
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0030.insertDebugMarker("marker");
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.setStencilReference(1);
    query002.destroy()
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    render_bundle_encoder302.setPipeline(render_pipeline304);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    buffer0013.destroy()
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer0013,
        0
    )
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    render_bundle_encoder002.setVertexBuffer(0, buffer002);
    query300.destroy()
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    render_pass_encoder3020.pushDebugGroup("group_marker");
    render_pass_encoder0030.setPipeline(render_pipeline004);
    
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    query300.destroy()
    render_pass_encoder0011.popDebugGroup();
    buffer004.destroy()
    const array2 = new Float32Array([1.0, 0.75, -0.75, -0.5, 0.75, -0.75, 0.25, -0.25, 1.0, 0.5, 0.75, 0.5, 0.5, 0.5, -0.5, -0.75, -0.75, 0.0, 1.0, -0.5, -0.25, 0.0, 0.5, 0.25, 0.25, -0.75, 0.5, 1.0, 0.25, 0.75, 0.0, -0.75, -0.75, 0.0, 0.5, 0.0, 0.75, 1.0, 0.0, -0.75, 0.0, -0.5, 0.25, 0.25, -0.25, 0.5, 0.5, 0.0, -0.75, -0.25, -0.5, -1.0, 1.0, -0.25, -1.0, 0.0, 0.25, 0.25, -0.75, 0.5, 0.5, 0.75, -0.5, -0.25, -0.75, -0.25, -0.5, 0.75, 0.0, 0.25, -0.25, 1.0, 0.0, 0.0, -0.75, -0.5, 0.75, 0.0, 0.0, -1.0, 0.75, -0.5, -0.5, -1.0, -1.0, 0.75, -1.0, -0.75, -0.25, -0.5, -0.5, -0.25, 1.0, 0.25, -0.25, 0.75, -0.5, 0.25, -0.25, -0.75, ]);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder3001.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    buffer305.destroy()
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer304.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer004,
        0
    )
    
    render_pass_encoder0010.setVertexBuffer(0, buffer002);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    command_encoder300.clearBuffer(buffer303);
    
    buffer008.destroy()
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    render_bundle_encoder002.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0011.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    query301.destroy()
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.drawIndexed(3);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0021.pushDebugGroup("group_marker");
    
    
    render_pass_encoder3020.setStencilReference(1);
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder3020.setPipeline(compute_pipeline300);
    
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    texture301.destroy();
    query002.destroy()
    render_pass_encoder3000.insertDebugMarker("marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder0020.setVertexBuffer(0, buffer003);
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout003,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.setVertexBuffer(0, buffer0010);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout008,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.insertDebugMarker("marker");
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group302);
    compute_pass_encoder3020.insertDebugMarker("marker")
    buffer304.destroy()
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
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    
    buffer301.destroy()
    
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    buffer0018.destroy()
    render_pass_encoder3001.insertDebugMarker("marker");
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3020.setStencilReference(1);
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder0020.end();
    render_pass_encoder0010.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_pass_encoder3001.setBindGroup(0, bind_group303);
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group304);
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group305);
    compute_pass_encoder3030.setPipeline(compute_pipeline302);
    render_pass_encoder0010.end();
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0020, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0020, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group306);
    render_pass_encoder3020.setVertexBuffer(0, buffer305);
    render_pass_encoder3020.draw(3);
    render_pass_encoder3001.setVertexBuffer(0, buffer302);
    render_pass_encoder0011.drawIndirect(buffer0020, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3001.setIndexBuffer(buffer303, "uint16");
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder3001.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder3000.end();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
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

    render_pass_encoder0030.setBindGroup(0, bind_group008);
    compute_pass_encoder0010.popDebugGroup()
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group009);
    compute_pass_encoder0030.end();
    render_pass_encoder1001.setPipeline(render_pipeline100);
    render_pass_encoder3001.end();
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group307);
    compute_pass_encoder3020.end();
    render_pass_encoder0030.setVertexBuffer(0, buffer0012);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0011, 0);
    render_pass_encoder0021.setVertexBuffer(0, buffer002);
    render_pass_encoder0010.drawIndirect(buffer0011, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0010.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder3001.drawIndirect(buffer303, 0);
    compute_pass_encoder3000.end();
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder0010.end();
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0010);
    compute_pass_encoder3020.end();
    render_pass_encoder0030.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder3000.setVertexBuffer(0, buffer305);
    render_pass_encoder0011.draw(3);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3001.drawIndexedIndirect(buffer3017, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0011, 0);
    render_pass_encoder0020.end();
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0011);
    render_pass_encoder3020.end();
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0012);
    render_pass_encoder0010.draw(3);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder1002.setPipeline(render_pipeline100);
    render_pass_encoder3000.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder3001.popDebugGroup();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
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
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group100);
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0031, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0031, 0);
    render_pass_encoder3001.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group308);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0010.drawIndirect(buffer0011, 0);
    render_pass_encoder3000.end();
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0021.drawIndirect(buffer0013, 0);
    device10.queue.submit([]);
    render_pass_encoder3020.drawIndirect(buffer3016, 0);
    compute_pass_encoder3030.end();
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder3000.drawIndirect(buffer3019, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    const command_buffer303 = command_encoder303.finish();
    device30.queue.submit([command_buffer303, ]);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0031, 0);
    render_pass_encoder3000.popDebugGroup();
    const command_buffer001 = command_encoder001.finish();
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder0011.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0011.drawIndirect(buffer0018, 0);
    render_pass_encoder3020.setIndexBuffer(buffer303, "uint16");
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3020, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3020, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder3020.drawIndirect(buffer302, 0);
    render_pass_encoder1001.setVertexBuffer(0, buffer101);
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3021, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3021, 0);
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    render_pass_encoder0021.end();
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0013);
    render_pass_encoder3020.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder0010.drawIndirect(buffer005, 0);
    render_pass_encoder0030.end();
    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3023,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group309);
    device00.queue.submit([command_buffer003, ]);
    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3025,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3010);
    command_encoder002.popDebugGroup()
    render_pass_encoder3020.drawIndirect(buffer3020, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0011.draw(3);
    render_pass_encoder3001.drawIndirect(buffer303, 0);
    render_pass_encoder3020.drawIndexed(3);
    const command_buffer002 = command_encoder002.finish();
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder0011.drawIndirect(buffer0033, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3021, 0);
    render_pass_encoder3001.draw(3);
    device30.queue.submit([command_buffer303, ]);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0034, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0034, 0);
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0011, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3001.drawIndexedIndirect(buffer3014, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3020.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0034, 0);
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder3030.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer001, 0);
    render_pass_encoder3001.endOcclusionQuery()
    render_pass_encoder0011.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder3020.setIndexBuffer(buffer309, "uint16");
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder3001.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder3000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0011.drawIndirect(buffer0033, 0);
    render_pass_encoder0010.drawIndirect(buffer0024, 0);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder0010.end();
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3026, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3026, 0);
    render_pass_encoder3020.drawIndirect(buffer3017, 0);
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([]);
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1002.setBindGroup(0, bind_group101);
    render_pass_encoder3001.drawIndexedIndirect(buffer307, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0035, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder3000.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0013, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer009, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder3001.drawIndirect(buffer3021, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3021, 0);
    device50.queue.submit([]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer005, 0);
    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3028,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3011);
    render_pass_encoder0020.end();
    render_pass_encoder3001.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer3011, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0034, 0);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    compute_pass_encoder3000.end();
    render_pass_encoder0011.drawIndirect(buffer009, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3013, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder3001.drawIndirect(buffer3011, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3020, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3001.drawIndexedIndirect(buffer3027, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3020.drawIndexedIndirect(buffer3022, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder3001.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder3001.drawIndexedIndirect(buffer3019, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0010.drawIndirect(buffer0031, 0);
    render_pass_encoder0011.drawIndirect(buffer0034, 0);
    compute_pass_encoder3020.popDebugGroup()
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3029, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3029, 0);
    compute_pass_encoder3020.popDebugGroup()
    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3031,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3012);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3000.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder3000.end();
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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
    render_pass_encoder3000.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0017, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    render_pass_encoder3020.draw(3);
    render_pass_encoder0030.end();
    render_pass_encoder0021.drawIndirect(buffer0011, 0);
    render_pass_encoder3000.drawIndirect(buffer303, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0010.drawIndirect(buffer0020, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder3020.drawIndirect(buffer306, 0);
    render_pass_encoder3020.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder3030.end();
    render_pass_encoder3001.setIndexBuffer(buffer309, "uint16");
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3032, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3032, 0);
    render_pass_encoder3020.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0037, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.end();
    compute_pass_encoder3020.dispatchWorkgroups(100);
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0015);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder3001.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder3020.drawIndirect(buffer3029, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0040, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0040, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0020.end();
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder0010.end();
    device50.queue.submit([]);
    render_pass_encoder3001.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder3020.drawIndirect(buffer3026, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1001.drawIndirect(buffer102, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    compute_pass_encoder0010.end();
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
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
                    buffer: buffer0041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0042,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0016);
    render_pass_encoder0021.draw(3);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0027, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer001, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder3000.end();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    render_pass_encoder3001.drawIndirect(buffer307, 0);
    render_pass_encoder3020.drawIndirect(buffer302, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0043, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0043, 0);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0022, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0020.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0035, 0);
    compute_pass_encoder0030.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder0011.end();
    render_pass_encoder3000.drawIndirect(buffer3020, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0016, 0);
    render_pass_encoder0021.end();
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder0010.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3020.drawIndirect(buffer3021, 0);
    render_pass_encoder3020.end();
    render_pass_encoder0011.drawIndirect(buffer0034, 0);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    render_pass_encoder0021.drawIndirect(buffer0035, 0);
    render_pass_encoder3020.setIndexBuffer(buffer303, "uint16");
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0020, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0033, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0027, "uint16");
    compute_pass_encoder0010.end();
    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3034,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3013);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder1001.endOcclusionQuery()
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3035, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3035, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0043, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder3020.drawIndirect(buffer3021, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0043, 0);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3036, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3036, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0020.end();
    compute_pass_encoder0010.popDebugGroup()
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group102);
    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3038,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3014);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3020.drawIndirect(buffer3011, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3015, "uint16");
    device50.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder0011.drawIndirect(buffer0023, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0013, 0);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0044, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0044, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder3020.drawIndirect(buffer3020, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder3001.drawIndirect(buffer3011, 0);
    render_pass_encoder3020.drawIndirect(buffer3031, 0);
    render_pass_encoder0021.drawIndirect(buffer0027, 0);
    render_pass_encoder0030.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3035, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer0020, 0);
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0014, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0021.drawIndirect(buffer0034, 0);
    render_pass_encoder0011.end();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndexedIndirect(buffer3035, 0);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0021.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0011.end();
    render_pass_encoder0021.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder0020.end();
    render_pass_encoder3001.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3001.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3020, 0);
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    render_pass_encoder0010.drawIndirect(buffer0042, 0);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3039, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3039, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder3030.popDebugGroup()
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3040, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3040, 0);
    compute_pass_encoder3000.end();
    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
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
                    buffer: buffer0045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0046,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0017);
    render_pass_encoder0030.drawIndirect(buffer0040, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0013, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0011.drawIndirect(buffer0044, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3026, 0);
    device30.queue.submit([]);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndirect(buffer007, 0);
    render_pass_encoder0021.drawIndirect(buffer0035, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder3001.drawIndirect(buffer3033, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0021.drawIndirect(buffer0040, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3021, 0);
    render_pass_encoder0020.popDebugGroup();
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0018);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0019);
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0030.end();
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3041, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3041, 0);
    render_pass_encoder3000.drawIndirect(buffer3022, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    device00.queue.submit([command_buffer002, ]);
    const buffer3042 = device30.createBuffer({
        label: "buffer3042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3043 = device30.createBuffer({
        label: "buffer3043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3015 = device30.createBindGroup({
        label: "bind_group3015",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3043,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3015);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder3000.drawIndirect(buffer3035, 0);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder3001.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder3001.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer000, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0020, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0015, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3015, "uint16");
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder3020.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0010.drawIndirect(buffer0027, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0021.drawIndirect(buffer000, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0011.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder3020.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder0020.drawIndirect(buffer0011, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0051, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0051, 0);
    device30.queue.submit([command_buffer303, ]);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0044, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0043, 0);
    render_pass_encoder3000.drawIndirect(buffer3021, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3036, 0);
    render_pass_encoder0021.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0034, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder3001.drawIndirect(buffer3036, 0);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder3020.drawIndexedIndirect(buffer3026, 0);
    render_pass_encoder0011.drawIndirect(buffer0051, 0);
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    compute_pass_encoder3030.end();
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0020);
    render_pass_encoder0020.setIndexBuffer(buffer009, "uint16");
    const buffer3044 = device30.createBuffer({
        label: "buffer3044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3045 = device30.createBuffer({
        label: "buffer3045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3016 = device30.createBindGroup({
        label: "bind_group3016",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3045,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3016);
    render_pass_encoder3020.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder0020.draw(3);
    compute_pass_encoder0030.end();
    render_pass_encoder3001.drawIndirect(buffer3017, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder3001.drawIndexedIndirect(buffer3026, 0);
    render_pass_encoder1002.setVertexBuffer(0, buffer105);
    render_pass_encoder0020.drawIndirect(buffer0051, 0);
    render_pass_encoder3000.drawIndirect(buffer3035, 0);
    render_pass_encoder3000.drawIndirect(buffer3035, 0);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer002, ]);
    const buffer3046 = device30.createBuffer({
        label: "buffer3046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3047 = device30.createBuffer({
        label: "buffer3047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3017 = device30.createBindGroup({
        label: "bind_group3017",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3047,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3017);
    compute_pass_encoder0030.end();
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0043, 0);
    render_pass_encoder0011.end();
    render_pass_encoder3001.drawIndirect(buffer3013, 0);
    compute_pass_encoder3030.popDebugGroup()
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
    render_pass_encoder0030.drawIndirect(buffer0043, 0);
    render_pass_encoder0020.popDebugGroup();
    const buffer3048 = device30.createBuffer({
        label: "buffer3048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3049 = device30.createBuffer({
        label: "buffer3049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3018 = device30.createBindGroup({
        label: "bind_group3018",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3049,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3018);
    const buffer3050 = device30.createBuffer({
        label: "buffer3050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3051 = device30.createBuffer({
        label: "buffer3051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3019 = device30.createBindGroup({
        label: "bind_group3019",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3051,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3019);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer0054, 0);
    render_pass_encoder3001.drawIndirect(buffer3039, 0);
    render_pass_encoder0010.drawIndirect(buffer0034, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndirect(buffer0051, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3052 = device30.createBuffer({
        label: "buffer3052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3052, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3052, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndirect(buffer3046, 0);
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const buffer3053 = device30.createBuffer({
        label: "buffer3053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3054 = device30.createBuffer({
        label: "buffer3054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3020 = device30.createBindGroup({
        label: "bind_group3020",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3054,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3020);
    compute_pass_encoder0030.popDebugGroup()
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    render_pass_encoder3001.drawIndirect(buffer3029, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder3001.drawIndirect(buffer3040, 0);
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0020.end();
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3055 = device30.createBuffer({
        label: "buffer3055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3055, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3055, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3001.drawIndirect(buffer3035, 0);
    device30.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer0043, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder3020.end();
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder3000.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder3020.drawIndexedIndirect(buffer3026, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    compute_pass_encoder0010.end();
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
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0021);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndirect(buffer0044, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
    render_pass_encoder3020.drawIndirect(buffer3029, 0);
    render_pass_encoder3000.setIndexBuffer(buffer303, "uint16");
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder0020.end();
    device30.queue.submit([]);
    render_pass_encoder3001.drawIndexedIndirect(buffer3032, 0);
    render_pass_encoder3000.drawIndirect(buffer3026, 0);
    render_pass_encoder3001.drawIndirect(buffer3032, 0);
    render_pass_encoder0030.drawIndirect(buffer0043, 0);
    render_pass_encoder0020.end();
    render_pass_encoder3001.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer3036, 0);
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
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
                    buffer: buffer0057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0058,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0022);
    render_pass_encoder3000.setIndexBuffer(buffer3026, "uint16");
    render_pass_encoder1000.setVertexBuffer(0, buffer101);
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0037, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder3001.endOcclusionQuery()
    const buffer3056 = device30.createBuffer({
        label: "buffer3056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3057 = device30.createBuffer({
        label: "buffer3057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3021 = device30.createBindGroup({
        label: "bind_group3021",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3057,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3021);
    compute_pass_encoder3000.end();
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0023);
    render_pass_encoder3000.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3000.drawIndirect(buffer3018, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0034, 0);
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0011.drawIndirect(buffer0043, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3041, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder3000.drawIndirect(buffer3029, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder3020.end();
    render_pass_encoder3001.setIndexBuffer(buffer3049, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3030, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3020.drawIndirect(buffer3032, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1002.draw(3);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3001.end();
    render_pass_encoder0011.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0015, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0051, 0);
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0043, 0);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3058 = device30.createBuffer({
        label: "buffer3058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3058, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3058, 0);
    render_pass_encoder0010.drawIndirect(buffer0020, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3026, 0);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3059 = device30.createBuffer({
        label: "buffer3059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3059, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3059, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder3000.drawIndirect(buffer3051, 0);
    render_pass_encoder0030.drawIndirect(buffer009, 0);
    compute_pass_encoder3030.end();
    const buffer3060 = device30.createBuffer({
        label: "buffer3060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3061 = device30.createBuffer({
        label: "buffer3061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3022 = device30.createBindGroup({
        label: "bind_group3022",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3061,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3022);
    render_pass_encoder0010.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.draw(3);
    render_pass_encoder3001.end();
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    compute_pass_encoder3020.end();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3001.setIndexBuffer(buffer3049, "uint16");
}