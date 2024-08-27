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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder301.pushDebugGroup("mygroupmarker")
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const command_buffer300 = command_encoder300.finish();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder301.insertDebugMarker("mymarker");
    
    device00.destroy();
    command_encoder302.insertDebugMarker("mymarker");
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_buffer301 = command_encoder301.finish();
    render_bundle_encoder300.popDebugGroup();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device20.destroy();
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
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
    buffer300.destroy()
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
        occlusionQuerySet: undefined
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    device20.destroy();
    render_pass_encoder3030.setPipeline(render_pipeline301);
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder3030.pushDebugGroup("group_marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
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
    render_pass_encoder3020.executeBundles([])
    render_pass_encoder3030.setStencilReference(1);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3030.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3020.setStencilReference(1);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.popDebugGroup();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    buffer301.destroy()
    render_pass_encoder3020.setStencilReference(1);
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder3020.executeBundles([])
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
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
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_pass_encoder3030.setStencilReference(1);
    
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_pass_encoder3020.setPipeline(render_pipeline300);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    command_encoder304.pushDebugGroup("mygroupmarker")
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3020.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    device00.queue.submit([]);
    
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
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
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer500 = command_encoder500.finish();
    
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3002,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    render_bundle_encoder501.popDebugGroup();
    
    render_pass_encoder3040.setPipeline(render_pipeline300);
    render_pass_encoder3020.setStencilReference(1);
    
    render_pass_encoder3040.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const render_pass_encoder3041 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3041",
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
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    render_pass_encoder3030.pushDebugGroup("group_marker");
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_bundle_encoder500.insertDebugMarker("marker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder3041.executeBundles([])
    render_bundle_encoder500.popDebugGroup();
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    command_encoder304.clearBuffer(buffer300);
    render_pass_encoder3041.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const texture_view6012 = texture601.createView({ label: "texture_view6012" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    buffer502.destroy()
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
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
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3040.setBindGroup(0, bind_group300);
    const texture_view3004 = texture300.createView({ label: "texture_view3004" });
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
    const texture_view6013 = texture601.createView({ label: "texture_view6013" });
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3030.setBindGroup(0, bind_group301);
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    render_pass_encoder3041.pushDebugGroup("group_marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_pass_encoder3041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder3030.popDebugGroup();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    render_bundle_encoder500.popDebugGroup();
    buffer306.destroy()
    render_pass_encoder3040.setVertexBuffer(0, buffer304);
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_pass_encoder3041.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    buffer503.destroy()
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    render_pass_encoder3041.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    buffer302.destroy()
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_pass_encoder3040.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3041.popDebugGroup();
    buffer304.destroy()
    render_pass_encoder3041.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder3040.draw(3);
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_pass_encoder3041.setPipeline(render_pipeline301);
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3004,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3041.popDebugGroup();
    
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_pass_encoder3041.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    render_pass_encoder3021.pushDebugGroup("group_marker");
    
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3002,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    render_pass_encoder3021.setPipeline(render_pipeline302);
    device60.destroy();
    render_pass_encoder3021.popDebugGroup();
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_pass_encoder3040.insertDebugMarker("marker");
    render_pass_encoder3050.setPipeline(render_pipeline300);
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    
    
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    buffer505.destroy()
    render_bundle_encoder501.insertDebugMarker("marker");
    buffer307.destroy()
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    command_encoder501.clearBuffer(buffer504);
    render_pass_encoder3021.insertDebugMarker("marker");
    render_bundle_encoder701.insertDebugMarker("marker");
    
    render_pass_encoder3021.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3040.end();
    render_pass_encoder3050.setStencilReference(1);
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer000 = command_encoder000.finish();
    buffer504.destroy()
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    render_pass_encoder3021.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    render_pass_encoder3021.pushDebugGroup("group_marker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3021.setBindGroup(0, bind_group302);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder3030.setVertexBuffer(0, buffer3011);
    render_bundle_encoder500.popDebugGroup();
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    render_pass_encoder3021.setVertexBuffer(0, buffer302);
    
    render_pass_encoder3021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3050.insertDebugMarker("marker");
    
    render_pass_encoder3021.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_bundle_encoder702.pushDebugGroup("group_marker");
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder3021.drawIndirect(buffer305, 0);
    
    render_pass_encoder3021.setStencilReference(1);
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder3030.setStencilReference(1);
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder5010.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder3030.setIndexBuffer(buffer307, "uint16");
    
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
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
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder3020.setStencilReference(1);
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3040.end();
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    buffer3011.destroy()
    
    
    device10.queue.submit([]);
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    command_encoder306.copyBufferToBuffer(
        buffer304,
        0,
        buffer302,
        0,
        400
    );
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    render_bundle_encoder300.popDebugGroup();
    const command_buffer306 = command_encoder306.finish();
    render_pass_encoder3050.pushDebugGroup("group_marker");
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module506.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    
    render_pass_encoder3030.setIndexBuffer(buffer3010, "uint16");
    const texture_view3013 = texture301.createView({ label: "texture_view3013" });
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture_view3014 = texture301.createView({ label: "texture_view3014" });
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const render_bundle_encoder303 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder303",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder5010.setPipeline(render_pipeline504);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const texture_view3005 = texture300.createView({ label: "texture_view3005" });
    render_pass_encoder5010.insertDebugMarker("marker");
    render_pass_encoder3030.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3021.setStencilReference(1);
    const texture_view5021 = texture502.createView({ label: "texture_view5021" });
    const texture_view3006 = texture300.createView({ label: "texture_view3006" });
    const render_pipeline508 = device50.createRenderPipeline({
        label: "render_pipeline508",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    {
        await buffer501.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer501.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer501.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder701.pushDebugGroup("group_marker");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3030.insertDebugMarker("marker");
    buffer308.destroy()
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    buffer306.destroy()
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    command_encoder502.copyBufferToBuffer(
        buffer503,
        0,
        buffer504,
        0,
        400
    );
    const render_pass_encoder3070 = command_encoder307.beginRenderPass({
        label: "render_pass_encoder3070",
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
    buffer303.destroy()
    render_pass_encoder3070.setPipeline(render_pipeline304);
    render_pass_encoder3050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    command_encoder503.copyTextureToTexture(
        {
            texture: texture503
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture_view5012 = texture501.createView({ label: "texture_view5012" });
    const render_pass_encoder3071 = command_encoder307.beginRenderPass({
        label: "render_pass_encoder3071",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3006,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view5022 = texture502.createView({ label: "texture_view5022" });
    command_encoder502.copyTextureToBuffer(
        {
            texture: texture503
        },
        {
            buffer: buffer501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture_view7002 = texture700.createView({ label: "texture_view7002" });
    
    
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3071.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder502.insertDebugMarker("mymarker");
    render_pass_encoder3071.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3071.setPipeline(render_pipeline302);
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const texture_view3015 = texture301.createView({ label: "texture_view3015" });
    buffer500.destroy()
    const command_encoder308 = device30.createCommandEncoder({ label: "command_encoder308" });
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view5030 = texture503.createView({ label: "texture_view5030" });
    command_encoder308.copyBufferToBuffer(
        buffer302,
        0,
        buffer3011,
        0,
        400
    );
    
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder3050.setStencilReference(1);
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture_view5023 = texture502.createView({ label: "texture_view5023" });
    render_pass_encoder3040.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const render_pass_encoder5021 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5022,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder5021.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const texture_view5024 = texture502.createView({ label: "texture_view5024" });
    render_pass_encoder5020.setPipeline(render_pipeline506);
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5024,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_bundle_encoder503 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder503",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3021.insertDebugMarker("marker");
    render_bundle_encoder301.popDebugGroup();
    const render_pass_encoder3080 = command_encoder308.beginRenderPass({
        label: "render_pass_encoder3080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3012,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3080.setStencilReference(1);
    const command_buffer200 = command_encoder200.finish();
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
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
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

    render_pass_encoder3020.setBindGroup(0, bind_group303);
    render_pass_encoder5010.setStencilReference(1);
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    render_pass_encoder5021.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    
    render_pass_encoder5020.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline506.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer507,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer508,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group500);
    
    render_pass_encoder3080.setStencilReference(1);
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
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3050.setBindGroup(0, bind_group304);
    render_pass_encoder3050.setVertexBuffer(0, buffer300);
    
    render_pass_encoder3040.insertDebugMarker("marker");
    const render_pass_encoder3051 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3003,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3080.setPipeline(render_pipeline304);
    render_pass_encoder3050.insertDebugMarker("marker");
    render_pass_encoder3080.pushDebugGroup("group_marker");
    render_pass_encoder5021.setPipeline(render_pipeline508);
    render_pass_encoder3050.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3080.popDebugGroup();
    render_bundle_encoder301.pushDebugGroup("group_marker");
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
    render_pass_encoder3021.end();
    render_pass_encoder3080.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    {
        await buffer3011.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer3011.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer3011.unmap();
        console.log(new Float32Array(data));
    }
    
    render_pass_encoder5021.setStencilReference(1);
    render_pass_encoder5030.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    const render_pipeline509 = device50.createRenderPipeline({
        label: "render_pipeline509",
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
    render_bundle_encoder702.popDebugGroup();
    render_bundle_encoder303.insertDebugMarker("marker");
    render_pass_encoder5030.executeBundles([])
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder3030.setStencilReference(1);
    render_bundle_encoder301.popDebugGroup();
    const texture704 = device70.createTexture({
        label: "texture704",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3020.setVertexBuffer(0, buffer3014);
    render_bundle_encoder503.pushDebugGroup("group_marker");
    render_pass_encoder5020.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5030.setPipeline(render_pipeline501);
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    const texture_view3007 = texture300.createView({ label: "texture_view3007" });
    render_pass_encoder3020.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder3050.setStencilReference(1);
    render_bundle_encoder500.insertDebugMarker("marker");
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder5021.setStencilReference(1);
    const texture_view5025 = texture502.createView({ label: "texture_view5025" });
    render_pass_encoder3051.setPipeline(render_pipeline305);
    render_pass_encoder3050.drawIndirect(buffer306, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3012, "uint16");
    device50.queue.submit([command_buffer500, ]);
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
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3071.setBindGroup(0, bind_group305);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3050.popDebugGroup();
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
        layout: render_pipeline305.getBindGroupLayout(0),
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

    render_pass_encoder3051.setBindGroup(0, bind_group306);
    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline504.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer509,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5010,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group501);
    device30.queue.submit([command_buffer300, command_buffer306, ]);
    render_pass_encoder3020.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3020.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3050.end();
    render_pass_encoder3071.setVertexBuffer(0, buffer3017);
    render_pass_encoder3030.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3071.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder3071.drawIndirect(buffer304, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3051.setVertexBuffer(0, buffer303);
    render_pass_encoder3030.drawIndexedIndirect(buffer3017, 0);
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3071.drawIndirect(buffer3018, 0);
    render_pass_encoder3051.draw(3);
    render_pass_encoder3030.drawIndirect(buffer3010, 0);
    render_pass_encoder3071.popDebugGroup();
    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline508.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5012,
                },
            },
        ],
    });

    render_pass_encoder5021.setBindGroup(0, bind_group502);
    render_pass_encoder5010.setVertexBuffer(0, buffer5010);
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
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3041.setBindGroup(0, bind_group307);
    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5014,
                },
            },
        ],
    });

    render_pass_encoder5030.setBindGroup(0, bind_group503);
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
    
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
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

    render_pass_encoder3080.setBindGroup(0, bind_group308);
    render_pass_encoder3041.setVertexBuffer(0, buffer3018);
    render_pass_encoder3041.drawIndirect(buffer304, 0);
    const command_buffer503 = command_encoder503.finish();
    render_pass_encoder3030.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder5010.drawIndirect(buffer504, 0);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder3080.setVertexBuffer(0, buffer300);
    render_pass_encoder5020.setVertexBuffer(0, buffer501);
    render_pass_encoder5021.setVertexBuffer(0, buffer504);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder5021.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder3080.drawIndirect(buffer3010, 0);
    render_pass_encoder5021.drawIndirect(buffer508, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3050.drawIndirect(buffer3024, 0);
    render_pass_encoder5020.setIndexBuffer(buffer508, "uint16");
    device30.queue.submit([command_buffer301, command_buffer303, ]);
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
    
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: render_pipeline304.getBindGroupLayout(0),
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

    render_pass_encoder3070.setBindGroup(0, bind_group309);
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3051.end();
    render_pass_encoder3080.end();
    render_pass_encoder3070.setVertexBuffer(0, buffer3015);
    render_pass_encoder5020.setIndexBuffer(buffer5011, "uint16");
    render_pass_encoder3080.drawIndirect(buffer303, 0);
    render_pass_encoder3070.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3070.setIndexBuffer(buffer3016, "uint16");
    render_pass_encoder5020.draw(3);
    render_pass_encoder3070.draw(3);
    render_pass_encoder3041.end();
    render_pass_encoder3080.drawIndirect(buffer300, 0);
    render_pass_encoder5030.setVertexBuffer(0, buffer5010);
    render_pass_encoder5010.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder3080.drawIndirect(buffer3024, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3080.drawIndirect(buffer3015, 0);
    render_pass_encoder5020.end();
    const command_buffer308 = command_encoder308.finish();
    const command_buffer305 = command_encoder305.finish();
    render_pass_encoder5030.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder3051.popDebugGroup();
    render_pass_encoder5020.drawIndexed(3);
    render_pass_encoder3051.drawIndirect(buffer3020, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer501, 0);
    render_pass_encoder3050.popDebugGroup();
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder3071.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder5021.drawIndexed(3);
    device70.queue.submit([]);
    render_pass_encoder3040.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder5020.drawIndirect(buffer5013, 0);
    render_pass_encoder3080.draw(3);
    render_pass_encoder3030.drawIndirect(buffer301, 0);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5030.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5010.drawIndexed(3);
    render_pass_encoder5010.end();
    render_pass_encoder5030.draw(3);
    render_pass_encoder3051.drawIndirect(buffer304, 0);
    render_pass_encoder3070.end();
    render_pass_encoder3080.drawIndirect(buffer3013, 0);
    const command_buffer304 = command_encoder304.finish();
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder5030.setIndexBuffer(buffer5012, "uint16");
    render_pass_encoder3071.drawIndirect(buffer308, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3014, "uint16");
    device30.queue.submit([command_buffer303, command_buffer304, command_buffer308, ]);
    const command_buffer501 = command_encoder501.finish();
    const command_buffer307 = command_encoder307.finish();
    render_pass_encoder3051.popDebugGroup();
    render_pass_encoder3050.draw(3);
    render_pass_encoder3071.setIndexBuffer(buffer301, "uint16");
    device30.queue.submit([command_buffer304, command_buffer307, ]);
    render_pass_encoder5010.drawIndexed(3);
    render_pass_encoder5030.end();
    render_pass_encoder5020.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder3050.drawIndirect(buffer303, 0);
    render_pass_encoder3041.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder3080.setIndexBuffer(buffer3016, "uint16");
    render_pass_encoder5021.end();
    render_pass_encoder5010.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder5010.setIndexBuffer(buffer507, "uint16");
    render_pass_encoder3050.drawIndirect(buffer301, 0);
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder3050.drawIndirect(buffer3011, 0);
    device70.queue.submit([]);
    const command_buffer502 = command_encoder502.finish();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder3021.setIndexBuffer(buffer303, "uint16");
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder3040.drawIndirect(buffer3014, 0);
    render_pass_encoder3071.drawIndirect(buffer3020, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder5030.draw(3);
    render_pass_encoder3071.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3051.setIndexBuffer(buffer3019, "uint16");
    const command_buffer302 = command_encoder302.finish();
    device50.queue.submit([command_buffer500, command_buffer503, ]);
    render_pass_encoder3070.drawIndirect(buffer303, 0);
    render_pass_encoder3080.drawIndexed(3);
    render_pass_encoder3021.end();
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3020.drawIndirect(buffer3016, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder3040.setIndexBuffer(buffer3025, "uint16");
    render_pass_encoder3030.drawIndirect(buffer303, 0);
    render_pass_encoder3041.draw(3);
    render_pass_encoder3030.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3071.drawIndirect(buffer3018, 0);
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder3021.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3025, 0);
    render_pass_encoder3070.drawIndexedIndirect(buffer3017, 0);
    render_pass_encoder5020.setIndexBuffer(buffer505, "uint16");
    render_pass_encoder3071.drawIndirect(buffer302, 0);
    render_pass_encoder3070.end();
    render_pass_encoder3020.end();
    render_pass_encoder3020.end();
    render_pass_encoder5030.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder3021.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer3024, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder3080.drawIndirect(buffer303, 0);
    render_pass_encoder5010.end();
    device30.queue.submit([command_buffer300, command_buffer305, ]);
    render_pass_encoder3080.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder5020.setIndexBuffer(buffer505, "uint16");
    render_pass_encoder3040.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3030.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3040.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder5030.drawIndirect(buffer503, 0);
    device20.queue.submit([]);
    render_pass_encoder3080.setIndexBuffer(buffer3016, "uint16");
    render_pass_encoder3020.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3040.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3051.end();
    render_pass_encoder3030.setIndexBuffer(buffer3018, "uint16");
    render_pass_encoder3030.setIndexBuffer(buffer3016, "uint16");
    render_pass_encoder5030.drawIndexedIndirect(buffer5010, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3051.draw(3);
    render_pass_encoder3040.popDebugGroup();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3021.setIndexBuffer(buffer3012, "uint16");
    device50.queue.submit([command_buffer502, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder5020.draw(3);
    render_pass_encoder3020.drawIndirect(buffer3010, 0);
    render_pass_encoder3030.draw(3);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3040.drawIndirect(buffer305, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder3050.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder5010.drawIndexed(3);
    render_pass_encoder3070.popDebugGroup();
    render_pass_encoder5010.end();
    render_pass_encoder3041.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder3051.drawIndirect(buffer300, 0);
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5010.draw(3);
    render_pass_encoder3051.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder5020.end();
    render_pass_encoder5020.end();
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder3021.drawIndirect(buffer3025, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder5010.drawIndexedIndirect(buffer5014, 0);
    render_pass_encoder5021.drawIndexed(3);
    render_pass_encoder5010.drawIndexedIndirect(buffer505, 0);
    render_pass_encoder5021.setIndexBuffer(buffer503, "uint16");
    device30.queue.submit([command_buffer306, ]);
    render_pass_encoder3070.end();
    device70.queue.submit([]);
    render_pass_encoder3051.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3080.draw(3);
    render_pass_encoder5010.setIndexBuffer(buffer5013, "uint16");
    render_pass_encoder3071.drawIndexed(3);
    render_pass_encoder3040.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder3020.popDebugGroup();
    device30.queue.submit([command_buffer308, ]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3071.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3040.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3070.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder5020.drawIndexedIndirect(buffer508, 0);
    render_pass_encoder3070.drawIndirect(buffer305, 0);
    render_pass_encoder3080.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3080.drawIndirect(buffer3011, 0);
    render_pass_encoder3041.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3020.drawIndirect(buffer308, 0);
    render_pass_encoder3080.drawIndirect(buffer303, 0);
    render_pass_encoder3070.drawIndirect(buffer3012, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer505, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3030.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder5020.drawIndexedIndirect(buffer5013, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3080.drawIndirect(buffer3015, 0);
    render_pass_encoder3071.draw(3);
    render_pass_encoder5020.end();
    render_pass_encoder3050.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder3071.end();
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder3020.drawIndexedIndirect(buffer3019, 0);
    render_pass_encoder5010.draw(3);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder3020.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder3070.draw(3);
    device50.queue.submit([]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder3070.drawIndirect(buffer3026, 0);
    render_pass_encoder5020.drawIndirect(buffer506, 0);
    render_pass_encoder3020.drawIndirect(buffer303, 0);
    render_pass_encoder3040.drawIndirect(buffer302, 0);
    render_pass_encoder3080.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3071.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder5010.end();
    render_pass_encoder3040.end();
    render_pass_encoder3030.drawIndirect(buffer3015, 0);
    render_pass_encoder3070.drawIndirect(buffer3018, 0);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    device30.queue.submit([command_buffer307, ]);
    render_pass_encoder5010.drawIndexed(3);
    render_pass_encoder5021.end();
    render_pass_encoder5010.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder3071.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder5030.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder3071.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder3041.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3080.drawIndexedIndirect(buffer301, 0);
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    render_pass_encoder3020.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3080.drawIndirect(buffer3012, 0);
    render_pass_encoder5020.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder3071.draw(3);
    render_pass_encoder3080.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder5010.setIndexBuffer(buffer509, "uint16");
    device30.queue.submit([command_buffer303, command_buffer308, ]);
    device30.queue.submit([command_buffer306, ]);
    device30.queue.submit([]);
    render_pass_encoder3070.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder3080.drawIndirect(buffer305, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3070.popDebugGroup();
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder3021.end();
    render_pass_encoder3051.drawIndirect(buffer3016, 0);
    render_pass_encoder5020.drawIndexed(3);
    render_pass_encoder3051.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder3080.drawIndexed(3);
    device30.queue.submit([command_buffer307, ]);
    render_pass_encoder3070.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3040.drawIndirect(buffer301, 0);
    render_pass_encoder3071.popDebugGroup();
    render_pass_encoder5030.drawIndexedIndirect(buffer5010, 0);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder3040.setIndexBuffer(buffer3023, "uint16");
    render_pass_encoder3041.end();
    render_pass_encoder3021.setIndexBuffer(buffer3021, "uint16");
    render_pass_encoder3041.drawIndexedIndirect(buffer3022, 0);
    render_pass_encoder3071.draw(3);
    render_pass_encoder3020.draw(3);
    render_pass_encoder3041.popDebugGroup();
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder3071.end();
    render_pass_encoder3080.setIndexBuffer(buffer3026, "uint16");
    render_pass_encoder3070.drawIndirect(buffer3023, 0);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder5010.end();
    render_pass_encoder3040.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3071.setIndexBuffer(buffer3020, "uint16");
    render_pass_encoder3030.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer303, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder5020.end();
    render_pass_encoder5030.drawIndexedIndirect(buffer509, 0);
    render_pass_encoder3041.end();
    render_pass_encoder3071.popDebugGroup();
    render_pass_encoder5021.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder3080.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder3050.drawIndexedIndirect(buffer3024, 0);
    render_pass_encoder3080.drawIndexed(3);
    render_pass_encoder3040.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3051.end();
    render_pass_encoder3080.drawIndirect(buffer306, 0);
    render_pass_encoder3051.drawIndexedIndirect(buffer3019, 0);
    render_pass_encoder3051.setIndexBuffer(buffer3019, "uint16");
    device30.queue.submit([command_buffer308, ]);
    render_pass_encoder3020.drawIndirect(buffer303, 0);
    render_pass_encoder3030.draw(3);
    render_pass_encoder3040.drawIndirect(buffer3011, 0);
    render_pass_encoder5021.draw(3);
    render_pass_encoder5030.drawIndexed(3);
    render_pass_encoder3050.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder3040.drawIndexed(3);
    render_pass_encoder3020.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3040.setIndexBuffer(buffer307, "uint16");
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3080.drawIndirect(buffer3011, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder3071.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3050.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder5020.drawIndirect(buffer5014, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3051.popDebugGroup();
    render_pass_encoder3021.draw(3);
    render_pass_encoder3040.end();
    render_pass_encoder3050.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3040.end();
    render_pass_encoder5010.drawIndexedIndirect(buffer5013, 0);
    render_pass_encoder3051.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3080.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3080.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3013, 0);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3041.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder3041.setIndexBuffer(buffer3016, "uint16");
    render_pass_encoder3080.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3071.end();
    render_pass_encoder3080.drawIndirect(buffer3016, 0);
    render_pass_encoder3041.drawIndexed(3);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3051.end();
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3041.drawIndexed(3);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder5010.drawIndexedIndirect(buffer509, 0);
    render_pass_encoder5021.end();
    render_pass_encoder3071.popDebugGroup();
    render_pass_encoder3030.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3070.drawIndexed(3);
    render_pass_encoder3020.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder5021.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3080.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3040.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3030.drawIndirect(buffer3010, 0);
    render_pass_encoder3050.end();
    render_pass_encoder3050.end();
    render_pass_encoder3021.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3020.drawIndirect(buffer3020, 0);
    render_pass_encoder3020.drawIndirect(buffer303, 0);
    render_pass_encoder5010.end();
    render_pass_encoder3041.end();
    render_pass_encoder3050.drawIndirect(buffer3015, 0);
    render_pass_encoder3051.drawIndirect(buffer303, 0);
    render_pass_encoder3050.drawIndirect(buffer303, 0);
    render_pass_encoder3070.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3080.drawIndirect(buffer3025, 0);
    render_pass_encoder5021.end();
    render_pass_encoder3070.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder3051.end();
    render_pass_encoder5010.setIndexBuffer(buffer505, "uint16");
    render_pass_encoder5021.draw(3);
    render_pass_encoder3071.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder3021.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3051.end();
    render_pass_encoder3080.drawIndexedIndirect(buffer3017, 0);
    render_pass_encoder5021.drawIndirect(buffer500, 0);
    render_pass_encoder3040.setIndexBuffer(buffer3022, "uint16");
    render_pass_encoder5021.end();
    device30.queue.submit([command_buffer303, ]);
    device30.queue.submit([]);
    render_pass_encoder3070.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder3070.end();
    render_pass_encoder3080.drawIndirect(buffer309, 0);
    render_pass_encoder3041.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3051.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3080.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3070.drawIndirect(buffer301, 0);
    render_pass_encoder3070.draw(3);
    render_pass_encoder5021.drawIndirect(buffer505, 0);
    render_pass_encoder3070.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3080.end();
    render_pass_encoder3070.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder5020.drawIndexed(3);
    render_pass_encoder5021.drawIndirect(buffer5013, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3040.drawIndexed(3);
    render_pass_encoder3030.end();
    render_pass_encoder3021.drawIndexed(3);
    device30.queue.submit([command_buffer303, command_buffer307, ]);
    render_pass_encoder3021.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3021.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder5010.end();
    render_pass_encoder3070.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder5030.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder3070.drawIndirect(buffer3025, 0);
    render_pass_encoder3020.setIndexBuffer(buffer301, "uint16");
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder3041.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder3041.draw(3);
    render_pass_encoder3050.draw(3);
    render_pass_encoder3070.drawIndexed(3);
    render_pass_encoder5020.end();
    render_pass_encoder3020.setIndexBuffer(buffer3024, "uint16");
    render_pass_encoder5030.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder3071.popDebugGroup();
    render_pass_encoder3070.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3051.draw(3);
    render_pass_encoder5030.drawIndirect(buffer505, 0);
    render_pass_encoder3070.setIndexBuffer(buffer3020, "uint16");
    render_pass_encoder3030.popDebugGroup();
}