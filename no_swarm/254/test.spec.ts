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
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device20.destroy();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    texture101.destroy();
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer100.destroy()
    const array0 = new Float32Array([-0.75, -0.5, -0.5, 0.0, 0.5, -0.5, -0.25, 0.0, 0.0, 0.75, -0.25, 0.0, 1.0, 0.0, 0.0, 0.5, 0.75, 1.0, -0.75, 1.0, -0.75, 0.0, 0.0, 0.75, -1.0, 0.75, 0.25, -1.0, 0.0, 1.0, -0.75, 0.75, 0.25, 0.75, 0.25, 0.75, -0.25, 0.0, 1.0, -0.75, -1.0, 0.0, 0.0, 0.25, -0.25, 0.5, 0.5, -1.0, 0.5, -0.25, -0.75, 0.5, -0.5, 0.75, -1.0, -0.5, -0.25, -0.75, -0.25, -0.75, -0.5, -0.75, -1.0, -0.25, 0.0, -0.75, 0.25, -0.75, -0.25, -0.5, 1.0, 0.25, -0.25, -1.0, -0.25, 0.75, 1.0, 0.5, 0.0, 0.0, -1.0, -0.75, 1.0, 0.0, 1.0, 1.0, -1.0, 0.75, 0.0, 0.25, 0.5, 1.0, -0.5, -0.5, 0.0, 0.25, 1.0, 0.5, 0.75, -0.75, ]);
    texture100.destroy();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const array1 = new Float32Array([-0.25, -1.0, 0.25, 0.75, 1.0, 0.5, 1.0, 0.75, 0.5, 0.75, -0.75, -0.5, 0.25, 0.25, -0.75, 1.0, 0.0, 0.5, -0.5, -0.25, 0.75, -0.75, 0.0, 0.0, 0.25, 0.5, 0.5, -0.25, 0.75, 0.75, 0.25, 0.25, -0.75, 0.5, 0.25, -0.25, 0.75, 0.0, 0.25, 0.0, 0.5, 1.0, 0.25, -0.5, 0.75, 0.75, -0.25, -0.25, 0.0, -0.75, 0.5, 0.0, 1.0, -0.5, 0.25, 0.75, -0.25, 0.75, 1.0, 0.75, 0.25, 0.5, -0.5, 0.5, 0.75, 0.75, -0.75, 0.0, 0.0, 0.0, -1.0, -0.5, 0.25, 0.0, -0.5, 0.75, 0.5, -0.25, 0.25, -1.0, -0.75, 1.0, 1.0, 0.0, 0.0, -0.75, -0.75, -0.25, 0.5, 1.0, -1.0, 0.75, 0.0, 0.75, 0.75, 1.0, 0.75, 0.5, -0.25, 0.0, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    device00.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array2 = new Float32Array([0.25, 1.0, -0.25, 1.0, 0.75, 0.75, -0.5, 0.75, 0.0, -1.0, -1.0, 0.75, -1.0, -0.5, -0.5, 0.25, 1.0, 0.75, 1.0, 0.0, 1.0, 0.25, -0.5, 0.25, -0.5, -0.75, -1.0, 1.0, -0.25, -0.25, -0.25, 0.5, -1.0, -1.0, 1.0, -0.25, -1.0, 0.25, -0.25, 0.5, 0.25, 0.5, -0.75, 0.75, -0.25, 0.0, -1.0, 0.5, -0.5, 0.5, 1.0, 0.75, 0.25, -0.25, 0.0, 1.0, 0.25, 0.75, 0.5, -0.5, 0.75, 0.25, 0.5, 0.0, -0.25, -0.5, -0.5, -0.5, 0.0, -0.25, -0.75, 0.0, -0.25, -0.5, 0.25, 0.25, 0.25, 0.5, -1.0, 0.25, -1.0, -1.0, -0.5, -0.25, 0.5, -0.5, 0.25, 1.0, 1.0, 1.0, 0.75, -1.0, -1.0, 1.0, -0.5, -0.5, -0.25, 0.25, 1.0, 0.0, ]);
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device40.pushErrorScope("out-of-memory");
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32sint",
        dimension: "2d"
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.pushErrorScope("internal");
    query400.destroy()
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    
    buffer401.destroy()
    query402.destroy()
    
    device40.pushErrorScope("validation");
    render_bundle_encoder400.insertDebugMarker("marker");
    query401.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    texture400.destroy();
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    query403.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    query400.destroy()
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    
    query402.destroy()
    render_pass_encoder4000.executeBundles([])
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder400.popDebugGroup();
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder4000.executeBundles([])
    render_pass_encoder4000.pushDebugGroup("group_marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query402.destroy()
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    render_pass_encoder4000.popDebugGroup();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    query401.destroy()
    texture402.destroy();
    
    device40.pushErrorScope("out-of-memory");
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query402
    });
    render_pass_encoder4010.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    query300.destroy()
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    render_pass_encoder4000.setStencilReference(1);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    query402.destroy()
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
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    texture401.destroy();
    render_pass_encoder4010.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture300.destroy();
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder4000.insertDebugMarker("marker");
    render_pass_encoder4000.insertDebugMarker("marker");
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_pass_encoder4000.pushDebugGroup("group_marker");
    render_pass_encoder4010.executeBundles([])
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    query400.destroy()
    
    const texture_view4031 = texture403.createView({ label: "texture_view4031" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder4010.executeBundles([])
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_pass_encoder4010.pushDebugGroup("group_marker");
    
    device50.pushErrorScope("out-of-memory");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder301.popDebugGroup();
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_pass_encoder4010.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4010.executeBundles([])
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
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
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    render_pass_encoder4010.popDebugGroup();
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    render_pass_encoder4000.executeBundles([])
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4002,
            },
        ],
        occlusionQuerySet: query400
    });
    texture403.destroy();
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module307,
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
            module: shader_module307,
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
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    buffer400.destroy()
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_bundle_encoder300.setPipeline(render_pipeline303);
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    query500.destroy()
    render_pass_encoder4020.executeBundles([])
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    render_pass_encoder4010.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    
    render_pass_encoder4020.executeBundles([])
    render_pass_encoder4010.setPipeline(render_pipeline400);
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    query404.destroy()
    render_pass_encoder4010.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    render_pass_encoder4000.popDebugGroup();
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    render_pass_encoder4010.setStencilReference(1);
    render_bundle_encoder402.setPipeline(render_pipeline400);
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
    
    render_pass_encoder4020.setPipeline(render_pipeline401);
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    render_bundle_encoder301.insertDebugMarker("marker");
    query302.destroy()
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32sint",
        dimension: "2d"
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
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
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group400);
    buffer403.destroy()
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    const texture_view4050 = texture405.createView({ label: "texture_view4050" });
    texture404.destroy();
    render_bundle_encoder401.popDebugGroup();
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder301.setPipeline(render_pipeline301);
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4000.executeBundles([])
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device30.pushErrorScope("internal");
    
    command_encoder500.clearBuffer(buffer500);
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

    render_pass_encoder4010.setBindGroup(0, bind_group401);
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    buffer407.destroy()
    
    
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    query402.destroy()
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4040,
            },
        ],
        occlusionQuerySet: query402
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
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
    render_pass_encoder4020.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    render_pass_encoder4030.setScissorRect(0, 0, texture404.width / 2, texture404.height / 2);
    buffer406.destroy()
    query400.destroy()
    render_pass_encoder4020.setStencilReference(1);
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_bundle_encoder401.setPipeline(render_pipeline401);
    
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const array3 = new Float32Array([0.75, 0.5, 0.75, -0.5, 0.0, -0.25, -0.25, 0.5, -0.5, 0.5, -1.0, 0.0, -1.0, 0.25, 1.0, -1.0, -0.25, -0.25, 0.75, 0.75, 0.5, 0.0, -0.75, -0.75, -0.5, 1.0, 0.75, -0.25, 0.75, 0.25, -0.25, 0.5, 1.0, -0.25, -0.75, -0.5, 0.25, -0.5, -0.5, 0.0, 1.0, 0.75, -0.75, 0.0, -0.75, -0.75, -0.5, -0.25, 0.75, -0.25, -1.0, 0.25, 0.75, 0.25, 0.25, 0.5, -0.25, -1.0, 1.0, 0.0, -1.0, 0.0, -0.25, -0.5, -1.0, -1.0, -0.5, 0.75, -0.75, -0.75, 0.0, 0.0, -0.25, 1.0, 0.25, -1.0, 0.5, -1.0, -0.25, 0.75, -0.25, -0.25, -0.5, -0.5, -0.5, -0.25, 0.25, 0.5, 0.75, -0.75, 0.5, -1.0, 0.75, -0.75, 0.75, -1.0, -1.0, 0.25, 0.75, 0.5, ]);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4030.insertDebugMarker("marker");
    buffer500.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view4060 = texture406.createView({ label: "texture_view4060" });
    
    
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
    render_bundle_encoder400.setPipeline(render_pipeline404);
    render_bundle_encoder402.insertDebugMarker("marker");
    render_pass_encoder4030.setPipeline(render_pipeline401);
    buffer402.destroy()
    render_pass_encoder4000.setPipeline(render_pipeline402);
    
    query401.destroy()
    
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
    query302.destroy()
    
    
    
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

    render_pass_encoder4020.setBindGroup(0, bind_group402);
    
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16sint",
        dimension: "2d"
    });
    query400.destroy()
    render_pass_encoder4030.setScissorRect(0, 0, texture404.width / 2, texture404.height / 2);
    
    
    
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    buffer409.destroy()
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    
    query404.destroy()
    query400.destroy()
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder4020.pushDebugGroup("group_marker");
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_buffer302 = command_encoder302.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query404.destroy()
    
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    query400.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder4020.insertDebugMarker("marker");
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
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

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const array4 = new Float32Array([-1.0, -0.5, -0.5, 0.5, -1.0, -0.75, 0.75, -0.75, -0.25, -0.25, -0.25, 0.25, 0.25, -0.75, 0.5, 0.0, -0.25, 0.5, 0.5, 1.0, 1.0, -1.0, 0.75, 0.25, 0.0, -0.75, 0.25, -0.25, 0.75, 0.25, 0.0, 0.25, -1.0, 0.5, 1.0, -0.75, -1.0, -0.5, -0.5, -1.0, 0.0, 1.0, -0.5, -0.75, -0.5, -1.0, 0.75, 0.0, 0.0, -0.5, 0.0, -0.25, 0.0, 0.25, -0.5, 0.25, -0.5, -0.75, -0.5, -0.75, 0.5, -0.25, -0.5, -0.75, -0.75, -1.0, 0.5, -0.25, -0.75, 0.25, -0.75, 0.0, 0.5, -1.0, 0.0, -1.0, 0.25, 0.0, -0.25, -0.5, 1.0, -0.5, 0.5, -1.0, 0.75, 1.0, -0.25, 0.0, -0.75, 0.0, -0.25, 0.25, 0.75, -0.5, 0.25, -0.5, -1.0, -1.0, -0.5, -0.5, ]);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    query501.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder4000.insertDebugMarker("marker");
    render_pass_encoder4030.setScissorRect(0, 0, texture404.width / 2, texture404.height / 2);
    
    
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
        layout: render_pipeline404.getBindGroupLayout(0),
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

    render_bundle_encoder400.setBindGroup(0, bind_group403);
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
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
    render_bundle_encoder302.setPipeline(render_pipeline305);
    render_bundle_encoder400.popDebugGroup();
    texture405.destroy();
    
    texture301.destroy();
    
    
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module307,
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
            module: shader_module307,
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
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder4030.setScissorRect(0, 0, texture404.width / 2, texture404.height / 2);
    render_pass_encoder4020.popDebugGroup();
    query500.destroy()
    render_pass_encoder4030.insertDebugMarker("marker");
    var shader_module3011_code = "";
    try {
        shader_module3011_code = await fs.readFile(__dirname + '/shader_module3011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3011 = await device30.createShaderModule({ label: "shader_module3011", code: shader_module3011_code })
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
        vertex: {
            module: shader_module309,
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
            module: shader_module309,
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
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture500.destroy();
    render_pass_encoder4010.pushDebugGroup("group_marker");
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
        layout: render_pipeline402.getBindGroupLayout(0),
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

    render_pass_encoder4000.setBindGroup(0, bind_group404);
    render_pass_encoder4030.setScissorRect(0, 0, texture404.width / 2, texture404.height / 2);
    buffer404.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    query403.destroy()
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    buffer502.destroy()
    
    
    
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
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_pass_encoder4030.setBindGroup(0, bind_group405);
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline305.getBindGroupLayout(0),
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

    render_bundle_encoder302.setBindGroup(0, bind_group301);
    
    query303.destroy()
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    buffer303.destroy()
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
        vertex: {
            module: shader_module309,
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
            module: shader_module309,
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
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer507, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer507, 0);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder4030.setViewport(0, 0, texture404.width / 2, texture404.height / 2, 0, 1);
    render_pass_encoder4000.setStencilReference(1);
    
    render_pass_encoder4010.popDebugGroup();
    query402.destroy()
    device50.queue.writeBuffer(buffer507, 0, array4, 0, array4.length);
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    render_pass_encoder4020.pushDebugGroup("group_marker");
    query403.destroy()
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    buffer405.destroy()
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
    
    
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    
    render_pass_encoder4010.insertDebugMarker("marker");
    command_encoder303.insertDebugMarker("mymarker");
    
    render_bundle_encoder401.popDebugGroup();
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
        vertex: {
            module: shader_module308,
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
            module: shader_module308,
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
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_buffer304 = command_encoder304.finish();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder4020.popDebugGroup();
    device30.queue.submit([command_buffer304, ]);
    const command_buffer303 = command_encoder303.finish();
    compute_pass_encoder5000.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder5000.end();
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
}