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
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder100.popDebugGroup();
    const array0 = new Float32Array([0.75, -1.0, -0.75, -0.25, -0.75, 1.0, 1.0, -1.0, -1.0, -0.25, -1.0, 0.0, -0.25, 0.25, 1.0, 0.25, 0.25, -0.75, -0.75, 1.0, -0.75, -0.75, -1.0, 0.25, 0.75, 0.75, 0.75, -0.25, 0.25, -0.75, 0.0, -0.75, 0.75, 1.0, 0.0, 0.0, 0.5, 0.5, -0.25, 0.75, 0.0, 0.5, 0.5, -0.75, 0.75, 1.0, 0.5, 0.75, 0.0, -0.75, 0.75, 0.75, 0.0, 0.75, -1.0, -0.75, -1.0, 0.5, -0.5, 0.25, 0.25, 0.0, 0.0, 0.75, -1.0, 0.25, -1.0, 1.0, 0.5, 1.0, 0.0, 0.5, 0.5, 0.0, 0.25, -0.5, 0.25, -1.0, 0.25, -0.5, 1.0, 0.75, -0.75, 0.5, 0.75, 0.0, 0.5, 1.0, -0.25, -1.0, 0.75, -0.5, 0.75, 0.0, -0.5, 1.0, -0.5, -0.75, 0.75, 0.75, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    command_encoder101.pushDebugGroup("mygroupmarker")
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
    
    
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    device10.queue.submit([]);
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    texture300.destroy();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.pushErrorScope("internal");
    
    device10.queue.submit([]);
    command_encoder101.insertDebugMarker("mymarker");
    buffer301.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
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
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
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
    device30.pushErrorScope("validation");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query100.destroy()
    
    
    texture301.destroy();
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array1 = new Float32Array([0.25, 0.0, 0.0, 0.75, -0.25, 0.75, 0.25, 0.25, -1.0, -1.0, 0.75, -0.25, 0.75, -0.5, -1.0, 1.0, -0.75, 0.0, -0.75, 0.5, 0.25, -0.75, 0.0, -0.5, 1.0, -1.0, -1.0, -1.0, 0.5, 0.25, -0.5, 1.0, -0.75, 0.5, 0.75, 0.5, 0.0, -0.25, 1.0, 1.0, 0.5, 0.25, -1.0, 0.0, 0.5, 0.0, -0.75, -1.0, 0.0, -0.75, -0.25, 0.0, 0.5, 0.25, -0.5, -0.75, 0.75, -0.25, -0.25, -0.75, 0.25, -0.25, 0.5, 0.0, 0.5, 1.0, -1.0, 0.5, 0.0, -0.75, 0.75, 0.0, 0.5, 0.0, -1.0, 0.5, -0.75, 1.0, 0.0, -0.25, 0.75, -0.5, 1.0, -1.0, -1.0, 0.5, -0.5, -1.0, 0.25, 0.5, -0.25, 1.0, -0.25, 0.0, 0.0, 0.5, 1.0, 0.5, -1.0, -0.25, ]);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    render_bundle_encoder101.setPipeline(render_pipeline101);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    buffer300.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    
    command_encoder300.popDebugGroup()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    buffer100.destroy()
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer100.destroy()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder600.popDebugGroup();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    command_encoder101.insertDebugMarker("mymarker");
    buffer102.destroy()
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device60.pushErrorScope("out-of-memory");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder300.insertDebugMarker("mymarker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("out-of-memory");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.pushErrorScope("internal");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    texture400.destroy();
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer600 = command_encoder600.finish();
    
    
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    query200.destroy()
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
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
    compute_pass_encoder1000.popDebugGroup()
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    command_encoder100.copyBufferToTexture(
        {
            buffer: buffer102
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_bundle_encoder102.popDebugGroup();
    command_encoder300.clearBuffer(buffer300);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
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
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    command_encoder200.insertDebugMarker("mymarker");
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    texture601.destroy();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    texture100.destroy();
    buffer302.destroy()
    
    device40.destroy();
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
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
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    command_encoder200.clearBuffer(buffer200);
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device30.pushErrorScope("internal");
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    
    query600.destroy()
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    
    texture600.destroy();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    query100.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
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
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.setPipeline(render_pipeline101);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
    render_pass_encoder1030.setPipeline(render_pipeline101);
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.popDebugGroup();
    buffer105.destroy()
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer105,
        0
    )
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    command_encoder601.pushDebugGroup("mygroupmarker")
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    texture201.destroy();
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    texture202.destroy();
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query102
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout602]
    });
    command_encoder103.copyBufferToBuffer(
        buffer106,
        0,
        buffer106,
        0,
        400
    );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    compute_pass_encoder1010.popDebugGroup()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    buffer500.destroy()
    query300.destroy()
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query103
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    render_bundle_encoder600.setPipeline(render_pipeline600);
    render_pass_encoder1010.executeBundles([])
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
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query101.destroy()
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    query200.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    buffer103.destroy()
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1010.setPipeline(render_pipeline100);
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_pass_encoder1021.pushDebugGroup("group_marker");
    buffer303.destroy()
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder1020.setPipeline(render_pipeline103);
    command_encoder102.insertDebugMarker("mymarker");
    
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
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
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group102);
    
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    render_bundle_encoder601.setPipeline(render_pipeline601);
    render_pass_encoder1050.setPipeline(render_pipeline103);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    device20.pushErrorScope("validation");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
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
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group103);
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
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
    device60.queue.submit([command_buffer600, ]);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1050.beginOcclusionQuery(0)
    render_pass_encoder1050.insertDebugMarker("marker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer600,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer601,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    buffer300.destroy()
    render_pass_encoder2000.popDebugGroup();
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer106,
        0
    )
    command_encoder602.resolveQuerySet(
        query600,
        0,
        32,
        buffer601,
        0
    )
    render_pass_encoder1020.setVertexBuffer(0, buffer103);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const command_buffer104 = command_encoder104.finish();
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    compute_pass_encoder6010.insertDebugMarker("marker")
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    buffer600.destroy()
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query103
    });
    query102.destroy()
    const command_buffer500 = command_encoder500.finish();
    
    
    render_pass_encoder1021.beginOcclusionQuery(1)
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    
    
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
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
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout600]
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    buffer201.destroy()
    render_pass_encoder1051.setPipeline(render_pipeline103);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.beginOcclusionQuery(1)
    
    render_pass_encoder1031.executeBundles([])
    
    
    render_pass_encoder1021.setPipeline(render_pipeline102);
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    buffer106.destroy()
    
    command_encoder602.resolveQuerySet(
        query600,
        0,
        32,
        buffer601,
        0
    )
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    render_bundle_encoder602.insertDebugMarker("marker");
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1060.setPipeline(render_pipeline104);
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    buffer109.destroy()
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1060.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    compute_pass_encoder6010.setPipeline(compute_pipeline601);
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm",
        dimension: "2d"
    });
    texture200.destroy();
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1021.insertDebugMarker("marker");
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
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

    compute_pass_encoder1000.setBindGroup(0, bind_group104);
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
    render_pass_encoder3000.executeBundles([])
    
    render_pass_encoder3000.setStencilReference(1);
    
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    buffer107.destroy()
    
    query301.destroy()
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device20.destroy();
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer601.destroy()
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder101.popDebugGroup();
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer1011.destroy()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1060.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder1050.endOcclusionQuery()
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer603,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer604,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group601);
    render_pass_encoder1020.drawIndirect(buffer102, 0);
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group105);
    const command_buffer602 = command_encoder602.finish();
    render_pass_encoder1021.setVertexBuffer(0, buffer1013);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1015, 0);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group106);
    render_pass_encoder1021.drawIndirect(buffer103, 0);
    compute_pass_encoder6010.dispatchWorkgroups(100);
    render_pass_encoder1030.popDebugGroup();
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
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1060.setBindGroup(0, bind_group107);
    render_pass_encoder1060.setVertexBuffer(0, buffer1014);
    render_pass_encoder1031.setPipeline(render_pipeline100);
    device60.queue.submit([]);
    const command_buffer102 = command_encoder102.finish();
    compute_pass_encoder1000.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1015, 0);
    device60.queue.submit([command_buffer602, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer307, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer307, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1060.end();
    render_pass_encoder1010.popDebugGroup();
    const command_buffer603 = command_encoder603.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1021.end();
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    render_pass_encoder1030.popDebugGroup();
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group108);
    render_pass_encoder1021.draw(3);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device60.queue.submit([command_buffer602, ]);
    compute_pass_encoder1000.end();
    render_pass_encoder1010.setVertexBuffer(0, buffer102);
    render_pass_encoder1030.setVertexBuffer(0, buffer100);
    render_pass_encoder1010.drawIndirect(buffer1016, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    render_pass_encoder1060.drawIndirect(buffer102, 0);
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    render_pass_encoder1051.setBindGroup(0, bind_group109);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer308, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer308, 0);
    render_pass_encoder1051.setVertexBuffer(0, buffer101);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1050.setVertexBuffer(0, buffer107);
    render_pass_encoder1060.drawIndirect(buffer1015, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1010.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1031.setBindGroup(0, bind_group1010);
    render_pass_encoder1050.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1031.setVertexBuffer(0, buffer1013);
    render_pass_encoder1031.drawIndirect(buffer1014, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer103, 0);
    compute_pass_encoder3000.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndirect(buffer1019, 0);
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer605,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer606,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group602);
    render_pass_encoder1051.end();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1020.setIndexBuffer(buffer1020, "uint16");
    command_encoder101.popDebugGroup()
    render_pass_encoder1050.end();
    compute_pass_encoder6010.popDebugGroup()
    command_encoder100.popDebugGroup()
    render_pass_encoder1051.drawIndirect(buffer1015, 0);
    render_pass_encoder1021.drawIndirect(buffer103, 0);
    render_pass_encoder1031.drawIndirect(buffer1015, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1051.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1010.drawIndirect(buffer103, 0);
    const command_buffer105 = command_encoder105.finish();
    device30.queue.submit([]);
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    compute_pass_encoder1010.popDebugGroup()
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1020.end();
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder6010.end();
    device60.queue.submit([command_buffer600, command_buffer603, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1015, 0);
    command_encoder601.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1051.drawIndirect(buffer102, 0);
    render_pass_encoder1060.draw(3);
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1011);
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer607,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer608,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group603);
    render_pass_encoder1020.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1019, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1030.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1060.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1026, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1050.drawIndirect(buffer105, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1013, 0);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1020.end();
    const command_buffer601 = command_encoder601.finish();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1051.end();
    device40.queue.submit([]);
    compute_pass_encoder3000.end();
    render_pass_encoder1050.end();
    render_pass_encoder1031.draw(3);
    render_pass_encoder1020.end();
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    render_pass_encoder1021.drawIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    render_pass_encoder1051.drawIndirect(buffer1011, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer102, 0);
    const command_buffer101 = command_encoder101.finish();
    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1029,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1012);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder1020.popDebugGroup();
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1031.draw(3);
    const command_buffer300 = command_encoder300.finish();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1021.end();
    render_pass_encoder1050.drawIndirect(buffer108, 0);
    render_pass_encoder1021.drawIndirect(buffer1015, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1021.drawIndirect(buffer1015, 0);
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1050.drawIndirect(buffer106, 0);
    render_pass_encoder1060.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1015, 0);
    render_pass_encoder1050.setIndexBuffer(buffer102, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1030.setIndexBuffer(buffer1025, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer108, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer609,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6010,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group604);
    render_pass_encoder1010.drawIndirect(buffer102, 0);
    device50.queue.submit([]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    render_pass_encoder1050.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1015, "uint16");
    compute_pass_encoder1010.end();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1030.end();
    device10.queue.submit([command_buffer100, ]);
    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6012,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group605);
    compute_pass_encoder3000.end();
    render_pass_encoder1010.end();
    render_pass_encoder1031.drawIndirect(buffer1026, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1031.drawIndexedIndirect(buffer1027, 0);
    compute_pass_encoder6010.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndirect(buffer1028, 0);
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
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer102, 0);
    device60.queue.submit([command_buffer601, ]);
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
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1051.draw(3);
    render_pass_encoder1060.draw(3);
    compute_pass_encoder3000.end();
    render_pass_encoder1021.drawIndirect(buffer1030, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1020, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder1020.draw(3);
    render_pass_encoder1021.drawIndirect(buffer1031, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1060.popDebugGroup();
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder1010.popDebugGroup();
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
    render_pass_encoder1051.drawIndirect(buffer1032, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer103, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1021.end();
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1030.end();
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    render_pass_encoder1051.end();
    device60.queue.submit([command_buffer600, command_buffer603, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1031, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3011, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3011, 0);
    device60.queue.submit([]);
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1051.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1060.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer103, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1010.popDebugGroup();
    device60.queue.submit([command_buffer603, ]);
    render_pass_encoder1021.drawIndirect(buffer102, 0);
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1051.end();
    const uint32_6010 = new Uint32Array(3);

    uint32_6010[0] = 100;
    uint32_6010[1] = 1;
    uint32_6010[2] = 1;

    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6013, 0, uint32_6010, 0, uint32_6010.length);

    compute_pass_encoder6010.dispatchWorkgroupsIndirect(buffer6013, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1020, "uint16");
    device10.queue.submit([command_buffer104, ]);
    device30.queue.submit([]);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    device60.queue.submit([]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    compute_pass_encoder6010.end();
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1032, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1010.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1030, 0);
    render_pass_encoder1030.drawIndirect(buffer1024, 0);
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
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group303);
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    device50.queue.submit([]);
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    device40.queue.submit([]);
    render_pass_encoder1050.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1050.drawIndirect(buffer1031, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1010.drawIndirect(buffer1016, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1010.drawIndirect(buffer102, 0);
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
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1013);
    render_pass_encoder1010.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1010.drawIndirect(buffer103, 0);
    render_pass_encoder1021.drawIndirect(buffer1031, 0);
    render_pass_encoder1020.end();
    device60.queue.submit([]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1030.end();
    compute_pass_encoder6010.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder1010.end();
    compute_pass_encoder1000.end();
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1016, "uint16");
    device60.queue.submit([command_buffer603, ]);
    render_pass_encoder1050.drawIndirect(buffer1031, 0);
    render_pass_encoder1031.drawIndirect(buffer1031, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
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
    render_pass_encoder1060.drawIndirect(buffer103, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer1030, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1030, 0);
    compute_pass_encoder3000.end();
    device30.queue.submit([]);
    compute_pass_encoder1000.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1050.drawIndexedIndirect(buffer1015, 0);
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
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1014);
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder1051.drawIndirect(buffer106, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1051.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1030, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1015, 0);
    const uint32_6010 = new Uint32Array(3);

    uint32_6010[0] = 100;
    uint32_6010[1] = 1;
    uint32_6010[2] = 1;

    const buffer6014 = device60.createBuffer({
        label: "buffer6014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6014, 0, uint32_6010, 0, uint32_6010.length);

    compute_pass_encoder6010.dispatchWorkgroupsIndirect(buffer6014, 0);
    render_pass_encoder1050.end();
    compute_pass_encoder6010.dispatchWorkgroups(100);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1051.end();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3014, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3014, 0);
    render_pass_encoder1051.drawIndirect(buffer1030, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1050.drawIndirect(buffer101, 0);
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    render_pass_encoder1051.drawIndirect(buffer1032, 0);
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1015);
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1051.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    render_pass_encoder1060.drawIndirect(buffer102, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3015, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3015, 0);
    render_pass_encoder1031.drawIndirect(buffer1021, 0);
    device50.queue.submit([command_buffer500, ]);
    const buffer6015 = device60.createBuffer({
        label: "buffer6015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6016 = device60.createBuffer({
        label: "buffer6016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group606 = device60.createBindGroup({
        label: "bind_group606",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6016,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group606);
    render_pass_encoder1051.drawIndirect(buffer1038, 0);
    render_pass_encoder1060.drawIndexed(3);
    device10.queue.submit([command_buffer104, ]);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder1021.drawIndirect(buffer102, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1035, 0);
    device70.queue.submit([]);
    render_pass_encoder1031.setIndexBuffer(buffer1028, "uint16");
    compute_pass_encoder3000.end();
    render_pass_encoder1030.setIndexBuffer(buffer104, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer102, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3016, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3016, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1032, 0);
    compute_pass_encoder6010.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder1030.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1051.drawIndirect(buffer1031, 0);
    device30.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer1032, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1031.drawIndirect(buffer1031, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1020, "uint16");
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
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1016);
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder6010.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1051.drawIndirect(buffer1031, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1015, 0);
    device60.queue.submit([command_buffer603, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder1051.drawIndirect(buffer1030, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1030, 0);
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
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1017);
    render_pass_encoder1030.popDebugGroup();
    const uint32_6010 = new Uint32Array(3);

    uint32_6010[0] = 100;
    uint32_6010[1] = 1;
    uint32_6010[2] = 1;

    const buffer6017 = device60.createBuffer({
        label: "buffer6017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6017, 0, uint32_6010, 0, uint32_6010.length);

    compute_pass_encoder6010.dispatchWorkgroupsIndirect(buffer6017, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1020.drawIndirect(buffer1043, 0);
    render_pass_encoder1020.draw(3);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1010.popDebugGroup()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1044, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1044, 0);
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1043, "uint16");
    device60.queue.submit([command_buffer600, command_buffer603, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1030.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1031.drawIndirect(buffer1031, 0);
    render_pass_encoder1060.popDebugGroup();
    const buffer6018 = device60.createBuffer({
        label: "buffer6018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6019 = device60.createBuffer({
        label: "buffer6019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group607 = device60.createBindGroup({
        label: "bind_group607",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6019,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group607);
    render_pass_encoder1060.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1044, 0);
    render_pass_encoder1060.drawIndirect(buffer1044, 0);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    render_pass_encoder1050.end();
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
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1018);
    compute_pass_encoder3000.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1050.end();
    const buffer6020 = device60.createBuffer({
        label: "buffer6020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6021 = device60.createBuffer({
        label: "buffer6021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group608 = device60.createBindGroup({
        label: "bind_group608",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6021,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group608);
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer102, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device60.queue.submit([command_buffer602, ]);
    device10.queue.submit([command_buffer101, ]);
    const uint32_6010 = new Uint32Array(3);

    uint32_6010[0] = 100;
    uint32_6010[1] = 1;
    uint32_6010[2] = 1;

    const buffer6022 = device60.createBuffer({
        label: "buffer6022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6022, 0, uint32_6010, 0, uint32_6010.length);

    compute_pass_encoder6010.dispatchWorkgroupsIndirect(buffer6022, 0);
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer100, ]);
    const buffer6023 = device60.createBuffer({
        label: "buffer6023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6024 = device60.createBuffer({
        label: "buffer6024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group609 = device60.createBindGroup({
        label: "bind_group609",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6024,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group609);
    render_pass_encoder1030.end();
    render_pass_encoder1060.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3018,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group304);
    render_pass_encoder1051.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1035, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1030.end();
    compute_pass_encoder6010.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    compute_pass_encoder6010.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1040, 0);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    compute_pass_encoder6010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1015, 0);
    const uint32_6010 = new Uint32Array(3);

    uint32_6010[0] = 100;
    uint32_6010[1] = 1;
    uint32_6010[2] = 1;

    const buffer6025 = device60.createBuffer({
        label: "buffer6025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6025, 0, uint32_6010, 0, uint32_6010.length);

    compute_pass_encoder6010.dispatchWorkgroupsIndirect(buffer6025, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1010.drawIndirect(buffer1042, 0);
    compute_pass_encoder6010.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder2000.endOcclusionQuery()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1050.setIndexBuffer(buffer1039, "uint16");
    compute_pass_encoder3000.end();
    render_pass_encoder1020.drawIndirect(buffer1031, 0);
    render_pass_encoder1021.drawIndirect(buffer103, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1060.popDebugGroup();
    device20.queue.submit([]);
    device70.queue.submit([]);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder1051.end();
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder1051.drawIndirect(buffer101, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1030.setIndexBuffer(buffer106, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1031.drawIndirect(buffer1044, 0);
    render_pass_encoder1020.drawIndirect(buffer1030, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1031, 0);
    compute_pass_encoder6010.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1041, 0);
    device30.queue.submit([]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1031.drawIndirect(buffer1030, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1028, "uint16");
    compute_pass_encoder1000.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1051.drawIndirect(buffer1039, 0);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder1050.drawIndirect(buffer1032, 0);
    const buffer6026 = device60.createBuffer({
        label: "buffer6026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6027 = device60.createBuffer({
        label: "buffer6027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6010 = device60.createBindGroup({
        label: "bind_group6010",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6027,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group6010);
    render_pass_encoder1050.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1031.drawIndirect(buffer103, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder3000.popDebugGroup();
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3020,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group305);
    render_pass_encoder1021.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1030, 0);
    device30.queue.submit([command_buffer300, ]);
    device60.queue.submit([command_buffer600, ]);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1031.drawIndirect(buffer1031, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer104, 0);
    device30.queue.submit([]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1047, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1047, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1047, "uint16");
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder3000.popDebugGroup();
    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
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
                    buffer: buffer3021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3022,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group306);
    render_pass_encoder1060.popDebugGroup();
    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3024,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group307);
    device60.queue.submit([command_buffer603, ]);
    compute_pass_encoder3000.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1050.drawIndirect(buffer1032, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    device60.queue.submit([]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1041, 0);
    const buffer6028 = device60.createBuffer({
        label: "buffer6028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6029 = device60.createBuffer({
        label: "buffer6029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6011 = device60.createBindGroup({
        label: "bind_group6011",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6029,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group6011);
    render_pass_encoder1010.end();
    device40.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1051.drawIndirect(buffer104, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1015, 0);
    compute_pass_encoder1000.end();
    device10.queue.submit([command_buffer105, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3025, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3025, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1031, 0);
    device30.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1030, 0);
    device50.queue.submit([command_buffer500, ]);
}