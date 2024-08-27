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
    const array0 = new Float32Array([-1.0, 0.25, 0.75, 0.25, 0.25, 0.0, -0.25, 0.5, -1.0, 0.75, 0.0, -0.5, -1.0, -0.25, -0.25, -0.5, 1.0, 0.25, 0.0, -1.0, 0.5, 1.0, 0.5, 0.0, -0.25, 0.5, -0.25, -0.75, 0.75, 0.75, 0.75, -0.75, -1.0, -0.5, 0.5, -1.0, 0.0, 0.5, 0.5, -0.5, 1.0, -1.0, -0.25, 0.5, 0.0, 0.5, -0.5, 0.75, -0.75, -0.75, 0.0, -1.0, 0.0, -0.75, -0.25, -1.0, 0.25, 0.25, -1.0, -1.0, -0.25, 0.0, 0.25, 0.75, -1.0, 0.5, 1.0, 0.0, 0.5, 0.25, 0.75, 0.0, 1.0, 0.75, -1.0, -0.5, -0.75, 0.75, 0.25, 1.0, 0.75, 0.0, 0.75, -1.0, 1.0, 1.0, -0.25, 0.0, 0.25, -0.75, 0.75, -0.25, 0.0, 0.75, 0.5, 0.25, 0.75, 0.0, -0.25, -0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array1 = new Float32Array([0.25, -0.5, 0.0, 1.0, -0.5, -0.75, 0.5, 0.75, -0.75, 0.5, 0.75, -0.25, -0.5, 0.25, -0.75, 1.0, -1.0, 1.0, 0.75, -0.5, 0.0, 0.0, -0.5, -1.0, -0.25, 1.0, 0.5, 0.5, 0.25, 1.0, -0.5, 0.0, -1.0, 0.25, 0.5, -1.0, -1.0, 0.75, 0.0, 1.0, 0.75, -0.5, -0.5, 0.5, 0.0, -1.0, -0.25, 1.0, 0.5, -0.25, 0.75, 1.0, 0.25, -0.25, -1.0, 0.0, 0.5, 0.75, -0.25, 0.5, 0.5, 0.5, 0.5, -0.75, -0.5, -0.5, 1.0, 0.25, 0.5, 0.0, 0.25, 0.25, 1.0, 0.5, -1.0, 0.25, 0.5, 0.0, -1.0, 0.75, -1.0, 1.0, -0.5, 0.25, -0.5, -1.0, 1.0, 0.75, 0.0, 0.5, 0.75, 0.5, -0.75, 1.0, 0.75, 0.25, -0.5, -0.75, -0.75, -0.75, ]);
    device10.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.destroy();
    const array2 = new Float32Array([0.25, -0.25, 0.25, 0.0, -0.75, -0.25, -0.5, -1.0, 1.0, 0.25, 0.5, -0.5, -1.0, -1.0, 0.5, 0.0, 0.75, -1.0, -0.5, 0.75, 0.0, 0.75, 1.0, -1.0, -0.75, 0.5, -0.25, -0.25, -0.5, 0.25, 0.75, -0.75, 1.0, 0.75, -0.25, -1.0, 0.75, -0.5, 0.0, -0.25, -1.0, -0.5, 0.0, 0.0, 0.5, -0.75, -0.25, 0.25, 0.0, 0.75, 0.75, 0.0, -0.25, 0.75, 1.0, 0.0, 0.0, -1.0, 0.75, 0.25, 0.0, 1.0, 0.25, 0.25, 0.75, -0.25, 0.5, 0.75, -0.25, -0.75, 1.0, 0.25, -1.0, -0.75, 0.75, 0.75, -1.0, 1.0, -1.0, -0.25, 0.75, 0.0, -1.0, 0.25, -0.25, 0.5, 0.0, 0.0, 0.0, 0.5, 1.0, 0.75, 0.75, 0.5, 0.5, -0.25, -0.25, 0.25, -1.0, 0.5, ]);
    
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
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([0.5, 0.25, 0.25, -0.5, 1.0, 1.0, -0.5, 0.0, 1.0, 0.5, 1.0, -0.75, -0.75, 0.75, 0.0, 0.25, 0.75, 1.0, -0.5, 0.75, 1.0, 0.25, -1.0, 0.0, -1.0, -1.0, -0.25, -0.75, 0.5, -0.75, 0.5, -0.5, -1.0, -0.25, 1.0, -0.25, 0.0, 0.75, -0.5, -0.25, -0.25, 0.75, 0.25, -1.0, -0.5, -0.25, -0.75, 0.25, -0.75, -0.25, 0.5, -1.0, -0.25, 0.5, 0.5, -0.5, 0.5, -0.75, 0.75, -1.0, -0.75, -1.0, 0.5, -0.5, 0.25, 0.25, 0.5, -0.25, 0.0, -0.75, -0.75, 0.25, 0.75, 0.25, 0.75, -0.5, -0.25, 1.0, -0.75, -0.75, -1.0, -0.75, 0.5, 0.5, 0.5, 1.0, 1.0, -1.0, 0.0, 0.25, 0.75, 0.75, -0.75, 0.5, -1.0, 1.0, -0.5, 1.0, -0.5, -0.5, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("out-of-memory");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.pushErrorScope("internal");
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    query300.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query300.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder301.resolveQuerySet(
        query302,
        0,
        32,
        buffer300,
        0
    )
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
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
    const compute_pass_encoder3001 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3001" });
    device30.pushErrorScope("internal");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const array4 = new Float32Array([0.0, -0.25, -1.0, 1.0, 0.0, 0.25, 0.25, -0.5, 1.0, 1.0, -0.25, -1.0, 0.75, 1.0, 0.5, 0.0, 1.0, 0.5, -0.75, 0.25, -1.0, 0.75, 0.5, -0.25, 0.75, 1.0, -1.0, 1.0, -1.0, 0.0, 1.0, -0.25, 0.0, 0.75, 0.5, 0.75, -1.0, -0.25, 1.0, 0.0, -0.75, -0.5, -0.5, -1.0, 1.0, 0.75, -0.75, -0.25, 0.25, -1.0, 1.0, 0.25, -0.75, -0.5, -0.75, 0.0, 0.0, 0.25, -0.75, 0.25, 0.5, -0.25, 0.5, 0.25, -0.75, 0.0, 0.25, -0.25, 0.5, -0.5, -0.5, 1.0, 0.5, 0.25, -1.0, -0.5, 0.5, 0.0, 0.25, -0.25, -1.0, -0.75, 0.0, -0.5, 0.75, -0.5, 0.25, -0.75, -1.0, 0.5, 1.0, 0.0, 0.0, 0.25, 1.0, -0.75, 0.5, 0.75, -0.5, 0.75, ]);
    compute_pass_encoder3001.popDebugGroup()
    texture000.destroy();
    query300.destroy()
    query300.destroy()
    query301.destroy()
    buffer300.destroy()
    
    
    
    query300.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3001.insertDebugMarker("marker")
    render_bundle_encoder301.setPipeline(render_pipeline300);
    
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
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
    compute_pass_encoder3010.insertDebugMarker("marker")
    command_encoder300.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3001.insertDebugMarker("marker")
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
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
    device20.destroy();
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

    render_bundle_encoder301.setBindGroup(0, bind_group300);
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
        occlusionQuerySet: query302
    });
    render_pass_encoder3010.executeBundles([])
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_pass_encoder3010.executeBundles([])
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3010.setStencilReference(1);
    
    render_pass_encoder3010.beginOcclusionQuery(0)
    render_bundle_encoder300.insertDebugMarker("marker");
    const array5 = new Float32Array([0.25, -0.5, -0.25, -0.75, 1.0, -0.5, -1.0, 0.75, 0.75, -0.5, -0.5, -0.5, 0.25, 0.5, 0.0, -0.75, -1.0, 0.0, 0.25, -1.0, 0.5, -0.25, -0.75, -0.75, 1.0, 0.75, 0.75, 0.5, 0.5, 1.0, 0.0, -0.75, 0.5, -0.75, 0.25, 0.25, 1.0, 1.0, 0.5, 0.75, 0.0, -0.5, -0.25, -1.0, -0.75, 0.5, 1.0, -0.5, 0.5, 0.5, 0.0, 0.5, 0.75, 0.0, -1.0, -0.75, -0.5, 0.25, -0.25, -0.25, 0.25, 0.75, 0.75, 1.0, -0.75, 0.0, 0.75, -1.0, -0.25, 1.0, -0.25, 0.5, 0.75, -0.25, 0.75, 1.0, 0.5, 0.0, -1.0, 0.25, 1.0, -0.5, 0.25, -0.5, 1.0, -0.5, 1.0, -0.75, 0.5, 0.0, 0.25, 0.0, 0.0, -0.5, 0.0, 1.0, 0.75, -0.5, 0.25, -1.0, ]);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3000.insertDebugMarker("marker")
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
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3010.setStencilReference(1);
    compute_pass_encoder3010.setPipeline(compute_pipeline301);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3010.insertDebugMarker("marker")
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array6 = new Float32Array([0.0, 0.25, 0.5, -1.0, 1.0, 1.0, -0.75, 1.0, -0.5, -0.25, -0.25, -0.5, -1.0, 0.25, 0.25, 1.0, 0.75, 0.25, 0.75, 0.75, 0.25, -0.5, -0.5, 1.0, 1.0, -0.75, -0.25, -0.5, -0.5, -0.75, -0.5, 0.75, 0.75, -1.0, -1.0, -0.5, 0.75, 0.5, -0.25, -0.75, 0.0, -0.5, -0.25, 0.0, 0.0, -1.0, -0.5, -0.5, -1.0, 0.5, -0.25, 0.25, 0.25, -0.75, 1.0, -0.25, -0.5, -0.75, 0.25, 0.5, -0.25, 1.0, -0.75, 1.0, 1.0, -0.5, 1.0, 1.0, 0.25, 0.25, 0.25, 1.0, 0.0, 0.0, -1.0, -0.25, 0.5, -0.75, 0.0, 1.0, 0.25, 0.75, 0.5, 0.25, -0.75, 0.25, 0.0, -0.5, 1.0, -0.75, 0.25, -0.5, 0.5, 1.0, 0.75, -0.5, -1.0, 0.5, 0.0, -0.5, ]);
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_pass_encoder3010.setStencilReference(1);
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    buffer300.destroy()
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
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device40.destroy();
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    compute_pass_encoder3001.setPipeline(compute_pipeline300);
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3010.setPipeline(render_pipeline300);
    render_bundle_encoder300.setPipeline(render_pipeline301);
    render_pass_encoder3010.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    buffer301.destroy()
    render_pass_encoder3010.pushDebugGroup("group_marker");
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder301.popDebugGroup();
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3001.setBindGroup(0, bind_group301);
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
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
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    
    query301.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3001.pushDebugGroup("group_marker")
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3010.setBindGroup(0, bind_group303);
    
    texture300.destroy();
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer304.destroy()
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
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group304);
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    render_bundle_encoder301.setVertexBuffer(0, buffer3010);
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    compute_pass_encoder3001.dispatchWorkgroups(100);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder302.setPipeline(render_pipeline301);
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    buffer308.destroy()
    
    
    device30.queue.writeBuffer(buffer307, 0, array2, 0, array2.length);
    query300.destroy()
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    query301.destroy()
    query300.destroy()
    device30.pushErrorScope("validation");
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    
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

    compute_pass_encoder3000.setBindGroup(0, bind_group305);
    compute_pass_encoder3001.insertDebugMarker("marker")
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    {
        await buffer307.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer307.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer307.unmap();
        console.log(new Float32Array(data));
    }
    
    render_pass_encoder3010.popDebugGroup();
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3010.setStencilReference(1);
    buffer3013.destroy()
    command_encoder302.resolveQuerySet(
        query304,
        0,
        32,
        buffer3010,
        0
    )
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    
    command_encoder302.copyBufferToBuffer(
        buffer303,
        0,
        buffer306,
        0,
        400
    );
    
    {
        await buffer305.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer305.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer305.unmap();
        console.log(new Float32Array(data));
    }
    buffer3012.destroy()
    render_bundle_encoder302.pushDebugGroup("group_marker");
    compute_pass_encoder3010.dispatchWorkgroups(100);
    buffer3011.destroy()
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    buffer3010.destroy()
    compute_pass_encoder3010.popDebugGroup()
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_bundle_encoder302.insertDebugMarker("marker");
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
    query300.destroy()
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_bundle_encoder302.setBindGroup(0, bind_group306);
    query300.destroy()
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3001.insertDebugMarker("marker")
    
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    command_encoder300.resolveQuerySet(
        query302,
        0,
        32,
        buffer305,
        0
    )
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array7 = new Float32Array([0.25, 0.25, 1.0, -0.25, 0.0, 0.5, -0.25, -1.0, 0.25, -1.0, 0.5, 0.0, 0.25, 0.25, -1.0, -1.0, -0.25, 0.25, -0.5, 0.5, -0.5, -0.5, 0.75, 0.0, -0.5, -1.0, 0.75, -0.5, -0.25, 0.0, -1.0, 1.0, -0.5, 0.0, -0.25, -1.0, 0.25, 1.0, 0.5, -1.0, 0.75, -1.0, 0.25, 0.0, -0.75, 0.75, -0.25, 0.0, 0.75, 0.0, 1.0, -0.5, 1.0, 0.25, 0.25, 0.75, 0.25, 0.0, 1.0, -1.0, 0.5, 0.0, -0.5, 0.5, 0.5, 1.0, -0.25, -0.75, 0.75, -0.25, 1.0, 0.5, 0.0, -0.5, 0.0, -0.25, -0.25, 0.75, 1.0, -1.0, 0.25, -0.25, 1.0, 1.0, -0.25, -1.0, 0.25, -0.5, 0.75, -0.25, -0.75, 1.0, -0.75, 0.75, 0.75, 1.0, -0.75, -1.0, -0.25, 0.0, ]);
    query305.destroy()
    device30.queue.writeBuffer(buffer3012, 0, array0, 0, array0.length);
    device10.pushErrorScope("internal");
    render_bundle_encoder302.popDebugGroup();
    render_pass_encoder3020.setPipeline(render_pipeline300);
    render_bundle_encoder301.drawIndirect(buffer3014, 0);
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query304
    });
    
    render_pass_encoder3020.setStencilReference(1);
    
    command_encoder302.copyBufferToBuffer(
        buffer303,
        0,
        buffer305,
        0,
        400
    );
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3020.setBindGroup(0, bind_group307);
    render_bundle_encoder302.setVertexBuffer(0, buffer3011);
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer3015.destroy()
    render_pass_encoder3011.pushDebugGroup("group_marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    buffer307.destroy()
    query305.destroy()
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    query304.destroy()
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
        occlusionQuerySet: query303
    });
    render_bundle_encoder302.draw(3);
    render_pass_encoder3020.setStencilReference(1);
    
    buffer302.destroy()
    render_pass_encoder3011.setPipeline(render_pipeline302);
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_bundle_encoder001.setPipeline(render_pipeline001);
    
    render_pass_encoder3010.pushDebugGroup("group_marker");
    
    render_pass_encoder3010.setVertexBuffer(0, buffer301);
    
    
    
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer3018, 0, array4, 0, array4.length);
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_bundle_encoder302.finish();
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder3000.setStencilReference(1);
    render_pass_encoder3011.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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

    compute_pass_encoder3010.setBindGroup(0, bind_group308);
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer3016,
        0
    )
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    buffer3020.destroy()
    render_pass_encoder3020.setStencilReference(1);
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
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3001.setBindGroup(0, bind_group309);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device30.queue.writeBuffer(buffer309, 0, array3, 0, array3.length);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
    });
    render_pass_encoder3021.setStencilReference(1);
    
    buffer306.destroy()
    
    render_pass_encoder3000.beginOcclusionQuery(0)
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device60.pushErrorScope("validation");
    device30.queue.writeBuffer(buffer3022, 0, array4, 0, array4.length);
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder3020.insertDebugMarker("marker");
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3000.setPipeline(render_pipeline300);
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer3018, 0, array1, 0, array1.length);
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    device30.queue.writeBuffer(buffer309, 0, array0, 0, array0.length);
    device50.destroy();
    render_pass_encoder3000.beginOcclusionQuery(0)
    compute_pass_encoder3000.end();
    render_pass_encoder3021.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3011.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    buffer309.destroy()
    query301.destroy()
    
    render_pass_encoder3000.endOcclusionQuery()
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_pass_encoder3020.popDebugGroup();
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_pass_encoder3020.setVertexBuffer(0, buffer3018);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3023, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3023, 0);
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3011.setStencilReference(1);
    render_pass_encoder3011.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3021.setStencilReference(1);
    device30.queue.writeBuffer(buffer3021, 0, array0, 0, array0.length);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query301.destroy()
    buffer3018.destroy()
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.drawIndirect(buffer3023, 0);
    render_pass_encoder3011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3010.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3000.setStencilReference(1);
    
    device30.queue.writeBuffer(buffer3022, 0, array2, 0, array2.length);
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query306
    });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_pass_encoder3021.setPipeline(render_pipeline300);
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group3010);
    
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder303.resolveQuerySet(
        query306,
        0,
        32,
        buffer3013,
        0
    )
    
    render_pass_encoder3010.drawIndirect(buffer301, 0);
    render_pass_encoder3001.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3027,
                },
            },
        ],
    });

    render_pass_encoder3021.setBindGroup(0, bind_group3011);
    
    buffer3014.destroy()
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder3001.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    query306.destroy()
    render_pass_encoder3020.insertDebugMarker("marker");
    
    
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer3024.destroy()
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_pass_encoder3030.setPipeline(render_pipeline301);
    command_encoder300.resolveQuerySet(
        query306,
        0,
        32,
        buffer3025,
        0
    )
    render_pass_encoder3021.pushDebugGroup("group_marker");
    render_pass_encoder3011.insertDebugMarker("marker");
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3010.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder3021.setVertexBuffer(0, buffer3018);
    render_bundle_encoder300.popDebugGroup();
    
    buffer3019.destroy()
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    command_encoder304.copyBufferToBuffer(
        buffer303,
        0,
        buffer3026,
        0,
        400
    );
    render_pass_encoder3020.insertDebugMarker("marker");
    
    command_encoder304.resolveQuerySet(
        query304,
        0,
        32,
        buffer3025,
        0
    )
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    command_encoder302.copyBufferToBuffer(
        buffer308,
        0,
        buffer3023,
        0,
        400
    );
    
    command_encoder305.resolveQuerySet(
        query303,
        0,
        32,
        buffer3016,
        0
    )
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query300
    });
    render_bundle_encoder300.setVertexBuffer(0, buffer3012);
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder302.copyBufferToBuffer(
        buffer307,
        0,
        buffer309,
        0,
        400
    );
    
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    command_encoder302.copyBufferToBuffer(
        buffer3027,
        0,
        buffer3021,
        0,
        400
    );
    render_pass_encoder3001.setStencilReference(1);
    
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3050.setPipeline(render_pipeline300);
    command_encoder302.resolveQuerySet(
        query301,
        0,
        32,
        buffer3027,
        0
    )
    render_pass_encoder3001.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    command_encoder300.copyBufferToBuffer(
        buffer3018,
        0,
        buffer3021,
        0,
        400
    );
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder3011.setStencilReference(1);
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout303,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    render_pass_encoder3001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query600.destroy()
    device30.queue.writeBuffer(buffer3021, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer3023, 0, array0, 0, array0.length);
    render_bundle_encoder300.setIndexBuffer(buffer3019, "uint16");
    compute_pass_encoder3040.setPipeline(compute_pipeline308);
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    render_bundle_encoder300.drawIndirect(buffer305, 0);
    buffer3017.destroy()
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query304
    });
    render_pass_encoder3001.pushDebugGroup("group_marker");
    command_encoder304.copyBufferToBuffer(
        buffer300,
        0,
        buffer305,
        0,
        400
    );
    render_pass_encoder3011.insertDebugMarker("marker");
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout302,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer3022, 0, array2, 0, array2.length);
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
    compute_pass_encoder3001.insertDebugMarker("marker")
    render_pass_encoder3020.setStencilReference(1);
    compute_pass_encoder3001.popDebugGroup()
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout303,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout300,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    buffer600.destroy()
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder3001.end();
    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3029,
                },
            },
        ],
    });

    render_pass_encoder3011.setBindGroup(0, bind_group3012);
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
    
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3030.setBindGroup(0, bind_group3013);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3001.setPipeline(render_pipeline303);
    render_pass_encoder3020.endOcclusionQuery()
    render_pass_encoder3030.setVertexBuffer(0, buffer3021);
    compute_pass_encoder3010.popDebugGroup()
    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3033,
                },
            },
        ],
    });

    render_pass_encoder3050.setBindGroup(0, bind_group3014);
    render_pass_encoder3021.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer3024, "uint16");
    render_pass_encoder3030.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3020.draw(3);
    render_pass_encoder3050.setVertexBuffer(0, buffer309);
    render_pass_encoder3021.drawIndirect(buffer301, 0);
    render_pass_encoder3050.draw(3);
    render_pass_encoder3030.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer3023, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder3021.drawIndirect(buffer3023, 0);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3015 = device30.createBindGroup({
        label: "bind_group3015",
        layout: render_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3035,
                },
            },
        ],
    });

    render_pass_encoder3001.setBindGroup(0, bind_group3015);
    render_pass_encoder3040.setPipeline(render_pipeline302);
    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3016 = device30.createBindGroup({
        label: "bind_group3016",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3037,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group3016);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer3022, 0);
    render_pass_encoder3000.setVertexBuffer(0, buffer3012);
    render_pass_encoder3010.drawIndirect(buffer3028, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3018, "uint16");
    render_pass_encoder3001.setVertexBuffer(0, buffer302);
    render_pass_encoder3011.setVertexBuffer(0, buffer303);
    render_pass_encoder3021.end();
    render_pass_encoder3001.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3022, 0);
    render_pass_encoder3020.drawIndirect(buffer3024, 0);
    render_pass_encoder3011.drawIndirect(buffer305, 0);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder3000.drawIndirect(buffer3022, 0);
    render_pass_encoder3040.endOcclusionQuery()
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3038, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3038, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3001.drawIndirect(buffer3023, 0);
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
    
    const bind_group3017 = device30.createBindGroup({
        label: "bind_group3017",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3040.setBindGroup(0, bind_group3017);
    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3042 = device30.createBuffer({
        label: "buffer3042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3018 = device30.createBindGroup({
        label: "bind_group3018",
        layout: compute_pipeline308.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3042,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3018);
    render_pass_encoder3050.end();
    render_pass_encoder3021.setIndexBuffer(buffer3035, "uint16");
    compute_pass_encoder3010.end();
    render_pass_encoder3001.drawIndirect(buffer307, 0);
    render_pass_encoder3040.setVertexBuffer(0, buffer3013);
    render_pass_encoder3001.drawIndirect(buffer3035, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3038, "uint16");
    compute_pass_encoder3000.end();
    render_pass_encoder3040.drawIndirect(buffer3023, 0);
    const buffer3043 = device30.createBuffer({
        label: "buffer3043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3044 = device30.createBuffer({
        label: "buffer3044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3019 = device30.createBindGroup({
        label: "bind_group3019",
        layout: compute_pipeline308.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3044,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3019);
    render_pass_encoder3020.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3040.end();
    render_pass_encoder3030.end();
    render_pass_encoder3030.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder3040.drawIndirect(buffer3038, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3000.setIndexBuffer(buffer3031, "uint16");
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder3011.drawIndirect(buffer3038, 0);
    const command_buffer305 = command_encoder305.finish();
    render_pass_encoder3021.drawIndirect(buffer301, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3010.drawIndirect(buffer3023, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3040.setIndexBuffer(buffer3038, "uint16");
    compute_pass_encoder3001.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3010.end();
    const command_buffer304 = command_encoder304.finish();
    render_pass_encoder3040.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder3020.end();
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder3011.end();
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3045 = device30.createBuffer({
        label: "buffer3045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3045, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3045, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3019, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3000.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3001.drawIndirect(buffer3038, 0);
    render_pass_encoder3040.draw(3);
    render_pass_encoder3030.end();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3021.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3001.drawIndirect(buffer3015, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3010.end();
    render_pass_encoder3001.setIndexBuffer(buffer3026, "uint16");
    render_pass_encoder3021.setIndexBuffer(buffer3015, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3021.setIndexBuffer(buffer3033, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3038, 0);
    render_pass_encoder3001.drawIndirect(buffer3045, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3001.drawIndirect(buffer3043, 0);
    render_pass_encoder3010.popDebugGroup();
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
        
    const bind_group3020 = device30.createBindGroup({
        label: "bind_group3020",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group3020);
    render_pass_encoder3011.drawIndirect(buffer3023, 0);
    render_pass_encoder3001.end();
    render_pass_encoder3021.drawIndirect(buffer3038, 0);
    render_pass_encoder3020.end();
    compute_pass_encoder3001.popDebugGroup()
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder3010.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3023, 0);
    render_pass_encoder3040.drawIndirect(buffer3035, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3045, 0);
    render_pass_encoder3010.end();
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder3050.drawIndirect(buffer3027, 0);
    render_pass_encoder3021.setIndexBuffer(buffer3047, "uint16");
    render_pass_encoder3040.draw(3);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3022, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3037, "uint16");
    render_pass_encoder3040.drawIndirect(buffer3023, 0);
    device60.queue.submit([]);
    command_encoder300.popDebugGroup()
    render_pass_encoder3001.popDebugGroup();
    compute_pass_encoder3010.end();
    render_pass_encoder3040.drawIndexedIndirect(buffer3045, 0);
    compute_pass_encoder3040.end();
    render_pass_encoder3030.drawIndirect(buffer3037, 0);
    render_pass_encoder3030.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3011.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer3047, 0);
    const command_buffer300 = command_encoder300.finish();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3030.drawIndexedIndirect(buffer3024, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3000.draw(3);
    render_pass_encoder3020.setIndexBuffer(buffer3026, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3001.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder3020.drawIndexedIndirect(buffer3023, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        
    const bind_group3021 = device30.createBindGroup({
        label: "bind_group3021",
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

    compute_pass_encoder3010.setBindGroup(0, bind_group3021);
    render_pass_encoder3040.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3043, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3020.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer3019, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3050.setIndexBuffer(buffer3024, "uint16");
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
        
    const bind_group3022 = device30.createBindGroup({
        label: "bind_group3022",
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

    compute_pass_encoder3000.setBindGroup(0, bind_group3022);
    render_pass_encoder3050.drawIndirect(buffer3022, 0);
    const buffer3052 = device30.createBuffer({
        label: "buffer3052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3053 = device30.createBuffer({
        label: "buffer3053",
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
                    buffer: buffer3052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3053,
                },
            },
        ],
    });

    compute_pass_encoder3001.setBindGroup(0, bind_group3023);
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3054 = device30.createBuffer({
        label: "buffer3054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3054, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3054, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3011.popDebugGroup();
    device30.queue.submit([]);
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder3021.end();
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3001.endOcclusionQuery()
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer3051, 0);
    render_pass_encoder3011.drawIndirect(buffer3050, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder3020.drawIndirect(buffer3020, 0);
    render_pass_encoder3030.drawIndirect(buffer3023, 0);
    render_pass_encoder3010.drawIndirect(buffer3034, 0);
    render_pass_encoder3011.setIndexBuffer(buffer3028, "uint16");
    const buffer3055 = device30.createBuffer({
        label: "buffer3055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3056 = device30.createBuffer({
        label: "buffer3056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3024 = device30.createBindGroup({
        label: "bind_group3024",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3056,
                },
            },
        ],
    });

    compute_pass_encoder3001.setBindGroup(0, bind_group3024);
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    const buffer3057 = device30.createBuffer({
        label: "buffer3057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3058 = device30.createBuffer({
        label: "buffer3058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3025 = device30.createBindGroup({
        label: "bind_group3025",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3058,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3025);
    render_pass_encoder3040.drawIndirect(buffer3023, 0);
    const buffer3059 = device30.createBuffer({
        label: "buffer3059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3060 = device30.createBuffer({
        label: "buffer3060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3026 = device30.createBindGroup({
        label: "bind_group3026",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3060,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3026);
    render_pass_encoder3030.drawIndirect(buffer3023, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3025, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3030.drawIndexedIndirect(buffer3060, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer3060, 0);
    render_pass_encoder3050.drawIndexedIndirect(buffer308, 0);
    device30.queue.submit([command_buffer304, command_buffer305, ]);
    render_pass_encoder3030.setIndexBuffer(buffer3039, "uint16");
    render_pass_encoder3030.end();
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder3050.drawIndexedIndirect(buffer3031, 0);
    render_pass_encoder3020.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3040.end();
    render_pass_encoder3030.setIndexBuffer(buffer3020, "uint16");
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder3001.setIndexBuffer(buffer3041, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3051, "uint16");
    render_pass_encoder3030.drawIndirect(buffer3058, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3021, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3050.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3036, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3054, 0);
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    render_pass_encoder3021.drawIndirect(buffer3023, 0);
    render_pass_encoder3030.drawIndirect(buffer3054, 0);
    render_pass_encoder3011.end();
    render_pass_encoder3010.setIndexBuffer(buffer3053, "uint16");
    render_pass_encoder3001.drawIndirect(buffer3023, 0);
    render_pass_encoder3040.drawIndirect(buffer305, 0);
    device60.queue.submit([]);
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
        
    const bind_group3027 = device30.createBindGroup({
        label: "bind_group3027",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group3027);
    render_pass_encoder3020.drawIndexedIndirect(buffer3037, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder3050.drawIndirect(buffer3045, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3041, 0);
    render_pass_encoder3011.drawIndirect(buffer3050, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3016, "uint16");
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3063 = device30.createBuffer({
        label: "buffer3063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3063, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3063, 0);
    const buffer3064 = device30.createBuffer({
        label: "buffer3064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3065 = device30.createBuffer({
        label: "buffer3065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3028 = device30.createBindGroup({
        label: "bind_group3028",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3065,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3028);
    render_pass_encoder3030.setIndexBuffer(buffer3030, "uint16");
    compute_pass_encoder3000.end();
    render_pass_encoder3020.setIndexBuffer(buffer3055, "uint16");
    render_pass_encoder3030.setIndexBuffer(buffer3040, "uint16");
    render_pass_encoder3000.end();
    device30.queue.submit([command_buffer302, command_buffer304, ]);
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer300, command_buffer305, ]);
    render_pass_encoder3050.drawIndexedIndirect(buffer3052, 0);
    compute_pass_encoder3001.end();
    render_pass_encoder3001.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3063, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3026, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3063, 0);
    render_pass_encoder3040.setIndexBuffer(buffer3028, "uint16");
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder3040.dispatchWorkgroups(100);
    render_pass_encoder3030.setIndexBuffer(buffer3059, "uint16");
    render_pass_encoder3050.setIndexBuffer(buffer3016, "uint16");
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3066 = device30.createBuffer({
        label: "buffer3066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3066, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3066, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder3001.drawIndirect(buffer3059, 0);
    render_pass_encoder3021.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3050.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3050.drawIndirect(buffer3039, 0);
    render_pass_encoder3010.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    device00.queue.submit([]);
    compute_pass_encoder3040.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3030.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3030.popDebugGroup();
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
        
    const bind_group3029 = device30.createBindGroup({
        label: "bind_group3029",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group3029);
    render_pass_encoder3000.drawIndirect(buffer3045, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer309, 0);
    compute_pass_encoder3001.popDebugGroup()
    render_pass_encoder3030.drawIndirect(buffer3054, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3057, "uint16");
    render_pass_encoder3040.drawIndexed(3);
    render_pass_encoder3011.drawIndexedIndirect(buffer3066, 0);
    render_pass_encoder3000.drawIndirect(buffer3012, 0);
    render_pass_encoder3040.drawIndirect(buffer3038, 0);
    render_pass_encoder3020.drawIndexed(3);
    compute_pass_encoder3001.end();
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3069 = device30.createBuffer({
        label: "buffer3069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3069, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3069, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer3069, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3011.drawIndexedIndirect(buffer3053, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
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
        
    const bind_group3030 = device30.createBindGroup({
        label: "bind_group3030",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group3030);
    render_pass_encoder3021.drawIndirect(buffer3057, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3050.drawIndirect(buffer3053, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder3021.drawIndirect(buffer3069, 0);
    compute_pass_encoder3010.popDebugGroup()
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
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder3040.popDebugGroup();
    compute_pass_encoder3000.end();
    const uint32_3001 = new Uint32Array(3);

    uint32_3001[0] = 100;
    uint32_3001[1] = 1;
    uint32_3001[2] = 1;

    const buffer3073 = device30.createBuffer({
        label: "buffer3073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3073, 0, uint32_3001, 0, uint32_3001.length);

    compute_pass_encoder3001.dispatchWorkgroupsIndirect(buffer3073, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3050.drawIndirect(buffer307, 0);
    render_pass_encoder3030.drawIndirect(buffer3066, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer3030, 0);
    render_pass_encoder3011.drawIndirect(buffer3045, 0);
    render_pass_encoder3011.endOcclusionQuery()
    render_pass_encoder3040.drawIndexedIndirect(buffer3022, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3074 = device30.createBuffer({
        label: "buffer3074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3074, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3074, 0);
    render_pass_encoder3050.drawIndirect(buffer3041, 0);
    render_pass_encoder3000.drawIndirect(buffer3025, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3067, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3001.drawIndirect(buffer3072, 0);
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
        
    const bind_group3031 = device30.createBindGroup({
        label: "bind_group3031",
        layout: compute_pipeline308.getBindGroupLayout(0),
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

    compute_pass_encoder3040.setBindGroup(0, bind_group3031);
    render_pass_encoder3011.drawIndexedIndirect(buffer3074, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3073, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3032, "uint16");
    render_pass_encoder3011.drawIndexedIndirect(buffer3027, 0);
    compute_pass_encoder3010.end();
    render_pass_encoder3020.setIndexBuffer(buffer3065, "uint16");
    render_pass_encoder3050.drawIndexedIndirect(buffer3063, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3030.end();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3077 = device30.createBuffer({
        label: "buffer3077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3077, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3077, 0);
    render_pass_encoder3030.drawIndirect(buffer3063, 0);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3030.drawIndexedIndirect(buffer3054, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3045, 0);
    render_pass_encoder3010.popDebugGroup();
    device30.queue.submit([command_buffer303, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3078 = device30.createBuffer({
        label: "buffer3078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3078, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3078, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer3072, 0);
    const buffer3079 = device30.createBuffer({
        label: "buffer3079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3080 = device30.createBuffer({
        label: "buffer3080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3032 = device30.createBindGroup({
        label: "bind_group3032",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3080,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3032);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3040.setIndexBuffer(buffer3080, "uint16");
    compute_pass_encoder3040.end();
    render_pass_encoder3040.drawIndirect(buffer303, 0);
    render_pass_encoder3050.end();
    render_pass_encoder3010.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder3021.end();
    render_pass_encoder3020.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer3038, 0);
    render_pass_encoder3011.end();
    render_pass_encoder3020.setIndexBuffer(buffer3049, "uint16");
    compute_pass_encoder3040.popDebugGroup()
    device20.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3010.setIndexBuffer(buffer3022, "uint16");
    render_pass_encoder3030.popDebugGroup();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3081 = device30.createBuffer({
        label: "buffer3081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3081, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3081, 0);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3020.drawIndexedIndirect(buffer3074, 0);
    const uint32_3001 = new Uint32Array(3);

    uint32_3001[0] = 100;
    uint32_3001[1] = 1;
    uint32_3001[2] = 1;

    const buffer3082 = device30.createBuffer({
        label: "buffer3082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3082, 0, uint32_3001, 0, uint32_3001.length);

    compute_pass_encoder3001.dispatchWorkgroupsIndirect(buffer3082, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3000.setIndexBuffer(buffer3044, "uint16");
    render_pass_encoder3030.drawIndirect(buffer3061, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3050.end();
    render_pass_encoder3011.drawIndexedIndirect(buffer3031, 0);
    render_pass_encoder3040.popDebugGroup();
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder3001.drawIndirect(buffer3082, 0);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3010.drawIndirect(buffer3081, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3082, 0);
    render_pass_encoder3050.drawIndexedIndirect(buffer3059, 0);
    render_pass_encoder3030.drawIndirect(buffer3069, 0);
    render_pass_encoder3000.drawIndirect(buffer3066, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3040.drawIndexedIndirect(buffer3078, 0);
    render_pass_encoder3030.drawIndirect(buffer3045, 0);
    render_pass_encoder3010.drawIndirect(buffer3077, 0);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder3001.drawIndirect(buffer3071, 0);
    const buffer3083 = device30.createBuffer({
        label: "buffer3083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3084 = device30.createBuffer({
        label: "buffer3084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3033 = device30.createBindGroup({
        label: "bind_group3033",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3084,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3033);
    render_pass_encoder3010.end();
    render_pass_encoder3011.setIndexBuffer(buffer3062, "uint16");
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3020.drawIndirect(buffer3042, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3045, 0);
    render_pass_encoder3040.drawIndirect(buffer3054, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3020.end();
    render_pass_encoder3000.drawIndirect(buffer3045, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer3042, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer3052, 0);
    render_pass_encoder3010.drawIndirect(buffer3082, 0);
    render_pass_encoder3011.setIndexBuffer(buffer3029, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3062, 0);
    render_pass_encoder3001.drawIndirect(buffer3068, 0);
    render_pass_encoder3030.draw(3);
    render_pass_encoder3020.setIndexBuffer(buffer3023, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3011.drawIndirect(buffer3045, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3078, 0);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3050.drawIndexedIndirect(buffer3083, 0);
    render_pass_encoder3021.popDebugGroup();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3001.popDebugGroup();
    compute_pass_encoder3040.dispatchWorkgroups(100);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3021.drawIndexedIndirect(buffer3082, 0);
    render_pass_encoder3050.drawIndexedIndirect(buffer3065, 0);
    device30.queue.submit([command_buffer300, command_buffer305, ]);
    render_pass_encoder3010.drawIndirect(buffer3081, 0);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3030.setIndexBuffer(buffer3080, "uint16");
    const buffer3085 = device30.createBuffer({
        label: "buffer3085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3086 = device30.createBuffer({
        label: "buffer3086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3034 = device30.createBindGroup({
        label: "bind_group3034",
        layout: compute_pipeline308.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3086,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3034);
    render_pass_encoder3040.drawIndexedIndirect(buffer3054, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3082, "uint16");
    render_pass_encoder3021.drawIndexedIndirect(buffer3078, 0);
    render_pass_encoder3050.drawIndirect(buffer3074, 0);
    render_pass_encoder3040.drawIndexed(3);
    render_pass_encoder3030.end();
    render_pass_encoder3030.drawIndirect(buffer3074, 0);
    render_pass_encoder3040.drawIndirect(buffer3031, 0);
    render_pass_encoder3010.drawIndirect(buffer3070, 0);
    render_pass_encoder3001.popDebugGroup();
    const buffer3087 = device30.createBuffer({
        label: "buffer3087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3088 = device30.createBuffer({
        label: "buffer3088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3035 = device30.createBindGroup({
        label: "bind_group3035",
        layout: compute_pipeline308.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3088,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3035);
    render_pass_encoder3011.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer3045, 0);
    render_pass_encoder3011.drawIndirect(buffer3016, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer3082, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3050.drawIndirect(buffer3063, 0);
    render_pass_encoder3050.setIndexBuffer(buffer3082, "uint16");
    device30.queue.submit([command_buffer304, command_buffer305, ]);
    render_pass_encoder3020.drawIndexedIndirect(buffer3045, 0);
    device20.queue.submit([]);
    render_pass_encoder3001.drawIndirect(buffer3037, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer308, 0);
    device60.queue.submit([]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3011.setIndexBuffer(buffer3023, "uint16");
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    render_pass_encoder3011.drawIndexedIndirect(buffer3086, 0);
    render_pass_encoder3011.setIndexBuffer(buffer3040, "uint16");
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3030.popDebugGroup();
    const buffer3089 = device30.createBuffer({
        label: "buffer3089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3090 = device30.createBuffer({
        label: "buffer3090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3036 = device30.createBindGroup({
        label: "bind_group3036",
        layout: compute_pipeline308.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3090,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3036);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3001.end();
    compute_pass_encoder3001.popDebugGroup()
    const buffer3091 = device30.createBuffer({
        label: "buffer3091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3092 = device30.createBuffer({
        label: "buffer3092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3037 = device30.createBindGroup({
        label: "bind_group3037",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3092,
                },
            },
        ],
    });

    compute_pass_encoder3001.setBindGroup(0, bind_group3037);
    render_pass_encoder3020.popDebugGroup();
    const buffer3093 = device30.createBuffer({
        label: "buffer3093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3094 = device30.createBuffer({
        label: "buffer3094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3038 = device30.createBindGroup({
        label: "bind_group3038",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3094,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3038);
    compute_pass_encoder3040.dispatchWorkgroups(100);
    render_pass_encoder3010.drawIndexedIndirect(buffer3041, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3011.drawIndexedIndirect(buffer3025, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer3079, 0);
    render_pass_encoder3011.drawIndirect(buffer3074, 0);
    render_pass_encoder3040.drawIndirect(buffer3069, 0);
    const buffer3095 = device30.createBuffer({
        label: "buffer3095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3096 = device30.createBuffer({
        label: "buffer3096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3039 = device30.createBindGroup({
        label: "bind_group3039",
        layout: compute_pipeline308.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3096,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3039);
    compute_pass_encoder3000.end();
    render_pass_encoder3000.drawIndirect(buffer3081, 0);
    render_pass_encoder3040.draw(3);
    compute_pass_encoder3040.end();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer3036, 0);
    const buffer3097 = device30.createBuffer({
        label: "buffer3097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3098 = device30.createBuffer({
        label: "buffer3098",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3040 = device30.createBindGroup({
        label: "bind_group3040",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3098,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3040);
    render_pass_encoder3020.drawIndexedIndirect(buffer3072, 0);
    render_pass_encoder3050.drawIndexedIndirect(buffer3081, 0);
    render_pass_encoder3011.setIndexBuffer(buffer3085, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer3028, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3074, 0);
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3030.endOcclusionQuery()
    render_pass_encoder3021.setIndexBuffer(buffer3090, "uint16");
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3011.draw(3);
    render_pass_encoder3001.end();
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer302, ]);
}