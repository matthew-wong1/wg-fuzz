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
    const array0 = new Float32Array([1.0, -0.25, 0.25, -0.75, 0.75, -1.0, 0.5, 0.0, 0.25, -0.25, 0.5, -0.25, 0.0, -1.0, -0.75, 1.0, -1.0, 0.5, -1.0, -1.0, 1.0, 0.25, -0.5, 1.0, -0.5, -1.0, 0.5, 1.0, 0.0, -0.75, -0.5, -0.25, 0.25, -0.25, -0.5, 0.0, 0.5, -0.75, 0.0, -1.0, 0.5, 0.75, 1.0, 1.0, 0.75, -0.75, -0.5, 1.0, -1.0, -0.25, -0.5, -0.75, -0.25, -0.75, 0.0, -0.25, 0.5, 0.75, 1.0, -0.5, -0.25, -1.0, 1.0, 0.25, 0.0, 0.25, 1.0, -0.25, -0.25, -0.5, 0.0, 0.25, 1.0, -0.5, -1.0, 0.75, -0.5, -0.25, -0.5, 0.0, 0.75, -0.75, 0.5, -0.5, -0.5, 0.0, 0.0, 0.75, -0.25, 0.0, -1.0, -0.5, 0.0, -0.75, 0.75, -1.0, -0.25, -0.25, -0.75, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array1 = new Float32Array([0.0, 0.0, -0.25, 0.75, -0.25, -0.5, -1.0, 0.75, 0.75, -0.75, 0.0, -1.0, 0.25, 1.0, -0.25, -0.25, 0.0, 0.5, -1.0, 1.0, 0.5, -0.25, 1.0, 1.0, -0.5, 0.5, 0.0, -0.75, -0.25, 0.0, -0.5, -0.75, 0.75, 0.75, 1.0, 0.5, -0.5, 1.0, 0.0, 0.25, 0.5, 0.5, 1.0, -0.25, -0.25, -1.0, 1.0, -1.0, 0.75, -0.25, 0.0, 1.0, -1.0, -0.25, 0.75, -0.5, 0.75, 1.0, -1.0, 1.0, 1.0, 1.0, -0.5, 0.75, 0.25, 0.75, -0.25, 0.75, -0.5, 0.0, 0.75, 0.0, 0.25, -1.0, 0.75, -0.75, -0.75, 0.25, 0.0, -1.0, -0.25, 0.0, 0.5, 0.0, -0.25, -0.25, -0.25, 0.25, -1.0, -0.75, -0.75, -0.75, 1.0, 0.5, -0.5, 0.0, 0.75, 0.5, 0.5, -0.25, ]);
    
    const array2 = new Float32Array([-1.0, 0.75, 0.0, -0.75, 0.5, -1.0, 0.25, 0.75, 0.75, 1.0, -1.0, -0.5, 0.0, 0.75, 1.0, 0.5, 0.25, -0.75, -0.5, 0.75, -0.5, 1.0, -0.25, 0.0, -0.5, -0.5, 0.75, 1.0, -0.75, 0.0, 0.0, 0.75, -0.75, 0.25, 0.75, -0.25, 0.75, -0.25, 0.75, -0.75, -0.75, -1.0, -0.25, 0.75, 0.25, 0.0, -0.75, -0.75, 0.0, 0.5, -0.25, -0.25, 0.25, -0.75, 0.0, 0.5, 1.0, -0.5, -0.75, 0.0, 0.5, -0.25, 0.0, 1.0, 1.0, -0.5, -1.0, -0.25, 0.75, 1.0, -1.0, 0.25, -0.25, 1.0, -0.25, -0.75, -0.75, 0.0, -1.0, 1.0, 0.0, 0.25, -0.5, 0.25, 0.5, -0.25, 1.0, -0.25, -1.0, -1.0, -1.0, 0.5, -1.0, -0.75, -0.5, -0.75, 0.5, 0.75, 1.0, 0.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    const array3 = new Float32Array([0.0, -0.5, 0.0, -0.5, 1.0, -0.5, 1.0, -0.75, -0.25, 0.75, 1.0, -0.25, -0.75, 1.0, 0.5, -0.5, 0.25, 0.0, 0.0, 1.0, -0.5, 0.0, -0.5, 0.75, 1.0, 0.0, 0.5, 1.0, -0.5, 1.0, 0.0, -0.75, -1.0, -1.0, -0.75, -1.0, 1.0, 1.0, 0.75, -0.25, -0.75, -1.0, -1.0, 0.5, 0.25, 0.25, -0.25, 0.0, 0.25, 0.0, 1.0, 1.0, 0.5, -0.25, -1.0, -0.75, -0.25, -1.0, 0.25, 1.0, -0.75, 0.0, 0.25, -0.25, -0.75, -0.75, 0.0, -0.25, 0.5, -0.5, 0.0, 0.0, 0.25, 1.0, 0.5, -0.25, 0.75, -0.5, 0.5, 0.5, -0.25, 0.0, 0.25, -0.25, 0.25, 1.0, -1.0, -1.0, 0.0, 0.25, -1.0, -0.75, 0.25, -0.75, 0.0, 0.25, -0.25, -0.5, -0.75, 0.5, ]);
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    texture100.destroy();
    device10.pushErrorScope("validation");
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    query100.destroy()
    
    
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("internal");
    
    
    command_encoder101.insertDebugMarker("mymarker");
    device10.pushErrorScope("validation");
    
    
    query103.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    
    
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
    query104.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    query100.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    query103.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    command_encoder103.insertDebugMarker("mymarker");
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    command_encoder103.insertDebugMarker("mymarker");
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    
    query102.destroy()
    command_encoder103.copyBufferToBuffer(
        buffer100,
        0,
        buffer100,
        0,
        400
    );
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8uint",
        dimension: "2d"
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer101,
        0
    )
    
    
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    query100.destroy()
    
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query103.destroy()
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    compute_pass_encoder1020.pushDebugGroup("group_marker")
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
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    texture102.destroy();
    
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1000.executeBundles([])
    buffer101.destroy()
    render_pass_encoder1001.setPipeline(render_pipeline102);
    render_pass_encoder1030.setPipeline(render_pipeline100);
    render_pass_encoder1030.insertDebugMarker("marker");
    
    render_pass_encoder1000.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.pushErrorScope("validation");
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
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
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1030.setStencilReference(1);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder103.insertDebugMarker("mymarker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1000.executeBundles([])
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1000.setStencilReference(1);
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    query102.destroy()
    render_pass_encoder1001.pushDebugGroup("group_marker");
    
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder1010.insertDebugMarker("marker")
    buffer100.destroy()
    render_pass_encoder1001.setStencilReference(1);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1020.popDebugGroup()
    
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1000.setPipeline(render_pipeline100);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    compute_pass_encoder1020.insertDebugMarker("marker")
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16float",
        dimension: "2d"
    });
    buffer103.destroy()
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
        occlusionQuerySet: query100
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder100.setPipeline(render_pipeline102);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32uint",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_pass_encoder1010.setPipeline(render_pipeline100);
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query103
    });
    
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1001.pushDebugGroup("group_marker");
    query102.destroy()
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_pass_encoder1010.insertDebugMarker("marker");
    render_bundle_encoder102.setPipeline(render_pipeline101);
    texture101.destroy();
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    device10.queue.submit([command_buffer102, ]);
    query105.destroy()
    render_pass_encoder1030.insertDebugMarker("marker");
    
    buffer104.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    buffer200.destroy()
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.setPipeline(render_pipeline103);
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pass_encoder1011 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1011" });
    render_pass_encoder1000.setStencilReference(1);
    compute_pass_encoder1011.setPipeline(compute_pipeline100);
    device20.pushErrorScope("internal");
    render_bundle_encoder101.setVertexBuffer(0, buffer101);
    compute_pass_encoder1011.insertDebugMarker("marker")
    
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query103
    });
    render_pass_encoder1040.beginOcclusionQuery(0)
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    query200.destroy()
    query100.destroy()
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    render_pass_encoder1041.setPipeline(render_pipeline101);
    render_pass_encoder1030.insertDebugMarker("marker");
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
    render_pass_encoder1031.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1010.setPipeline(compute_pipeline102);
    render_bundle_encoder101.drawIndirect(buffer104, 0);
    render_pass_encoder1040.setPipeline(render_pipeline102);
    render_pass_encoder1050.setPipeline(render_pipeline102);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1040.pushDebugGroup("group_marker");
    texture101.destroy();
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    compute_pass_encoder1020.setPipeline(compute_pipeline101);
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1001.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query105
    });
    compute_pass_encoder1011.insertDebugMarker("marker")
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    texture102.destroy();
    render_pass_encoder1031.setStencilReference(1);
    render_pass_encoder1060.setPipeline(render_pipeline103);
    compute_pass_encoder1040.insertDebugMarker("marker")
    device20.destroy();
    render_pass_encoder1051.executeBundles([])
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1031.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1041.insertDebugMarker("marker");
    render_pass_encoder1051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1001.insertDebugMarker("marker");
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1010.insertDebugMarker("marker");
    
    render_pass_encoder1010.insertDebugMarker("marker");
    query101.destroy()
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const render_pass_encoder1061 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1061",
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
    render_pass_encoder1040.setStencilReference(1);
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1060.setBindGroup(0, bind_group101);
    render_pass_encoder1060.insertDebugMarker("marker");
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group102);
    buffer102.destroy()
    render_pass_encoder1060.setVertexBuffer(0, buffer105);
    render_pass_encoder1061.setPipeline(render_pipeline104);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer106.destroy()
    query101.destroy()
    const render_pass_encoder1052 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1052",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query102
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1001.setStencilReference(1);
    
    render_pass_encoder1041.setStencilReference(1);
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group103);
    render_pass_encoder1052.setStencilReference(1);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_pass_encoder1031.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1061.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setStencilReference(1);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    query104.destroy()
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1011.setBindGroup(0, bind_group104);
    render_pass_encoder1052.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1051.setPipeline(render_pipeline101);
    
    render_pass_encoder1051.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1031.setBindGroup(0, bind_group105);
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1052.setPipeline(render_pipeline106);
    const compute_pass_encoder1060 = command_encoder106.beginComputePass({ label: "compute_pass_encoder1060" });
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer107,
        0
    )
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group106);
    render_pass_encoder1060.drawIndirect(buffer104, 0);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1041.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1052.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline106.getBindGroupLayout(0),
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

    render_pass_encoder1052.setBindGroup(0, bind_group107);
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    render_pass_encoder1052.setVertexBuffer(0, buffer1015);
    render_pass_encoder1051.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1001.setStencilReference(1);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1031.setVertexBuffer(0, buffer102);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.beginOcclusionQuery(0)
    render_pass_encoder1031.drawIndirect(buffer103, 0);
    render_pass_encoder1052.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1060.insertDebugMarker("marker");
    render_pass_encoder1031.setStencilReference(1);
    
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group108);
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.insertDebugMarker("marker");
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1040.setPipeline(compute_pipeline103);
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group109);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1010.setStencilReference(1);
    buffer1020.destroy()
    compute_pass_encoder1060.setPipeline(compute_pipeline102);
    render_pass_encoder1031.beginOcclusionQuery(0)
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    render_pass_encoder1031.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    command_encoder103.clearBuffer(buffer104);
    
    render_pass_encoder1061.setStencilReference(1);
    command_encoder105.copyBufferToBuffer(
        buffer100,
        0,
        buffer1021,
        0,
        400
    );
    
    buffer105.destroy()
    render_pass_encoder1051.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1052.draw(3);
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1010.setVertexBuffer(0, buffer104);
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer107, 0, array3, 0, array3.length);
    
    render_pass_encoder1051.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder101.finish();
    query103.destroy()
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer1010.destroy()
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1001.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    texture103.destroy();
    buffer1013.destroy()
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder1020.popDebugGroup()
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
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group1010);
    const array4 = new Float32Array([0.25, -1.0, -0.75, 0.0, 0.75, -0.25, -0.25, -0.25, 0.25, -0.25, 1.0, 0.0, -1.0, -1.0, 0.25, 1.0, 0.5, -1.0, 1.0, 0.5, 0.75, -0.5, 1.0, -1.0, -1.0, 0.0, -1.0, -1.0, 1.0, 0.0, -1.0, -1.0, 0.75, -0.5, 0.5, 1.0, 0.75, -0.5, -1.0, -1.0, -0.5, 1.0, -0.5, 0.5, -0.25, -1.0, 0.75, 1.0, -1.0, 0.75, 0.0, 0.25, -0.75, 0.5, 0.5, 0.0, 1.0, 0.25, -0.5, 1.0, 1.0, -1.0, -0.75, -0.5, -0.5, 1.0, 0.25, -1.0, 0.75, -0.25, 0.0, 0.25, -1.0, 1.0, -1.0, -0.25, 1.0, -0.75, 0.25, -0.75, -0.75, -0.5, 0.75, 0.75, 1.0, -1.0, -0.5, 0.75, -0.25, 0.5, -0.25, -0.75, -0.25, 0.0, -0.5, 0.0, 1.0, 1.0, 0.5, 0.5, ]);
    
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    render_pass_encoder1050.insertDebugMarker("marker");
    
    
    render_pass_encoder1050.insertDebugMarker("marker");
    
    render_pass_encoder1051.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1011.insertDebugMarker("marker")
    render_pass_encoder1041.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    query102.destroy()
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    command_encoder101.clearBuffer(buffer1016);
    render_pass_encoder1001.setStencilReference(1);
    render_pass_encoder1061.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    const render_pass_encoder1062 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1062",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1041.pushDebugGroup("group_marker");
    
    command_encoder104.resolveQuerySet(
        query104,
        0,
        32,
        buffer1015,
        0
    )
    render_pass_encoder1000.setStencilReference(1);
    
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setVertexBuffer(0, buffer101);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
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
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_pass_encoder1071 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1071",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query104
    });
    compute_pass_encoder1060.insertDebugMarker("marker")
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_pass_encoder1062.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1070.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    command_encoder300.insertDebugMarker("mymarker");
    render_pass_encoder1062.setPipeline(render_pipeline108);
    render_pass_encoder1041.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer1011, 0, array2, 0, array2.length);
    const render_pass_encoder1072 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1072",
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
    
    render_pass_encoder1071.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1071.setPipeline(render_pipeline106);
    render_pass_encoder1040.insertDebugMarker("marker");
    command_encoder100.resolveQuerySet(
        query104,
        0,
        32,
        buffer1021,
        0
    )
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1031.setStencilReference(1);
    render_pass_encoder1072.setPipeline(render_pipeline109);
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query103
    });
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer1014,
        0
    )
    {
        await buffer1012.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1012.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1012.unmap();
        console.log(new Float32Array(data));
    }
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group1011);
    compute_pass_encoder1060.insertDebugMarker("marker")
    render_pass_encoder1011.executeBundles([render_bundle_encoder101, ])
    render_pass_encoder1052.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1001.setVertexBuffer(0, buffer108);
    render_pass_encoder1062.setStencilReference(1);
    render_pass_encoder1070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    command_encoder100.resolveQuerySet(
        query103,
        0,
        32,
        buffer1023,
        0
    )
    buffer1017.destroy()
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    buffer1021.destroy()
    command_encoder104.copyTextureToBuffer(
        {
            texture: texture102
        },
        {
            buffer: buffer1021
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_pass_encoder1040.drawIndirect(buffer1021, 0);
    render_pass_encoder1030.setVertexBuffer(0, buffer101);
    render_pass_encoder1010.drawIndirect(buffer100, 0);
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
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group1012);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1029, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1029, 0);
    render_pass_encoder1030.drawIndirect(buffer107, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1001.end();
    render_pass_encoder1070.setPipeline(render_pipeline101);
    render_pass_encoder1052.end();
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
    render_pass_encoder1031.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    compute_pass_encoder1010.end();
    const command_buffer101 = command_encoder101.finish();
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1031, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1031, 0);
    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: render_pipeline109.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1033,
                },
            },
        ],
    });

    render_pass_encoder1072.setBindGroup(0, bind_group1013);
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
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1014);
    render_pass_encoder1060.end();
    render_pass_encoder1050.setVertexBuffer(0, buffer101);
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
    
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1070.setBindGroup(0, bind_group1015);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1001.setIndexBuffer(buffer103, "uint16");
    compute_pass_encoder1011.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1031, 0);
    render_pass_encoder1072.setVertexBuffer(0, buffer109);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1070.setVertexBuffer(0, buffer1033);
    render_pass_encoder1070.drawIndirect(buffer1031, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1072.drawIndirect(buffer1031, 0);
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
    
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1041.setBindGroup(0, bind_group1016);
    render_pass_encoder1041.setVertexBuffer(0, buffer101);
    render_pass_encoder1040.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1029, 0);
    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1041,
                },
            },
        ],
    });

    render_pass_encoder1061.setBindGroup(0, bind_group1017);
    render_pass_encoder1061.popDebugGroup();
    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: render_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1043,
                },
            },
        ],
    });

    render_pass_encoder1071.setBindGroup(0, bind_group1018);
    render_pass_encoder1061.setVertexBuffer(0, buffer101);
    render_pass_encoder1010.end();
    render_pass_encoder1061.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1050.popDebugGroup();
    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1045,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1019);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer103, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1030.drawIndirect(buffer100, 0);
    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1047,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1020);
    render_pass_encoder1071.setVertexBuffer(0, buffer1019);
    render_pass_encoder1071.drawIndirect(buffer1036, 0);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    render_pass_encoder1010.drawIndirect(buffer1042, 0);
    render_pass_encoder1072.drawIndirect(buffer1026, 0);
    render_pass_encoder1031.drawIndirect(buffer1031, 0);
    render_pass_encoder1001.drawIndirect(buffer1047, 0);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder1030.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1050.drawIndirect(buffer1029, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer109, 0);
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1060.drawIndexedIndirect(buffer1030, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1031.drawIndexedIndirect(buffer109, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1030.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1048, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1048, 0);
    render_pass_encoder1040.drawIndirect(buffer1041, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1072.drawIndirect(buffer109, 0);
    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: render_pipeline108.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1050,
                },
            },
        ],
    });

    render_pass_encoder1062.setBindGroup(0, bind_group1021);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1072.drawIndirect(buffer1029, 0);
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1062.setVertexBuffer(0, buffer1029);
    render_pass_encoder1062.drawIndirect(buffer109, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1021, "uint16");
    compute_pass_encoder1040.end();
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
    
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group1022);
    compute_pass_encoder1011.end();
    render_pass_encoder1060.drawIndirect(buffer1029, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1046, "uint16");
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1072.end();
    render_pass_encoder1062.end();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1050.end();
    render_pass_encoder1031.drawIndirect(buffer1031, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1048, 0);
    render_pass_encoder1040.popDebugGroup();
    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1054,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group1023);
    render_pass_encoder1072.setIndexBuffer(buffer1042, "uint16");
    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1056,
                },
            },
        ],
    });

    compute_pass_encoder1060.setBindGroup(0, bind_group1024);
    compute_pass_encoder1060.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndirect(buffer102, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1072.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1031, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1060.drawIndirect(buffer1048, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1071.drawIndirect(buffer1048, 0);
    render_pass_encoder1000.setVertexBuffer(0, buffer1021);
    render_pass_encoder1061.drawIndirect(buffer1049, 0);
    render_pass_encoder1052.end();
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1058,
                },
            },
        ],
    });

    render_pass_encoder1051.setBindGroup(0, bind_group1025);
    render_pass_encoder1061.drawIndirect(buffer1048, 0);
    render_pass_encoder1010.drawIndirect(buffer1037, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1051.setVertexBuffer(0, buffer1020);
    render_pass_encoder1041.drawIndirect(buffer1029, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1061.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1072.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1052.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1061.end();
    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1060,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1026);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1010, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1031.end();
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
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1027);
    render_pass_encoder1072.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1048, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1070.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1029, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1059, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1052.drawIndexed(3);
    compute_pass_encoder1060.end();
    render_pass_encoder1061.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1011.drawIndirect(buffer1028, 0);
    const command_buffer107 = command_encoder107.finish();
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1030.drawIndirect(buffer1041, 0);
    render_pass_encoder1030.drawIndirect(buffer103, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1052.drawIndirect(buffer109, 0);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1051.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1072.drawIndirect(buffer1058, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1031.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1052.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1001.drawIndirect(buffer1058, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1040.drawIndirect(buffer1029, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1061.drawIndirect(buffer1029, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1029, 0);
    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1064,
                },
            },
        ],
    });

    compute_pass_encoder1060.setBindGroup(0, bind_group1028);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1065, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1065, 0);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1070.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1052.drawIndirect(buffer1030, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1040.drawIndirect(buffer1025, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1040, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1037, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1050.drawIndirect(buffer1051, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1031.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1051.drawIndexedIndirect(buffer1043, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1065, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1043, "uint16");
    compute_pass_encoder1060.end();
    render_pass_encoder1031.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1001.draw(3);
    render_pass_encoder1010.drawIndirect(buffer1055, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1059, "uint16");
    render_pass_encoder1062.drawIndirect(buffer1037, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1072.drawIndirect(buffer1052, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer101, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1070.drawIndirect(buffer1029, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1060, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1061.drawIndirect(buffer1062, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1070.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1070.drawIndirect(buffer1048, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1072.drawIndirect(buffer1065, 0);
    render_pass_encoder1062.drawIndirect(buffer1048, 0);
    render_pass_encoder1062.end();
    render_pass_encoder1010.drawIndirect(buffer107, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1010.drawIndirect(buffer1065, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1050.drawIndirect(buffer1015, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1052.drawIndirect(buffer1022, 0);
    render_pass_encoder1062.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1060.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1031, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1061.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1062.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1040.drawIndirect(buffer1020, 0);
    render_pass_encoder1061.drawIndirect(buffer1031, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1062.drawIndirect(buffer1034, 0);
    render_pass_encoder1011.drawIndirect(buffer1031, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1062.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1030.drawIndirect(buffer1031, 0);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1011.drawIndirect(buffer1038, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1039, 0);
    render_pass_encoder1040.drawIndirect(buffer105, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1050.drawIndirect(buffer1031, 0);
    render_pass_encoder1010.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1072.end();
    render_pass_encoder1061.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1072.drawIndirect(buffer1065, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1060.drawIndirect(buffer1010, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1045, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1061.drawIndirect(buffer1048, 0);
    render_pass_encoder1052.drawIndirect(buffer1048, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1041.drawIndirect(buffer1065, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1062.setIndexBuffer(buffer107, "uint16");
    compute_pass_encoder1060.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1031.drawIndirect(buffer1063, 0);
    render_pass_encoder1062.drawIndirect(buffer1029, 0);
    render_pass_encoder1011.drawIndirect(buffer1063, 0);
    command_encoder103.popDebugGroup()
    render_pass_encoder1040.setIndexBuffer(buffer1011, "uint16");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1010.end();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1052.drawIndirect(buffer1030, 0);
    render_pass_encoder1030.drawIndirect(buffer1031, 0);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1070.drawIndirect(buffer1051, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1065, 0);
    render_pass_encoder1070.drawIndirect(buffer1037, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1040.drawIndirect(buffer1048, 0);
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1042, 0);
    render_pass_encoder1071.drawIndirect(buffer106, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1070.drawIndirect(buffer1048, 0);
    render_pass_encoder1000.drawIndirect(buffer1054, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1001.drawIndirect(buffer1029, 0);
    render_pass_encoder1041.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1072.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1001.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1052.drawIndirect(buffer1044, 0);
    render_pass_encoder1072.drawIndirect(buffer1029, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1062.end();
    render_pass_encoder1051.end();
    render_pass_encoder1052.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1000.drawIndirect(buffer1051, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1011, 0);
    render_pass_encoder1071.drawIndirect(buffer1065, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1066, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1066, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1016, 0);
    compute_pass_encoder1060.dispatchWorkgroups(100);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1030, 0);
    render_pass_encoder1051.drawIndirect(buffer1024, 0);
    render_pass_encoder1062.drawIndirect(buffer1027, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1060.drawIndirect(buffer1023, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1011.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1062.drawIndirect(buffer1048, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1067, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1067, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1057, "uint16");
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer106, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1050.end();
    render_pass_encoder1040.drawIndirect(buffer1048, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1050.drawIndirect(buffer1059, 0);
    render_pass_encoder1051.drawIndexed(3);
    compute_pass_encoder1000.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1010.drawIndirect(buffer1056, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1071.drawIndirect(buffer1028, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1052.drawIndirect(buffer1057, 0);
    render_pass_encoder1062.drawIndirect(buffer1061, 0);
    render_pass_encoder1051.drawIndirect(buffer1038, 0);
    render_pass_encoder1010.drawIndirect(buffer1011, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1050.drawIndirect(buffer1044, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1030, 0);
    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1069,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1029);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer107, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1066, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1066, 0);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1071.drawIndirect(buffer1058, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1062.popDebugGroup();
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1060.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1011.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1031.drawIndirect(buffer1037, 0);
    render_pass_encoder1010.drawIndirect(buffer1026, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1011.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1065, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1048, 0);
    device10.queue.submit([command_buffer102, command_buffer103, command_buffer106, ]);
    render_pass_encoder1001.setIndexBuffer(buffer1064, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1067, 0);
    render_pass_encoder1040.drawIndirect(buffer1030, 0);
    render_pass_encoder1050.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1060.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1060.drawIndirect(buffer1017, 0);
    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1071,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1030);
    render_pass_encoder1041.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1030.drawIndirect(buffer1035, 0);
    render_pass_encoder1011.drawIndirect(buffer1067, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1051.drawIndirect(buffer1062, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1071.draw(3);
    render_pass_encoder1070.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1066, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1064, 0);
    render_pass_encoder1031.drawIndirect(buffer1048, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1045, "uint16");
    compute_pass_encoder1010.end();
    render_pass_encoder1061.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1045, 0);
    render_pass_encoder1071.drawIndirect(buffer1038, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1072.drawIndirect(buffer107, 0);
    render_pass_encoder1072.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1010.drawIndirect(buffer1016, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1068, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1029, 0);
    render_pass_encoder1050.drawIndirect(buffer1015, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1071.drawIndirect(buffer1030, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1070.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1016, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1031.drawIndirect(buffer1030, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1071.drawIndirect(buffer1030, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1032, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1010.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.draw(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1000.drawIndirect(buffer1031, 0);
    render_pass_encoder1051.drawIndirect(buffer1068, 0);
    render_pass_encoder1041.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1062.end();
    render_pass_encoder1031.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1072.drawIndirect(buffer1044, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1000.end();
    render_pass_encoder1041.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1052.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1030.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1062.drawIndirect(buffer1030, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1062.drawIndirect(buffer1066, 0);
    render_pass_encoder1050.drawIndirect(buffer1038, 0);
    render_pass_encoder1050.drawIndirect(buffer1031, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1010.drawIndirect(buffer1048, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1062.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1034, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1067, 0);
    render_pass_encoder1051.drawIndirect(buffer103, 0);
    render_pass_encoder1062.drawIndirect(buffer1036, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1050, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1052.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1031.drawIndirect(buffer107, 0);
    render_pass_encoder1050.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1030, 0);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1031 = device10.createBindGroup({
        label: "bind_group1031",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1073,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1031);
    render_pass_encoder1041.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1066, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1070.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1062.drawIndirect(buffer1065, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1070.drawIndirect(buffer1067, 0);
    render_pass_encoder1071.drawIndirect(buffer1048, 0);
    render_pass_encoder1040.drawIndirect(buffer1029, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1051.drawIndirect(buffer1034, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1052.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1067, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndirect(buffer1045, 0);
    render_pass_encoder1062.drawIndirect(buffer1065, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1051.drawIndirect(buffer1048, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1070.draw(3);
    render_pass_encoder1001.drawIndirect(buffer1016, 0);
    render_pass_encoder1070.drawIndirect(buffer1029, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1074, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1074, 0);
    render_pass_encoder1061.drawIndirect(buffer1066, 0);
    render_pass_encoder1070.drawIndirect(buffer1065, 0);
    render_pass_encoder1041.drawIndirect(buffer1045, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1062.drawIndirect(buffer1029, 0);
    compute_pass_encoder1011.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1030.drawIndirect(buffer1067, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1071.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1052.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1053, "uint16");
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1075, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1075, 0);
    render_pass_encoder1052.drawIndexed(3);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1062.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer102, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1031.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1074, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder1060.end();
    render_pass_encoder1010.drawIndirect(buffer1049, 0);
    render_pass_encoder1030.drawIndirect(buffer1071, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1062.setIndexBuffer(buffer1070, "uint16");
    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1032 = device10.createBindGroup({
        label: "bind_group1032",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1077,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1032);
    render_pass_encoder1060.drawIndirect(buffer1067, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1051.drawIndirect(buffer1053, 0);
    render_pass_encoder1062.drawIndexed(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1072.drawIndirect(buffer1030, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1031, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1062.drawIndirect(buffer1045, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1030, 0);
    compute_pass_encoder1060.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1030.drawIndirect(buffer1056, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1047, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1070.end();
    compute_pass_encoder1040.end();
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1078, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1078, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1052.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1010.drawIndirect(buffer1075, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1079, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1079, 0);
    render_pass_encoder1050.drawIndirect(buffer1028, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1031.draw(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1052.drawIndirect(buffer1031, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder1062.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1051.drawIndirect(buffer1067, 0);
    render_pass_encoder1000.drawIndirect(buffer1048, 0);
    render_pass_encoder1072.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1045, 0);
    render_pass_encoder1062.drawIndirect(buffer1063, 0);
    render_pass_encoder1051.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1029, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1077, 0);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1071.setIndexBuffer(buffer103, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1051.setIndexBuffer(buffer1079, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1074, 0);
    compute_pass_encoder1011.end();
    compute_pass_encoder1010.end();
    render_pass_encoder1010.drawIndirect(buffer1043, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer1078, 0);
    const uint32_1060 = new Uint32Array(3);

    uint32_1060[0] = 100;
    uint32_1060[1] = 1;
    uint32_1060[2] = 1;

    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1080, 0, uint32_1060, 0, uint32_1060.length);

    compute_pass_encoder1060.dispatchWorkgroupsIndirect(buffer1080, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1061.drawIndirect(buffer1016, 0);
    render_pass_encoder1071.drawIndirect(buffer1043, 0);
    compute_pass_encoder1060.end();
    render_pass_encoder1041.drawIndirect(buffer1079, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1065, 0);
    device10.queue.submit([]);
    render_pass_encoder1070.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1038, 0);
    render_pass_encoder1070.drawIndirect(buffer1033, 0);
    render_pass_encoder1000.drawIndirect(buffer1048, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1066, 0);
    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1082 = device10.createBuffer({
        label: "buffer1082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1033 = device10.createBindGroup({
        label: "bind_group1033",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1082,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1033);
    render_pass_encoder1052.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1062.drawIndirect(buffer1029, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1029, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1059, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1059, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1051.drawIndirect(buffer1066, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1070.drawIndirect(buffer1010, 0);
    render_pass_encoder1071.drawIndirect(buffer1017, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder1062.drawIndexedIndirect(buffer1075, 0);
    compute_pass_encoder1010.popDebugGroup()
    const buffer1083 = device10.createBuffer({
        label: "buffer1083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1034 = device10.createBindGroup({
        label: "bind_group1034",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1084,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1034);
    render_pass_encoder1000.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1040.drawIndirect(buffer1037, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1072.drawIndirect(buffer1077, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1001.drawIndirect(buffer1031, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1085 = device10.createBuffer({
        label: "buffer1085",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1085, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1085, 0);
    render_pass_encoder1000.drawIndirect(buffer1031, 0);
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1040.end();
    const buffer1086 = device10.createBuffer({
        label: "buffer1086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1087 = device10.createBuffer({
        label: "buffer1087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1035 = device10.createBindGroup({
        label: "bind_group1035",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1087,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1035);
    render_pass_encoder1062.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1061.drawIndirect(buffer1074, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1074, 0);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1062.drawIndirect(buffer1042, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1020, "uint16");
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    render_pass_encoder1062.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1052, "uint16");
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1088 = device10.createBuffer({
        label: "buffer1088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1088, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1088, 0);
    render_pass_encoder1052.drawIndirect(buffer1059, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1060.drawIndirect(buffer1060, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1011.drawIndirect(buffer1063, 0);
    render_pass_encoder1072.drawIndirect(buffer1065, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1021, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1072.setIndexBuffer(buffer1079, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1060.popDebugGroup();
    const buffer1089 = device10.createBuffer({
        label: "buffer1089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1090 = device10.createBuffer({
        label: "buffer1090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1036 = device10.createBindGroup({
        label: "bind_group1036",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1090,
                },
            },
        ],
    });

    compute_pass_encoder1060.setBindGroup(0, bind_group1036);
    render_pass_encoder1062.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1041.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1051.drawIndirect(buffer1088, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.draw(3);
    render_pass_encoder1031.drawIndirect(buffer103, 0);
    render_pass_encoder1001.drawIndirect(buffer1030, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1072.drawIndirect(buffer1078, 0);
    render_pass_encoder1062.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1062.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1034, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1062.drawIndirect(buffer1066, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1071.drawIndirect(buffer1088, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1072.drawIndirect(buffer1031, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1052.drawIndirect(buffer1088, 0);
    render_pass_encoder1011.drawIndirect(buffer1031, 0);
    render_pass_encoder1062.drawIndirect(buffer1069, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1052.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1082, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1067, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1052.drawIndirect(buffer1079, 0);
    render_pass_encoder1052.drawIndirect(buffer1033, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1079, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1011.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1078, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1071.drawIndirect(buffer1080, 0);
    render_pass_encoder1052.drawIndirect(buffer1031, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1071.drawIndirect(buffer1065, 0);
    render_pass_encoder1040.drawIndirect(buffer1022, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1029, 0);
    render_pass_encoder1030.drawIndirect(buffer1075, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1062.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer109, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1091 = device10.createBuffer({
        label: "buffer1091",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1091, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1091, 0);
    render_pass_encoder1051.drawIndirect(buffer1075, 0);
    render_pass_encoder1030.drawIndirect(buffer1085, 0);
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1041.end();
    render_pass_encoder1011.drawIndirect(buffer1030, 0);
    render_pass_encoder1061.drawIndirect(buffer1074, 0);
    render_pass_encoder1001.drawIndirect(buffer1030, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1068, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1001.drawIndirect(buffer1011, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1052.drawIndirect(buffer1065, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1050.drawIndirect(buffer1075, 0);
    const buffer1092 = device10.createBuffer({
        label: "buffer1092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1093 = device10.createBuffer({
        label: "buffer1093",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1037 = device10.createBindGroup({
        label: "bind_group1037",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1093,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1037);
    render_pass_encoder1040.drawIndirect(buffer1031, 0);
    render_pass_encoder1011.drawIndirect(buffer1031, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1082, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1065, 0);
    render_pass_encoder1050.drawIndirect(buffer1029, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1070.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1070.drawIndirect(buffer1050, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1031, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1031.drawIndirect(buffer1067, 0);
    render_pass_encoder1040.drawIndirect(buffer1057, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1088, 0);
    const buffer1094 = device10.createBuffer({
        label: "buffer1094",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1095 = device10.createBuffer({
        label: "buffer1095",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1038 = device10.createBindGroup({
        label: "bind_group1038",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1094,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1095,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1038);
    render_pass_encoder1051.drawIndirect(buffer1031, 0);
    render_pass_encoder1052.drawIndirect(buffer1031, 0);
    render_pass_encoder1070.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1031.drawIndirect(buffer1091, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1064, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1080, 0);
    render_pass_encoder1010.drawIndirect(buffer1080, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1011.drawIndirect(buffer1031, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1060.drawIndirect(buffer1033, 0);
    render_pass_encoder1071.drawIndirect(buffer1030, 0);
    render_pass_encoder1041.drawIndirect(buffer1088, 0);
    render_pass_encoder1040.drawIndirect(buffer1085, 0);
    const uint32_1060 = new Uint32Array(3);

    uint32_1060[0] = 100;
    uint32_1060[1] = 1;
    uint32_1060[2] = 1;

    const buffer1096 = device10.createBuffer({
        label: "buffer1096",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1096, 0, uint32_1060, 0, uint32_1060.length);

    compute_pass_encoder1060.dispatchWorkgroupsIndirect(buffer1096, 0);
    render_pass_encoder1041.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1001.drawIndirect(buffer1075, 0);
    render_pass_encoder1031.drawIndirect(buffer1030, 0);
    render_pass_encoder1072.setIndexBuffer(buffer1075, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1080, 0);
    const buffer1097 = device10.createBuffer({
        label: "buffer1097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1098 = device10.createBuffer({
        label: "buffer1098",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1039 = device10.createBindGroup({
        label: "bind_group1039",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1098,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1039);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1019, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1072.drawIndirect(buffer1063, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1099 = device10.createBuffer({
        label: "buffer1099",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1099, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1099, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1072.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1010.drawIndirect(buffer1079, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1050.drawIndirect(buffer1031, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1073, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1061.drawIndirect(buffer1080, 0);
    render_pass_encoder1062.drawIndirect(buffer1099, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1072.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1099, 0);
    render_pass_encoder1070.drawIndirect(buffer1025, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1071.drawIndirect(buffer1074, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1062.endOcclusionQuery()
    render_pass_encoder1010.setIndexBuffer(buffer1074, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1091, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1041, "uint16");
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer1088, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1072.setIndexBuffer(buffer1099, "uint16");
    render_pass_encoder1061.end();
    render_pass_encoder1062.drawIndirect(buffer1088, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1051.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1085, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1041, "uint16");
    compute_pass_encoder1010.end();
    render_pass_encoder1051.setIndexBuffer(buffer1085, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1095, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1070.drawIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndirect(buffer1091, 0);
    render_pass_encoder1062.drawIndirect(buffer1065, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1050.draw(3);
    render_pass_encoder1001.drawIndirect(buffer1022, 0);
    render_pass_encoder1071.drawIndirect(buffer1017, 0);
    render_pass_encoder1070.drawIndirect(buffer1084, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1080, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10100 = device10.createBuffer({
        label: "buffer10100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10100, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10100, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1070, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1071.drawIndirect(buffer1017, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1031.drawIndirect(buffer1078, 0);
    render_pass_encoder1041.drawIndirect(buffer1075, 0);
    render_pass_encoder1072.end();
    render_pass_encoder1051.drawIndirect(buffer10100, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1052.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1052.drawIndirect(buffer1031, 0);
    render_pass_encoder1070.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1052.drawIndirect(buffer103, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1070, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1052.drawIndirect(buffer1088, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1001.drawIndexedIndirect(buffer1079, 0);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1062.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1052.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1072.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1079, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1071.drawIndirect(buffer1085, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1017, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1052.drawIndirect(buffer1048, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1056, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1041.drawIndirect(buffer1056, 0);
    render_pass_encoder1040.drawIndirect(buffer1090, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1061.draw(3);
    render_pass_encoder1040.drawIndirect(buffer10100, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1062.drawIndirect(buffer1031, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1079, 0);
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1070.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1050.drawIndirect(buffer1030, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1062.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1085, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1060.drawIndirect(buffer1079, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1031.drawIndirect(buffer1063, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1029, 0);
    render_pass_encoder1010.drawIndirect(buffer1067, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1093, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1046, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1070.drawIndirect(buffer1031, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1048, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1040, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1050.draw(3);
    const buffer10101 = device10.createBuffer({
        label: "buffer10101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10102 = device10.createBuffer({
        label: "buffer10102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1040 = device10.createBindGroup({
        label: "bind_group1040",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10102,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1040);
    render_pass_encoder1001.drawIndirect(buffer1080, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1044, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1062.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1060.drawIndirect(buffer1055, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1066, "uint16");
    render_pass_encoder1062.drawIndirect(buffer1080, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1040.drawIndirect(buffer1080, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1090, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1028, 0);
    render_pass_encoder1000.drawIndirect(buffer1054, 0);
    render_pass_encoder1062.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1070.drawIndirect(buffer1065, 0);
    render_pass_encoder1031.drawIndirect(buffer1099, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1052.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1000.drawIndirect(buffer1065, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1001.drawIndirect(buffer1024, 0);
    render_pass_encoder1051.drawIndirect(buffer1047, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1092, 0);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1050.drawIndirect(buffer1099, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1096, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1041.drawIndirect(buffer1031, 0);
    render_pass_encoder1051.drawIndirect(buffer10100, 0);
    render_pass_encoder1052.drawIndirect(buffer1099, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1050.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1099, 0);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1070, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1052.drawIndirect(buffer1085, 0);
    render_pass_encoder1050.drawIndirect(buffer107, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1030, 0);
    render_pass_encoder1050.drawIndirect(buffer1099, 0);
    render_pass_encoder1061.drawIndirect(buffer1090, 0);
    render_pass_encoder1052.drawIndirect(buffer1088, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1099, 0);
    const buffer10103 = device10.createBuffer({
        label: "buffer10103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10104 = device10.createBuffer({
        label: "buffer10104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1041 = device10.createBindGroup({
        label: "bind_group1041",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10104,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1041);
    render_pass_encoder1030.drawIndirect(buffer1066, 0);
    render_pass_encoder1062.endOcclusionQuery()
    render_pass_encoder1001.popDebugGroup();
    const buffer10105 = device10.createBuffer({
        label: "buffer10105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10106 = device10.createBuffer({
        label: "buffer10106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1042 = device10.createBindGroup({
        label: "bind_group1042",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10106,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1042);
    const buffer10107 = device10.createBuffer({
        label: "buffer10107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10108 = device10.createBuffer({
        label: "buffer10108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1043 = device10.createBindGroup({
        label: "bind_group1043",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10108,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1043);
    render_pass_encoder1031.drawIndirect(buffer1030, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1011.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1091, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1098, "uint16");
    render_pass_encoder1072.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1054, "uint16");
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1011.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1082, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1040.drawIndirect(buffer107, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1051.drawIndirect(buffer1061, 0);
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1070.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1060.drawIndirect(buffer1067, 0);
    render_pass_encoder1070.drawIndirect(buffer1068, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1051.drawIndexedIndirect(buffer1091, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1070.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1096, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1061.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1017, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1051.drawIndirect(buffer1099, 0);
    render_pass_encoder1062.setIndexBuffer(buffer1075, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1051.drawIndirect(buffer1029, 0);
    render_pass_encoder1000.drawIndirect(buffer1085, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1031.drawIndirect(buffer1079, 0);
    render_pass_encoder1072.drawIndirect(buffer1048, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1084, "uint16");
    render_pass_encoder1040.popDebugGroup();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10109 = device10.createBuffer({
        label: "buffer10109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10109, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10109, 0);
    render_pass_encoder1030.drawIndirect(buffer1054, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1039, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10110 = device10.createBuffer({
        label: "buffer10110",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10110, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10110, 0);
    render_pass_encoder1072.drawIndirect(buffer1088, 0);
    render_pass_encoder1011.drawIndirect(buffer1067, 0);
    render_pass_encoder1040.drawIndirect(buffer1019, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1050.drawIndirect(buffer1029, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1061.end();
    render_pass_encoder1040.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1022, "uint16");
    const uint32_1060 = new Uint32Array(3);

    uint32_1060[0] = 100;
    uint32_1060[1] = 1;
    uint32_1060[2] = 1;

    const buffer10111 = device10.createBuffer({
        label: "buffer10111",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10111, 0, uint32_1060, 0, uint32_1060.length);

    compute_pass_encoder1060.dispatchWorkgroupsIndirect(buffer10111, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1041.drawIndirect(buffer1088, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1060.drawIndirect(buffer1075, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1060.drawIndirect(buffer1075, 0);
    render_pass_encoder1011.drawIndirect(buffer10111, 0);
    render_pass_encoder1011.drawIndirect(buffer1088, 0);
    render_pass_encoder1052.drawIndirect(buffer104, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1075, "uint16");
    render_pass_encoder1052.drawIndirect(buffer1099, 0);
    render_pass_encoder1072.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1052.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1001.drawIndirect(buffer1075, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1071.drawIndirect(buffer10100, 0);
    render_pass_encoder1070.drawIndirect(buffer1055, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1085, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1026, "uint16");
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1041.drawIndirect(buffer1075, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer100, 0);
    const buffer10112 = device10.createBuffer({
        label: "buffer10112",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10113 = device10.createBuffer({
        label: "buffer10113",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1044 = device10.createBindGroup({
        label: "bind_group1044",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10112,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10113,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1044);
    render_pass_encoder1070.drawIndirect(buffer10111, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1060.drawIndirect(buffer1038, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1010.drawIndirect(buffer1064, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1083, "uint16");
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    render_pass_encoder1070.drawIndirect(buffer1046, 0);
    compute_pass_encoder1011.end();
    render_pass_encoder1071.setIndexBuffer(buffer1099, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1048, 0);
    render_pass_encoder1011.drawIndirect(buffer1075, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1050.drawIndirect(buffer105, 0);
    render_pass_encoder1011.drawIndirect(buffer1067, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1096, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1051.drawIndirect(buffer1067, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1094, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1062.drawIndexedIndirect(buffer10100, 0);
    device10.queue.submit([command_buffer103, command_buffer106, ]);
    render_pass_encoder1001.drawIndirect(buffer1091, 0);
    render_pass_encoder1030.drawIndirect(buffer109, 0);
    render_pass_encoder1000.drawIndirect(buffer1029, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1000.drawIndirect(buffer1078, 0);
    render_pass_encoder1062.drawIndirect(buffer107, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1031.drawIndirect(buffer1075, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1060.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1017, 0);
    render_pass_encoder1062.drawIndirect(buffer1031, 0);
    render_pass_encoder1001.drawIndirect(buffer1029, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1073, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1078, 0);
    render_pass_encoder1030.drawIndirect(buffer1029, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10106, "uint16");
    render_pass_encoder1072.drawIndirect(buffer1067, 0);
    render_pass_encoder1010.drawIndirect(buffer10111, 0);
    render_pass_encoder1052.end();
    render_pass_encoder1031.drawIndirect(buffer1062, 0);
    render_pass_encoder1050.drawIndirect(buffer1088, 0);
    render_pass_encoder1062.drawIndirect(buffer1079, 0);
    render_pass_encoder1052.drawIndirect(buffer1029, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10111, "uint16");
    render_pass_encoder1070.drawIndirect(buffer10101, 0);
    render_pass_encoder1040.drawIndirect(buffer1074, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1072.drawIndirect(buffer1030, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10114 = device10.createBuffer({
        label: "buffer10114",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10114, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10114, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1060.drawIndirect(buffer10100, 0);
    render_pass_encoder1062.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1041.drawIndirect(buffer1087, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1001.drawIndirect(buffer10114, 0);
    render_pass_encoder1030.drawIndirect(buffer1079, 0);
    render_pass_encoder1040.drawIndirect(buffer10109, 0);
    const buffer10115 = device10.createBuffer({
        label: "buffer10115",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10116 = device10.createBuffer({
        label: "buffer10116",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1045 = device10.createBindGroup({
        label: "bind_group1045",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10115,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10116,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1045);
    render_pass_encoder1051.draw(3);
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10117 = device10.createBuffer({
        label: "buffer10117",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10117, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10117, 0);
    render_pass_encoder1072.drawIndirect(buffer1014, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1070.drawIndirect(buffer1079, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10109, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10113, 0);
    render_pass_encoder1071.drawIndirect(buffer1030, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1031.drawIndirect(buffer1016, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1040.drawIndirect(buffer1088, 0);
    render_pass_encoder1072.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1056, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1051.drawIndirect(buffer1013, 0);
    render_pass_encoder1070.drawIndirect(buffer1099, 0);
    render_pass_encoder1040.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1078, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1052.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1052.drawIndirect(buffer10114, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1015, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer1074, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1072.drawIndirect(buffer1065, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1072.drawIndirect(buffer1048, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1070.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1074, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1011.setIndexBuffer(buffer10109, "uint16");
    render_pass_encoder1030.drawIndirect(buffer10111, 0);
    render_pass_encoder1052.end();
    render_pass_encoder1001.drawIndirect(buffer10111, 0);
    render_pass_encoder1000.drawIndirect(buffer1034, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1052.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1001.drawIndirect(buffer1075, 0);
    render_pass_encoder1041.drawIndirect(buffer1015, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1099, 0);
    render_pass_encoder1072.drawIndirect(buffer10110, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1060.drawIndirect(buffer109, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1070.drawIndirect(buffer109, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1041.setIndexBuffer(buffer103, "uint16");
    const buffer10118 = device10.createBuffer({
        label: "buffer10118",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10119 = device10.createBuffer({
        label: "buffer10119",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1046 = device10.createBindGroup({
        label: "bind_group1046",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10118,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10119,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1046);
    render_pass_encoder1052.drawIndirect(buffer1048, 0);
    render_pass_encoder1040.drawIndirect(buffer10111, 0);
    render_pass_encoder1000.drawIndirect(buffer1091, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1050.drawIndirect(buffer1044, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1090, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1035, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndirect(buffer10100, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1072.drawIndirect(buffer10117, 0);
    render_pass_encoder1060.drawIndirect(buffer10100, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1050.drawIndirect(buffer10114, 0);
    render_pass_encoder1031.drawIndirect(buffer1072, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1096, 0);
    render_pass_encoder1031.drawIndirect(buffer1091, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1050.drawIndirect(buffer1042, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1072.setIndexBuffer(buffer10104, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1075, 0);
    device30.queue.submit([]);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10120 = device10.createBuffer({
        label: "buffer10120",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10120, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10120, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1072.drawIndirect(buffer10100, 0);
    compute_pass_encoder1060.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10111, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1030, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1070.setIndexBuffer(buffer1059, "uint16");
    render_pass_encoder1050.drawIndirect(buffer10104, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1072.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1050.drawIndirect(buffer10117, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10107, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1062.drawIndirect(buffer1079, 0);
    render_pass_encoder1050.drawIndirect(buffer1019, 0);
    render_pass_encoder1030.drawIndirect(buffer1078, 0);
    render_pass_encoder1000.drawIndirect(buffer1070, 0);
    render_pass_encoder1061.drawIndirect(buffer1067, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    render_pass_encoder1052.drawIndirect(buffer1012, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1072.drawIndirect(buffer1099, 0);
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer107, ]);
    render_pass_encoder1051.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1052.drawIndirect(buffer1032, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1065, 0);
    render_pass_encoder1001.drawIndirect(buffer1088, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1071.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1072.drawIndirect(buffer10116, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1063, 0);
    compute_pass_encoder1060.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndirect(buffer10110, 0);
    const uint32_1060 = new Uint32Array(3);

    uint32_1060[0] = 100;
    uint32_1060[1] = 1;
    uint32_1060[2] = 1;

    const buffer10121 = device10.createBuffer({
        label: "buffer10121",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10121, 0, uint32_1060, 0, uint32_1060.length);

    compute_pass_encoder1060.dispatchWorkgroupsIndirect(buffer10121, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1062.drawIndirect(buffer1088, 0);
    render_pass_encoder1000.drawIndirect(buffer1044, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1085, 0);
    render_pass_encoder1061.drawIndirect(buffer1096, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1000.drawIndirect(buffer10120, 0);
    render_pass_encoder1072.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1061.drawIndirect(buffer1018, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10107, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1040.end();
    render_pass_encoder1071.drawIndirect(buffer1075, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1001.setIndexBuffer(buffer10102, "uint16");
    render_pass_encoder1070.popDebugGroup();
    compute_pass_encoder1040.end();
    render_pass_encoder1001.setIndexBuffer(buffer10116, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10112, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1091, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1062.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1074, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer1099, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1011.drawIndirect(buffer10114, 0);
    render_pass_encoder1061.drawIndirect(buffer10119, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1092, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1052.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1091, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1072.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1031.drawIndirect(buffer1074, 0);
    render_pass_encoder1072.setIndexBuffer(buffer1083, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1067, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1071.end();
    render_pass_encoder1010.setIndexBuffer(buffer1089, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1051, 0);
    render_pass_encoder1071.drawIndirect(buffer1048, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1062.drawIndirect(buffer1066, 0);
    render_pass_encoder1072.setIndexBuffer(buffer1084, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1048, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1061.drawIndirect(buffer10100, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1040.drawIndirect(buffer10109, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10111, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1096, 0);
    render_pass_encoder1030.drawIndirect(buffer1030, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1010.drawIndirect(buffer1075, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1000.drawIndirect(buffer10114, 0);
    render_pass_encoder1050.drawIndirect(buffer105, 0);
    device30.queue.submit([command_buffer300, ]);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer10122 = device10.createBuffer({
        label: "buffer10122",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10122, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer10122, 0);
    render_pass_encoder1052.drawIndirect(buffer10106, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1085, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1052.drawIndexedIndirect(buffer10116, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1041.drawIndirect(buffer10100, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1031, 0);
    compute_pass_encoder1060.dispatchWorkgroups(100);
    render_pass_encoder1062.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1061.drawIndirect(buffer1060, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1070.drawIndirect(buffer10117, 0);
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10123 = device10.createBuffer({
        label: "buffer10123",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10123, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10123, 0);
    render_pass_encoder1011.drawIndirect(buffer1066, 0);
    device30.queue.submit([]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer10110, 0);
    render_pass_encoder1000.drawIndirect(buffer1030, 0);
    render_pass_encoder1062.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1050.setIndexBuffer(buffer10123, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1066, 0);
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1091, 0);
    render_pass_encoder1000.drawIndirect(buffer1099, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer10106, "uint16");
    render_pass_encoder1060.draw(3);
    render_pass_encoder1072.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1051.drawIndirect(buffer1099, 0);
    render_pass_encoder1050.setIndexBuffer(buffer10115, "uint16");
    const buffer10124 = device10.createBuffer({
        label: "buffer10124",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10125 = device10.createBuffer({
        label: "buffer10125",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1047 = device10.createBindGroup({
        label: "bind_group1047",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10124,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10125,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1047);
    const buffer10126 = device10.createBuffer({
        label: "buffer10126",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10127 = device10.createBuffer({
        label: "buffer10127",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1048 = device10.createBindGroup({
        label: "bind_group1048",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10126,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10127,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1048);
    render_pass_encoder1071.drawIndirect(buffer1024, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1077, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1060.drawIndirect(buffer1031, 0);
    render_pass_encoder1050.drawIndirect(buffer1079, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1055, 0);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1092, "uint16");
    compute_pass_encoder1020.end();
    render_pass_encoder1001.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1051.drawIndirect(buffer10109, 0);
    compute_pass_encoder1011.end();
    render_pass_encoder1062.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1081, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1000.drawIndirect(buffer1099, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1000.drawIndirect(buffer10121, 0);
    render_pass_encoder1062.drawIndirect(buffer1078, 0);
    render_pass_encoder1060.drawIndirect(buffer10120, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1093, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1051.drawIndirect(buffer1066, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1052.drawIndirect(buffer10121, 0);
    render_pass_encoder1010.drawIndirect(buffer1075, 0);
    render_pass_encoder1062.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1041.drawIndirect(buffer1078, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1072.drawIndirect(buffer1091, 0);
    device20.queue.submit([]);
    render_pass_encoder1062.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1000.drawIndirect(buffer1091, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1031.drawIndirect(buffer10100, 0);
    render_pass_encoder1061.drawIndirect(buffer10109, 0);
    render_pass_encoder1051.drawIndirect(buffer10114, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1062, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10128 = device10.createBuffer({
        label: "buffer10128",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10128, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10128, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer10120, 0);
    const buffer10129 = device10.createBuffer({
        label: "buffer10129",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10130 = device10.createBuffer({
        label: "buffer10130",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1049 = device10.createBindGroup({
        label: "bind_group1049",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10129,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10130,
                },
            },
        ],
    });

    compute_pass_encoder1060.setBindGroup(0, bind_group1049);
    render_pass_encoder1040.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1062.drawIndirect(buffer1030, 0);
    render_pass_encoder1050.drawIndirect(buffer10128, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10110, 0);
    const buffer10131 = device10.createBuffer({
        label: "buffer10131",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10132 = device10.createBuffer({
        label: "buffer10132",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1050 = device10.createBindGroup({
        label: "bind_group1050",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10131,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10132,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1050);
    render_pass_encoder1001.drawIndirect(buffer1074, 0);
    render_pass_encoder1062.drawIndirect(buffer1023, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1071.drawIndirect(buffer1030, 0);
    render_pass_encoder1072.setIndexBuffer(buffer10123, "uint16");
    const buffer10133 = device10.createBuffer({
        label: "buffer10133",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10134 = device10.createBuffer({
        label: "buffer10134",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1051 = device10.createBindGroup({
        label: "bind_group1051",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10133,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10134,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1051);
    render_pass_encoder1052.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1062.end();
    render_pass_encoder1041.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10128, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1001.drawIndirect(buffer10112, 0);
    render_pass_encoder1010.drawIndirect(buffer1096, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1061.drawIndirect(buffer1091, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1040.drawIndirect(buffer10123, 0);
    render_pass_encoder1041.drawIndirect(buffer1078, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10128, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1001.setIndexBuffer(buffer10112, "uint16");
    render_pass_encoder1000.draw(3);
    render_pass_encoder1011.drawIndirect(buffer10117, 0);
    render_pass_encoder1050.drawIndirect(buffer10131, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1098, "uint16");
    render_pass_encoder1052.setIndexBuffer(buffer10131, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1061.drawIndirect(buffer1065, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1065, 0);
    const buffer10135 = device10.createBuffer({
        label: "buffer10135",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10136 = device10.createBuffer({
        label: "buffer10136",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1052 = device10.createBindGroup({
        label: "bind_group1052",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10135,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10136,
                },
            },
        ],
    });

    compute_pass_encoder1060.setBindGroup(0, bind_group1052);
    render_pass_encoder1072.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1030.drawIndirect(buffer1088, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1090, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10121, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1052.end();
    render_pass_encoder1001.drawIndirect(buffer1048, 0);
    render_pass_encoder1041.drawIndirect(buffer1078, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10126, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10109, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10137 = device10.createBuffer({
        label: "buffer10137",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10137, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10137, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1048, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1081, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1072, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer10135, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10132, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1051.drawIndirect(buffer1067, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10119, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1066, 0);
    const buffer10138 = device10.createBuffer({
        label: "buffer10138",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10139 = device10.createBuffer({
        label: "buffer10139",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1053 = device10.createBindGroup({
        label: "bind_group1053",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10138,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10139,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1053);
    render_pass_encoder1062.draw(3);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1070.setIndexBuffer(buffer10125, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1060.drawIndirect(buffer10121, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1072.drawIndirect(buffer1082, 0);
    render_pass_encoder1072.drawIndirect(buffer1048, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1096, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1000.end();
    render_pass_encoder1041.end();
    render_pass_encoder1040.drawIndirect(buffer1054, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1052.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1067, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10139, 0);
    render_pass_encoder1041.drawIndirect(buffer10117, 0);
    render_pass_encoder1050.setIndexBuffer(buffer10131, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer10137, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10127, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1052.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1041.drawIndirect(buffer1096, 0);
    render_pass_encoder1051.drawIndirect(buffer1074, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1067, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1040.drawIndirect(buffer10115, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1071.drawIndirect(buffer10119, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1011.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1062.drawIndirect(buffer1031, 0);
    render_pass_encoder1052.drawIndirect(buffer1030, 0);
    compute_pass_encoder1060.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1052.drawIndirect(buffer1079, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1072.drawIndirect(buffer1035, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10119, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1010.drawIndirect(buffer1078, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1079, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1054, 0);
    render_pass_encoder1052.end();
    render_pass_encoder1052.drawIndirect(buffer1037, 0);
    const buffer10140 = device10.createBuffer({
        label: "buffer10140",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10141 = device10.createBuffer({
        label: "buffer10141",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1054 = device10.createBindGroup({
        label: "bind_group1054",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10140,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10141,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1054);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1051.drawIndirect(buffer1079, 0);
    render_pass_encoder1051.drawIndirect(buffer10123, 0);
    render_pass_encoder1010.drawIndirect(buffer1088, 0);
    render_pass_encoder1062.drawIndirect(buffer10134, 0);
    const buffer10142 = device10.createBuffer({
        label: "buffer10142",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10143 = device10.createBuffer({
        label: "buffer10143",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1055 = device10.createBindGroup({
        label: "bind_group1055",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10142,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10143,
                },
            },
        ],
    });

    compute_pass_encoder1060.setBindGroup(0, bind_group1055);
    render_pass_encoder1050.drawIndexedIndirect(buffer10137, 0);
    render_pass_encoder1072.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1062.setIndexBuffer(buffer10114, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1088, 0);
    render_pass_encoder1062.drawIndirect(buffer10128, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1010.drawIndirect(buffer1087, 0);
    render_pass_encoder1070.drawIndirect(buffer1091, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1088, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1040.drawIndirect(buffer10116, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1062.drawIndirect(buffer1091, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1072.drawIndirect(buffer1030, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10107, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1031.draw(3);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer10144 = device10.createBuffer({
        label: "buffer10144",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10144, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer10144, 0);
    render_pass_encoder1011.drawIndirect(buffer10141, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1087, "uint16");
    render_pass_encoder1072.draw(3);
    render_pass_encoder1061.drawIndirect(buffer1034, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1050.drawIndirect(buffer10122, 0);
    render_pass_encoder1062.drawIndirect(buffer1056, 0);
    render_pass_encoder1000.drawIndirect(buffer1050, 0);
    render_pass_encoder1061.drawIndirect(buffer1085, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1050.drawIndirect(buffer10117, 0);
    render_pass_encoder1052.drawIndirect(buffer10100, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1031.drawIndirect(buffer1073, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1079, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10120, 0);
    render_pass_encoder1041.drawIndirect(buffer10142, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10138, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10138, 0);
    render_pass_encoder1052.end();
    render_pass_encoder1051.drawIndirect(buffer1030, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1001.drawIndirect(buffer10123, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1062.drawIndirect(buffer1075, 0);
    render_pass_encoder1030.drawIndirect(buffer1088, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1071.drawIndirect(buffer1079, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1011.drawIndirect(buffer10117, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer10112, "uint16");
    render_pass_encoder1062.drawIndirect(buffer1099, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1001.drawIndirect(buffer10107, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10142, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10128, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1070.setIndexBuffer(buffer10100, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1048, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1041.drawIndirect(buffer10100, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10117, 0);
    const buffer10145 = device10.createBuffer({
        label: "buffer10145",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10146 = device10.createBuffer({
        label: "buffer10146",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1056 = device10.createBindGroup({
        label: "bind_group1056",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10145,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10146,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1056);
    render_pass_encoder1011.drawIndirect(buffer1035, 0);
    render_pass_encoder1051.drawIndirect(buffer1074, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10118, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1072.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1010.drawIndirect(buffer10132, 0);
    render_pass_encoder1040.drawIndirect(buffer10119, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1052.drawIndirect(buffer10121, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer10103, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1041.end();
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer10147 = device10.createBuffer({
        label: "buffer10147",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10147, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer10147, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1062.drawIndexedIndirect(buffer1040, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10148 = device10.createBuffer({
        label: "buffer10148",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10148, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10148, 0);
    render_pass_encoder1071.drawIndirect(buffer1066, 0);
    render_pass_encoder1010.drawIndirect(buffer1091, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1010.drawIndirect(buffer1017, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1099, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1042, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10149 = device10.createBuffer({
        label: "buffer10149",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10149, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10149, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1094, 0);
    const buffer10150 = device10.createBuffer({
        label: "buffer10150",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10151 = device10.createBuffer({
        label: "buffer10151",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1057 = device10.createBindGroup({
        label: "bind_group1057",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10150,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10151,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1057);
    render_pass_encoder1070.drawIndirect(buffer1096, 0);
    render_pass_encoder1040.drawIndirect(buffer1080, 0);
    render_pass_encoder1062.drawIndirect(buffer1099, 0);
    render_pass_encoder1040.drawIndirect(buffer1029, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10108, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer10132, "uint16");
    render_pass_encoder1041.drawIndirect(buffer10117, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1051.drawIndirect(buffer10149, 0);
    render_pass_encoder1050.drawIndirect(buffer10123, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1051.drawIndirect(buffer1079, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1070.drawIndirect(buffer10109, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndirect(buffer1036, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10122, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1050.drawIndirect(buffer1078, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10143, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10152 = device10.createBuffer({
        label: "buffer10152",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10152, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10152, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1060.drawIndirect(buffer1075, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer10137, 0);
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1095, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1029, 0);
    render_pass_encoder1011.drawIndirect(buffer1091, 0);
    render_pass_encoder1000.drawIndirect(buffer1049, 0);
    render_pass_encoder1060.drawIndirect(buffer10113, 0);
    render_pass_encoder1041.drawIndirect(buffer1030, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1062.drawIndirect(buffer10103, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1071.drawIndirect(buffer1085, 0);
    render_pass_encoder1072.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1061.draw(3);
    render_pass_encoder1061.drawIndirect(buffer10128, 0);
    const buffer10153 = device10.createBuffer({
        label: "buffer10153",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10154 = device10.createBuffer({
        label: "buffer10154",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1058 = device10.createBindGroup({
        label: "bind_group1058",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10153,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10154,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1058);
    render_pass_encoder1060.setIndexBuffer(buffer1066, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1031, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10125, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1021, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1052.drawIndirect(buffer1053, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10139, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1011.drawIndirect(buffer10148, 0);
    render_pass_encoder1000.drawIndirect(buffer10117, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1072.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1031.drawIndirect(buffer10122, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1041.drawIndirect(buffer1023, 0);
    render_pass_encoder1072.drawIndirect(buffer1091, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1000.drawIndirect(buffer10142, 0);
    render_pass_encoder1011.drawIndirect(buffer1067, 0);
    device30.queue.submit([]);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1040.drawIndirect(buffer1075, 0);
    render_pass_encoder1030.drawIndirect(buffer1080, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1001.end();
    render_pass_encoder1041.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10136, 0);
    render_pass_encoder1072.drawIndirect(buffer10114, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1051.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1072.end();
    render_pass_encoder1040.drawIndirect(buffer1076, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10140, 0);
    render_pass_encoder1050.setIndexBuffer(buffer10114, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer10137, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1071.drawIndirect(buffer10147, 0);
    render_pass_encoder1071.drawIndirect(buffer1085, 0);
    render_pass_encoder1062.drawIndirect(buffer10109, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10120, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer10147, 0);
    render_pass_encoder1070.drawIndirect(buffer102, 0);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1072.drawIndirect(buffer10106, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer10139, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1061.drawIndirect(buffer10100, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1040.end();
    const buffer10155 = device10.createBuffer({
        label: "buffer10155",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10156 = device10.createBuffer({
        label: "buffer10156",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1059 = device10.createBindGroup({
        label: "bind_group1059",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10155,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10156,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1059);
    render_pass_encoder1050.drawIndexedIndirect(buffer10137, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10150, "uint16");
    render_pass_encoder1041.drawIndirect(buffer10122, 0);
    device30.queue.submit([]);
    render_pass_encoder1040.drawIndirect(buffer108, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1001.drawIndirect(buffer10147, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10144, 0);
    render_pass_encoder1052.drawIndirect(buffer1080, 0);
    render_pass_encoder1071.drawIndirect(buffer10148, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1064, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer10152, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer10145, 0);
    render_pass_encoder1050.drawIndirect(buffer1021, 0);
    render_pass_encoder1010.drawIndirect(buffer1042, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1052.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1072.popDebugGroup();
    render_pass_encoder1061.setIndexBuffer(buffer1021, "uint16");
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1052.setIndexBuffer(buffer10153, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer1075, 0);
    render_pass_encoder1041.drawIndirect(buffer10137, 0);
    render_pass_encoder1041.drawIndirect(buffer10149, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer103, 0);
    const buffer10157 = device10.createBuffer({
        label: "buffer10157",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10158 = device10.createBuffer({
        label: "buffer10158",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1060 = device10.createBindGroup({
        label: "bind_group1060",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10157,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10158,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1060);
    render_pass_encoder1052.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1011.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer10120, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1010.drawIndirect(buffer1079, 0);
    render_pass_encoder1072.drawIndirect(buffer1080, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10137, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1031.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1062.drawIndirect(buffer1012, 0);
    render_pass_encoder1031.drawIndirect(buffer10140, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1071.drawIndirect(buffer1011, 0);
    render_pass_encoder1040.drawIndirect(buffer1075, 0);
    render_pass_encoder1051.drawIndirect(buffer1074, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10149, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1067, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1072.drawIndirect(buffer1031, 0);
    render_pass_encoder1011.drawIndirect(buffer10146, 0);
    render_pass_encoder1071.drawIndirect(buffer1052, 0);
    render_pass_encoder1070.drawIndirect(buffer1066, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer10126, 0);
    render_pass_encoder1001.drawIndirect(buffer10137, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10157, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1052.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer10147, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer10132, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1072.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1000.drawIndirect(buffer107, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1040.drawIndirect(buffer1088, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1001.drawIndirect(buffer1080, 0);
    render_pass_encoder1041.popDebugGroup();
    const buffer10159 = device10.createBuffer({
        label: "buffer10159",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10160 = device10.createBuffer({
        label: "buffer10160",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1061 = device10.createBindGroup({
        label: "bind_group1061",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10159,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10160,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1061);
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder1011.end();
    render_pass_encoder1011.setIndexBuffer(buffer10103, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10144, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1001.drawIndirect(buffer10123, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1031.drawIndirect(buffer1065, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1072.drawIndirect(buffer1067, 0);
    render_pass_encoder1040.drawIndirect(buffer1088, 0);
    render_pass_encoder1011.end();
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer10161 = device10.createBuffer({
        label: "buffer10161",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10161, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer10161, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1072.drawIndirect(buffer1089, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1051.drawIndirect(buffer10161, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1062, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1051.drawIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndirect(buffer1049, 0);
    render_pass_encoder1050.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1052.drawIndirect(buffer10152, 0);
    const buffer10162 = device10.createBuffer({
        label: "buffer10162",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10163 = device10.createBuffer({
        label: "buffer10163",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1062 = device10.createBindGroup({
        label: "bind_group1062",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10162,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10163,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1062);
    render_pass_encoder1062.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1041.drawIndirect(buffer10100, 0);
    render_pass_encoder1060.drawIndirect(buffer10144, 0);
    render_pass_encoder1041.drawIndirect(buffer10125, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10111, 0);
    const buffer10164 = device10.createBuffer({
        label: "buffer10164",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10165 = device10.createBuffer({
        label: "buffer10165",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1063 = device10.createBindGroup({
        label: "bind_group1063",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10164,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10165,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1063);
    render_pass_encoder1041.end();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10166 = device10.createBuffer({
        label: "buffer10166",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10166, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10166, 0);
    render_pass_encoder1052.drawIndirect(buffer100, 0);
    const buffer10167 = device10.createBuffer({
        label: "buffer10167",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10168 = device10.createBuffer({
        label: "buffer10168",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1064 = device10.createBindGroup({
        label: "bind_group1064",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10167,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10168,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1064);
    render_pass_encoder1070.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1060.drawIndirect(buffer1030, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer10149, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10116, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10161, 0);
    render_pass_encoder1070.drawIndirect(buffer1048, 0);
    render_pass_encoder1052.drawIndirect(buffer1029, 0);
    render_pass_encoder1061.drawIndirect(buffer10149, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1070.drawIndirect(buffer10166, 0);
    render_pass_encoder1030.drawIndirect(buffer1029, 0);
    render_pass_encoder1010.drawIndirect(buffer1074, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10161, 0);
    render_pass_encoder1010.drawIndirect(buffer1097, 0);
    render_pass_encoder1040.drawIndirect(buffer1066, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer10110, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10169 = device10.createBuffer({
        label: "buffer10169",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10169, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10169, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10116, 0);
    render_pass_encoder1061.drawIndirect(buffer10137, 0);
    render_pass_encoder1060.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1067, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10170 = device10.createBuffer({
        label: "buffer10170",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10170, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10170, 0);
    render_pass_encoder1011.drawIndirect(buffer10100, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1021, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer10128, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1092, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer10109, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1096, 0);
    const buffer10171 = device10.createBuffer({
        label: "buffer10171",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10172 = device10.createBuffer({
        label: "buffer10172",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1065 = device10.createBindGroup({
        label: "bind_group1065",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10171,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10172,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1065);
    render_pass_encoder1001.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1041.drawIndirect(buffer10140, 0);
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    render_pass_encoder1071.drawIndirect(buffer1033, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10168, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1080, 0);
    render_pass_encoder1060.drawIndirect(buffer10161, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndirect(buffer109, 0);
    render_pass_encoder1071.drawIndirect(buffer10114, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1062.end();
    const buffer10173 = device10.createBuffer({
        label: "buffer10173",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10174 = device10.createBuffer({
        label: "buffer10174",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1066 = device10.createBindGroup({
        label: "bind_group1066",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10173,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10174,
                },
            },
        ],
    });

    compute_pass_encoder1060.setBindGroup(0, bind_group1066);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer10120, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1011.drawIndexedIndirect(buffer1099, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1061.drawIndirect(buffer10126, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1071.drawIndirect(buffer1066, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10150, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1062.drawIndirect(buffer10122, 0);
    render_pass_encoder1072.setIndexBuffer(buffer1095, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10120, 0);
    render_pass_encoder1070.drawIndirect(buffer10147, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10110, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer1019, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1011.drawIndirect(buffer10166, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1081, "uint16");
    const buffer10175 = device10.createBuffer({
        label: "buffer10175",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10176 = device10.createBuffer({
        label: "buffer10176",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1067 = device10.createBindGroup({
        label: "bind_group1067",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10175,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10176,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1067);
    render_pass_encoder1052.drawIndirect(buffer1067, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1030.drawIndirect(buffer1076, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1085, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.drawIndirect(buffer10170, 0);
    render_pass_encoder1051.drawIndirect(buffer10122, 0);
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1090, "uint16");
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1072.drawIndirect(buffer10128, 0);
    render_pass_encoder1052.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10125, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1070.drawIndirect(buffer1080, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1000.setIndexBuffer(buffer1094, "uint16");
    render_pass_encoder1072.drawIndexedIndirect(buffer10144, 0);
    render_pass_encoder1040.drawIndirect(buffer10169, 0);
    render_pass_encoder1051.drawIndirect(buffer10170, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10128, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10137, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1079, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1031, 0);
    render_pass_encoder1041.drawIndirect(buffer1074, 0);
    render_pass_encoder1041.drawIndirect(buffer10128, 0);
    render_pass_encoder1072.drawIndirect(buffer10168, 0);
    render_pass_encoder1072.drawIndirect(buffer10152, 0);
    render_pass_encoder1010.drawIndirect(buffer10170, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1062.drawIndirect(buffer10161, 0);
    render_pass_encoder1062.setIndexBuffer(buffer10127, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer10144, 0);
    render_pass_encoder1040.drawIndirect(buffer10169, 0);
    render_pass_encoder1040.end();
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1061.drawIndirect(buffer10152, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10112, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1062.end();
    render_pass_encoder1050.drawIndirect(buffer1030, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1040.drawIndirect(buffer10102, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1064, "uint16");
    render_pass_encoder1031.drawIndirect(buffer10144, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1072.drawIndirect(buffer1035, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10137, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer10144, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10126, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1052.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1051.drawIndirect(buffer10122, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1030.drawIndirect(buffer1025, 0);
    render_pass_encoder1000.drawIndirect(buffer1030, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer10100, 0);
    render_pass_encoder1061.drawIndirect(buffer1076, 0);
    render_pass_encoder1061.drawIndirect(buffer103, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1070.drawIndexedIndirect(buffer10112, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1011.drawIndirect(buffer1042, 0);
    render_pass_encoder1010.drawIndirect(buffer10152, 0);
    render_pass_encoder1052.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1099, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1062.drawIndirect(buffer1096, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer10177 = device10.createBuffer({
        label: "buffer10177",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10177, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer10177, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1085, 0);
    const buffer10178 = device10.createBuffer({
        label: "buffer10178",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10179 = device10.createBuffer({
        label: "buffer10179",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1068 = device10.createBindGroup({
        label: "bind_group1068",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10178,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10179,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1068);
    render_pass_encoder1072.drawIndexedIndirect(buffer10128, 0);
    render_pass_encoder1040.drawIndirect(buffer10172, 0);
    render_pass_encoder1061.draw(3);
    render_pass_encoder1072.drawIndirect(buffer1064, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer10101, 0);
    render_pass_encoder1010.drawIndirect(buffer1094, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10163, "uint16");
    render_pass_encoder1070.drawIndirect(buffer10119, 0);
    render_pass_encoder1070.drawIndirect(buffer1099, 0);
    const buffer10180 = device10.createBuffer({
        label: "buffer10180",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10181 = device10.createBuffer({
        label: "buffer10181",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1069 = device10.createBindGroup({
        label: "bind_group1069",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10180,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10181,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1069);
    render_pass_encoder1070.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1030.drawIndirect(buffer10166, 0);
    render_pass_encoder1030.drawIndirect(buffer10100, 0);
    render_pass_encoder1070.drawIndirect(buffer1048, 0);
    render_pass_encoder1072.end();
    render_pass_encoder1040.drawIndirect(buffer1085, 0);
    render_pass_encoder1061.drawIndirect(buffer1096, 0);
    const buffer10182 = device10.createBuffer({
        label: "buffer10182",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10183 = device10.createBuffer({
        label: "buffer10183",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1070 = device10.createBindGroup({
        label: "bind_group1070",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10182,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10183,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1070);
    render_pass_encoder1031.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1071.drawIndirect(buffer10155, 0);
    render_pass_encoder1052.drawIndirect(buffer10147, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer107, 0);
    const buffer10184 = device10.createBuffer({
        label: "buffer10184",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10185 = device10.createBuffer({
        label: "buffer10185",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1071 = device10.createBindGroup({
        label: "bind_group1071",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10184,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10185,
                },
            },
        ],
    });

    compute_pass_encoder1060.setBindGroup(0, bind_group1071);
    render_pass_encoder1000.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1031, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10152, 0);
    const buffer10186 = device10.createBuffer({
        label: "buffer10186",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10187 = device10.createBuffer({
        label: "buffer10187",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1072 = device10.createBindGroup({
        label: "bind_group1072",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10186,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10187,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1072);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1061.drawIndirect(buffer10131, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1060.drawIndirect(buffer10149, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10144, 0);
    render_pass_encoder1010.drawIndirect(buffer1030, 0);
    render_pass_encoder1072.drawIndirect(buffer1076, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1031.setIndexBuffer(buffer10154, "uint16");
    render_pass_encoder1061.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10117, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1041.drawIndirect(buffer10177, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1011.drawIndirect(buffer10170, 0);
    render_pass_encoder1070.drawIndirect(buffer1065, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1010.drawIndirect(buffer10124, 0);
    render_pass_encoder1000.drawIndirect(buffer10120, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10132, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1053, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1060.drawIndirect(buffer10166, 0);
    compute_pass_encoder1060.popDebugGroup()
    render_pass_encoder1072.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1000.drawIndirect(buffer1067, 0);
    render_pass_encoder1070.drawIndirect(buffer1096, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1010.drawIndirect(buffer1072, 0);
    render_pass_encoder1001.drawIndirect(buffer1088, 0);
    render_pass_encoder1051.drawIndirect(buffer10100, 0);
    render_pass_encoder1001.drawIndirect(buffer1048, 0);
    render_pass_encoder1050.drawIndirect(buffer10144, 0);
    render_pass_encoder1062.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1051.setIndexBuffer(buffer1093, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer10168, 0);
    render_pass_encoder1011.drawIndirect(buffer10144, 0);
    render_pass_encoder1062.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10156, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10132, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer10144, 0);
    render_pass_encoder1010.drawIndirect(buffer10144, 0);
    render_pass_encoder1000.drawIndirect(buffer1051, 0);
    render_pass_encoder1031.setIndexBuffer(buffer10134, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10121, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1075, 0);
    render_pass_encoder1060.drawIndirect(buffer10122, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1051.drawIndirect(buffer1065, 0);
    render_pass_encoder1062.drawIndirect(buffer10111, 0);
    render_pass_encoder1051.drawIndirect(buffer1058, 0);
    render_pass_encoder1062.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10121, 0);
    const buffer10188 = device10.createBuffer({
        label: "buffer10188",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10189 = device10.createBuffer({
        label: "buffer10189",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1073 = device10.createBindGroup({
        label: "bind_group1073",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10188,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10189,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1073);
    render_pass_encoder1030.drawIndirect(buffer10161, 0);
    render_pass_encoder1030.drawIndirect(buffer10135, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1088, 0);
    render_pass_encoder1001.drawIndirect(buffer10152, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1040.drawIndirect(buffer10148, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10142, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10149, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1060.drawIndirect(buffer1080, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10160, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1096, 0);
    device30.queue.submit([]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1072.setIndexBuffer(buffer1096, "uint16");
    render_pass_encoder1062.drawIndexedIndirect(buffer1078, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10190 = device10.createBuffer({
        label: "buffer10190",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10190, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10190, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1070.drawIndirect(buffer10158, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1001.drawIndirect(buffer10136, 0);
    render_pass_encoder1040.end();
    const buffer10191 = device10.createBuffer({
        label: "buffer10191",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10192 = device10.createBuffer({
        label: "buffer10192",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1074 = device10.createBindGroup({
        label: "bind_group1074",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10191,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10192,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1074);
    render_pass_encoder1052.drawIndexedIndirect(buffer10147, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1083, "uint16");
    render_pass_encoder1031.drawIndirect(buffer102, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10177, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10116, 0);
    render_pass_encoder1072.drawIndirect(buffer10114, 0);
    render_pass_encoder1072.drawIndirect(buffer10130, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1062.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10146, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10120, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1066, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer10171, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10161, 0);
    render_pass_encoder1031.drawIndirect(buffer1085, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1083, "uint16");
    render_pass_encoder1062.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1062.drawIndexedIndirect(buffer10147, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1069, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndirect(buffer1093, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1052.end();
    render_pass_encoder1051.drawIndirect(buffer1091, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer10177, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1096, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1060.drawIndirect(buffer10114, 0);
    render_pass_encoder1051.drawIndirect(buffer10128, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1050.end();
    render_pass_encoder1061.drawIndirect(buffer10100, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10166, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1079, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1050.drawIndirect(buffer1040, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1041.drawIndirect(buffer10163, 0);
    render_pass_encoder1052.drawIndirect(buffer1078, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10113, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1048, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1072.setIndexBuffer(buffer10115, "uint16");
    compute_pass_encoder1011.end();
    render_pass_encoder1000.drawIndirect(buffer10145, 0);
    render_pass_encoder1062.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1062.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10149, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10166, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10180, "uint16");
    const buffer10193 = device10.createBuffer({
        label: "buffer10193",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10194 = device10.createBuffer({
        label: "buffer10194",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1075 = device10.createBindGroup({
        label: "bind_group1075",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10193,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10194,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1075);
    render_pass_encoder1050.drawIndirect(buffer1099, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10114, "uint16");
    render_pass_encoder1052.drawIndirect(buffer1042, 0);
    render_pass_encoder1000.drawIndirect(buffer1076, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10179, "uint16");
    render_pass_encoder1001.drawIndirect(buffer10147, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1052.drawIndexedIndirect(buffer10177, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1066, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1072.drawIndirect(buffer10110, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10160, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1098, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10181, 0);
    compute_pass_encoder1060.end();
    render_pass_encoder1010.drawIndirect(buffer1075, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1050.drawIndirect(buffer10177, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer10147, 0);
    compute_pass_encoder1060.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer10100, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1071.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1052.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1070.drawIndirect(buffer10183, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10120, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10149, 0);
    render_pass_encoder1070.drawIndirect(buffer10123, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer10126, 0);
    render_pass_encoder1072.drawIndirect(buffer10190, 0);
    render_pass_encoder1050.drawIndirect(buffer1030, 0);
    render_pass_encoder1060.drawIndirect(buffer10165, 0);
    render_pass_encoder1060.drawIndirect(buffer10166, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10110, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1099, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1030.drawIndirect(buffer10117, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1011.end();
    compute_pass_encoder1011.end();
    const uint32_1060 = new Uint32Array(3);

    uint32_1060[0] = 100;
    uint32_1060[1] = 1;
    uint32_1060[2] = 1;

    const buffer10195 = device10.createBuffer({
        label: "buffer10195",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10195, 0, uint32_1060, 0, uint32_1060.length);

    compute_pass_encoder1060.dispatchWorkgroupsIndirect(buffer10195, 0);
    render_pass_encoder1031.drawIndirect(buffer1080, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10196 = device10.createBuffer({
        label: "buffer10196",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10196, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10196, 0);
    render_pass_encoder1041.drawIndirect(buffer1029, 0);
    render_pass_encoder1011.drawIndirect(buffer10117, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer10189, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1040.drawIndirect(buffer1085, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1076, 0);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1050.drawIndexedIndirect(buffer10193, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1087, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1066, 0);
    render_pass_encoder1000.drawIndirect(buffer10148, 0);
    render_pass_encoder1061.drawIndexed(3);
    render_pass_encoder1062.setIndexBuffer(buffer10137, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1072.drawIndirect(buffer10169, 0);
    render_pass_encoder1050.drawIndirect(buffer10166, 0);
    render_pass_encoder1040.drawIndirect(buffer10196, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10132, 0);
    render_pass_encoder1070.drawIndirect(buffer1074, 0);
    render_pass_encoder1030.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1070.drawIndirect(buffer10126, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1011.drawIndirect(buffer10195, 0);
    render_pass_encoder1011.drawIndirect(buffer1051, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer10139, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10121, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1070.setIndexBuffer(buffer10153, "uint16");
    render_pass_encoder1052.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1001.drawIndirect(buffer10177, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10193, 0);
    render_pass_encoder1010.drawIndirect(buffer10169, 0);
    render_pass_encoder1001.setIndexBuffer(buffer10142, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer10147, 0);
    const buffer10197 = device10.createBuffer({
        label: "buffer10197",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10198 = device10.createBuffer({
        label: "buffer10198",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1076 = device10.createBindGroup({
        label: "bind_group1076",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10197,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10198,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1076);
    render_pass_encoder1041.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1070.drawIndirect(buffer1067, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10195, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1001.drawIndirect(buffer1091, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1072.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10148, 0);
    render_pass_encoder1071.drawIndirect(buffer10110, 0);
    const buffer10199 = device10.createBuffer({
        label: "buffer10199",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10200 = device10.createBuffer({
        label: "buffer10200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1077 = device10.createBindGroup({
        label: "bind_group1077",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10199,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10200,
                },
            },
        ],
    });

    compute_pass_encoder1060.setBindGroup(0, bind_group1077);
    const buffer10201 = device10.createBuffer({
        label: "buffer10201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10202 = device10.createBuffer({
        label: "buffer10202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1078 = device10.createBindGroup({
        label: "bind_group1078",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10202,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1078);
    render_pass_encoder1040.setIndexBuffer(buffer10202, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1041.drawIndirect(buffer10110, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1040.drawIndirect(buffer10149, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1071.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10174, 0);
    render_pass_encoder1010.drawIndirect(buffer10114, 0);
    render_pass_encoder1051.drawIndirect(buffer1085, 0);
    render_pass_encoder1050.drawIndirect(buffer1065, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10198, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1071.drawIndirect(buffer10196, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10150, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1062.drawIndirect(buffer1082, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1030.drawIndirect(buffer1074, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10201, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1010.drawIndirect(buffer10170, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1030.drawIndirect(buffer10105, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1095, "uint16");
    render_pass_encoder1010.drawIndirect(buffer10109, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10176, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1070.drawIndirect(buffer1030, 0);
    render_pass_encoder1072.setIndexBuffer(buffer10134, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer10191, 0);
    render_pass_encoder1070.drawIndirect(buffer1065, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1050.drawIndirect(buffer1097, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10196, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10152, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10140, 0);
    render_pass_encoder1052.end();
    render_pass_encoder1062.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10144, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10181, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1079, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1091, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1086, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer10147, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1090, "uint16");
    render_pass_encoder1052.drawIndirect(buffer1074, 0);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1072.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer10126, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1011.drawIndirect(buffer1099, 0);
    render_pass_encoder1070.draw(3);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer10128, 0);
    render_pass_encoder1062.setIndexBuffer(buffer1080, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10203 = device10.createBuffer({
        label: "buffer10203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10203, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10203, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer10166, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10166, 0);
    render_pass_encoder1062.drawIndirect(buffer1084, 0);
    render_pass_encoder1050.drawIndirect(buffer1029, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1010.drawIndirect(buffer10149, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1050.drawIndirect(buffer10100, 0);
    render_pass_encoder1060.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10120, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10147, 0);
    render_pass_encoder1071.drawIndirect(buffer10171, 0);
    render_pass_encoder1061.drawIndexed(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer10128, 0);
    render_pass_encoder1030.drawIndirect(buffer10186, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1030, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer100, command_buffer107, ]);
    render_pass_encoder1071.drawIndirect(buffer1073, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10198, 0);
    render_pass_encoder1011.drawIndirect(buffer10195, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1061.drawIndirect(buffer10146, 0);
    render_pass_encoder1071.drawIndirect(buffer1091, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1060.drawIndirect(buffer10133, 0);
    render_pass_encoder1070.drawIndirect(buffer1085, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10189, 0);
    render_pass_encoder1070.drawIndirect(buffer10147, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1040.drawIndirect(buffer10100, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10111, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10166, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10203, 0);
    render_pass_encoder1072.setIndexBuffer(buffer10174, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1085, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10203, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1079, 0);
    const buffer10204 = device10.createBuffer({
        label: "buffer10204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10205 = device10.createBuffer({
        label: "buffer10205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1079 = device10.createBindGroup({
        label: "bind_group1079",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10205,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1079);
    render_pass_encoder1060.drawIndirect(buffer10196, 0);
    render_pass_encoder1031.setIndexBuffer(buffer10113, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1061.draw(3);
    render_pass_encoder1031.setIndexBuffer(buffer1025, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer10120, 0);
    render_pass_encoder1050.drawIndirect(buffer1058, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1010.drawIndirect(buffer10203, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1052.drawIndirect(buffer1048, 0);
    render_pass_encoder1051.drawIndirect(buffer1088, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10199, "uint16");
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1050.drawIndirect(buffer103, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10201, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1058, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1062.drawIndirect(buffer10128, 0);
    render_pass_encoder1072.end();
    render_pass_encoder1011.drawIndirect(buffer105, 0);
    render_pass_encoder1052.drawIndirect(buffer10166, 0);
    render_pass_encoder1050.drawIndirect(buffer10161, 0);
    render_pass_encoder1001.drawIndirect(buffer10148, 0);
    render_pass_encoder1000.drawIndirect(buffer10137, 0);
    render_pass_encoder1051.drawIndirect(buffer1065, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1062.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1048, 0);
    render_pass_encoder1052.setIndexBuffer(buffer10122, "uint16");
    render_pass_encoder1030.drawIndirect(buffer10190, 0);
    render_pass_encoder1011.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10144, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1066, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1070.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer10133, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1051.drawIndirect(buffer1085, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10148, 0);
    render_pass_encoder1000.drawIndirect(buffer1099, 0);
    render_pass_encoder1031.setIndexBuffer(buffer10185, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer10193, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1096, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10128, 0);
    render_pass_encoder1062.setIndexBuffer(buffer10114, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1062.drawIndirect(buffer10122, 0);
    render_pass_encoder1060.drawIndirect(buffer1063, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1093, "uint16");
    render_pass_encoder1052.drawIndirect(buffer10121, 0);
    render_pass_encoder1060.drawIndirect(buffer10201, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10166, 0);
    render_pass_encoder1000.drawIndirect(buffer10110, 0);
    render_pass_encoder1000.drawIndirect(buffer1090, 0);
    render_pass_encoder1000.drawIndirect(buffer1047, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10195, 0);
    compute_pass_encoder1011.popDebugGroup()
    const buffer10206 = device10.createBuffer({
        label: "buffer10206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10207 = device10.createBuffer({
        label: "buffer10207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1080 = device10.createBindGroup({
        label: "bind_group1080",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10207,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1080);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer10190, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1062.drawIndirect(buffer10121, 0);
    render_pass_encoder1061.drawIndirect(buffer1079, 0);
    render_pass_encoder1031.drawIndirect(buffer10147, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10122, 0);
    const buffer10208 = device10.createBuffer({
        label: "buffer10208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10209 = device10.createBuffer({
        label: "buffer10209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1081 = device10.createBindGroup({
        label: "bind_group1081",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10209,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1081);
    render_pass_encoder1000.drawIndexedIndirect(buffer10148, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1040.drawIndirect(buffer1088, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1070.drawIndirect(buffer1075, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10147, 0);
    render_pass_encoder1062.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1050.setIndexBuffer(buffer10174, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1052.drawIndirect(buffer1042, 0);
    render_pass_encoder1030.drawIndirect(buffer1079, 0);
    render_pass_encoder1011.drawIndirect(buffer1097, 0);
    render_pass_encoder1000.drawIndirect(buffer10109, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1062.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1041.drawIndirect(buffer1016, 0);
    render_pass_encoder1001.drawIndirect(buffer10111, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1071.drawIndirect(buffer10120, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10129, 0);
    render_pass_encoder1050.drawIndirect(buffer10166, 0);
    render_pass_encoder1060.drawIndirect(buffer10140, 0);
    render_pass_encoder1071.drawIndirect(buffer10161, 0);
    const buffer10210 = device10.createBuffer({
        label: "buffer10210",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10211 = device10.createBuffer({
        label: "buffer10211",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1082 = device10.createBindGroup({
        label: "bind_group1082",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10210,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10211,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1082);
    render_pass_encoder1030.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer10149, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10147, 0);
    render_pass_encoder1072.end();
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1096, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10184, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1051.drawIndirect(buffer10120, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1085, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1072.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1052.drawIndirect(buffer1078, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10120, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10212 = device10.createBuffer({
        label: "buffer10212",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10212, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10212, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1010.drawIndirect(buffer1093, 0);
    render_pass_encoder1000.drawIndirect(buffer10203, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1011.drawIndirect(buffer109, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10153, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1052.end();
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1011.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1030, 0);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexedIndirect(buffer10118, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10150, "uint16");
    render_pass_encoder1041.drawIndirect(buffer10115, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1071.drawIndirect(buffer1099, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10196, "uint16");
    render_pass_encoder1052.drawIndirect(buffer1088, 0);
    compute_pass_encoder1060.dispatchWorkgroups(100);
    render_pass_encoder1062.end();
    render_pass_encoder1041.setIndexBuffer(buffer10147, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer10198, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1070.drawIndirect(buffer1011, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10150, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1052.drawIndirect(buffer1099, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1052.drawIndirect(buffer10181, 0);
    render_pass_encoder1000.drawIndirect(buffer1098, 0);
    render_pass_encoder1072.setIndexBuffer(buffer10193, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1081, "uint16");
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1062.setIndexBuffer(buffer10103, "uint16");
    render_pass_encoder1041.draw(3);
    render_pass_encoder1062.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1040.drawIndirect(buffer1018, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10190, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10161, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1060.drawIndirect(buffer10114, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1072.setIndexBuffer(buffer10205, "uint16");
    const buffer10213 = device10.createBuffer({
        label: "buffer10213",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10214 = device10.createBuffer({
        label: "buffer10214",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1083 = device10.createBindGroup({
        label: "bind_group1083",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10213,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10214,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1083);
    render_pass_encoder1051.drawIndexedIndirect(buffer10212, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10215 = device10.createBuffer({
        label: "buffer10215",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10215, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10215, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1088, 0);
    compute_pass_encoder1060.end();
    render_pass_encoder1010.drawIndirect(buffer1054, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1041.drawIndirect(buffer10169, 0);
    render_pass_encoder1061.drawIndirect(buffer10170, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10147, 0);
    render_pass_encoder1030.drawIndirect(buffer10129, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10132, 0);
    const buffer10216 = device10.createBuffer({
        label: "buffer10216",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10217 = device10.createBuffer({
        label: "buffer10217",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1084 = device10.createBindGroup({
        label: "bind_group1084",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10216,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10217,
                },
            },
        ],
    });

    compute_pass_encoder1060.setBindGroup(0, bind_group1084);
    const buffer10218 = device10.createBuffer({
        label: "buffer10218",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10219 = device10.createBuffer({
        label: "buffer10219",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1085 = device10.createBindGroup({
        label: "bind_group1085",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10218,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10219,
                },
            },
        ],
    });

    compute_pass_encoder1060.setBindGroup(0, bind_group1085);
    render_pass_encoder1052.setIndexBuffer(buffer10177, "uint16");
    render_pass_encoder1072.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1050.setIndexBuffer(buffer10168, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1001.end();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10220 = device10.createBuffer({
        label: "buffer10220",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10220, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10220, 0);
    render_pass_encoder1051.drawIndirect(buffer10214, 0);
    render_pass_encoder1030.drawIndirect(buffer10170, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10147, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer10149, 0);
    render_pass_encoder1040.drawIndirect(buffer10147, 0);
    render_pass_encoder1041.drawIndirect(buffer1080, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1050.drawIndirect(buffer10159, 0);
    render_pass_encoder1070.drawIndirect(buffer10215, 0);
    render_pass_encoder1010.drawIndirect(buffer1066, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1072.drawIndirect(buffer10128, 0);
    render_pass_encoder1062.drawIndirect(buffer10111, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10161, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1070.drawIndirect(buffer10214, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10189, "uint16");
    render_pass_encoder1062.drawIndirect(buffer10110, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1011.drawIndirect(buffer10188, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1072.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer10117, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10175, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1091, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10100, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10221 = device10.createBuffer({
        label: "buffer10221",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10221, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10221, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1071.drawIndirect(buffer106, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1078, 0);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1050.drawIndirect(buffer1079, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1051.drawIndirect(buffer1097, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer10222 = device10.createBuffer({
        label: "buffer10222",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10222, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer10222, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10148, 0);
    render_pass_encoder1031.drawIndirect(buffer10144, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10144, 0);
    render_pass_encoder1062.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1079, 0);
    render_pass_encoder1060.drawIndirect(buffer10196, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1072.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1041.drawIndirect(buffer10114, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1041.drawIndirect(buffer1031, 0);
    render_pass_encoder1051.drawIndirect(buffer10222, 0);
    render_pass_encoder1041.drawIndirect(buffer10123, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1011.drawIndirect(buffer10183, 0);
    render_pass_encoder1052.drawIndirect(buffer1031, 0);
    const buffer10223 = device10.createBuffer({
        label: "buffer10223",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10224 = device10.createBuffer({
        label: "buffer10224",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1086 = device10.createBindGroup({
        label: "bind_group1086",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10223,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10224,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1086);
    render_pass_encoder1000.drawIndirect(buffer1011, 0);
    render_pass_encoder1040.drawIndexed(3);
    compute_pass_encoder1010.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1010.drawIndirect(buffer10161, 0);
    render_pass_encoder1062.setIndexBuffer(buffer10219, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1072.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10126, 0);
    compute_pass_encoder1011.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1070.drawIndirect(buffer1057, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10184, 0);
    render_pass_encoder1062.drawIndirect(buffer1030, 0);
    render_pass_encoder1062.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer10216, "uint16");
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    render_pass_encoder1060.drawIndirect(buffer10208, 0);
    render_pass_encoder1031.drawIndirect(buffer1085, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10162, 0);
    render_pass_encoder1051.drawIndirect(buffer10208, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1091, 0);
    render_pass_encoder1001.drawIndirect(buffer1053, 0);
    render_pass_encoder1061.drawIndirect(buffer10203, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer10212, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10147, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10218, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer10158, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1030, 0);
    render_pass_encoder1051.drawIndirect(buffer10180, 0);
    render_pass_encoder1070.drawIndirect(buffer10132, 0);
    render_pass_encoder1030.drawIndirect(buffer1096, 0);
    render_pass_encoder1010.drawIndirect(buffer10213, 0);
    render_pass_encoder1061.drawIndirect(buffer10137, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1071.drawIndirect(buffer10122, 0);
    render_pass_encoder1062.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1011.drawIndirect(buffer1099, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10189, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10215, 0);
    render_pass_encoder1050.drawIndirect(buffer10190, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1001.setIndexBuffer(buffer10152, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10216, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1052.setIndexBuffer(buffer1097, "uint16");
    render_pass_encoder1001.drawIndirect(buffer10221, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1071.drawIndirect(buffer101, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10120, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1051.drawIndirect(buffer10149, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10115, "uint16");
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1072.drawIndirect(buffer10186, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10215, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10157, "uint16");
    const buffer10225 = device10.createBuffer({
        label: "buffer10225",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10226 = device10.createBuffer({
        label: "buffer10226",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1087 = device10.createBindGroup({
        label: "bind_group1087",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10225,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10226,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1087);
    render_pass_encoder1070.drawIndexedIndirect(buffer10120, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10128, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1031.drawIndirect(buffer10149, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1041.end();
    compute_pass_encoder1020.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1040.drawIndirect(buffer1091, 0);
    render_pass_encoder1040.drawIndirect(buffer10190, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10173, "uint16");
    const uint32_1060 = new Uint32Array(3);

    uint32_1060[0] = 100;
    uint32_1060[1] = 1;
    uint32_1060[2] = 1;

    const buffer10227 = device10.createBuffer({
        label: "buffer10227",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10227, 0, uint32_1060, 0, uint32_1060.length);

    compute_pass_encoder1060.dispatchWorkgroupsIndirect(buffer10227, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1099, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1060, "uint16");
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10199, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1090, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1030.drawIndirect(buffer1091, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10214, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1031.drawIndirect(buffer10196, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10228 = device10.createBuffer({
        label: "buffer10228",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10228, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10228, 0);
    render_pass_encoder1001.setIndexBuffer(buffer10107, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer10120, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1070.drawIndirect(buffer10147, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10144, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer10147, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer105, 0);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1061.drawIndirect(buffer10144, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1050.setIndexBuffer(buffer10129, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1070.drawIndirect(buffer10128, 0);
    render_pass_encoder1010.drawIndirect(buffer10161, 0);
    render_pass_encoder1052.end();
    render_pass_encoder1070.drawIndirect(buffer10170, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10189, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1001.drawIndirect(buffer10121, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1061.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1062.end();
    render_pass_encoder1070.drawIndirect(buffer1050, 0);
    render_pass_encoder1040.drawIndirect(buffer10161, 0);
    render_pass_encoder1070.drawIndirect(buffer10161, 0);
    render_pass_encoder1010.drawIndirect(buffer10170, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10225, 0);
    render_pass_encoder1072.setIndexBuffer(buffer10102, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1029, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10120, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1060.drawIndirect(buffer1066, 0);
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder1011.end();
    render_pass_encoder1011.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1072.drawIndirect(buffer1074, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1071.drawIndirect(buffer10109, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10198, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1066, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer10149, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1066, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1072.drawIndexedIndirect(buffer10177, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10220, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10190, 0);
    const buffer10229 = device10.createBuffer({
        label: "buffer10229",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10230 = device10.createBuffer({
        label: "buffer10230",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1088 = device10.createBindGroup({
        label: "bind_group1088",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10229,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10230,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1088);
    render_pass_encoder1030.drawIndirect(buffer1079, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer10148, 0);
    render_pass_encoder1051.drawIndirect(buffer10212, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10207, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10177, 0);
    render_pass_encoder1061.drawIndirect(buffer10100, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10148, "uint16");
    render_pass_encoder1072.setIndexBuffer(buffer10154, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer10104, 0);
    render_pass_encoder1031.drawIndirect(buffer10203, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10203, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10120, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1052.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1041.drawIndirect(buffer10148, 0);
    compute_pass_encoder1040.popDebugGroup()
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer10199, 0);
    render_pass_encoder1050.drawIndirect(buffer10165, 0);
    render_pass_encoder1040.drawIndirect(buffer10179, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10196, 0);
    render_pass_encoder1071.drawIndirect(buffer1099, 0);
    render_pass_encoder1001.drawIndirect(buffer10128, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10152, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1000.drawIndirect(buffer10121, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10195, 0);
    render_pass_encoder1051.drawIndirect(buffer10179, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1062.drawIndirect(buffer10114, 0);
    render_pass_encoder1070.drawIndirect(buffer1066, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer10150, "uint16");
    render_pass_encoder1051.drawIndirect(buffer10218, 0);
    render_pass_encoder1000.drawIndirect(buffer10109, 0);
    render_pass_encoder1001.drawIndirect(buffer10215, 0);
    render_pass_encoder1070.drawIndirect(buffer10169, 0);
    render_pass_encoder1072.endOcclusionQuery()
    render_pass_encoder1052.drawIndirect(buffer1039, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10166, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1011.drawIndirect(buffer10218, 0);
    render_pass_encoder1060.drawIndirect(buffer10177, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1062.drawIndirect(buffer10187, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10188, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1072.drawIndirect(buffer10148, 0);
    render_pass_encoder1060.drawIndirect(buffer10173, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1075, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer10215, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10147, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10110, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1029, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10148, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10222, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10223, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1061.drawIndirect(buffer10177, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1070.drawIndirect(buffer10169, 0);
    render_pass_encoder1052.drawIndirect(buffer10227, 0);
    compute_pass_encoder1011.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer10136, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10114, 0);
    compute_pass_encoder1060.end();
    render_pass_encoder1010.drawIndirect(buffer10208, 0);
    render_pass_encoder1061.drawIndirect(buffer10101, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10228, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10185, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10227, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10166, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10212, 0);
    render_pass_encoder1040.drawIndirect(buffer1029, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10228, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10196, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10194, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer10166, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1052.drawIndirect(buffer10121, 0);
    render_pass_encoder1070.drawIndirect(buffer100, 0);
    render_pass_encoder1011.drawIndirect(buffer1067, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10195, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1061.end();
    render_pass_encoder1001.drawIndirect(buffer1086, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10144, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1061.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10221, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1072.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer10140, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer10231 = device10.createBuffer({
        label: "buffer10231",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10231, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer10231, 0);
    render_pass_encoder1052.drawIndirect(buffer10227, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10190, 0);
    render_pass_encoder1052.drawIndirect(buffer1017, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer10188, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10202, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1001.drawIndirect(buffer10135, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1073, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1082, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10179, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer10150, 0);
    render_pass_encoder1010.drawIndirect(buffer1066, 0);
    render_pass_encoder1000.drawIndirect(buffer10221, 0);
    render_pass_encoder1040.drawIndirect(buffer1031, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1061.drawIndirect(buffer10177, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1040.drawIndirect(buffer10125, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10226, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1031.drawIndirect(buffer10123, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1000.drawIndirect(buffer10109, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer109, 0);
    compute_pass_encoder1011.end();
    render_pass_encoder1031.drawIndirect(buffer10128, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1062.drawIndirect(buffer1066, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10215, 0);
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10118, "uint16");
    render_pass_encoder1052.drawIndirect(buffer10169, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1051.drawIndirect(buffer10117, 0);
    render_pass_encoder1072.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1079, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1094, "uint16");
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1071.drawIndexedIndirect(buffer1088, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1071.drawIndexedIndirect(buffer10227, 0);
    render_pass_encoder1011.drawIndirect(buffer1066, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10227, 0);
    render_pass_encoder1050.drawIndirect(buffer10215, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10228, 0);
    render_pass_encoder1000.drawIndirect(buffer1096, 0);
    device10.queue.submit([command_buffer103, command_buffer107, ]);
    render_pass_encoder1030.drawIndirect(buffer1075, 0);
    device30.queue.submit([]);
    render_pass_encoder1052.drawIndirect(buffer10212, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1052.drawIndirect(buffer1031, 0);
    render_pass_encoder1060.drawIndirect(buffer10143, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10130, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer10174, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10222, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer10209, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1050.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1072.drawIndirect(buffer10161, 0);
    render_pass_encoder1052.drawIndirect(buffer1031, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10110, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1061.setIndexBuffer(buffer10125, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1072.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1040.drawIndirect(buffer10109, 0);
    render_pass_encoder1011.drawIndirect(buffer1032, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10221, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10148, 0);
    render_pass_encoder1050.drawIndirect(buffer10147, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10140, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10232 = device10.createBuffer({
        label: "buffer10232",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10232, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10232, 0);
    render_pass_encoder1011.drawIndirect(buffer10222, 0);
    render_pass_encoder1071.end();
    const buffer10233 = device10.createBuffer({
        label: "buffer10233",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10234 = device10.createBuffer({
        label: "buffer10234",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1089 = device10.createBindGroup({
        label: "bind_group1089",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10233,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10234,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1089);
    render_pass_encoder1031.drawIndexedIndirect(buffer10147, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1052.end();
    render_pass_encoder1051.drawIndirect(buffer1079, 0);
    render_pass_encoder1071.drawIndirect(buffer10215, 0);
    render_pass_encoder1060.drawIndirect(buffer10111, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1081, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10235 = device10.createBuffer({
        label: "buffer10235",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10235, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10235, 0);
    const buffer10236 = device10.createBuffer({
        label: "buffer10236",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10237 = device10.createBuffer({
        label: "buffer10237",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1090 = device10.createBindGroup({
        label: "bind_group1090",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10236,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10237,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1090);
    render_pass_encoder1071.setIndexBuffer(buffer1073, "uint16");
    render_pass_encoder1041.drawIndirect(buffer10126, 0);
    render_pass_encoder1041.drawIndirect(buffer10122, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10223, 0);
    render_pass_encoder1030.drawIndirect(buffer10144, 0);
    render_pass_encoder1031.drawIndirect(buffer10174, 0);
    device30.queue.submit([]);
    render_pass_encoder1010.setIndexBuffer(buffer1031, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1040.drawIndirect(buffer1037, 0);
    render_pass_encoder1001.drawIndirect(buffer10149, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1031.drawIndirect(buffer1096, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1031.drawIndirect(buffer10161, 0);
    render_pass_encoder1052.drawIndirect(buffer10137, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10117, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder1020.end();
    render_pass_encoder1011.drawIndirect(buffer10200, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10113, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10221, 0);
    render_pass_encoder1070.drawIndirect(buffer10193, 0);
    render_pass_encoder1030.drawIndirect(buffer10147, 0);
    render_pass_encoder1000.drawIndirect(buffer10117, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1062.drawIndirect(buffer10131, 0);
    render_pass_encoder1041.drawIndirect(buffer10231, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1052.drawIndirect(buffer10128, 0);
    render_pass_encoder1031.drawIndirect(buffer10166, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10171, "uint16");
    const buffer10238 = device10.createBuffer({
        label: "buffer10238",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10239 = device10.createBuffer({
        label: "buffer10239",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1091 = device10.createBindGroup({
        label: "bind_group1091",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10238,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10239,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1091);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer10240 = device10.createBuffer({
        label: "buffer10240",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10240, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer10240, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10203, 0);
    render_pass_encoder1072.end();
    compute_pass_encoder1011.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10240, 0);
    render_pass_encoder1030.drawIndirect(buffer10240, 0);
    render_pass_encoder1011.drawIndirect(buffer10156, 0);
    render_pass_encoder1052.drawIndirect(buffer10114, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10227, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1001.drawIndirect(buffer10100, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1060.drawIndirect(buffer1067, 0);
    render_pass_encoder1041.drawIndirect(buffer10148, 0);
    render_pass_encoder1051.drawIndirect(buffer10170, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10136, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer10215, 0);
    render_pass_encoder1061.drawIndirect(buffer1075, 0);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1011.setIndexBuffer(buffer10151, "uint16");
    compute_pass_encoder1020.end();
    render_pass_encoder1072.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10149, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10227, 0);
    render_pass_encoder1011.drawIndirect(buffer10196, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer10145, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10164, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer10177, 0);
    render_pass_encoder1010.drawIndirect(buffer10220, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1051.drawIndirect(buffer1038, 0);
    render_pass_encoder1010.drawIndirect(buffer10137, 0);
    render_pass_encoder1052.drawIndirect(buffer108, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10222, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1060.drawIndirect(buffer10231, 0);
    render_pass_encoder1030.drawIndirect(buffer10111, 0);
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1052.drawIndexedIndirect(buffer1078, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer10137, 0);
    const buffer10241 = device10.createBuffer({
        label: "buffer10241",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10242 = device10.createBuffer({
        label: "buffer10242",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1092 = device10.createBindGroup({
        label: "bind_group1092",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10241,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10242,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1092);
    render_pass_encoder1030.drawIndirect(buffer1030, 0);
    render_pass_encoder1010.drawIndirect(buffer1088, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10149, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10172, "uint16");
    render_pass_encoder1041.drawIndirect(buffer10221, 0);
    render_pass_encoder1050.drawIndirect(buffer10166, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10220, 0);
    render_pass_encoder1040.drawIndirect(buffer10211, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1050.drawIndirect(buffer1098, 0);
    render_pass_encoder1051.drawIndirect(buffer10195, 0);
    render_pass_encoder1062.setIndexBuffer(buffer10147, "uint16");
    render_pass_encoder1062.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10201, 0);
    render_pass_encoder1010.drawIndirect(buffer10120, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer10155, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1051.drawIndirect(buffer1091, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10186, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10196, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10166, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1072.drawIndirect(buffer1048, 0);
    render_pass_encoder1072.drawIndirect(buffer1085, 0);
    render_pass_encoder1052.setIndexBuffer(buffer10232, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10147, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1072.setIndexBuffer(buffer10158, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10239, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10220, 0);
    render_pass_encoder1072.drawIndirect(buffer1063, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10203, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10215, 0);
    render_pass_encoder1070.drawIndirect(buffer1091, 0);
    render_pass_encoder1071.drawIndirect(buffer10227, 0);
    render_pass_encoder1050.drawIndirect(buffer1031, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10228, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1052.setIndexBuffer(buffer10160, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer10158, 0);
    render_pass_encoder1041.drawIndirect(buffer10144, 0);
    render_pass_encoder1011.drawIndirect(buffer10144, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer10209, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10137, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10176, 0);
    render_pass_encoder1052.drawIndirect(buffer10219, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10196, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer10243 = device10.createBuffer({
        label: "buffer10243",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10243, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer10243, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1060.drawIndexedIndirect(buffer10215, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer10114, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1040.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer10182, "uint16");
    render_pass_encoder1052.setIndexBuffer(buffer1092, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10128, 0);
    render_pass_encoder1050.drawIndirect(buffer1079, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1052.drawIndirect(buffer10211, 0);
    const buffer10244 = device10.createBuffer({
        label: "buffer10244",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10245 = device10.createBuffer({
        label: "buffer10245",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1093 = device10.createBindGroup({
        label: "bind_group1093",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10244,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10245,
                },
            },
        ],
    });

    compute_pass_encoder1060.setBindGroup(0, bind_group1093);
    render_pass_encoder1001.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1072.drawIndirect(buffer1067, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10227, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10212, 0);
    render_pass_encoder1051.drawIndirect(buffer1088, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer10240, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10119, 0);
    render_pass_encoder1001.drawIndirect(buffer10222, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1031.setIndexBuffer(buffer10111, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer10172, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1067, 0);
    const buffer10246 = device10.createBuffer({
        label: "buffer10246",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10247 = device10.createBuffer({
        label: "buffer10247",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1094 = device10.createBindGroup({
        label: "bind_group1094",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10246,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10247,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1094);
    render_pass_encoder1062.drawIndirect(buffer10170, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1030.drawIndirect(buffer10111, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10193, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1075, 0);
    render_pass_encoder1031.drawIndirect(buffer10177, 0);
    render_pass_encoder1030.drawIndirect(buffer10190, 0);
    const buffer10248 = device10.createBuffer({
        label: "buffer10248",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10249 = device10.createBuffer({
        label: "buffer10249",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1095 = device10.createBindGroup({
        label: "bind_group1095",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10248,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10249,
                },
            },
        ],
    });

    compute_pass_encoder1060.setBindGroup(0, bind_group1095);
    render_pass_encoder1001.drawIndexedIndirect(buffer10231, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10198, 0);
    render_pass_encoder1072.drawIndirect(buffer1010, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1072.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10161, 0);
    render_pass_encoder1052.setIndexBuffer(buffer10215, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer10161, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10190, 0);
    render_pass_encoder1050.drawIndirect(buffer10144, 0);
    render_pass_encoder1051.drawIndirect(buffer1088, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1030.drawIndirect(buffer10170, 0);
    render_pass_encoder1072.drawIndirect(buffer1079, 0);
    render_pass_encoder1001.drawIndirect(buffer1024, 0);
    render_pass_encoder1070.drawIndirect(buffer10240, 0);
    render_pass_encoder1030.drawIndirect(buffer1033, 0);
    render_pass_encoder1011.drawIndirect(buffer10120, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10147, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1050.drawIndirect(buffer10128, 0);
    render_pass_encoder1072.setIndexBuffer(buffer10222, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10240, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10243, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10196, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10121, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10250 = device10.createBuffer({
        label: "buffer10250",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10250, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10250, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer10191, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10186, "uint16");
    render_pass_encoder1072.drawIndirect(buffer10163, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer10144, 0);
    render_pass_encoder1001.drawIndirect(buffer10220, 0);
    render_pass_encoder1062.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1072.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1072.drawIndexedIndirect(buffer10249, 0);
    render_pass_encoder1011.drawIndirect(buffer10221, 0);
    render_pass_encoder1010.drawIndirect(buffer10128, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1061.setIndexBuffer(buffer10213, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer10243, 0);
    render_pass_encoder1052.end();
    render_pass_encoder1010.drawIndirect(buffer10227, 0);
    render_pass_encoder1031.drawIndirect(buffer10221, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10232, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10231, 0);
    render_pass_encoder1041.drawIndirect(buffer10170, 0);
    render_pass_encoder1031.drawIndirect(buffer10215, 0);
    render_pass_encoder1030.drawIndirect(buffer1067, 0);
    render_pass_encoder1031.drawIndirect(buffer1098, 0);
    compute_pass_encoder1011.end();
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1071.drawIndirect(buffer1029, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1051.drawIndirect(buffer10250, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer10134, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1050.end();
    compute_pass_encoder1011.end();
    render_pass_encoder1000.drawIndirect(buffer10190, 0);
    render_pass_encoder1040.drawIndirect(buffer10156, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1040.drawIndirect(buffer10161, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10199, "uint16");
    render_pass_encoder1071.drawIndirect(buffer10216, 0);
    render_pass_encoder1072.drawIndirect(buffer10137, 0);
    render_pass_encoder1011.drawIndirect(buffer10203, 0);
    render_pass_encoder1072.drawIndirect(buffer10148, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1070.drawIndirect(buffer1075, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10222, 0);
    render_pass_encoder1072.drawIndirect(buffer10128, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10210, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1062.drawIndirect(buffer10110, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1060.drawIndirect(buffer1031, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1099, "uint16");
    render_pass_encoder1072.setIndexBuffer(buffer1075, "uint16");
    compute_pass_encoder1060.end();
    render_pass_encoder1001.drawIndirect(buffer10196, 0);
    render_pass_encoder1031.drawIndirect(buffer10109, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10196, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1041.drawIndirect(buffer10215, 0);
    render_pass_encoder1000.drawIndirect(buffer1055, 0);
    compute_pass_encoder1060.popDebugGroup()
    render_pass_encoder1031.drawIndexedIndirect(buffer10147, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1073, "uint16");
    render_pass_encoder1052.drawIndirect(buffer10243, 0);
    render_pass_encoder1060.drawIndirect(buffer1042, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1051.drawIndirect(buffer10235, 0);
    render_pass_encoder1031.setIndexBuffer(buffer10248, "uint16");
    render_pass_encoder1001.drawIndirect(buffer10179, 0);
    render_pass_encoder1072.setIndexBuffer(buffer10228, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10214, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10128, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1050.drawIndirect(buffer10111, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer10177, 0);
    render_pass_encoder1051.drawIndirect(buffer10109, 0);
    render_pass_encoder1052.setIndexBuffer(buffer10233, "uint16");
    render_pass_encoder1052.drawIndexedIndirect(buffer104, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1071.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer10173, 0);
    render_pass_encoder1062.drawIndirect(buffer10191, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10137, 0);
    render_pass_encoder1011.drawIndirect(buffer10222, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1011.drawIndirect(buffer1089, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10157, "uint16");
    render_pass_encoder1010.drawIndirect(buffer10177, 0);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer10123, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1079, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer10222, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer10146, 0);
    compute_pass_encoder1060.end();
    render_pass_encoder1052.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10175, 0);
    render_pass_encoder1062.drawIndirect(buffer1080, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10251 = device10.createBuffer({
        label: "buffer10251",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10251, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10251, 0);
    render_pass_encoder1072.setIndexBuffer(buffer10142, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1011.drawIndirect(buffer1075, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10232, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1052.setIndexBuffer(buffer10100, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10232, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1062.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10235, 0);
    render_pass_encoder1062.drawIndirect(buffer10250, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1061.drawIndirect(buffer1064, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1061.drawIndirect(buffer1062, 0);
    render_pass_encoder1030.drawIndirect(buffer10126, 0);
    render_pass_encoder1011.drawIndirect(buffer10189, 0);
    render_pass_encoder1072.drawIndirect(buffer10212, 0);
    render_pass_encoder1001.drawIndirect(buffer10175, 0);
    render_pass_encoder1070.drawIndirect(buffer1043, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1061.drawIndirect(buffer10100, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10143, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1060.drawIndirect(buffer1096, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10212, 0);
    render_pass_encoder1000.drawIndirect(buffer1067, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10183, 0);
    render_pass_encoder1070.drawIndirect(buffer10170, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10177, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10120, 0);
    render_pass_encoder1001.drawIndirect(buffer10192, 0);
    render_pass_encoder1010.drawIndirect(buffer10195, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1061.drawIndirect(buffer10148, 0);
    render_pass_encoder1061.drawIndirect(buffer10152, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1062.drawIndirect(buffer10100, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1072.setIndexBuffer(buffer10164, "uint16");
    render_pass_encoder1050.drawIndirect(buffer10147, 0);
    device10.queue.submit([command_buffer104, command_buffer107, ]);
    render_pass_encoder1071.drawIndirect(buffer10152, 0);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndirect(buffer10128, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10190, 0);
    compute_pass_encoder1060.end();
    render_pass_encoder1071.drawIndirect(buffer10100, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1072.drawIndirect(buffer10227, 0);
    render_pass_encoder1030.drawIndirect(buffer10100, 0);
    render_pass_encoder1071.drawIndirect(buffer10235, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer10215, 0);
    render_pass_encoder1072.setIndexBuffer(buffer10160, "uint16");
    device30.queue.submit([]);
    render_pass_encoder1050.drawIndirect(buffer10169, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10133, 0);
    render_pass_encoder1040.drawIndirect(buffer1067, 0);
    render_pass_encoder1070.drawIndirect(buffer1088, 0);
    render_pass_encoder1072.end();
    render_pass_encoder1072.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer10229, 0);
    render_pass_encoder1061.drawIndirect(buffer10220, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1011.setIndexBuffer(buffer10185, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1072.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1081, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1072.drawIndexedIndirect(buffer10135, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10185, "uint16");
    device10.queue.submit([command_buffer101, command_buffer106, ]);
    render_pass_encoder1031.drawIndirect(buffer10100, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1011.setIndexBuffer(buffer10147, "uint16");
    render_pass_encoder1052.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1041.drawIndirect(buffer10147, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10121, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10252 = device10.createBuffer({
        label: "buffer10252",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10252, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10252, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10252, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer10235, 0);
    device10.queue.submit([command_buffer100, command_buffer103, command_buffer104, command_buffer105, ]);
    render_pass_encoder1062.setIndexBuffer(buffer10141, "uint16");
    render_pass_encoder1001.drawIndirect(buffer10122, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1062.drawIndirect(buffer10122, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1052.drawIndexedIndirect(buffer10166, 0);
    render_pass_encoder1052.drawIndirect(buffer1034, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1070.drawIndirect(buffer10128, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10190, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1052.drawIndirect(buffer10121, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1039, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1062.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10158, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10253 = device10.createBuffer({
        label: "buffer10253",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10253, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10253, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer10232, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1072.drawIndirect(buffer1059, 0);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1052.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1011.drawIndirect(buffer10107, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10177, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10149, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10250, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10240, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10254 = device10.createBuffer({
        label: "buffer10254",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10254, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10254, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10100, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer10219, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10183, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1070.drawIndirect(buffer10177, 0);
    render_pass_encoder1071.drawIndirect(buffer1065, 0);
    compute_pass_encoder1020.end();
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    render_pass_encoder1001.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1052.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer10166, 0);
    render_pass_encoder1031.drawIndirect(buffer10123, 0);
    render_pass_encoder1060.drawIndirect(buffer10196, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10112, "uint16");
    render_pass_encoder1041.drawIndirect(buffer10212, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10195, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10196, 0);
    render_pass_encoder1050.drawIndirect(buffer10203, 0);
    render_pass_encoder1051.drawIndirect(buffer1029, 0);
    render_pass_encoder1010.drawIndirect(buffer1041, 0);
    render_pass_encoder1052.drawIndirect(buffer10169, 0);
    render_pass_encoder1031.drawIndirect(buffer1041, 0);
    render_pass_encoder1040.drawIndirect(buffer10235, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer10195, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer10195, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10175, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1040.drawIndirect(buffer1016, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1020.end();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1011, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1050.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10228, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10149, 0);
    device10.queue.submit([command_buffer101, command_buffer105, command_buffer107, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1001.drawIndirect(buffer10227, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1050.drawIndirect(buffer10243, 0);
    render_pass_encoder1000.drawIndirect(buffer10100, 0);
    render_pass_encoder1052.setIndexBuffer(buffer10196, "uint16");
    render_pass_encoder1031.end();
    const uint32_1060 = new Uint32Array(3);

    uint32_1060[0] = 100;
    uint32_1060[1] = 1;
    uint32_1060[2] = 1;

    const buffer10255 = device10.createBuffer({
        label: "buffer10255",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10255, 0, uint32_1060, 0, uint32_1060.length);

    compute_pass_encoder1060.dispatchWorkgroupsIndirect(buffer10255, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer10250, 0);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1001.drawIndirect(buffer10227, 0);
    render_pass_encoder1052.drawIndirect(buffer1015, 0);
    render_pass_encoder1040.drawIndirect(buffer1085, 0);
    const buffer10256 = device10.createBuffer({
        label: "buffer10256",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10257 = device10.createBuffer({
        label: "buffer10257",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1096 = device10.createBindGroup({
        label: "bind_group1096",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10256,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10257,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1096);
    render_pass_encoder1072.drawIndirect(buffer1075, 0);
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer10184, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndirect(buffer10147, 0);
    render_pass_encoder1001.drawIndirect(buffer10168, 0);
    render_pass_encoder1041.drawIndirect(buffer1075, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10120, 0);
    render_pass_encoder1052.drawIndirect(buffer10144, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10221, 0);
    render_pass_encoder1072.drawIndirect(buffer10221, 0);
    render_pass_encoder1061.drawIndirect(buffer10120, 0);
    render_pass_encoder1010.drawIndirect(buffer10137, 0);
    render_pass_encoder1060.drawIndirect(buffer10109, 0);
    const uint32_1060 = new Uint32Array(3);

    uint32_1060[0] = 100;
    uint32_1060[1] = 1;
    uint32_1060[2] = 1;

    const buffer10258 = device10.createBuffer({
        label: "buffer10258",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10258, 0, uint32_1060, 0, uint32_1060.length);

    compute_pass_encoder1060.dispatchWorkgroupsIndirect(buffer10258, 0);
    render_pass_encoder1011.drawIndirect(buffer10141, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1011.drawIndirect(buffer10230, 0);
    render_pass_encoder1061.drawIndirect(buffer10117, 0);
    render_pass_encoder1062.drawIndirect(buffer1096, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer10110, 0);
    render_pass_encoder1030.drawIndirect(buffer1031, 0);
    render_pass_encoder1001.drawIndirect(buffer10148, 0);
    render_pass_encoder1060.drawIndirect(buffer10257, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1050.setIndexBuffer(buffer10174, "uint16");
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1070.drawIndirect(buffer10240, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10147, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer10206, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer10121, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10259 = device10.createBuffer({
        label: "buffer10259",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10259, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10259, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1072.drawIndirect(buffer10121, 0);
    const buffer10260 = device10.createBuffer({
        label: "buffer10260",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10261 = device10.createBuffer({
        label: "buffer10261",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1097 = device10.createBindGroup({
        label: "bind_group1097",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10260,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10261,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1097);
    render_pass_encoder1060.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1040.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10177, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer10161, 0);
    render_pass_encoder1011.drawIndirect(buffer10162, 0);
    render_pass_encoder1062.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer10258, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10148, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10116, "uint16");
    render_pass_encoder1050.drawIndirect(buffer10206, 0);
    render_pass_encoder1061.drawIndirect(buffer10107, 0);
    render_pass_encoder1070.drawIndirect(buffer1061, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer10246, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer10214, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer10167, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1065, 0);
    render_pass_encoder1041.drawIndirect(buffer1044, 0);
    render_pass_encoder1061.drawIndirect(buffer10212, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer10261, 0);
    render_pass_encoder1052.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10240, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1011.drawIndirect(buffer1030, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer10240, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10147, 0);
    render_pass_encoder1001.drawIndirect(buffer1065, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10190, 0);
    render_pass_encoder1060.drawIndirect(buffer10103, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1062.drawIndirect(buffer10222, 0);
    render_pass_encoder1001.end();
    compute_pass_encoder1060.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer10191, 0);
    render_pass_encoder1070.drawIndirect(buffer10235, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1060.drawIndirect(buffer10215, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1061.drawIndirect(buffer10250, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1030.drawIndirect(buffer10141, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10250, 0);
    render_pass_encoder1050.drawIndirect(buffer10227, 0);
    render_pass_encoder1001.drawIndirect(buffer1030, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10183, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1061.drawIndirect(buffer1029, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10190, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10240, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10162, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1078, 0);
    const uint32_1060 = new Uint32Array(3);

    uint32_1060[0] = 100;
    uint32_1060[1] = 1;
    uint32_1060[2] = 1;

    const buffer10262 = device10.createBuffer({
        label: "buffer10262",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10262, 0, uint32_1060, 0, uint32_1060.length);

    compute_pass_encoder1060.dispatchWorkgroupsIndirect(buffer10262, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10263 = device10.createBuffer({
        label: "buffer10263",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10263, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10263, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10215, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10261, "uint16");
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer10164, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1067, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1066, 0);
    render_pass_encoder1041.drawIndirect(buffer10232, 0);
    render_pass_encoder1000.drawIndirect(buffer10190, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10149, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1031.drawIndirect(buffer10220, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10263, 0);
    render_pass_encoder1040.drawIndirect(buffer10117, 0);
    compute_pass_encoder1060.dispatchWorkgroups(100);
    render_pass_encoder1072.drawIndirect(buffer10220, 0);
    render_pass_encoder1070.drawIndirect(buffer10240, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer10212, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer10144, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10228, 0);
    render_pass_encoder1071.drawIndirect(buffer10228, 0);
    render_pass_encoder1030.drawIndirect(buffer1034, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10212, "uint16");
    render_pass_encoder1072.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1071.drawIndirect(buffer1067, 0);
    render_pass_encoder1052.drawIndirect(buffer10220, 0);
    render_pass_encoder1052.drawIndirect(buffer10220, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1031.drawIndirect(buffer10243, 0);
    render_pass_encoder1030.drawIndirect(buffer1089, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10251, 0);
    render_pass_encoder1000.drawIndirect(buffer10251, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1052.drawIndirect(buffer1030, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10221, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1031.drawIndirect(buffer10110, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1031.drawIndexedIndirect(buffer10148, 0);
    render_pass_encoder1062.popDebugGroup();
    render_pass_encoder1072.drawIndirect(buffer10252, 0);
    render_pass_encoder1041.drawIndirect(buffer10138, 0);
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer102, ]);
    render_pass_encoder1062.drawIndexedIndirect(buffer10221, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10203, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1052.drawIndirect(buffer10262, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10127, "uint16");
    render_pass_encoder1072.drawIndexedIndirect(buffer10128, 0);
    render_pass_encoder1041.drawIndirect(buffer10123, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1070.drawIndirect(buffer1074, 0);
    render_pass_encoder1041.drawIndirect(buffer10148, 0);
    render_pass_encoder1052.drawIndirect(buffer10254, 0);
    render_pass_encoder1060.drawIndirect(buffer10131, 0);
    render_pass_encoder1051.drawIndirect(buffer10207, 0);
    render_pass_encoder1070.drawIndirect(buffer1065, 0);
    render_pass_encoder1070.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1041.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1072.setIndexBuffer(buffer10181, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer109, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1001.end();
    render_pass_encoder1041.setIndexBuffer(buffer10239, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1072.drawIndirect(buffer10137, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer10147, 0);
    render_pass_encoder1072.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer10212, 0);
    render_pass_encoder1061.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1072.end();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1088, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10181, "uint16");
    render_pass_encoder1041.drawIndirect(buffer100, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1072.drawIndirect(buffer10221, 0);
    render_pass_encoder1001.drawIndirect(buffer10258, 0);
    const buffer10264 = device10.createBuffer({
        label: "buffer10264",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10265 = device10.createBuffer({
        label: "buffer10265",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1098 = device10.createBindGroup({
        label: "bind_group1098",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10264,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10265,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1098);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10266 = device10.createBuffer({
        label: "buffer10266",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10266, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10266, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10267 = device10.createBuffer({
        label: "buffer10267",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10267, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10267, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer10162, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer10263, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10237, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10188, "uint16");
    render_pass_encoder1062.drawIndirect(buffer10152, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1050.end();
    render_pass_encoder1010.setIndexBuffer(buffer1085, "uint16");
    render_pass_encoder1050.drawIndirect(buffer10161, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1072.drawIndirect(buffer10254, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10135, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1062.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1030.drawIndirect(buffer10128, 0);
    render_pass_encoder1050.drawIndirect(buffer10258, 0);
    render_pass_encoder1060.drawIndirect(buffer10224, 0);
    render_pass_encoder1031.draw(3);
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1041.drawIndirect(buffer10111, 0);
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1030.setIndexBuffer(buffer10243, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer10258, 0);
    render_pass_encoder1010.drawIndirect(buffer1075, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10128, 0);
    render_pass_encoder1072.drawIndirect(buffer10190, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10259, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1070.drawIndirect(buffer10138, 0);
    render_pass_encoder1062.drawIndirect(buffer10221, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10208, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10258, 0);
    render_pass_encoder1001.drawIndirect(buffer1030, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1072.drawIndirect(buffer1048, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10137, 0);
    render_pass_encoder1040.drawIndirect(buffer1037, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10227, 0);
    render_pass_encoder1050.drawIndirect(buffer10166, 0);
    render_pass_encoder1040.drawIndirect(buffer10120, 0);
    render_pass_encoder1062.drawIndirect(buffer10220, 0);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1062.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer10253, 0);
    render_pass_encoder1011.drawIndirect(buffer10250, 0);
    render_pass_encoder1000.drawIndirect(buffer10109, 0);
    render_pass_encoder1062.drawIndirect(buffer1030, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10128, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1011.drawIndirect(buffer10148, 0);
    render_pass_encoder1051.drawIndirect(buffer10147, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer10251, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1011.drawIndirect(buffer1078, 0);
    render_pass_encoder1041.drawIndirect(buffer10263, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1070.drawIndirect(buffer10122, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer10225, 0);
    render_pass_encoder1071.drawIndirect(buffer10125, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10148, 0);
    render_pass_encoder1072.drawIndirect(buffer1067, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10119, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer10234, 0);
    render_pass_encoder1030.drawIndirect(buffer1048, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer1084, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer10239, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1072.drawIndirect(buffer10212, 0);
    render_pass_encoder1040.drawIndirect(buffer1066, 0);
    render_pass_encoder1000.drawIndirect(buffer10125, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1059, "uint16");
    compute_pass_encoder1060.end();
    render_pass_encoder1060.drawIndirect(buffer1048, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    const buffer10268 = device10.createBuffer({
        label: "buffer10268",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10269 = device10.createBuffer({
        label: "buffer10269",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1099 = device10.createBindGroup({
        label: "bind_group1099",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10268,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10269,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1099);
    render_pass_encoder1011.setIndexBuffer(buffer10264, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer10177, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10236, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer10224, 0);
}