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
    const array0 = new Float32Array([-0.75, -0.25, -0.75, -1.0, 0.0, 1.0, 0.25, 1.0, -0.25, -1.0, -0.25, 0.5, -1.0, -0.25, 1.0, 0.25, -0.75, -0.25, 0.0, -0.75, 1.0, 1.0, -1.0, -0.75, -0.25, 1.0, 0.25, -0.5, 1.0, -0.25, 0.75, 0.0, 0.25, 1.0, -0.5, -0.5, 0.0, 0.0, 0.25, -0.25, 0.0, -1.0, 0.25, -0.75, -0.25, 0.75, 1.0, 0.0, 1.0, 0.0, -0.75, -0.75, 0.25, -0.25, 0.75, 0.5, -0.75, 1.0, 0.5, 0.5, 0.25, 0.25, 0.75, 0.5, -1.0, -1.0, -1.0, 0.25, -0.25, -0.25, 0.75, -1.0, 1.0, 0.25, 1.0, -0.25, 0.5, 0.75, -0.5, 0.5, 1.0, -1.0, -0.5, -0.5, 0.25, 0.5, -0.5, 0.75, -0.75, -0.25, 0.0, -0.75, 0.5, 0.75, 0.0, -0.25, -0.5, 0.5, -0.75, 0.25, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.destroy();
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    buffer200.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device20.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    device30.pushErrorScope("validation");
    
    const query300 = device30.createQuerySet({
        label: "query300",
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    texture000.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    command_encoder000.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    command_encoder000.popDebugGroup()
    device00.pushErrorScope("validation");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    buffer001.destroy()
    
    buffer300.destroy()
    
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer001.destroy()
    
    
    const array1 = new Float32Array([0.5, -0.75, 0.0, 0.25, 0.25, 0.0, -0.25, 0.0, -0.25, -0.75, 0.75, -0.5, -0.25, -0.5, 0.25, -1.0, 0.5, -1.0, -0.5, 0.25, 0.25, -0.5, 0.0, 0.0, -0.5, -1.0, -0.5, 0.5, -0.5, 0.5, -1.0, 0.5, -0.5, 1.0, -1.0, -0.25, -0.25, 0.0, 0.75, 1.0, 0.0, -1.0, 0.75, -0.75, 0.5, 0.75, -1.0, 0.25, -0.75, 0.25, -1.0, 0.25, -0.25, -0.75, 0.5, -0.5, -0.5, 0.0, 0.75, 0.5, -0.75, 0.0, 0.75, 0.75, -0.5, -0.5, 0.75, -0.25, -0.5, -1.0, -1.0, -0.25, 0.5, 0.25, -0.75, 0.75, -0.75, -0.5, 0.0, -1.0, 1.0, 1.0, -0.75, 0.5, -0.5, -0.25, 1.0, 0.5, -0.75, -0.5, 0.25, -0.5, 0.0, 0.0, -0.25, 0.25, 0.5, -0.75, -1.0, -1.0, ]);
    
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device30.pushErrorScope("validation");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder300.clearBuffer(buffer300);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    command_encoder001.insertDebugMarker("mymarker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    command_encoder001.insertDebugMarker("mymarker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    device10.destroy();
    query300.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    device30.queue.submit([]);
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    buffer000.destroy()
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.popDebugGroup();
    
    command_encoder000.insertDebugMarker("mymarker");
    device30.queue.submit([]);
    render_bundle_encoder001.insertDebugMarker("marker");
    
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device10.destroy();
    const command_buffer001 = command_encoder001.finish();
    device40.pushErrorScope("validation");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
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
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    texture300.destroy();
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
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
        occlusionQuerySet: query300
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture301.destroy();
    query001.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder3020.setStencilReference(1);
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder400.popDebugGroup();
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    render_pass_encoder3020.pushDebugGroup("group_marker");
    
    buffer400.destroy()
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
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
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    
    render_pass_encoder3020.popDebugGroup();
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const command_buffer301 = command_encoder301.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
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
    render_pass_encoder3010.setPipeline(render_pipeline300);
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3010.setStencilReference(1);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    device40.queue.submit([]);
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    
    
    query301.destroy()
    render_bundle_encoder402.pushDebugGroup("group_marker");
    device40.pushErrorScope("out-of-memory");
    
    render_pass_encoder3020.endOcclusionQuery()
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder402.setPipeline(render_pipeline400);
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
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
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group400);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    
    render_pass_encoder3020.endOcclusionQuery()
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    render_pass_encoder3020.pushDebugGroup("group_marker");
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder300.popDebugGroup();
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder001.popDebugGroup();
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
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
    
    
    device00.pushErrorScope("validation");
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    render_pass_encoder3021.setPipeline(render_pipeline300);
    query301.destroy()
    buffer002.destroy()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device40.queue.submit([]);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
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
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group401);
    render_bundle_encoder400.setPipeline(render_pipeline401);
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
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    command_encoder303.insertDebugMarker("mymarker");
    render_pass_encoder3021.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_pass_encoder3020.setPipeline(render_pipeline300);
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    const command_buffer400 = command_encoder400.finish();
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder3020.insertDebugMarker("marker")
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
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder3020.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    render_pass_encoder3020.endOcclusionQuery()
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
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
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    query300.destroy()
    buffer200.destroy()
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder3030.executeBundles([])
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3010.popDebugGroup();
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    render_bundle_encoder401.setVertexBuffer(0, buffer402);
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
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
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device50.pushErrorScope("validation");
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    query001.destroy()
    render_bundle_encoder402.setVertexBuffer(0, buffer400);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    query400.destroy()
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_pass_encoder3010.insertDebugMarker("marker");
    query000.destroy()
    query302.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_pass_encoder3021.setBindGroup(0, bind_group300);
    render_pass_encoder3030.executeBundles([])
    const compute_pass_encoder3021 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3021" });
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3020.setBindGroup(0, bind_group301);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    buffer002.destroy()
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
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
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group402);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    buffer302.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3010.setBindGroup(0, bind_group302);
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    
    
    query300.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    
    
    compute_pass_encoder0000.popDebugGroup()
    
    compute_pass_encoder3010.setPipeline(compute_pipeline302);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_bundle_encoder000.setPipeline(render_pipeline000);
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    compute_pass_encoder3021.setPipeline(compute_pipeline302);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder3021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3021.insertDebugMarker("marker")
    
    query301.destroy()
    texture401.destroy();
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    {
        await buffer403.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer403.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer403.unmap();
        console.log(new Float32Array(data));
    }
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group303);
    render_bundle_encoder401.drawIndirect(buffer403, 0);
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_pass_encoder3010.setVertexBuffer(0, buffer304);
    render_pass_encoder3021.setStencilReference(1);
    render_bundle_encoder001.setVertexBuffer(0, buffer000);
    render_pass_encoder3030.insertDebugMarker("marker");
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    command_encoder302.copyBufferToBuffer(
        buffer300,
        0,
        buffer302,
        0,
        400
    );
    
    buffer403.destroy()
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer004.destroy()
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder3030.setPipeline(render_pipeline303);
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.drawIndirect(buffer002, 0);
    render_bundle_encoder402.popDebugGroup();
    
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
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
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    
    command_encoder303.resolveQuerySet(
        query302,
        0,
        32,
        buffer300,
        0
    )
    render_bundle_encoder300.setVertexBuffer(0, buffer300);
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    buffer303.destroy()
    buffer006.destroy()
    render_pass_encoder3021.pushDebugGroup("group_marker");
    render_pass_encoder3010.draw(3);
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device00.destroy();
    render_pass_encoder3021.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    command_encoder304.copyTextureToTexture(
        {
            texture: texture302
        },
        {
            texture: texture301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder304.resolveQuerySet(
        query302,
        0,
        32,
        buffer309,
        0
    )
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.setVertexBuffer(0, buffer402);
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    command_encoder304.resolveQuerySet(
        query300,
        0,
        32,
        buffer306,
        0
    )
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
    render_bundle_encoder401.popDebugGroup();
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    device40.queue.writeTexture({ texture: texture402 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder402.drawIndirect(buffer404, 0);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeTexture({ texture: texture402 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer306.destroy()
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
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
    render_pass_encoder3021.popDebugGroup();
    device20.pushErrorScope("validation");
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group304);
    texture402.destroy();
    buffer407.destroy()
    render_bundle_encoder302.setPipeline(render_pipeline301);
    command_encoder304.resolveQuerySet(
        query304,
        0,
        32,
        buffer309,
        0
    )
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array2 = new Float32Array([-1.0, -0.5, 0.25, 0.25, -0.25, -0.25, 0.75, 1.0, 0.25, 0.75, 0.25, 0.75, -0.25, 0.75, 0.75, 1.0, -0.5, 0.5, -0.25, -1.0, 0.0, 0.0, -0.25, 0.5, -0.75, 1.0, 1.0, -1.0, 0.0, -0.25, 0.0, -0.25, -0.75, 0.75, -0.5, 1.0, 1.0, 1.0, -0.75, 0.0, 0.0, 0.0, 1.0, 0.5, -0.25, -1.0, -1.0, -0.25, 0.0, 0.0, -1.0, 1.0, 0.5, 0.5, 0.0, 1.0, -0.5, -0.5, 0.0, -1.0, 0.0, 1.0, -1.0, 0.5, -1.0, 0.75, 0.5, -0.25, -0.75, -0.75, 0.75, 1.0, -0.5, -0.5, 0.25, 0.0, -0.75, -1.0, -1.0, -1.0, 1.0, 0.25, -1.0, 1.0, 0.5, 1.0, -0.5, -0.5, 0.0, -0.75, -0.75, -0.25, 0.5, 0.75, 0.25, 0.0, 0.0, 1.0, 0.25, 0.25, ]);
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query304
    });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_bundle_encoder301.setPipeline(render_pipeline301);
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
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group305);
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
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
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeBuffer(buffer307, 0, array0, 0, array0.length);
    render_pass_encoder3040.setStencilReference(1);
    render_pass_encoder3000.executeBundles([])
    render_bundle_encoder500.popDebugGroup();
    render_bundle_encoder302.insertDebugMarker("marker");
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_pass_encoder3010.draw(3);
    command_encoder401.copyTextureToBuffer(
        {
            texture: texture403
        },
        {
            buffer: buffer403
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
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
    buffer307.destroy()
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    render_bundle_encoder401.finish();
    device40.queue.writeTexture({ texture: texture404 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
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
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder3040.setPipeline(render_pipeline304);
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3020.setPipeline(compute_pipeline303);
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: undefined
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
    
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query302
    });
    render_pass_encoder3001.setStencilReference(1);
    render_bundle_encoder500.insertDebugMarker("marker");
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3014, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3014, 0);
    render_pass_encoder3030.setStencilReference(1);
    device30.pushErrorScope("internal");
    render_pass_encoder3001.setStencilReference(1);
    render_pass_encoder3040.setStencilReference(1);
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_pass_encoder3000.setPipeline(render_pipeline301);
    render_pass_encoder3040.popDebugGroup();
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3016,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group306);
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
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group307);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3001.setPipeline(render_pipeline301);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder3020.setVertexBuffer(0, buffer309);
    render_pass_encoder4010.setPipeline(render_pipeline403);
    render_pass_encoder3021.setVertexBuffer(0, buffer305);
    render_pass_encoder3020.drawIndirect(buffer307, 0);
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
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3021.setBindGroup(0, bind_group308);
    render_pass_encoder3021.draw(3);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3021.draw(3);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3021, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3021, 0);
    compute_pass_encoder3010.end();
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
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline403.getBindGroupLayout(0),
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

    render_pass_encoder4010.setBindGroup(0, bind_group403);
    render_pass_encoder3020.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3020.popDebugGroup();
    const uint32_3021 = new Uint32Array(3);

    uint32_3021[0] = 100;
    uint32_3021[1] = 1;
    uint32_3021[2] = 1;

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3022, 0, uint32_3021, 0, uint32_3021.length);

    compute_pass_encoder3021.dispatchWorkgroupsIndirect(buffer3022, 0);
    compute_pass_encoder3010.dispatchWorkgroups(100);
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
    
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: render_pipeline304.getBindGroupLayout(0),
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

    render_pass_encoder3040.setBindGroup(0, bind_group309);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder4010.setVertexBuffer(0, buffer408);
    render_pass_encoder3021.end();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder3021.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder4010.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder3020.drawIndirect(buffer3022, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3040.setVertexBuffer(0, buffer3017);
    render_pass_encoder3040.drawIndirect(buffer3011, 0);
    render_pass_encoder3040.setIndexBuffer(buffer3015, "uint16");
    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3026,
                },
            },
        ],
    });

    render_pass_encoder3001.setBindGroup(0, bind_group3010);
    compute_pass_encoder3000.popDebugGroup()
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder3040.drawIndexed(3);
    render_pass_encoder3040.drawIndexedIndirect(buffer3024, 0);
    render_pass_encoder3000.setVertexBuffer(0, buffer3018);
    render_pass_encoder3030.popDebugGroup();
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
        layout: render_pipeline303.getBindGroupLayout(0),
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

    render_pass_encoder3030.setBindGroup(0, bind_group3011);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer400, ]);
    device30.queue.submit([]);
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder3000.setIndexBuffer(buffer3027, "uint16");
    render_pass_encoder3040.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder4010.end();
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    render_pass_encoder3040.end();
    render_pass_encoder3040.drawIndirect(buffer3022, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3000.end();
    render_pass_encoder3001.setVertexBuffer(0, buffer3022);
    render_pass_encoder3040.setIndexBuffer(buffer3026, "uint16");
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder3030.setVertexBuffer(0, buffer3016);
    render_pass_encoder3001.draw(3);
    render_pass_encoder3030.drawIndirect(buffer3014, 0);
    compute_pass_encoder3020.end();
    const command_buffer401 = command_encoder401.finish();
    compute_pass_encoder3000.end();
    device30.queue.submit([command_buffer300, ]);
    const command_buffer304 = command_encoder304.finish();
    render_pass_encoder3030.end();
    render_pass_encoder3000.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3001.end();
    device40.queue.submit([command_buffer401, ]);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3029, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3029, 0);
    render_pass_encoder3030.end();
    compute_pass_encoder3000.end();
    render_pass_encoder3001.setIndexBuffer(buffer3027, "uint16");
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder3020.drawIndirect(buffer3014, 0);
    render_pass_encoder3021.popDebugGroup();
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder3020.drawIndirect(buffer3022, 0);
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder3021.draw(3);
    const uint32_3021 = new Uint32Array(3);

    uint32_3021[0] = 100;
    uint32_3021[1] = 1;
    uint32_3021[2] = 1;

    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3030, 0, uint32_3021, 0, uint32_3021.length);

    compute_pass_encoder3021.dispatchWorkgroupsIndirect(buffer3030, 0);
    device40.queue.submit([]);
    compute_pass_encoder3021.popDebugGroup()
    render_pass_encoder3001.drawIndirect(buffer3024, 0);
    render_pass_encoder3040.drawIndirect(buffer3030, 0);
    device30.queue.submit([command_buffer301, ]);
    device20.queue.submit([]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3030.drawIndirect(buffer3029, 0);
    render_pass_encoder3010.drawIndirect(buffer3020, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder3010.draw(3);
    render_pass_encoder3020.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder3010.drawIndirect(buffer3014, 0);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder3020.drawIndirect(buffer3030, 0);
    render_pass_encoder4010.draw(3);
    compute_pass_encoder0000.popDebugGroup()
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3031, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3031, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3010.end();
    render_pass_encoder3040.drawIndexedIndirect(buffer3022, 0);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3040.setIndexBuffer(buffer300, "uint16");
    const uint32_3021 = new Uint32Array(3);

    uint32_3021[0] = 100;
    uint32_3021[1] = 1;
    uint32_3021[2] = 1;

    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3032, 0, uint32_3021, 0, uint32_3021.length);

    compute_pass_encoder3021.dispatchWorkgroupsIndirect(buffer3032, 0);
    render_pass_encoder3001.endOcclusionQuery()
    render_pass_encoder3030.drawIndirect(buffer3021, 0);
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder3010.drawIndirect(buffer3017, 0);
    render_pass_encoder3000.drawIndirect(buffer3030, 0);
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
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group3012);
    compute_pass_encoder3010.end();
    render_pass_encoder3010.drawIndirect(buffer3032, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3010.drawIndirect(buffer305, 0);
    device30.queue.submit([command_buffer300, command_buffer302, command_buffer303, ]);
    render_pass_encoder3021.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3030, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3031, 0);
    render_pass_encoder3021.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder3021.end();
    render_pass_encoder3030.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer3022, 0);
    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3036,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3013);
    compute_pass_encoder3021.dispatchWorkgroups(100);
    compute_pass_encoder3010.dispatchWorkgroups(100);
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

    compute_pass_encoder3010.setBindGroup(0, bind_group3014);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3022, 0);
    render_pass_encoder3021.drawIndirect(buffer3030, 0);
    render_pass_encoder3021.drawIndirect(buffer3032, 0);
    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3015 = device30.createBindGroup({
        label: "bind_group3015",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3040,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3015);
    compute_pass_encoder3021.popDebugGroup()
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3001.drawIndirect(buffer3021, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3011, "uint16");
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3041, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3041, 0);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3010.drawIndirect(buffer3014, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3022, 0);
    render_pass_encoder3001.end();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3000.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3000.drawIndirect(buffer3032, 0);
    render_pass_encoder3040.drawIndirect(buffer3014, 0);
    render_pass_encoder3010.end();
    device30.queue.submit([command_buffer304, ]);
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
        
    const bind_group3016 = device30.createBindGroup({
        label: "bind_group3016",
        layout: compute_pipeline303.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group3016);
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
        
    const bind_group3017 = device30.createBindGroup({
        label: "bind_group3017",
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

    compute_pass_encoder3000.setBindGroup(0, bind_group3017);
    render_pass_encoder3030.drawIndirect(buffer3014, 0);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder3001.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder4010.draw(3);
    render_pass_encoder3020.setIndexBuffer(buffer3022, "uint16");
    render_pass_encoder3020.drawIndirect(buffer3022, 0);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder3040.end();
    render_pass_encoder3010.drawIndirect(buffer3031, 0);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3046 = device30.createBuffer({
        label: "buffer3046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3046, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3046, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3021, 0);
    const buffer3047 = device30.createBuffer({
        label: "buffer3047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3048 = device30.createBuffer({
        label: "buffer3048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3018 = device30.createBindGroup({
        label: "bind_group3018",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3048,
                },
            },
        ],
    });

    compute_pass_encoder3021.setBindGroup(0, bind_group3018);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder4010.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder3021.setIndexBuffer(buffer3031, "uint16");
    render_pass_encoder3030.setIndexBuffer(buffer3042, "uint16");
    compute_pass_encoder3021.dispatchWorkgroups(100);
    render_pass_encoder3021.drawIndexedIndirect(buffer3022, 0);
    render_pass_encoder3040.drawIndirect(buffer3031, 0);
    render_pass_encoder4010.end();
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    compute_pass_encoder3000.end();
    const buffer3049 = device30.createBuffer({
        label: "buffer3049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3050 = device30.createBuffer({
        label: "buffer3050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3019 = device30.createBindGroup({
        label: "bind_group3019",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3050,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3019);
    render_pass_encoder3040.drawIndirect(buffer3027, 0);
    render_pass_encoder3030.popDebugGroup();
    const uint32_3021 = new Uint32Array(3);

    uint32_3021[0] = 100;
    uint32_3021[1] = 1;
    uint32_3021[2] = 1;

    const buffer3051 = device30.createBuffer({
        label: "buffer3051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3051, 0, uint32_3021, 0, uint32_3021.length);

    compute_pass_encoder3021.dispatchWorkgroupsIndirect(buffer3051, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3021, 0);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder3020.setIndexBuffer(buffer3020, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer3042, 0);
    render_pass_encoder3030.draw(3);
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder4010.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder3001.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer3041, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3000.drawIndirect(buffer3014, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer3046, 0);
    render_pass_encoder3021.setIndexBuffer(buffer3025, "uint16");
    render_pass_encoder3030.drawIndirect(buffer3014, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer307, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3040.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder3010.drawIndirect(buffer3030, 0);
    render_pass_encoder3010.drawIndirect(buffer3051, 0);
    render_pass_encoder4010.popDebugGroup();
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3052 = device30.createBuffer({
        label: "buffer3052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3052, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3052, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3022, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3021.end();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder3021.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer3031, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3027, 0);
    render_pass_encoder3020.draw(3);
    render_pass_encoder3021.drawIndexedIndirect(buffer3051, 0);
    compute_pass_encoder3021.end();
    render_pass_encoder3001.drawIndirect(buffer3041, 0);
    render_pass_encoder3040.draw(3);
    device10.queue.submit([]);
    render_pass_encoder3040.drawIndexedIndirect(buffer3022, 0);
    render_pass_encoder3020.draw(3);
    render_pass_encoder3010.setIndexBuffer(buffer3044, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer3041, 0);
    render_pass_encoder3030.drawIndirect(buffer3032, 0);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3030.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3020.drawIndirect(buffer3052, 0);
    render_pass_encoder4010.end();
    device30.queue.submit([]);
    render_pass_encoder3001.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder3020.draw(3);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3021.popDebugGroup()
    render_pass_encoder3021.setIndexBuffer(buffer3039, "uint16");
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
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3021.setBindGroup(0, bind_group3020);
    render_pass_encoder3040.end();
    render_pass_encoder3020.drawIndirect(buffer3030, 0);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3040.drawIndirect(buffer3051, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3051, 0);
    render_pass_encoder3001.popDebugGroup();
    compute_pass_encoder3021.end();
    render_pass_encoder4010.draw(3);
    render_pass_encoder3021.end();
    render_pass_encoder3030.drawIndirect(buffer3051, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer3041, 0);
    compute_pass_encoder3020.end();
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
    render_pass_encoder3030.drawIndirect(buffer3046, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3046, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3041, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3031, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3014, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3000.drawIndirect(buffer3051, 0);
    device50.queue.submit([]);
    render_pass_encoder3040.drawIndexedIndirect(buffer309, 0);
    device50.queue.submit([]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3055, 0);
    compute_pass_encoder3021.popDebugGroup()
    render_pass_encoder3001.drawIndirect(buffer3030, 0);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder4010.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder3000.endOcclusionQuery()
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder3020.drawIndirect(buffer3021, 0);
    device30.queue.submit([]);
    render_pass_encoder3030.drawIndirect(buffer3022, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3051, 0);
    render_pass_encoder3040.drawIndirect(buffer3051, 0);
    render_pass_encoder3020.drawIndirect(buffer3022, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3051, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3020.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer3014, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder4010.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder3020.drawIndirect(buffer3052, 0);
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
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group3021);
    render_pass_encoder3021.drawIndirect(buffer3032, 0);
    compute_pass_encoder3010.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3030.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3032, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3021.drawIndexed(3);
    compute_pass_encoder3021.end();
    render_pass_encoder4010.drawIndirect(buffer403, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3040.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3051, 0);
    render_pass_encoder3020.drawIndirect(buffer3021, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3030, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3021, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3040.drawIndexedIndirect(buffer3021, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3047, "uint16");
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3020.popDebugGroup();
    const buffer3058 = device30.createBuffer({
        label: "buffer3058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3059 = device30.createBuffer({
        label: "buffer3059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3022 = device30.createBindGroup({
        label: "bind_group3022",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3059,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3022);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3010.draw(3);
    render_pass_encoder3000.drawIndirect(buffer3031, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3021.end();
    render_pass_encoder3030.drawIndirect(buffer3030, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3047, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3020.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder3030.endOcclusionQuery()
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3060 = device30.createBuffer({
        label: "buffer3060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3060, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3060, 0);
    render_pass_encoder3020.drawIndirect(buffer3030, 0);
    const buffer3061 = device30.createBuffer({
        label: "buffer3061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3062 = device30.createBuffer({
        label: "buffer3062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3023 = device30.createBindGroup({
        label: "bind_group3023",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3062,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3023);
    render_pass_encoder4010.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer3046, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3051, 0);
    compute_pass_encoder3010.popDebugGroup()
    const buffer3063 = device30.createBuffer({
        label: "buffer3063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3064 = device30.createBuffer({
        label: "buffer3064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3024 = device30.createBindGroup({
        label: "bind_group3024",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3064,
                },
            },
        ],
    });

    compute_pass_encoder3021.setBindGroup(0, bind_group3024);
    render_pass_encoder3030.drawIndirect(buffer3024, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3027, 0);
    render_pass_encoder3021.drawIndirect(buffer3034, 0);
    render_pass_encoder4010.end();
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3040.end();
    compute_pass_encoder3021.end();
    render_pass_encoder3000.drawIndirect(buffer3014, 0);
    render_pass_encoder3001.drawIndirect(buffer3031, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3026, "uint16");
    render_pass_encoder3030.end();
    command_encoder000.popDebugGroup()
    const buffer3065 = device30.createBuffer({
        label: "buffer3065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3066 = device30.createBuffer({
        label: "buffer3066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3025 = device30.createBindGroup({
        label: "bind_group3025",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3066,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3025);
    render_pass_encoder3010.drawIndexedIndirect(buffer3060, 0);
    render_pass_encoder3020.end();
    const buffer3067 = device30.createBuffer({
        label: "buffer3067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3068 = device30.createBuffer({
        label: "buffer3068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3026 = device30.createBindGroup({
        label: "bind_group3026",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3068,
                },
            },
        ],
    });

    compute_pass_encoder3021.setBindGroup(0, bind_group3026);
    render_pass_encoder3021.drawIndexedIndirect(buffer3060, 0);
    compute_pass_encoder3021.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer3031, 0);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3021.end();
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder3010.drawIndirect(buffer3055, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3055, 0);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3069 = device30.createBuffer({
        label: "buffer3069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3069, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3069, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3030, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3020.end();
    render_pass_encoder3030.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder3020.drawIndirect(buffer3021, 0);
    const buffer3070 = device30.createBuffer({
        label: "buffer3070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3071 = device30.createBuffer({
        label: "buffer3071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3027 = device30.createBindGroup({
        label: "bind_group3027",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3071,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3027);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3072 = device30.createBuffer({
        label: "buffer3072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3072, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3072, 0);
    render_pass_encoder3001.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3020.drawIndexedIndirect(buffer3014, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3073 = device30.createBuffer({
        label: "buffer3073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3073, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3073, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder3020.end();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3021.drawIndirect(buffer3069, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3048, 0);
    compute_pass_encoder3021.popDebugGroup()
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    render_pass_encoder3020.drawIndexedIndirect(buffer3046, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3051, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3021, 0);
    render_pass_encoder3040.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3074 = device30.createBuffer({
        label: "buffer3074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3074, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3074, 0);
    render_pass_encoder3040.end();
    render_pass_encoder3001.drawIndirect(buffer3021, 0);
    render_pass_encoder3040.setIndexBuffer(buffer3057, "uint16");
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3001.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3020.drawIndexedIndirect(buffer3067, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3032, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder3021.end();
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3000.drawIndexedIndirect(buffer3039, 0);
    const buffer3075 = device30.createBuffer({
        label: "buffer3075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3076 = device30.createBuffer({
        label: "buffer3076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3028 = device30.createBindGroup({
        label: "bind_group3028",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3076,
                },
            },
        ],
    });

    compute_pass_encoder3021.setBindGroup(0, bind_group3028);
    render_pass_encoder3021.drawIndexedIndirect(buffer3022, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3051, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3043, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3041, 0);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3041, 0);
    render_pass_encoder3010.drawIndirect(buffer3053, 0);
    render_pass_encoder3020.drawIndirect(buffer3021, 0);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3000.drawIndexedIndirect(buffer3051, 0);
    render_pass_encoder3021.drawIndirect(buffer3072, 0);
    const buffer3077 = device30.createBuffer({
        label: "buffer3077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3078 = device30.createBuffer({
        label: "buffer3078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3029 = device30.createBindGroup({
        label: "bind_group3029",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3078,
                },
            },
        ],
    });

    compute_pass_encoder3021.setBindGroup(0, bind_group3029);
    render_pass_encoder3001.drawIndexedIndirect(buffer3021, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3074, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3046, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3031, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3027, "uint16");
    render_pass_encoder3021.drawIndirect(buffer3029, 0);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3079 = device30.createBuffer({
        label: "buffer3079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3079, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3079, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3001.drawIndirect(buffer3048, 0);
    render_pass_encoder3000.drawIndirect(buffer3021, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3030.drawIndexedIndirect(buffer3073, 0);
    render_pass_encoder3040.drawIndirect(buffer3021, 0);
    render_pass_encoder3020.drawIndirect(buffer3059, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3010.drawIndexedIndirect(buffer3016, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3021.drawIndirect(buffer3065, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3020.drawIndexedIndirect(buffer3030, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3079, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndexedIndirect(buffer3041, 0);
    render_pass_encoder3020.drawIndirect(buffer3017, 0);
    render_pass_encoder3010.drawIndirect(buffer3074, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3030.drawIndirect(buffer3030, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3031, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    render_pass_encoder3001.drawIndexedIndirect(buffer3068, 0);
    render_pass_encoder4010.draw(3);
    render_pass_encoder3021.setIndexBuffer(buffer3046, "uint16");
    render_pass_encoder3040.end();
    render_pass_encoder3020.drawIndirect(buffer3031, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3069, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3074, "uint16");
    render_pass_encoder3040.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3001.end();
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder3021.drawIndexedIndirect(buffer3051, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3055, 0);
    device40.queue.submit([command_buffer400, ]);
    const buffer3080 = device30.createBuffer({
        label: "buffer3080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3081 = device30.createBuffer({
        label: "buffer3081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3030 = device30.createBindGroup({
        label: "bind_group3030",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3081,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3030);
    const buffer3082 = device30.createBuffer({
        label: "buffer3082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3083 = device30.createBuffer({
        label: "buffer3083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3031 = device30.createBindGroup({
        label: "bind_group3031",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3083,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3031);
    render_pass_encoder3010.drawIndirect(buffer3069, 0);
    render_pass_encoder3020.endOcclusionQuery()
    render_pass_encoder3030.setIndexBuffer(buffer3023, "uint16");
    render_pass_encoder3000.endOcclusionQuery()
    render_pass_encoder3020.end();
    device30.queue.submit([command_buffer304, ]);
}