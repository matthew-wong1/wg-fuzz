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
    const array0 = new Float32Array([1.0, 1.0, -0.5, -0.5, 0.25, -1.0, -1.0, -0.25, 0.0, 0.5, 1.0, -0.25, 0.5, -0.5, 0.5, 0.75, -1.0, -1.0, 1.0, -0.25, 0.5, 0.0, 0.25, -1.0, -0.5, 0.5, 0.25, -1.0, 0.5, 0.75, -0.75, -0.25, 0.5, -0.5, 1.0, -0.75, 0.75, -0.25, -0.25, 0.25, -0.5, -0.75, -0.5, 0.5, 0.75, 0.0, -0.25, 0.25, -0.25, 0.75, 0.5, 1.0, 0.5, 1.0, -0.5, -0.25, 0.5, -0.25, 0.25, 0.5, 0.75, -0.5, -0.5, 0.25, -1.0, 0.0, -1.0, 0.25, -0.75, -0.5, -0.25, 0.0, 0.5, 0.75, -0.5, -0.25, -0.25, -0.25, 1.0, 0.5, -0.75, 0.0, 0.25, -0.5, 0.5, -0.5, 0.5, -0.75, -0.5, -1.0, 0.5, 0.25, 1.0, -0.75, 0.5, -1.0, 0.25, 0.0, 0.75, -0.5, ]);
    const array1 = new Float32Array([0.75, -1.0, 0.0, 0.0, 1.0, 0.5, -1.0, 0.25, 1.0, 0.25, 0.25, -0.5, 0.25, 0.25, -1.0, -0.5, -1.0, 0.5, 0.75, -0.25, 0.75, 1.0, 0.5, -1.0, 0.0, -0.5, 0.5, 0.25, -0.5, -1.0, -0.75, -0.75, -0.25, -0.25, 0.75, 1.0, -0.75, 0.5, 0.0, 0.5, -0.25, -0.75, 0.75, 0.5, 0.25, -1.0, -0.5, 0.75, -0.75, 0.5, -0.5, 0.0, -0.75, -0.5, 0.5, -0.25, -0.5, 0.75, 0.5, 0.0, 0.25, -0.5, -0.75, -0.5, 0.5, 0.5, 0.5, 0.75, 0.25, 0.0, 0.0, -0.75, -1.0, 0.75, 1.0, 1.0, 0.5, 0.5, -0.5, 0.75, -0.25, 0.75, -1.0, -1.0, -0.25, 0.25, 0.75, -0.25, 0.75, -0.75, -1.0, 0.25, -1.0, 1.0, 1.0, 0.5, 0.0, 0.5, 0.25, 0.75, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.destroy();
    
    const array2 = new Float32Array([-0.5, -0.5, 0.25, 1.0, 0.25, -0.75, -1.0, 0.25, 0.75, 0.0, -0.5, 0.25, -0.75, 0.0, 0.25, 0.75, 0.75, 0.25, -1.0, 0.75, 0.5, 0.25, 0.0, -1.0, -0.75, 0.0, -0.25, -0.5, 1.0, 0.75, 0.25, 0.25, -0.75, 0.0, -1.0, 0.25, 0.25, 0.0, 0.25, -1.0, 1.0, -0.5, -1.0, 0.0, 0.25, 0.5, -1.0, -0.25, 0.0, 0.0, -1.0, -1.0, -0.75, 0.0, -1.0, -0.5, 0.75, -0.75, -0.25, 0.75, -1.0, 0.75, -0.25, -1.0, 0.0, -1.0, 0.25, 0.5, 0.5, 0.25, 0.75, 1.0, 1.0, 0.75, 1.0, 0.0, 0.25, 0.0, 0.75, 0.5, -1.0, -0.5, -0.5, -0.75, 0.0, -0.25, 1.0, 0.75, -0.5, -0.5, -0.75, 0.5, -0.25, 0.5, 0.75, 0.0, 0.25, 0.75, -1.0, 0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("internal");
    
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    query100.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.destroy();
    
    
    
    const array3 = new Float32Array([0.25, 0.75, 0.0, -0.5, 0.5, 1.0, 0.75, 0.0, -0.5, 1.0, -0.5, 0.25, -0.75, -0.25, 1.0, -0.5, 0.75, 0.0, 0.5, 0.75, -1.0, 0.0, 0.25, -0.5, -1.0, -0.5, -0.5, -0.75, -0.25, 0.5, 0.25, 1.0, -0.5, -1.0, 1.0, -1.0, 0.0, -1.0, 1.0, -0.5, -0.75, -0.75, 1.0, -0.5, 1.0, -0.25, 1.0, -0.25, 0.25, -0.25, 0.25, 1.0, 0.5, -1.0, 0.0, -0.25, -0.75, 0.25, -0.5, 0.75, 0.25, 0.5, 0.25, 1.0, 0.0, 0.5, 0.75, -0.25, -0.25, 0.5, -0.5, 0.75, 1.0, -0.75, 0.5, -0.5, 0.25, -0.5, -0.5, 1.0, 0.5, 0.5, 0.5, -0.5, -0.25, -0.25, -0.5, -1.0, -1.0, 1.0, 0.75, -1.0, 0.5, 0.5, 1.0, -0.25, 0.5, 0.25, 1.0, 0.75, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query201.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.pushErrorScope("validation");
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    render_bundle_encoder200.popDebugGroup();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const array4 = new Float32Array([-0.75, 0.5, -0.75, -1.0, 0.25, -0.25, -0.25, 0.5, -1.0, 0.0, -1.0, -0.5, 1.0, 0.0, 0.0, 0.25, -0.5, 0.0, -1.0, 0.0, 0.25, 0.0, -0.75, 0.75, 1.0, -1.0, -0.75, -0.5, 0.0, 0.0, -0.25, 0.75, -0.25, 0.0, -0.25, 0.75, 0.0, 0.0, 0.5, -0.25, 0.5, 0.5, 0.5, -1.0, 1.0, 0.5, 0.5, -0.5, -0.25, -0.25, 0.25, 1.0, 0.75, 0.0, -0.75, 1.0, -0.5, 0.0, -1.0, 0.25, 0.5, 0.5, -0.25, -1.0, -0.5, 1.0, 0.0, -0.25, -0.25, 1.0, 0.75, -0.5, 0.25, 0.25, 0.5, -1.0, 1.0, -0.75, 0.25, -0.5, 0.75, 0.5, 0.75, 0.75, 0.25, 0.25, -0.5, 0.75, -0.25, -0.75, 0.5, 0.75, 0.75, 0.5, -0.75, 0.75, -0.25, -0.25, -0.75, -0.75, ]);
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    query200.destroy()
    
    query201.destroy()
    device20.pushErrorScope("validation");
    device30.pushErrorScope("validation");
    query200.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("internal");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.pushErrorScope("out-of-memory");
    texture200.destroy();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder300.insertDebugMarker("mymarker");
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query202.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    
    command_encoder200.pushDebugGroup("mygroupmarker")
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
        occlusionQuerySet: query203
    });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query203
    });
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query202.destroy()
    
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    query206.destroy()
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture202.destroy();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.destroy();
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder300.popDebugGroup()
    
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2000.setStencilReference(1);
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
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
    compute_pass_encoder2010.popDebugGroup()
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8sint",
        dimension: "2d"
    });
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        occlusionQuerySet: undefined
    });
    buffer300.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture300.destroy();
    render_pass_encoder2000.executeBundles([])
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder2000.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2000.beginOcclusionQuery(0)
    
    render_pass_encoder3000.executeBundles([])
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
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
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    render_pass_encoder2000.endOcclusionQuery()
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
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
    render_pass_encoder2000.insertDebugMarker("marker");
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2020.executeBundles([])
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    query206.destroy()
    texture204.destroy();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
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
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const array5 = new Float32Array([0.25, 0.5, 0.5, 0.0, 0.75, -0.5, -1.0, 0.0, -0.75, 1.0, 0.0, -1.0, 0.75, 1.0, 0.0, 0.75, 0.5, -0.25, -1.0, 0.25, 0.75, 0.5, 0.75, 0.25, -0.5, 0.25, -0.75, -0.75, -0.5, -0.25, -0.25, 0.25, 1.0, 1.0, 1.0, -0.25, 0.0, -0.25, -0.75, 0.25, 0.0, -0.25, 1.0, 0.25, -0.25, 1.0, 0.5, -0.75, 0.5, -0.75, -0.25, -1.0, 0.0, 0.25, 0.75, -0.75, -0.25, 0.5, 0.5, 0.75, 1.0, -0.75, -1.0, -1.0, 0.5, -0.25, -0.5, -0.75, -0.75, 0.25, -0.75, -0.25, -0.75, -0.25, -0.75, 0.5, -0.25, -0.5, 0.5, 0.75, -0.75, -0.75, -0.25, -0.5, -0.25, -0.5, -0.5, 1.0, 0.5, 0.0, -1.0, -1.0, -0.25, -0.25, 0.25, -0.5, 1.0, -0.25, -0.25, 0.25, ]);
    query200.destroy()
    query201.destroy()
    render_pass_encoder2020.insertDebugMarker("marker");
    const query209 = device20.createQuerySet({
        label: "query209",
        type: "occlusion",
        count: 32,
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder300.popDebugGroup();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2020.beginOcclusionQuery(0)
    
    query200.destroy()
    
    query202.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3010.setPipeline(render_pipeline300);
    render_pass_encoder2000.beginOcclusionQuery(0)
    query207.destroy()
    render_bundle_encoder300.setPipeline(render_pipeline301);
    const texture_view3013 = texture301.createView({ label: "texture_view3013" });
    
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3010.setStencilReference(1);
    device30.pushErrorScope("out-of-memory");
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_pass_encoder3010.setStencilReference(1);
    
    const texture_view3014 = texture301.createView({ label: "texture_view3014" });
    
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    query200.destroy()
    texture301.destroy();
    query201.destroy()
    render_pass_encoder3000.setStencilReference(1);
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.endOcclusionQuery()
    device20.queue.writeTexture({ texture: texture205 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query205.destroy()
    const query2010 = device20.createQuerySet({
        label: "query2010",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.writeTexture({ texture: texture205 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture205 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2000.beginOcclusionQuery(0)
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    
    device20.queue.writeTexture({ texture: texture205 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query206.destroy()
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
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
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
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
    
    query209.destroy()
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    const query2011 = device20.createQuerySet({
        label: "query2011",
        type: "occlusion",
        count: 32,
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    query2010.destroy()
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    const array6 = new Float32Array([0.25, -1.0, 0.0, -0.75, 0.75, 0.25, -0.5, 0.75, 0.75, -0.5, 0.25, -1.0, -0.75, -0.75, -1.0, 1.0, -0.5, -0.25, -1.0, 0.75, -0.75, -1.0, 0.5, -1.0, 0.0, -1.0, -0.5, 0.0, 1.0, -0.5, -0.25, 0.0, 0.75, -0.75, 0.25, -1.0, 0.75, 0.75, -0.25, -0.75, -0.75, 0.0, -0.75, 0.0, 1.0, 0.75, -0.25, -1.0, 0.25, 0.25, 0.5, 0.5, -0.25, -1.0, 0.75, 0.75, 0.0, -0.75, -0.75, 0.75, -0.5, -0.5, 0.0, 0.25, 1.0, 1.0, -0.75, -0.75, 0.0, 0.75, -1.0, 0.0, -0.5, -0.25, 0.25, 0.5, 0.25, -0.5, 1.0, -0.25, 0.5, -1.0, -0.75, -0.25, 0.25, 0.75, 0.25, -0.5, -0.75, -0.5, 0.5, 0.0, 0.25, 1.0, 0.75, 0.75, 0.5, -0.75, 0.5, -1.0, ]);
    render_pass_encoder3000.setPipeline(render_pipeline302);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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

    render_pass_encoder3010.setBindGroup(0, bind_group301);
    query200.destroy()
    buffer302.destroy()
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    
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
        occlusionQuerySet: query300
    });
    texture203.destroy();
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder2020.setPipeline(render_pipeline200);
    buffer305.destroy()
    
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder3010.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture205 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture205 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_pass_encoder3010.setStencilReference(1);
    
    render_pass_encoder3020.setPipeline(render_pipeline300);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group200);
    buffer301.destroy()
    
    
    render_pass_encoder3010.popDebugGroup();
    query200.destroy()
    compute_pass_encoder2010.popDebugGroup()
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    device20.queue.writeTexture({ texture: texture205 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query2012 = device20.createQuerySet({
        label: "query2012",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    buffer200.destroy()
    render_bundle_encoder301.setPipeline(render_pipeline301);
    query200.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_pass_encoder2020.setStencilReference(1);
    device20.pushErrorScope("validation");
    buffer303.destroy()
    query202.destroy()
    render_bundle_encoder302.setPipeline(render_pipeline304);
    
    render_pass_encoder2000.setStencilReference(1);
    
    
    render_bundle_encoder302.popDebugGroup();
    device20.queue.writeTexture({ texture: texture205 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    texture201.destroy();
    device20.queue.writeTexture({ texture: texture205 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    render_pass_encoder3010.setStencilReference(1);
    texture303.destroy();
    
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    query207.destroy()
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
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group302);
    render_pass_encoder3000.setStencilReference(1);
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
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
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
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
        layout: render_pipeline304.getBindGroupLayout(0),
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

    render_bundle_encoder302.setBindGroup(0, bind_group303);
    render_pass_encoder3020.insertDebugMarker("marker");
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder3000.insertDebugMarker("marker");
    
    
    
    
    texture206.destroy();
    
    
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device20.queue.writeTexture({ texture: texture205 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    buffer308.destroy()
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query2011
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    device20.queue.writeTexture({ texture: texture205 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture205 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    buffer203.destroy()
    render_bundle_encoder200.setPipeline(render_pipeline200);
    buffer309.destroy()
    render_pass_encoder3010.setStencilReference(1);
    
    render_pass_encoder3020.insertDebugMarker("marker");
    
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    buffer306.destroy()
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
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
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3030.setPipeline(render_pipeline302);
    
    query208.destroy()
    render_pass_encoder3030.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    render_pass_encoder3000.pushDebugGroup("group_marker");
    
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder2000.endOcclusionQuery()
    device20.queue.writeTexture({ texture: texture205 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeTexture({ texture: texture205 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2060,
            },
        ],
        occlusionQuerySet: query200
    });
    device20.queue.writeTexture({ texture: texture205 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.pushErrorScope("validation");
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query201.destroy()
    device20.queue.writeTexture({ texture: texture205 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder2040.pushDebugGroup("group_marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    query300.destroy()
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    query205.destroy()
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const array7 = new Float32Array([-0.25, -0.5, 1.0, 0.0, 1.0, -0.25, -0.5, 1.0, -0.75, 1.0, 0.25, 0.5, 0.75, -1.0, 0.5, -0.25, 0.75, -0.25, 1.0, 0.75, -0.5, 0.0, 0.0, -0.5, 0.25, 0.75, 0.25, -1.0, 0.0, 1.0, -0.5, -1.0, 1.0, -0.75, -0.5, -0.25, -0.25, 0.25, -0.25, 0.75, 0.5, 0.25, -0.5, -0.25, -0.25, -0.5, 0.5, 0.5, -0.25, -0.75, -0.75, 0.75, 0.0, 0.25, -0.5, 0.0, -1.0, 0.5, 1.0, 0.25, -0.5, -0.5, -0.75, -0.25, 0.25, -0.5, -1.0, -0.25, 0.25, -0.25, -0.5, 0.5, -0.75, 0.0, 0.25, 0.0, 0.0, 0.0, -0.75, -0.5, 0.0, 0.75, -0.25, -0.25, 0.75, -0.5, -0.75, -1.0, 1.0, -0.25, -0.25, 0.25, -1.0, 1.0, 0.0, 0.0, 0.75, -0.25, -0.5, -0.5, ]);
    
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer205, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer205, 0);
    
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder2040.popDebugGroup();
    device20.queue.writeBuffer(buffer205, 0, array0, 0, array0.length);
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query206.destroy()
    query2011.destroy()
    query205.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    buffer307.destroy()
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16sint",
        dimension: "2d"
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2060,
            },
        ],
        occlusionQuerySet: query200
    });
    
    render_pass_encoder2040.setScissorRect(0, 0, texture206.width / 2, texture206.height / 2);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    buffer202.destroy()
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
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
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

    render_bundle_encoder301.setBindGroup(0, bind_group304);
    render_pass_encoder3000.setStencilReference(1);
    
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    
    render_pass_encoder3010.popDebugGroup();
    buffer205.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2040.insertDebugMarker("marker");
    render_pass_encoder2000.popDebugGroup();
    
    render_pass_encoder2000.insertDebugMarker("marker");
    
    render_pass_encoder2040.setPipeline(render_pipeline200);
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group201);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2030.setPipeline(render_pipeline201);
    render_pass_encoder2020.endOcclusionQuery()
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2000.setPipeline(render_pipeline200);
    render_pass_encoder2050.setPipeline(render_pipeline201);
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
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3030.setBindGroup(0, bind_group305);
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
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
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group202);
    render_pass_encoder3000.popDebugGroup();
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_pass_encoder2050.setBindGroup(0, bind_group203);
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2040.setBindGroup(0, bind_group204);
    compute_pass_encoder2010.end();
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group205);
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

    render_pass_encoder3020.setBindGroup(0, bind_group306);
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer201, ]);
}