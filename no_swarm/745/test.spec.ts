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
    
    
    
    const array0 = new Float32Array([0.5, 0.5, -1.0, 1.0, -0.5, -0.25, 0.5, 1.0, 0.0, 0.0, 1.0, 0.25, 1.0, -1.0, -0.5, 0.0, -0.25, 0.5, 0.25, 0.5, 0.0, 0.25, -0.25, 0.5, 0.25, -1.0, 0.75, 0.5, 0.5, -0.25, -1.0, 0.5, 0.75, -0.25, 0.25, -1.0, 1.0, 0.75, -0.5, 1.0, 0.5, 1.0, -0.75, -1.0, 0.75, 0.75, 0.25, -0.5, -0.25, 1.0, 0.0, -0.5, 0.25, 0.25, 1.0, -1.0, -0.75, 0.0, -0.5, 0.25, 0.5, -0.25, 0.25, 0.25, 0.25, 0.5, 0.25, 1.0, 0.5, -0.25, -1.0, 0.5, -0.25, 0.5, 1.0, 0.25, -1.0, 0.25, 0.25, -0.25, 0.25, 0.5, 0.25, -0.25, -0.5, -0.25, -1.0, 0.5, -0.75, -0.75, 1.0, 1.0, -1.0, 0.75, -0.25, -0.75, -0.5, -0.5, -1.0, 1.0, ]);
    const array1 = new Float32Array([1.0, 0.25, -0.25, 0.0, 0.5, 1.0, 0.25, 0.25, 0.0, -0.25, 0.0, 0.0, 0.5, 0.75, -1.0, -0.25, -0.75, 1.0, -0.25, -0.25, -0.5, -0.5, 0.0, -1.0, -0.5, 0.75, -0.5, 0.25, 0.75, -1.0, 0.25, -0.5, -0.25, -0.5, -0.25, 1.0, 0.0, -1.0, -0.5, 0.0, 0.75, 1.0, 1.0, -0.25, -0.5, -1.0, 0.75, -0.25, 0.5, -0.5, 0.0, 1.0, 1.0, 0.75, 0.25, 0.25, 0.75, 1.0, -0.5, -1.0, -0.5, -0.75, 0.75, -1.0, 0.75, -0.75, -0.75, -0.5, -0.25, -0.25, 1.0, 1.0, 1.0, 0.5, 0.25, 0.5, 0.0, -0.5, 0.75, 0.0, -0.75, -0.25, 0.25, 0.25, 1.0, -0.25, 0.25, 0.5, -0.25, 0.5, 1.0, -0.5, 1.0, 1.0, -0.5, -0.5, -0.5, 1.0, -0.25, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([0.5, 0.5, 0.0, 0.75, -0.75, 0.25, -0.75, 0.0, -1.0, 0.0, 0.75, -1.0, -1.0, 0.75, 0.0, 0.25, 0.75, 0.0, -0.5, -0.5, 1.0, 0.25, -0.25, 0.75, -0.25, -0.5, 0.75, 0.0, -0.75, -0.25, -0.5, 0.25, 1.0, 1.0, 0.0, -0.5, -0.25, -0.5, -1.0, -0.5, 0.0, 1.0, 0.25, -1.0, 1.0, 0.0, 0.5, 0.0, 0.75, -1.0, 1.0, 1.0, -0.5, -1.0, -1.0, 0.75, -1.0, -0.25, -0.5, -0.25, 1.0, -0.75, 0.0, 0.5, 0.0, 0.75, -0.5, 0.25, -1.0, -0.75, -0.75, 0.5, 0.25, -0.5, 0.0, 0.0, -0.25, 1.0, 0.25, 0.25, 0.0, 0.75, 0.25, -0.25, 0.75, -0.75, -0.5, -0.25, -0.5, 0.5, -0.75, 1.0, -0.25, 0.75, 0.25, 0.25, -0.25, 1.0, -0.75, 0.25, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture000.destroy();
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    texture002.destroy();
    
    device00.destroy();
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device30.pushErrorScope("validation");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder301.insertDebugMarker("mymarker");
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    command_encoder302.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    device10.pushErrorScope("internal");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query300.destroy()
    query101.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder302.popDebugGroup()
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    query101.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    query101.destroy()
    command_encoder300.popDebugGroup()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.pushErrorScope("out-of-memory");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([-0.75, 0.25, -1.0, 0.5, -0.25, -0.5, -1.0, -0.25, 0.0, 0.5, 1.0, 0.5, 1.0, 0.25, -1.0, -1.0, 0.0, 0.75, 1.0, 0.5, -0.5, 0.25, 0.5, 0.75, -0.75, 0.0, 0.5, 0.0, 1.0, 0.75, 0.25, -0.75, -1.0, 1.0, -0.5, 0.5, 0.5, 0.5, -0.5, -0.75, -0.75, -0.75, 0.0, 1.0, 0.75, -0.5, 0.25, -1.0, -0.75, -0.75, -0.25, 0.75, 0.0, -1.0, -1.0, 0.5, -0.75, -0.25, -0.25, -0.25, -1.0, -0.5, 0.75, -0.5, 0.0, -0.5, -0.5, -1.0, -0.5, -0.25, 0.0, -1.0, -0.75, -0.75, 1.0, -0.5, 0.75, -1.0, 0.5, -0.5, 0.25, -1.0, 0.25, 0.5, -1.0, 0.0, 0.75, 0.0, 0.75, -1.0, 0.75, 0.75, -0.5, 0.5, -0.75, -0.75, -0.25, -0.75, 0.25, 0.75, ]);
    const array4 = new Float32Array([-0.5, 0.75, 0.0, 0.0, 0.75, -1.0, -0.5, 0.0, 0.0, -1.0, 0.75, -0.75, 0.5, 0.5, 0.75, -0.5, 0.0, 1.0, -0.75, -0.5, -0.5, 0.0, 1.0, -0.25, 0.25, 0.5, -1.0, 0.5, 0.0, -0.25, 0.25, 0.75, 0.0, 0.0, 0.75, 1.0, -0.5, 0.5, 0.25, 0.0, -1.0, -0.5, 0.5, 0.75, -0.5, -0.25, 1.0, -0.5, 0.5, 0.75, 0.5, 0.5, 0.25, -0.75, 0.75, 0.0, -0.75, 0.5, 1.0, -0.25, 0.5, 0.5, -0.25, 0.25, 0.25, 0.25, -0.5, 1.0, -1.0, -0.75, 0.75, 0.25, -0.5, -1.0, -0.75, 0.25, 0.75, 0.75, 0.5, 0.75, -0.25, 0.0, -0.25, -0.5, 0.25, 0.5, -0.25, 0.25, 0.5, 0.0, 1.0, 1.0, 0.75, -0.75, -0.25, 0.0, 0.75, 1.0, -0.25, -0.75, ]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query102.destroy()
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    buffer301.destroy()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    device10.destroy();
    
    
    
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
    query300.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    buffer302.destroy()
    texture400.destroy();
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer300 = command_encoder300.finish();
    
    
    device40.destroy();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    query300.destroy()
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    texture300.destroy();
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    buffer300.destroy()
    
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    compute_pass_encoder3020.popDebugGroup()
    command_encoder304.resolveQuerySet(
        query301,
        0,
        32,
        buffer303,
        0
    )
    command_encoder304.resolveQuerySet(
        query300,
        0,
        32,
        buffer303,
        0
    )
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder304.resolveQuerySet(
        query301,
        0,
        32,
        buffer303,
        0
    )
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder302.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder304.insertDebugMarker("mymarker");
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    
    compute_pass_encoder3010.popDebugGroup()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query300.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    compute_pass_encoder3010.insertDebugMarker("marker")
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder3040.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3040.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
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
    
    render_pass_encoder3040.setStencilReference(1);
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    render_pass_encoder3040.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
    
    render_bundle_encoder302.setPipeline(render_pipeline300);
    query302.destroy()
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
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
    
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        occlusionQuerySet: query300
    });
    query300.destroy()
    render_pass_encoder3040.insertDebugMarker("marker");
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

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    render_bundle_encoder301.popDebugGroup();
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3030.popDebugGroup()
    
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder3050.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
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
    
    render_bundle_encoder300.popDebugGroup();
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder3040.setPipeline(render_pipeline302);
    render_pass_encoder3050.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder3060.pushDebugGroup("group_marker");
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
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

    render_bundle_encoder302.setBindGroup(0, bind_group301);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder3050.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder3060.executeBundles([])
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder3060.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3050.executeBundles([])
    device50.pushErrorScope("internal");
    
    render_pass_encoder3050.setStencilReference(1);
    compute_pass_encoder3010.insertDebugMarker("marker")
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    query301.destroy()
    texture301.destroy();
    
    device30.queue.submit([command_buffer300, ]);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3040.insertDebugMarker("marker");
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

    render_pass_encoder3040.setBindGroup(0, bind_group302);
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    
    
    render_pass_encoder3060.popDebugGroup();
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_pass_encoder3060.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_pass_encoder3040.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
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
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder300.setPipeline(render_pipeline301);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
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
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder3060.setPipeline(render_pipeline304);
    
    
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    render_bundle_encoder302.popDebugGroup();
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder3020.setPipeline(compute_pipeline300);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    compute_pass_encoder3010.setPipeline(compute_pipeline300);
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
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
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline304.getBindGroupLayout(0),
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

    render_pass_encoder3060.setBindGroup(0, bind_group303);
    render_pass_encoder3060.setStencilReference(1);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array5 = new Float32Array([0.5, -0.5, -0.25, 0.25, -0.5, 1.0, -0.25, 0.25, 0.75, 0.25, 0.0, 0.0, 0.0, 0.25, -1.0, -0.25, -0.25, 0.0, -0.75, -0.25, 1.0, 0.5, -0.25, 0.5, 0.75, -0.75, 0.5, 0.25, 0.75, 0.0, 0.5, 1.0, 1.0, -0.75, 0.75, -0.25, 0.0, -1.0, 0.0, -0.75, -0.5, 1.0, 0.0, -1.0, 0.5, -0.25, -0.5, 1.0, 0.25, 0.25, -0.25, 0.0, -1.0, -0.75, 0.75, 0.5, 0.0, -0.25, 0.75, 0.5, -0.5, 0.5, 0.0, -0.75, -0.25, -1.0, -0.5, -0.75, -0.5, -0.25, 0.0, 1.0, 0.5, 0.75, 1.0, -0.25, 0.5, 0.25, -1.0, -0.5, 0.0, 0.5, -0.75, 1.0, -0.75, 1.0, -0.5, 0.5, 0.25, 1.0, -0.75, -1.0, -0.25, 0.5, -0.25, -0.25, -1.0, -0.75, 0.75, -0.75, ]);
    query300.destroy()
    
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_bundle_encoder500.insertDebugMarker("marker");
    buffer308.destroy()
    render_pass_encoder3050.executeBundles([])
    render_pass_encoder3040.insertDebugMarker("marker");
    
    render_pass_encoder3050.setPipeline(render_pipeline300);
    query500.destroy()
    
    
    
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3050.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
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

    render_bundle_encoder300.setBindGroup(0, bind_group304);
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
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group305);
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    render_bundle_encoder600.insertDebugMarker("marker");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    texture600.destroy();
    render_pass_encoder3060.pushDebugGroup("group_marker");
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_pass_encoder3040.pushDebugGroup("group_marker");
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    buffer3014.destroy()
    buffer3015.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
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
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    render_pass_encoder3050.setBindGroup(0, bind_group306);
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_pass_encoder3040.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    
    render_pass_encoder3060.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    buffer304.destroy()
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder3070 = command_encoder307.beginRenderPass({
        label: "render_pass_encoder3070",
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
    
    render_pass_encoder3050.insertDebugMarker("marker");
    render_bundle_encoder300.popDebugGroup();
    
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
    buffer309.destroy()
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device30.pushErrorScope("validation");
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    query301.destroy()
    compute_pass_encoder3010.insertDebugMarker("marker")
    texture303.destroy();
    render_pass_encoder3070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device60.destroy();
    render_pass_encoder3070.pushDebugGroup("group_marker");
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_pass_encoder3040.insertDebugMarker("marker");
    
    const command_buffer500 = command_encoder500.finish();
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    buffer303.destroy()
    query300.destroy()
    render_pass_encoder3040.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder3050.setStencilReference(1);
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    render_pass_encoder3060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
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
    render_pass_encoder3040.popDebugGroup();
    
    render_pass_encoder3040.pushDebugGroup("group_marker");
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    buffer3016.destroy()
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
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
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder3070.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3040.setStencilReference(1);
    render_pass_encoder3050.popDebugGroup();
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    render_pass_encoder3050.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_bundle_encoder502.popDebugGroup();
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    render_pass_encoder3070.setPipeline(render_pipeline309);
    render_pass_encoder3050.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
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
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3040.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    buffer3013.destroy()
    buffer3010.destroy()
    query500.destroy()
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder3060.setStencilReference(1);
    texture302.destroy();
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder3030.setPipeline(compute_pipeline302);
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    query302.destroy()
    render_pass_encoder3040.insertDebugMarker("marker");
    render_bundle_encoder300.popDebugGroup();
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3060.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder3050.setStencilReference(1);
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
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
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout302,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer3018.destroy()
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device80.pushErrorScope("out-of-memory");
    render_pass_encoder3040.setStencilReference(1);
    
    buffer3012.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const command_buffer501 = command_encoder501.finish();
    query801.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.setPipeline(render_pipeline500);
    render_pass_encoder3060.popDebugGroup();
    
    render_bundle_encoder301.popDebugGroup();
    render_pass_encoder3060.insertDebugMarker("marker");
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3020, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3020, 0);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3020.end();
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3012,
            },
        ],
        occlusionQuerySet: query303
    });
    render_bundle_encoder302.insertDebugMarker("marker");
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
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    render_pass_encoder3060.insertDebugMarker("marker");
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3070.setStencilReference(1);
    
    render_bundle_encoder302.popDebugGroup();
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3020.executeBundles([])
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    device80.destroy();
    
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout302,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder3020.setPipeline(render_pipeline301);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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

    render_pass_encoder3020.setBindGroup(0, bind_group307);
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
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3030.setBindGroup(0, bind_group308);
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
        layout: render_pipeline309.getBindGroupLayout(0),
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
    render_pass_encoder3070.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3027, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3027, 0);
    render_pass_encoder3040.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
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

    compute_pass_encoder3010.setBindGroup(0, bind_group3010);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    compute_pass_encoder3030.end();
    compute_pass_encoder3010.end();
    device50.queue.submit([command_buffer500, ]);
    const command_buffer303 = command_encoder303.finish();
    const command_buffer301 = command_encoder301.finish();
    device30.queue.submit([command_buffer301, command_buffer303, ]);
}