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
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("out-of-memory");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("internal");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device20.destroy();
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder300.copyBufferToBuffer(
        buffer300,
        0,
        buffer300,
        0,
        400
    );
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device30.queue.submit([]);
    const array0 = new Float32Array([0.0, 0.75, 1.0, 0.5, 0.75, -0.75, 0.0, 0.0, -1.0, -0.75, -0.75, 0.25, -0.5, 0.0, 0.25, -1.0, 0.25, -1.0, -0.5, -0.75, -0.25, 0.5, 0.75, 0.0, -0.5, 1.0, 0.0, 0.5, -0.75, 0.5, -0.75, -1.0, -1.0, 0.25, 0.25, 0.0, 0.5, 0.5, 0.0, 0.25, -1.0, 0.0, -0.75, 0.75, 0.75, 0.75, -0.25, 0.5, 0.75, -1.0, 0.25, -1.0, -0.25, -0.25, -1.0, -0.75, 0.25, -1.0, -0.75, -1.0, 0.75, -0.25, 1.0, 1.0, -0.75, -0.25, 0.75, 0.5, -0.75, 0.25, -0.5, 0.25, -0.5, -0.25, -1.0, -1.0, -0.75, -0.5, -0.25, -0.25, 0.5, -0.25, 0.75, -0.5, 1.0, 0.0, -0.25, -0.5, 1.0, -0.25, -1.0, 0.0, -0.5, -0.75, 1.0, -0.25, -0.75, -0.5, 1.0, -0.75, ]);
    
    
    
    
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
    command_encoder300.clearBuffer(buffer300);
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
    const array1 = new Float32Array([0.5, 1.0, -0.5, -0.75, 0.5, -0.25, 0.0, -0.5, 0.0, -0.5, 0.25, -0.75, 0.25, 0.5, -0.75, -1.0, -0.75, 0.25, -1.0, 1.0, 0.0, -0.5, 0.75, 0.25, -0.25, 1.0, -0.75, 0.75, 0.25, 0.0, -0.5, -0.5, 1.0, 0.75, 0.75, -0.75, -0.75, 1.0, -1.0, 0.75, 0.5, 0.25, 1.0, -1.0, 0.5, -0.75, -0.75, 0.0, -1.0, -0.25, 1.0, 1.0, 0.25, 1.0, -0.75, 0.5, -1.0, 0.25, -0.75, -0.25, 0.0, -1.0, 0.0, -0.75, -0.5, -1.0, 0.0, -1.0, -0.25, 0.0, 0.75, 0.0, 0.0, -1.0, 1.0, 1.0, 1.0, 1.0, -0.5, -0.25, -0.5, 0.75, -0.25, 1.0, 0.5, 0.0, 0.0, 0.25, -0.25, -0.25, 0.75, -1.0, 0.75, -1.0, -0.75, -0.25, -0.5, 0.75, 0.0, -0.5, ]);
    const array2 = new Float32Array([-0.25, 0.0, 0.5, 1.0, -1.0, -0.5, 0.0, 0.5, 0.75, -1.0, 0.25, -0.75, -0.25, -0.75, -0.75, -0.75, 0.5, -0.5, 1.0, 0.25, -0.5, -1.0, 0.75, -1.0, 0.5, -0.75, 0.0, 0.25, 0.25, -0.75, 0.0, -0.25, 0.5, 0.75, 0.75, 0.0, -0.5, -0.5, -0.25, -0.75, 0.0, 0.5, -0.75, -0.25, 0.75, 0.75, 0.25, 0.0, 1.0, 1.0, -0.25, 0.25, 0.5, -0.25, 0.0, -0.25, 0.0, 1.0, -0.75, 0.25, -1.0, -0.25, 0.25, -0.25, 0.0, 0.75, 0.5, -0.75, -0.5, 0.75, -0.75, 0.0, -1.0, -0.5, -0.25, 0.75, -1.0, -0.25, 0.5, 0.0, 0.75, 0.25, 0.5, 0.0, 0.75, 0.0, -0.5, 1.0, 0.0, 0.25, -0.5, 0.0, -1.0, 0.25, 1.0, -0.75, -1.0, 0.75, 1.0, -0.25, ]);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder300.copyBufferToBuffer(
        buffer301,
        0,
        buffer300,
        0,
        400
    );
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    command_encoder300.popDebugGroup()
    
    
    
    
    
    
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    const command_buffer300 = command_encoder300.finish();
    
    device30.queue.writeBuffer(buffer303, 0, array0, 0, array0.length);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    buffer303.destroy()
    buffer302.destroy()
    const command_buffer301 = command_encoder301.finish();
    buffer301.destroy()
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    buffer300.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    buffer304.destroy()
    const command_buffer303 = command_encoder303.finish();
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    device10.destroy();
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    command_encoder305.copyTextureToTexture(
        {
            texture: texture300
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
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder306.insertDebugMarker("mymarker");
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pass_encoder3060 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3060",
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
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device30.pushErrorScope("out-of-memory");
    compute_pass_encoder3040.insertDebugMarker("marker")
    
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    compute_pass_encoder3040.setPipeline(compute_pipeline300);
    render_pass_encoder3050.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3050.executeBundles([])
    render_pass_encoder3020.pushDebugGroup("group_marker");
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder306.clearBuffer(buffer301);
    render_pass_encoder3021.setPipeline(render_pipeline300);
    
    render_pass_encoder3020.setPipeline(render_pipeline301);
    render_pass_encoder3021.pushDebugGroup("group_marker");
    render_bundle_encoder300.setPipeline(render_pipeline302);
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
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3040.setBindGroup(0, bind_group300);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    compute_pass_encoder3040.insertDebugMarker("marker")
    
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    render_pass_encoder3020.insertDebugMarker("marker");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3021.insertDebugMarker("marker");
    
    texture301.destroy();
    
    
    render_pass_encoder3050.setPipeline(render_pipeline302);
    render_pass_encoder3060.setPipeline(render_pipeline301);
    render_pass_encoder3050.pushDebugGroup("group_marker");
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder3060.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3021.setStencilReference(1);
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    
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
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3050.setBindGroup(0, bind_group302);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3050.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder3021.setStencilReference(1);
    command_encoder305.copyBufferToTexture(
        {
            buffer: buffer306
        },
        {
            texture: texture300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder300.setVertexBuffer(0, buffer304);
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    buffer3010.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder301.setPipeline(render_pipeline301);
    
    
    render_pass_encoder3021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder302.setPipeline(render_pipeline300);
    query300.destroy()
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    query300.destroy()
    render_bundle_encoder301.popDebugGroup();
    render_pass_encoder3020.insertDebugMarker("marker");
    render_bundle_encoder300.popDebugGroup();
    texture302.destroy();
    
    render_pass_encoder3060.setStencilReference(1);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture300.destroy();
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group303);
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    
    const array3 = new Float32Array([0.0, 0.5, -1.0, 1.0, 0.25, 1.0, 0.5, 0.25, 0.75, -0.25, 1.0, -1.0, 0.75, -1.0, 0.0, 1.0, 0.75, -0.25, 0.25, -0.25, -0.5, -0.5, -0.5, 0.0, -0.75, -0.5, 0.75, -0.5, -0.25, 0.5, -1.0, -0.25, 0.5, -0.75, -0.25, 0.0, -0.5, -1.0, 0.0, -1.0, 0.75, 0.5, -0.5, 1.0, 0.75, -1.0, -0.25, -1.0, 0.75, -0.75, 0.75, -0.75, -0.5, -0.5, -0.5, 0.75, -0.25, 0.5, -1.0, -0.25, 0.0, 0.25, -0.5, -0.75, -0.25, 0.5, 0.75, 0.25, -0.75, -1.0, -0.25, 0.0, 1.0, -0.25, 0.0, -1.0, 0.5, -0.75, -0.5, 1.0, 1.0, -0.75, -0.5, 0.75, -0.75, -0.5, -1.0, 0.75, 0.5, -1.0, -0.75, 1.0, -0.25, 0.5, -0.75, -0.75, 0.25, -0.5, 0.0, -0.75, ]);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.setIndexBuffer(buffer307, "uint16");
    compute_pass_encoder3040.dispatchWorkgroups(100);
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group304);
    const array4 = new Float32Array([-1.0, 0.5, 0.0, 0.5, -1.0, -0.5, 0.25, 0.75, 0.0, 0.75, 0.0, -0.5, 1.0, 1.0, 0.5, 0.25, 1.0, 0.5, 0.0, 0.75, 0.25, -0.75, -0.25, 0.5, 0.25, -1.0, 0.5, -0.5, -0.25, 1.0, 1.0, -0.75, -0.5, -0.5, -0.75, 0.75, 0.0, -0.75, 0.75, 0.25, 1.0, 0.5, 0.0, 0.75, -0.75, 0.0, 0.75, 0.5, -0.5, 1.0, -1.0, -0.75, 0.75, 0.25, 1.0, -0.25, 1.0, -0.25, 0.75, -1.0, 0.25, 1.0, 0.25, -0.25, -1.0, -1.0, -0.25, 0.75, -0.5, -0.5, 0.5, 1.0, 1.0, -0.5, -1.0, -1.0, 0.0, 0.0, 1.0, -1.0, 0.25, 0.5, -0.75, 0.75, -0.75, -0.25, -0.75, 0.25, -0.25, -1.0, -1.0, 0.0, -0.25, -1.0, 0.0, 0.75, 1.0, -0.5, 0.75, 0.75, ]);
    render_bundle_encoder300.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder3020.insertDebugMarker("marker");
    const command_buffer305 = command_encoder305.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder3060 = command_encoder306.beginComputePass({ label: "compute_pass_encoder3060" });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    render_pass_encoder3050.insertDebugMarker("marker");
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    
    render_pass_encoder3021.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_bundle_encoder300.draw(3);
    render_pass_encoder3021.setStencilReference(1);
    render_pass_encoder3050.setStencilReference(1);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    device30.queue.writeTexture({ texture: texture303 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3050.setVertexBuffer(0, buffer304);
    texture303.destroy();
    
    render_pass_encoder3050.setStencilReference(1);
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    device20.pushErrorScope("internal");
    compute_pass_encoder3040.popDebugGroup()
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder3050.setStencilReference(1);
    render_pass_encoder3060.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    compute_pass_encoder3060.setPipeline(compute_pipeline304);
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_pass_encoder3050.popDebugGroup();
    buffer3014.destroy()
    compute_pass_encoder3040.end();
    render_bundle_encoder302.setVertexBuffer(0, buffer3011);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
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
    
    render_pass_encoder3050.draw(3);
    render_pass_encoder3060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder302.copyBufferToBuffer(
        buffer301,
        0,
        buffer3011,
        0,
        400
    );
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
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline304.getBindGroupLayout(0),
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

    compute_pass_encoder3060.setBindGroup(0, bind_group305);
    command_encoder306.pushDebugGroup("mygroupmarker")
    command_encoder302.insertDebugMarker("mymarker");
    render_pass_encoder3021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3040.popDebugGroup()
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    buffer3014.destroy()
    render_pass_encoder3040.setPipeline(render_pipeline301);
    render_bundle_encoder301.setVertexBuffer(0, buffer302);
    render_pass_encoder3021.insertDebugMarker("marker");
    render_pass_encoder3050.pushDebugGroup("group_marker");
    render_pass_encoder3050.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer304, 0, array3, 0, array3.length);
    render_bundle_encoder300.drawIndirect(buffer303, 0);
    
    
    
    buffer3011.destroy()
    buffer3012.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    compute_pass_encoder3060.insertDebugMarker("marker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const array5 = new Float32Array([-0.75, -0.75, -1.0, 1.0, 0.0, 0.75, -0.25, 1.0, 0.0, 0.5, -0.75, 1.0, -1.0, -1.0, 0.0, 1.0, -0.5, 0.75, -0.25, 0.25, 0.25, -0.25, 0.25, -0.75, 0.25, 0.25, 0.5, 0.75, 0.25, -0.75, 0.75, -0.75, 0.75, -0.5, 0.0, 0.0, 1.0, -0.75, -1.0, 0.5, -0.25, -0.25, -1.0, -0.5, -1.0, 0.25, -0.25, 1.0, 0.5, 0.5, -0.5, 0.5, 0.0, 0.0, 1.0, 1.0, 0.0, -0.5, -0.25, 0.5, 1.0, -0.25, 0.5, 0.25, -0.25, 0.0, 0.25, 0.75, 0.25, -0.75, 0.75, 0.25, 1.0, -0.75, 0.75, 1.0, -0.5, -0.5, 0.5, 0.25, -0.75, 0.75, 0.5, -0.5, 0.5, -0.25, 0.5, 0.75, 0.75, -0.25, 0.0, -0.5, 0.75, 1.0, -1.0, -1.0, -0.25, 0.5, 0.75, -0.75, ]);
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3050.setIndexBuffer(buffer308, "uint16");
    device50.pushErrorScope("internal");
    render_pass_encoder3060.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer3013, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer309, 0, array0, 0, array0.length);
    buffer309.destroy()
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    
    render_bundle_encoder302.draw(3);
    command_encoder302.insertDebugMarker("mymarker");
    render_pass_encoder3040.pushDebugGroup("group_marker");
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder302.clearBuffer(buffer306);
    buffer305.destroy()
    
    render_bundle_encoder301.popDebugGroup();
    render_pass_encoder3021.insertDebugMarker("marker");
    
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout306,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder3050.drawIndirect(buffer308, 0);
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder3060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer308.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer307.destroy()
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.finish();
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
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
    device30.queue.writeBuffer(buffer306, 0, array2, 0, array2.length);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
    render_pass_encoder3040.setStencilReference(1);
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout304]
    });
    
    compute_pass_encoder3060.pushDebugGroup("group_marker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder3060.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3050.popDebugGroup();
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer3017.destroy()
    render_pass_encoder3050.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_bundle_encoder301.setIndexBuffer(buffer3011, "uint16");
    
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3020.setBindGroup(0, bind_group306);
    
    buffer500.destroy()
    const uint32_3060 = new Uint32Array(3);

    uint32_3060[0] = 100;
    uint32_3060[1] = 1;
    uint32_3060[2] = 1;

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3021, 0, uint32_3060, 0, uint32_3060.length);

    compute_pass_encoder3060.dispatchWorkgroupsIndirect(buffer3021, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3040.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_bundle_encoder301.drawIndirect(buffer3021, 0);
    
    render_pass_encoder3020.setVertexBuffer(0, buffer3021);
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
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
    command_encoder304.clearBuffer(buffer301);
    
    render_pass_encoder3050.pushDebugGroup("group_marker");
    render_pass_encoder3060.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3020.draw(3);
    compute_pass_encoder3060.popDebugGroup()
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    command_encoder304.copyBufferToBuffer(
        buffer3020,
        0,
        buffer3019,
        0,
        400
    );
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    device30.queue.submit([command_buffer301, command_buffer303, command_buffer305, ]);
    command_encoder307.clearBuffer(buffer307);
    buffer3019.destroy()
    
    render_pass_encoder3040.setStencilReference(1);
    command_encoder306.resolveQuerySet(
        query300,
        0,
        32,
        buffer304,
        0
    )
    render_pass_encoder3060.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    command_encoder307.copyTextureToBuffer(
        {
            texture: texture303
        },
        {
            buffer: buffer3019
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const render_pass_encoder3070 = command_encoder307.beginRenderPass({
        label: "render_pass_encoder3070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder3021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3021.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    query300.destroy()
    device00.destroy();
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_pass_encoder3041 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query301
    });
    render_pass_encoder3050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder3070.pushDebugGroup("group_marker");
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture304 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder3070.setPipeline(render_pipeline304);
    
    
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device30.queue.writeBuffer(buffer3021, 0, array4, 0, array4.length);
    buffer501.destroy()
    device30.queue.writeBuffer(buffer3015, 0, array5, 0, array5.length);
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder302.popDebugGroup();
    command_encoder307.clearBuffer(buffer301);
    render_bundle_encoder300.popDebugGroup();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    render_bundle_encoder302.drawIndirect(buffer307, 0);
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder3060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer3015.destroy()
    render_pass_encoder3050.setStencilReference(1);
    
    buffer3020.destroy()
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder307.resolveQuerySet(
        query300,
        0,
        32,
        buffer3011,
        0
    )
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder3041.setPipeline(render_pipeline305);
    
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
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
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3021.setBindGroup(0, bind_group307);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device30.queue.writeTexture({ texture: texture304 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3060.insertDebugMarker("marker")
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeTexture({ texture: texture304 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder3070.setStencilReference(1);
    device30.queue.writeBuffer(buffer3021, 0, array5, 0, array5.length);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
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
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    {
        await buffer3022.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer3022.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer3022.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout304]
    });
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3070.setStencilReference(1);
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
    
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: render_pipeline304.getBindGroupLayout(0),
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

    render_pass_encoder3070.setBindGroup(0, bind_group308);
    render_pass_encoder3050.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout309,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer3016.destroy()
    
    device30.queue.writeBuffer(buffer3018, 0, array1, 0, array1.length);
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout304]
    });
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3041.insertDebugMarker("marker");
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout304]
    });
    
    command_encoder307.copyBufferToBuffer(
        buffer306,
        0,
        buffer3021,
        0,
        400
    );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.queue.writeBuffer(buffer303, 0, array4, 0, array4.length);
    render_pass_encoder3050.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    command_encoder304.copyBufferToBuffer(
        buffer3017,
        0,
        buffer302,
        0,
        400
    );
    
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer3023.destroy()
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    command_encoder302.resolveQuerySet(
        query301,
        0,
        32,
        buffer304,
        0
    )
    
    
    render_pass_encoder3050.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder3041.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device30.queue.writeBuffer(buffer303, 0, array5, 0, array5.length);
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_pass_encoder3021.setVertexBuffer(0, buffer3011);
    device30.queue.writeTexture({ texture: texture304 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query300.destroy()
    render_pass_encoder3050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    render_pass_encoder3021.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    render_pass_encoder3021.setIndexBuffer(buffer3022, "uint16");
    render_pass_encoder3021.drawIndexedIndirect(buffer300, 0);
    compute_pass_encoder3060.dispatchWorkgroups(100);
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder3070.setVertexBuffer(0, buffer3025);
    render_pass_encoder3021.end();
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
    
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3040.setBindGroup(0, bind_group309);
    render_pass_encoder3021.drawIndexedIndirect(buffer3021, 0);
    render_pass_encoder3060.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3070.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder3020.end();
    render_pass_encoder3040.setVertexBuffer(0, buffer302);
    render_pass_encoder3070.drawIndirect(buffer3021, 0);
    render_pass_encoder3040.setIndexBuffer(buffer304, "uint16");
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
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3040.setBindGroup(0, bind_group3010);
    command_encoder302.popDebugGroup()
    render_pass_encoder3040.drawIndexedIndirect(buffer3021, 0);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3040.end();
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
    
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
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

    render_pass_encoder3060.setBindGroup(0, bind_group3011);
    compute_pass_encoder3060.end();
    render_pass_encoder3070.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3060.setVertexBuffer(0, buffer302);
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
    
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: render_pipeline305.getBindGroupLayout(0),
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

    render_pass_encoder3041.setBindGroup(0, bind_group3012);
    render_pass_encoder3050.end();
    render_pass_encoder3021.setIndexBuffer(buffer3033, "uint16");
    render_pass_encoder3060.drawIndirect(buffer305, 0);
    render_pass_encoder3070.drawIndirect(buffer301, 0);
    const command_buffer307 = command_encoder307.finish();
    render_pass_encoder3060.end();
    render_pass_encoder3041.setVertexBuffer(0, buffer3032);
    render_pass_encoder3070.drawIndirect(buffer3021, 0);
    render_pass_encoder3041.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3050.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder3041.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder3041.drawIndirect(buffer3017, 0);
    device50.queue.submit([]);
    compute_pass_encoder3040.end();
    render_pass_encoder3041.end();
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder3050.popDebugGroup();
    device30.queue.submit([command_buffer302, command_buffer307, ]);
    render_pass_encoder3070.popDebugGroup();
    render_pass_encoder3021.setIndexBuffer(buffer3026, "uint16");
    command_encoder306.popDebugGroup()
    render_pass_encoder3041.end();
    device50.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    const command_buffer304 = command_encoder304.finish();
    render_pass_encoder3020.end();
    device30.queue.submit([command_buffer304, ]);
    const command_buffer306 = command_encoder306.finish();
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3050.drawIndirect(buffer3031, 0);
    render_pass_encoder3050.drawIndexedIndirect(buffer3021, 0);
    render_pass_encoder3050.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder3050.draw(3);
    render_pass_encoder3021.end();
    device30.queue.submit([command_buffer306, ]);
    render_pass_encoder3020.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3041.popDebugGroup();
}