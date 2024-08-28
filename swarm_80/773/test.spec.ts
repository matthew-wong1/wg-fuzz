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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    const array0 = new Float32Array([1.0, 0.5, -0.75, 1.0, -0.5, 1.0, 0.5, 0.0, -0.5, 0.25, 1.0, -0.25, -0.5, 0.5, 1.0, 0.25, 0.0, -0.5, -1.0, -0.25, -0.75, 0.25, -1.0, -0.25, 0.5, 1.0, 0.5, -1.0, 0.25, -0.5, 1.0, 0.25, 1.0, -0.75, -0.25, 0.0, -0.25, -0.25, 0.25, -0.75, -1.0, 0.5, -0.75, -0.25, -0.75, 1.0, -0.75, -1.0, 0.0, -0.25, 0.0, 1.0, 0.5, 0.0, -0.5, -1.0, 0.25, 0.75, 0.0, -0.25, 0.75, -0.75, -1.0, 0.75, 0.5, -0.75, 0.25, 1.0, 0.0, -0.25, 0.0, 0.5, -0.75, -1.0, 0.75, -0.25, 0.75, -0.5, -0.75, 0.0, -0.5, 0.75, -0.75, -0.25, -0.25, -0.5, 1.0, -0.5, 0.25, 0.75, 0.5, -0.75, 0.75, 1.0, 0.0, -0.25, -0.75, -1.0, 0.0, 0.75, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.destroy();
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.0, -0.75, 0.0, 0.5, 0.75, 1.0, -0.75, 0.75, -0.25, -1.0, -0.75, 0.5, 0.75, -0.25, 1.0, 1.0, 0.0, 0.25, 0.0, 0.5, 0.75, 0.5, -0.25, 0.25, 0.5, 0.5, -0.5, -0.75, 0.75, -0.5, 0.5, 0.0, 0.5, -1.0, 0.75, -0.75, -1.0, 0.5, 1.0, 0.75, 1.0, 0.25, 0.25, -1.0, 1.0, -0.5, 0.5, 1.0, -1.0, 0.0, -0.75, -0.5, 0.25, 1.0, -1.0, 0.5, 0.0, -0.5, -0.5, -0.75, -0.75, -0.25, -0.25, 0.5, -0.75, 1.0, -0.25, 0.5, 0.75, 0.25, -1.0, -0.5, 1.0, -0.25, -0.75, 0.75, -0.75, 1.0, -1.0, -0.75, 0.0, -0.25, 0.5, 0.5, -1.0, -0.5, -1.0, 0.0, -0.75, -0.5, 0.25, -0.25, 0.75, -1.0, 0.5, -1.0, 0.5, 0.25, -1.0, -1.0, ]);
    
    
    
    
    const array2 = new Float32Array([1.0, 0.25, -1.0, -0.25, 0.5, 0.75, 0.25, 0.75, -1.0, -0.25, -0.5, -0.25, -0.75, 1.0, -0.5, -1.0, 0.75, -0.5, 0.25, 1.0, 0.0, 0.25, 0.75, -0.25, -0.25, 0.0, -0.75, -1.0, -0.5, 0.75, -0.75, 0.5, 0.5, 0.0, -0.75, 0.25, -1.0, -0.25, 0.25, 0.0, -1.0, 0.5, -0.75, -1.0, -0.75, 0.25, -0.5, 0.5, -1.0, -0.5, 0.25, 0.5, -1.0, -1.0, 0.0, 1.0, -0.25, -1.0, -0.5, -0.25, -1.0, 0.0, -1.0, -0.75, 0.5, -1.0, 0.25, 0.5, 1.0, -0.25, -0.5, 0.5, 0.25, 0.25, -0.25, 1.0, -0.75, -0.25, -0.25, 1.0, 0.5, 0.5, 0.0, 0.25, -0.25, 0.0, -1.0, 0.5, 0.0, 0.25, 0.25, 0.0, -0.25, 0.0, -0.75, 0.5, 0.75, 0.75, -0.5, 0.0, ]);
    
    
    
    
    
    
    
    
    const array3 = new Float32Array([0.75, -0.5, 0.5, 1.0, 1.0, -0.75, -0.75, -1.0, 0.25, -0.25, 0.75, -0.25, 1.0, -0.75, 0.75, 1.0, 0.5, 0.5, -0.5, -0.75, -0.75, 1.0, -0.5, 1.0, -1.0, 0.0, 0.5, 0.25, 0.25, -0.25, -0.75, 0.75, -0.75, 0.0, 1.0, 1.0, -0.5, 0.25, 0.0, -0.25, -1.0, -1.0, 0.25, 0.5, 0.5, 0.75, -0.5, 0.75, 0.75, 0.75, 0.75, 0.5, 0.0, 0.75, 1.0, 1.0, 1.0, 0.75, 0.25, 0.75, 1.0, 1.0, 0.75, 0.75, 1.0, 0.5, 0.5, 0.75, 0.75, 0.5, 1.0, -0.75, 0.75, -0.75, 1.0, -0.25, -0.75, -1.0, -1.0, -0.75, 0.75, 0.75, -0.5, -0.75, -0.75, 1.0, -0.5, -0.75, 0.5, 1.0, 0.0, -0.25, 0.75, -0.5, -0.25, -0.5, -0.25, -0.25, 0.5, -0.75, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device40.destroy();
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const array4 = new Float32Array([-1.0, 0.25, 1.0, -0.5, 0.0, 0.0, 1.0, -1.0, 0.0, 0.75, -0.75, 0.25, 1.0, 0.0, -0.75, -0.25, 1.0, -0.25, -0.25, -0.75, -0.5, 0.75, -0.75, -0.75, 0.0, 0.5, 0.25, 0.0, 0.5, -0.25, 1.0, -0.25, -0.75, 0.25, -0.75, -0.75, -1.0, -0.25, -0.5, 0.5, -0.25, 0.25, 0.25, -1.0, -0.25, 0.75, 0.0, 0.5, -0.5, -1.0, 0.5, 0.0, -0.25, 0.25, -0.25, -1.0, 1.0, -0.75, -1.0, 1.0, -0.5, -1.0, 0.5, 0.25, -0.25, 0.5, 0.75, 0.5, 0.75, 0.25, 1.0, -0.75, 1.0, 1.0, 1.0, 0.75, -1.0, -1.0, -0.25, 0.25, -0.75, -0.25, 0.25, 0.5, 0.25, 0.0, -0.75, 0.75, -0.25, -0.75, -0.75, -0.5, -0.25, -1.0, -0.5, -0.25, 0.0, 0.25, 1.0, 0.5, ]);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const array5 = new Float32Array([-0.25, 0.5, 1.0, 1.0, -0.5, 0.0, -0.25, 0.5, 0.0, -0.5, -0.5, -0.75, -1.0, 0.75, 0.25, 1.0, 0.0, -1.0, 0.5, 0.25, -0.75, 1.0, -0.5, 1.0, -0.75, 0.5, 0.75, -0.5, -0.25, 0.75, 0.0, -1.0, 1.0, -1.0, 0.25, -0.25, -0.25, -1.0, 0.0, 1.0, -1.0, 0.75, -1.0, 0.25, 0.25, 0.5, -0.25, 0.0, -0.5, -0.25, -1.0, 1.0, -0.5, 0.75, 1.0, -1.0, 0.75, -1.0, 0.0, -0.75, 1.0, 1.0, 0.75, 0.75, 0.5, -0.5, 0.75, -0.5, -0.25, 0.0, 0.75, -0.5, 0.0, 1.0, -0.5, -0.75, -0.5, -1.0, 0.75, 1.0, 1.0, -0.75, 0.5, -0.75, -0.75, -0.75, -1.0, -0.75, 1.0, 0.0, 0.25, 0.25, -1.0, 1.0, 0.25, -0.5, -0.75, -0.5, -0.75, 0.0, ]);
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    texture300.destroy();
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    texture301.destroy();
    buffer300.destroy()
    
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    
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
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    const array6 = new Float32Array([0.75, -0.5, -1.0, -0.25, -0.5, -0.5, -1.0, -1.0, -1.0, -0.25, 0.75, 0.25, 0.75, 0.0, 0.5, -0.5, 0.0, 1.0, 0.0, 0.5, -0.75, -0.5, 0.5, -0.75, 0.0, 0.5, 0.75, 1.0, 0.75, -0.25, 1.0, 0.0, 0.25, 0.25, -0.5, 0.25, -0.75, 1.0, 0.25, 1.0, -0.25, 0.5, -0.75, 0.5, 0.5, -0.5, 0.0, -0.25, 1.0, -1.0, 0.75, -0.25, 0.75, -1.0, 0.0, 0.5, 0.0, -0.25, 1.0, 1.0, -0.5, 0.75, -0.25, -0.25, 0.5, 0.5, 0.0, -0.25, -0.5, 0.25, -0.5, 0.75, 1.0, 1.0, -0.25, 0.25, -0.5, -0.5, 0.5, 1.0, 0.25, -0.75, 0.25, 0.25, 0.0, 0.75, 0.5, -1.0, 0.25, 0.5, -0.25, 0.0, 1.0, 0.0, 1.0, 0.25, 1.0, 0.75, -0.5, 0.5, ]);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const command_buffer301 = command_encoder301.finish();
    
    
    
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const sampler308 = device30.createSampler( { label: "sampler308" } );
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
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
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.submit([command_buffer301, ]);
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    render_bundle_encoder302.setPipeline(render_pipeline301);
    render_bundle_encoder300.setPipeline(render_pipeline301);
    
    device30.queue.writeTexture({ texture: texture303 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.destroy();
    device30.queue.writeTexture({ texture: texture303 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture303.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const sampler309 = device30.createSampler( { label: "sampler309" } );
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    
    render_pass_encoder3020.setPipeline(render_pipeline300);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    
    
    render_pass_encoder3020.insertDebugMarker("marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_pass_encoder3020.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    
    render_pass_encoder3020.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
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
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_pass_encoder3030.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    
    render_pass_encoder3030.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_bundle_encoder302.setBindGroup(0, bind_group300);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    render_bundle_encoder500.setPipeline(render_pipeline501);
    buffer302.destroy()
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_pass_encoder3030.setPipeline(render_pipeline300);
    const texture_view3023 = texture302.createView({ label: "texture_view3023" });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    render_bundle_encoder301.setPipeline(render_pipeline301);
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const array7 = new Float32Array([-0.25, -0.75, -0.5, -0.5, -0.75, -1.0, -0.5, 0.75, -0.25, 0.75, 0.25, -0.5, 0.0, -0.25, -0.5, -0.75, -1.0, 0.0, -0.5, -1.0, -0.75, 0.5, 0.25, 0.25, 0.5, 0.75, 0.0, -0.5, 0.25, 1.0, 0.0, -0.5, -0.75, 1.0, -0.5, -1.0, -1.0, 0.75, -0.5, 0.5, -0.25, -0.75, -0.75, 0.5, 0.25, 1.0, 0.0, -0.75, -1.0, 0.25, 0.75, 0.75, -0.75, -0.5, 1.0, -0.25, 1.0, 1.0, 0.0, 1.0, 0.75, -0.75, 0.0, 0.5, 0.0, -1.0, 0.0, 1.0, 1.0, -1.0, 0.25, -0.25, 0.5, -0.75, -1.0, 0.0, -0.75, -0.25, -0.25, 0.0, 1.0, 1.0, -0.25, 1.0, 0.25, 0.75, 0.5, 1.0, -0.25, 0.25, 0.25, -0.5, -0.75, 0.75, 0.0, -0.25, 0.5, -1.0, 0.25, -0.25, ]);
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    texture501.destroy();
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    buffer500.destroy()
    
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device50.destroy();
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

    render_pass_encoder3020.setBindGroup(0, bind_group302);
    buffer303.destroy()
    texture302.destroy();
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    
    render_pass_encoder3030.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    command_encoder304.insertDebugMarker("mymarker");
    render_pass_encoder3020.insertDebugMarker("marker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    buffer600.destroy()
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    command_encoder305.pushDebugGroup("mygroupmarker")
    
    command_encoder305.popDebugGroup()
    command_encoder305.pushDebugGroup("mygroupmarker")
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_bundle_encoder301.setBindGroup(0, bind_group303);
    buffer306.destroy()
    
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder3020.setStencilReference(1);
    
    buffer308.destroy()
    
    
    
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    command_encoder600.insertDebugMarker("mymarker");
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
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
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3030.setBindGroup(0, bind_group304);
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    buffer301.destroy()
    render_pass_encoder3030.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    render_pass_encoder3050.insertDebugMarker("marker");
    
    render_pass_encoder3020.popDebugGroup();
    
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    buffer304.destroy()
    
    
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3020.pushDebugGroup("group_marker");
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    const render_pass_encoder3060 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3030.insertDebugMarker("marker");
    
    render_pass_encoder3060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3050.executeBundles([])
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3050.executeBundles([])
    
    
    const sampler3010 = device30.createSampler( { label: "sampler3010" } );
    render_bundle_encoder301.insertDebugMarker("marker");
    const array8 = new Float32Array([1.0, 0.5, -1.0, -0.25, -0.75, 0.5, -0.25, -1.0, 1.0, 0.0, -0.75, 1.0, -1.0, 1.0, -1.0, -0.75, 1.0, -0.25, -1.0, 0.5, 1.0, 0.5, 1.0, 0.5, 1.0, 0.25, -0.75, -0.5, 0.75, -0.75, -0.25, -0.25, -0.5, 0.0, 0.75, 1.0, 1.0, -0.75, 0.25, -0.25, -0.5, 1.0, 1.0, 0.25, -0.5, 0.0, 0.25, 0.75, 0.75, -0.5, -1.0, 0.5, 0.5, 0.25, 0.0, -0.75, 0.5, -0.5, 1.0, -0.75, 0.0, -0.75, 0.75, 0.75, 0.0, 0.0, 0.0, -0.5, 1.0, -0.25, 0.25, 0.0, -0.5, 0.25, -1.0, 0.75, -0.25, 0.0, 1.0, 0.5, 1.0, -0.25, 0.0, -0.5, 0.75, 1.0, -1.0, -0.25, 0.75, 0.5, 0.75, -0.75, 0.5, 1.0, 0.0, -0.5, -0.5, -1.0, 1.0, 0.25, ]);
    
    buffer3010.destroy()
    
    render_pass_encoder3060.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    
    render_pass_encoder3060.setStencilReference(1);
    
    render_pass_encoder3030.pushDebugGroup("group_marker");
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder3020.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder3060.insertDebugMarker("marker");
    
    render_pass_encoder3030.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder3050.setViewport(0, 0, texture303.width / 2, texture303.height / 2, 0, 1);
    render_pass_encoder3030.setStencilReference(1);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view3041 = texture304.createView({ label: "texture_view3041" });
    
    
    render_pass_encoder3020.insertDebugMarker("marker");
    render_pass_encoder3030.setStencilReference(1);
    
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    texture600.destroy();
    
    render_pass_encoder3060.setPipeline(render_pipeline301);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_pass_encoder3050.pushDebugGroup("group_marker");
    
    render_pass_encoder3060.setStencilReference(1);
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    
    render_pass_encoder3020.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    compute_pass_encoder6020.insertDebugMarker("marker")
    texture304.destroy();
    compute_pass_encoder3040.insertDebugMarker("marker")
    buffer3011.destroy()
    command_encoder603.pushDebugGroup("mygroupmarker")
    buffer305.destroy()
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder3030.popDebugGroup();
    
    
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    render_pass_encoder3050.setPipeline(render_pipeline301);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const compute_pass_encoder6030 = command_encoder603.beginComputePass({ label: "compute_pass_encoder6030" });
    
    
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

    render_pass_encoder3050.setBindGroup(0, bind_group305);
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    render_pass_encoder3020.pushDebugGroup("group_marker");
    
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    
    
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler3011 = device30.createSampler( { label: "sampler3011" } );
    compute_pass_encoder6010.insertDebugMarker("marker")
    
    
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder6030.insertDebugMarker("marker")
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    
    buffer3012.destroy()
    render_bundle_encoder600.setPipeline(render_pipeline601);
    
    render_pass_encoder3020.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    compute_pass_encoder6000.insertDebugMarker("marker")
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3050.setStencilReference(1);
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    
    const texture_view3051 = texture305.createView({ label: "texture_view3051" });
    
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    compute_pass_encoder6030.insertDebugMarker("marker")
    
    render_pass_encoder3020.popDebugGroup();
    buffer3013.destroy()
    compute_pass_encoder6030.pushDebugGroup("group_marker")
    
    
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_pass_encoder3030.pushDebugGroup("group_marker");
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer307.destroy()
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    buffer601.destroy()
    render_pass_encoder3020.insertDebugMarker("marker");
    const texture307 = device30.createTexture({
        label: "texture307",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    device30.queue.writeTexture({ texture: texture306 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3020.setStencilReference(1);
    
    
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile(__dirname + '/shader_module606.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    render_pass_encoder3020.setStencilReference(1);
    device30.queue.writeTexture({ texture: texture306 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    compute_pass_encoder6030.insertDebugMarker("marker")
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    render_pass_encoder3060.pushDebugGroup("group_marker");
    const texture_view3052 = texture305.createView({ label: "texture_view3052" });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    render_pass_encoder3020.setStencilReference(1);
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture306 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3060 = texture306.createView({ label: "texture_view3060" });
    
    render_pass_encoder3030.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    const texture_view3061 = texture306.createView({ label: "texture_view3061" });
    device30.queue.writeTexture({ texture: texture306 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    
    texture305.destroy();
    
    render_pass_encoder3060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    render_pass_encoder3030.insertDebugMarker("marker");
    
    render_pass_encoder3060.setStencilReference(1);
    device30.queue.writeTexture({ texture: texture306 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder3070 = command_encoder307.beginRenderPass({
        label: "render_pass_encoder3070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3040,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder3030.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    device30.queue.writeTexture({ texture: texture306 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler3012 = device30.createSampler( { label: "sampler3012" } );
    render_pass_encoder3070.setPipeline(render_pipeline301);
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

    render_pass_encoder3060.setBindGroup(0, bind_group306);
    render_pass_encoder3060.popDebugGroup();
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3070.setBindGroup(0, bind_group307);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3050.popDebugGroup();
    const command_buffer604 = command_encoder604.finish();
    device60.queue.submit([command_buffer604, ]);
}