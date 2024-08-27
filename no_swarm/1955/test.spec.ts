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
    const array0 = new Float32Array([0.5, -0.25, 1.0, 0.0, -0.5, -1.0, -0.5, -0.25, 1.0, -1.0, -0.25, -0.75, 0.25, -0.5, -0.25, 0.75, -0.25, 0.5, -0.75, 0.75, -0.25, 0.0, 0.75, 1.0, -0.5, -1.0, -1.0, -1.0, 0.0, -1.0, -1.0, 0.25, 0.25, 0.5, -0.75, -0.5, -0.5, -0.5, -0.75, 1.0, 0.5, -1.0, 1.0, 0.75, -0.75, 0.25, 0.25, 0.25, 1.0, -0.75, 0.0, -0.25, -0.5, 0.5, -0.75, 0.0, 0.75, 0.0, 1.0, 0.25, -0.75, -0.5, -0.75, -1.0, -1.0, 0.0, 1.0, 0.25, 0.75, -1.0, -0.25, 0.75, 0.5, 0.0, 0.5, 0.25, 0.25, -0.75, -0.75, 0.25, -0.75, -0.75, 0.5, -0.5, -0.5, 0.75, 0.25, -1.0, -0.5, 0.5, -0.5, -0.75, 0.25, 0.75, 1.0, -0.25, -0.5, 0.5, -0.75, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    device10.pushErrorScope("validation");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device10.queue.submit([]);
    
    
    buffer100.destroy()
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
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
        occlusionQuerySet: query000
    });
    buffer000.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder0000.executeBundles([])
    
    texture001.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer101.destroy()
    texture100.destroy();
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
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
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    
    texture000.destroy();
    render_pass_encoder1000.beginOcclusionQuery(0)
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    texture103.destroy();
    device10.pushErrorScope("internal");
    
    render_pass_encoder1000.endOcclusionQuery()
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    texture101.destroy();
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    texture102.destroy();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    device40.pushErrorScope("validation");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.setPipeline(render_pipeline000);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
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

    render_pass_encoder0000.setBindGroup(0, bind_group000);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    query100.destroy()
    query100.destroy()
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query102
    });
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const command_buffer102 = command_encoder102.finish();
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8uint",
        dimension: "2d"
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1000.setPipeline(render_pipeline100);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1000.setStencilReference(1);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    render_pass_encoder1010.executeBundles([])
    buffer102.destroy()
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture000
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
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder002.pushDebugGroup("mygroupmarker")
    texture300.destroy();
    
    
    
    
    render_pass_encoder1000.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    query300.destroy()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    command_encoder002.popDebugGroup()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    query400.destroy()
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder1010.setPipeline(render_pipeline100);
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder0000.beginOcclusionQuery(0)
    query102.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    buffer002.destroy()
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    query102.destroy()
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const command_buffer001 = command_encoder001.finish();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    query102.destroy()
    buffer003.destroy()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder1010.insertDebugMarker("marker");
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
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    render_bundle_encoder401.setPipeline(render_pipeline400);
    
    query400.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    command_encoder302.insertDebugMarker("mymarker");
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    const command_buffer302 = command_encoder302.finish();
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
        occlusionQuerySet: query000
    });
    
    render_pass_encoder0000.insertDebugMarker("marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture002.destroy();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group100);
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder301.insertDebugMarker("mymarker");
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
    
    
    device30.queue.submit([command_buffer302, ]);
    
    
    render_pass_encoder0030.setPipeline(render_pipeline004);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    query400.destroy()
    
    render_pass_encoder1000.setStencilReference(1);
    
    buffer004.destroy()
    
    render_bundle_encoder402.insertDebugMarker("marker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    query100.destroy()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
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
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    render_bundle_encoder402.setPipeline(render_pipeline400);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    buffer301.destroy()
    query300.destroy()
    query100.destroy()
    command_encoder300.insertDebugMarker("mymarker");
    render_pass_encoder1000.beginOcclusionQuery(1)
    buffer103.destroy()
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    device00.pushErrorScope("internal");
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
    buffer002.destroy()
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    query102.destroy()
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    render_pass_encoder1000.setStencilReference(1);
    
    
    
    render_bundle_encoder400.setPipeline(render_pipeline401);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1010.setStencilReference(1);
    
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    
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
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.setStencilReference(1);
    compute_pass_encoder1000.popDebugGroup()
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
    
    buffer001.destroy()
    command_encoder301.clearBuffer(buffer302);
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0000.setStencilReference(1);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1000.insertDebugMarker("marker");
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    render_pass_encoder0000.setVertexBuffer(0, buffer000);
    buffer401.destroy()
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    query102.destroy()
    
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder4020.executeBundles([])
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group401);
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer401,
        0
    )
    
    render_pass_encoder1011.setPipeline(render_pipeline101);
    
    render_pass_encoder4020.executeBundles([render_bundle_encoder402, ])
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    command_encoder402.insertDebugMarker("mymarker");
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder0000.setIndexBuffer(buffer004, "uint16");
    command_encoder400.copyBufferToBuffer(
        buffer404,
        0,
        buffer404,
        0,
        400
    );
    render_bundle_encoder400.popDebugGroup();
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer408,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer409,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group402);
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_pass_encoder1000.setBindGroup(0, bind_group101);
    
    command_encoder402.copyBufferToBuffer(
        buffer402,
        0,
        buffer403,
        0,
        400
    );
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.popDebugGroup();
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer404.destroy()
    device20.destroy();
    command_encoder101.copyTextureToBuffer(
        {
            texture: texture104
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device30.pushErrorScope("validation");
    buffer106.destroy()
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3000.insertDebugMarker("marker")
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
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group102);
    
    buffer407.destroy()
    buffer406.destroy()
    query102.destroy()
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder0030.setStencilReference(1);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_pass_encoder1011.popDebugGroup();
    query400.destroy()
    render_pass_encoder1000.setVertexBuffer(0, buffer100);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    compute_pass_encoder3000.popDebugGroup()
    command_encoder301.clearBuffer(buffer302);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1011, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1011, 0);
    
    
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    render_pass_encoder0030.beginOcclusionQuery(1)
    
    
    {
        await buffer107.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer107.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer107.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0000.popDebugGroup();
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    texture301.destroy();
    render_pass_encoder1011.setStencilReference(1);
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer403,
        0
    )
    
    
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0000.drawIndirect(buffer003, 0);
    buffer408.destroy()
    
    
    compute_pass_encoder4010.setPipeline(compute_pipeline400);
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1011.insertDebugMarker("marker");
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    command_encoder400.clearBuffer(buffer401);
    
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
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
    buffer005.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_pass_encoder0030.endOcclusionQuery()
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
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

    render_pass_encoder0030.setBindGroup(0, bind_group001);
    
    render_bundle_encoder400.popDebugGroup();
    buffer109.destroy()
    render_pass_encoder1000.setStencilReference(1);
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    buffer007.destroy()
    
    query102.destroy()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.setStencilReference(1);
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    render_pass_encoder4020.insertDebugMarker("marker");
    render_bundle_encoder401.popDebugGroup();
    
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
    
    buffer108.destroy()
    {
        await buffer1010.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1010.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1010.unmap();
        console.log(new Float32Array(data));
    }
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_pass_encoder0000.end();
    render_bundle_encoder401.pushDebugGroup("group_marker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_pass_encoder1010.insertDebugMarker("marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
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
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder4021 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query400
    });
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    render_pass_encoder1011.setBindGroup(0, bind_group103);
    render_pass_encoder1000.drawIndirect(buffer1011, 0);
    compute_pass_encoder4010.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.end();
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4011,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group403);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1010.setVertexBuffer(0, buffer105);
    render_pass_encoder0030.setVertexBuffer(0, buffer000);
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder1000.endOcclusionQuery()
    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4013,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group404);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder4020.setVertexBuffer(0, buffer407);
    compute_pass_encoder1000.end();
    render_pass_encoder4021.setPipeline(render_pipeline400);
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1011.setVertexBuffer(0, buffer1010);
    render_pass_encoder1011.setIndexBuffer(buffer106, "uint16");
    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4015,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group405);
    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4017,
                },
            },
        ],
    });

    render_pass_encoder4021.setBindGroup(0, bind_group406);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1011.drawIndirect(buffer1011, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer1012, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1011.setIndexBuffer(buffer104, "uint16");
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder1010.end();
    render_pass_encoder1010.setIndexBuffer(buffer109, "uint16");
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder4021.setVertexBuffer(0, buffer4011);
    device10.queue.submit([command_buffer102, ]);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4018, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4018, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4021.setIndexBuffer(buffer4018, "uint16");
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder4021.drawIndexed(3);
    compute_pass_encoder1000.end();
    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4020,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group407);
    render_pass_encoder1000.drawIndirect(buffer107, 0);
    render_pass_encoder1010.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    compute_pass_encoder4000.end();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder0000.endOcclusionQuery()
    compute_pass_encoder4010.end();
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder1010.draw(3);
    command_encoder100.popDebugGroup()
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1010.drawIndexedIndirect(buffer109, 0);
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer003, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder4021.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder1011.end();
    render_pass_encoder4021.setIndexBuffer(buffer4018, "uint16");
    render_pass_encoder4021.drawIndirect(buffer4018, 0);
    compute_pass_encoder4000.end();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1011.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder4021.end();
    render_pass_encoder4021.popDebugGroup();
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
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
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group104);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder0030.draw(3);
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer107, 0);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1011.drawIndexedIndirect(buffer1011, 0);
    compute_pass_encoder1000.end();
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    compute_pass_encoder1000.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder4021.drawIndirect(buffer4018, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1011, 0);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4021, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4021, 0);
    device00.queue.submit([command_buffer003, ]);
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1011.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder4020.end();
    render_pass_encoder4021.endOcclusionQuery()
    render_pass_encoder4021.end();
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0000.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1010.end();
    render_pass_encoder4020.drawIndirect(buffer4018, 0);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    compute_pass_encoder1000.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder4010.end();
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer400, ]);
    device10.queue.submit([]);
    render_pass_encoder1011.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder0000.end();
    render_pass_encoder0030.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder4020.setIndexBuffer(buffer4013, "uint16");
    device30.queue.submit([]);
    render_pass_encoder1011.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1011.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4020.popDebugGroup();
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
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group105);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder4021.drawIndirect(buffer409, 0);
    device40.queue.submit([command_buffer401, ]);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4022, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4022, 0);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1011, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4020.drawIndexedIndirect(buffer4018, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4020.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder4021.drawIndexedIndirect(buffer4022, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder4020.setIndexBuffer(buffer407, "uint16");
    device30.queue.submit([command_buffer302, ]);
    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4024,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group408);
    render_pass_encoder1011.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1010, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder4020.drawIndirect(buffer407, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer1016, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder0000.drawIndirect(buffer000, 0);
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1018, 0);
    device00.queue.submit([command_buffer003, ]);
    device40.queue.submit([command_buffer401, ]);
    device30.queue.submit([command_buffer302, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1019, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1019, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1000.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.setIndexBuffer(buffer006, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.drawIndirect(buffer004, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder4020.setIndexBuffer(buffer4015, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1011, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1011.drawIndirect(buffer1016, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4026,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group409);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0000.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder3010.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1000.drawIndirect(buffer1016, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder4021.draw(3);
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
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group106);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4028,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4010);
    device10.queue.submit([]);
    render_pass_encoder1010.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder0000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1018, 0);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder1010.end();
    render_pass_encoder4020.drawIndirect(buffer4013, 0);
    render_pass_encoder1011.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder0030.end();
    render_pass_encoder4021.setIndexBuffer(buffer4019, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1011.end();
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder1010.draw(3);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder1000.end();
    render_pass_encoder0000.drawIndirect(buffer000, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0030.end();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder4020.drawIndirect(buffer400, 0);
    render_pass_encoder4020.drawIndirect(buffer4016, 0);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1019, 0);
    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4030,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4011);
    render_pass_encoder1000.drawIndirect(buffer1019, 0);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder1011.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder4020.setIndexBuffer(buffer405, "uint16");
    render_pass_encoder4020.drawIndirect(buffer401, 0);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    render_pass_encoder1011.drawIndirect(buffer1016, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0000.draw(3);
    compute_pass_encoder3000.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1000.drawIndirect(buffer1019, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1011.drawIndirect(buffer1017, 0);
    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4032,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4012);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1011, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4020.drawIndexedIndirect(buffer4021, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4033 = device40.createBuffer({
        label: "buffer4033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4033, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4033, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1011, 0);
    device00.queue.submit([]);
    render_pass_encoder4021.end();
    const buffer4034 = device40.createBuffer({
        label: "buffer4034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4035 = device40.createBuffer({
        label: "buffer4035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4035,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4013);
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder4000.end();
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0030.drawIndirect(buffer007, 0);
    device40.queue.submit([command_buffer400, ]);
    device10.queue.submit([command_buffer102, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4021.drawIndexedIndirect(buffer4016, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder4020.drawIndirect(buffer4016, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder4020.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder4021.end();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder1010.drawIndexed(3);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4020.drawIndirect(buffer4033, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1018, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder1010.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1019, 0);
    const buffer4036 = device40.createBuffer({
        label: "buffer4036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4037 = device40.createBuffer({
        label: "buffer4037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4014 = device40.createBindGroup({
        label: "bind_group4014",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4037,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4014);
    compute_pass_encoder4000.end();
    render_pass_encoder1011.setIndexBuffer(buffer109, "uint16");
    device20.queue.submit([]);
    render_pass_encoder4021.draw(3);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder4021.drawIndexedIndirect(buffer4027, 0);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder4021.drawIndirect(buffer4022, 0);
    render_pass_encoder1000.end();
    render_pass_encoder4020.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1011, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder4020.drawIndirect(buffer4018, 0);
    render_pass_encoder0030.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder4020.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder4020.popDebugGroup();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4038 = device40.createBuffer({
        label: "buffer4038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4038, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4038, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder4020.setIndexBuffer(buffer4035, "uint16");
    render_pass_encoder4020.drawIndirect(buffer4036, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1013, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1022, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1022, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4039 = device40.createBuffer({
        label: "buffer4039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4039, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4039, 0);
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1019, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer000, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1011.end();
    device40.queue.submit([]);
    render_pass_encoder4020.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4021.setIndexBuffer(buffer4021, "uint16");
    render_pass_encoder4021.end();
    render_pass_encoder0000.drawIndexed(3);
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
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group107);
    render_pass_encoder4021.drawIndirect(buffer402, 0);
    device10.queue.submit([command_buffer101, ]);
    device30.queue.submit([command_buffer301, ]);
    device00.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer106, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1018, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder1010.drawIndirect(buffer1016, 0);
    device30.queue.submit([]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    render_pass_encoder4020.popDebugGroup();
    const buffer4040 = device40.createBuffer({
        label: "buffer4040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4041 = device40.createBuffer({
        label: "buffer4041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4015 = device40.createBindGroup({
        label: "bind_group4015",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4041,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4015);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4042 = device40.createBuffer({
        label: "buffer4042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4042, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4042, 0);
    render_pass_encoder1000.drawIndirect(buffer1017, 0);
    render_pass_encoder4020.drawIndexedIndirect(buffer4039, 0);
    render_pass_encoder0030.drawIndexed(3);
    compute_pass_encoder3000.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.setIndexBuffer(buffer003, "uint16");
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device30.queue.submit([]);
    render_pass_encoder0000.draw(3);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer105, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder4020.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder0030.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder4021.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1010.drawIndirect(buffer1022, 0);
    render_pass_encoder0000.draw(3);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    const buffer4043 = device40.createBuffer({
        label: "buffer4043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4044 = device40.createBuffer({
        label: "buffer4044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4016 = device40.createBindGroup({
        label: "bind_group4016",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4044,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4016);
    render_pass_encoder1011.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder4021.drawIndirect(buffer408, 0);
    render_pass_encoder1011.drawIndirect(buffer1016, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1022, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder4021.drawIndirect(buffer4021, 0);
    render_pass_encoder4020.drawIndexedIndirect(buffer4031, 0);
    render_pass_encoder0000.end();
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    render_pass_encoder0000.drawIndirect(buffer000, 0);
    device40.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer000, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder4020.drawIndexedIndirect(buffer4021, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
    render_pass_encoder4021.drawIndexedIndirect(buffer4018, 0);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer007, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4045 = device40.createBuffer({
        label: "buffer4045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4045, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4045, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4046 = device40.createBuffer({
        label: "buffer4046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4046, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4046, 0);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    compute_pass_encoder1000.end();
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder0000.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder1000.end();
    render_pass_encoder0030.setIndexBuffer(buffer003, "uint16");
    device10.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder4020.drawIndirect(buffer4038, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder4021.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder1010.draw(3);
    compute_pass_encoder4010.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4021.drawIndirect(buffer4042, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1000.setIndexBuffer(buffer103, "uint16");
    device30.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0000.draw(3);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4047 = device40.createBuffer({
        label: "buffer4047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4047, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4047, 0);
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder4021.drawIndexedIndirect(buffer4045, 0);
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
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group108);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1027, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1027, 0);
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder4021.popDebugGroup();
    device40.queue.submit([]);
    device10.queue.submit([command_buffer102, ]);
    const buffer4048 = device40.createBuffer({
        label: "buffer4048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4049 = device40.createBuffer({
        label: "buffer4049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4017 = device40.createBindGroup({
        label: "bind_group4017",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4049,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4017);
    render_pass_encoder4021.drawIndexedIndirect(buffer4035, 0);
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    render_pass_encoder1011.drawIndirect(buffer1018, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1027, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder0000.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder0000.drawIndirect(buffer007, 0);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder0030.draw(3);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1000.draw(3);
    render_pass_encoder1010.drawIndirect(buffer1019, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder4021.drawIndirect(buffer4018, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1027, 0);
    device00.queue.submit([command_buffer003, ]);
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([command_buffer301, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1000.drawIndirect(buffer1025, 0);
    render_pass_encoder1000.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder4020.drawIndexedIndirect(buffer4022, 0);
    render_pass_encoder4020.setIndexBuffer(buffer4025, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    render_pass_encoder0000.drawIndirect(buffer000, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder0030.drawIndirect(buffer007, 0);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder4020.drawIndexedIndirect(buffer4018, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4050 = device40.createBuffer({
        label: "buffer4050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4050, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4050, 0);
    device30.queue.submit([]);
    render_pass_encoder0030.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer1022, 0);
    render_pass_encoder1011.drawIndirect(buffer1011, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.drawIndirect(buffer1022, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder4020.end();
    compute_pass_encoder4000.end();
    render_pass_encoder0030.end();
    device10.queue.submit([]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1028, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1028, 0);
    render_pass_encoder0030.drawIndexed(3);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder4020.end();
    render_pass_encoder4021.drawIndirect(buffer401, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder0030.end();
    render_pass_encoder1000.drawIndirect(buffer1027, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1029, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1029, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1030, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1030, 0);
    render_pass_encoder1010.drawIndirect(buffer1010, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder1000.drawIndirect(buffer1019, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1000.drawIndirect(buffer1028, 0);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1027, 0);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder0030.end();
    device40.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1000.drawIndirect(buffer1030, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1010.drawIndexed(3);
    device30.queue.submit([]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1010.end();
    render_pass_encoder0000.draw(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder4021.drawIndexedIndirect(buffer4037, 0);
    device20.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4051 = device40.createBuffer({
        label: "buffer4051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4051, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4051, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder4020.drawIndexedIndirect(buffer4021, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1031, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1031, 0);
    render_pass_encoder0030.end();
    render_pass_encoder4021.drawIndirect(buffer4033, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder4020.drawIndirect(buffer4047, 0);
    render_pass_encoder1000.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1032, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1032, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4052 = device40.createBuffer({
        label: "buffer4052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4052, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4052, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.drawIndexed(3);
    const buffer4053 = device40.createBuffer({
        label: "buffer4053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4054 = device40.createBuffer({
        label: "buffer4054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4018 = device40.createBindGroup({
        label: "bind_group4018",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4054,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4018);
    render_pass_encoder1011.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder4020.drawIndexedIndirect(buffer4042, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder4021.drawIndexedIndirect(buffer4029, 0);
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4020.drawIndirect(buffer4022, 0);
    render_pass_encoder4020.drawIndexedIndirect(buffer4036, 0);
    render_pass_encoder4021.drawIndirect(buffer4022, 0);
    render_pass_encoder4021.drawIndexedIndirect(buffer4051, 0);
    render_pass_encoder4021.drawIndirect(buffer4052, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder1000.end();
    render_pass_encoder1011.drawIndirect(buffer1027, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder4021.drawIndirect(buffer4051, 0);
    render_pass_encoder4021.drawIndexedIndirect(buffer4052, 0);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1019, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1000.popDebugGroup();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4055 = device40.createBuffer({
        label: "buffer4055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4055, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4055, 0);
    render_pass_encoder1010.end();
    const buffer4056 = device40.createBuffer({
        label: "buffer4056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4057 = device40.createBuffer({
        label: "buffer4057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4019 = device40.createBindGroup({
        label: "bind_group4019",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4057,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4019);
    render_pass_encoder4021.drawIndexedIndirect(buffer4039, 0);
    render_pass_encoder4021.drawIndirect(buffer4055, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder4021.setIndexBuffer(buffer4050, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1031, 0);
}