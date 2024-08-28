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
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array0 = new Float32Array([-0.25, 0.5, 0.25, 0.75, -0.5, -0.25, -0.5, 0.75, -1.0, -1.0, 0.0, -0.5, 0.0, -1.0, -0.75, 1.0, -1.0, -1.0, 0.5, 0.75, 0.0, 1.0, 0.25, -0.25, 0.25, -0.75, -0.75, 0.5, 0.0, 0.75, -0.75, 0.75, -0.75, 0.25, -0.75, 0.0, -0.75, 0.75, -0.75, 0.25, 0.25, 0.75, -0.5, -0.25, 0.75, 0.25, -0.25, -0.75, 0.5, 0.25, -0.5, 0.5, -1.0, -1.0, 0.5, -0.75, -0.25, -0.25, -0.75, 0.75, -0.5, -0.25, 0.5, 0.5, -1.0, 0.0, 1.0, 1.0, -0.5, -0.5, -0.25, 0.75, 1.0, 0.25, 0.5, -0.25, -0.25, -1.0, 0.75, 1.0, 1.0, 0.5, -0.25, 0.75, 0.25, 1.0, -0.75, -0.25, 0.75, -1.0, -0.5, 0.25, -0.5, -0.25, 0.5, 0.25, 0.25, 1.0, -0.5, 0.25, ]);
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const array1 = new Float32Array([-0.5, 0.25, 0.75, -0.25, -0.25, 0.25, 0.0, -0.25, 1.0, 1.0, 0.25, -0.25, -0.25, 1.0, 0.75, 0.5, -0.25, 0.25, -0.5, -0.5, -0.5, -0.75, -0.25, -0.5, 1.0, 0.5, 0.0, -0.75, 0.5, -0.75, 0.5, 1.0, -1.0, 0.0, -0.25, -1.0, -0.75, 1.0, 1.0, -0.5, -0.25, 0.25, -0.75, 0.75, -0.5, 1.0, -0.75, -0.75, 0.25, 0.0, -1.0, -1.0, 0.0, 0.25, -0.25, 1.0, 0.0, 1.0, -0.75, -0.75, -0.5, -0.25, -0.75, 0.75, 1.0, -0.75, 0.0, 0.0, 0.5, 0.5, 1.0, -1.0, 0.0, 1.0, -0.5, 0.5, 0.75, -0.5, -0.75, -0.5, 0.25, -0.25, -0.5, 0.25, 0.0, -0.5, -0.75, 0.25, 0.5, 0.25, -0.75, 0.75, -0.75, 0.0, 0.25, 0.75, 0.75, 0.5, -1.0, 0.75, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    
    query101.destroy()
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_buffer100 = command_encoder100.finish();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device10.pushErrorScope("validation");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array2 = new Float32Array([0.0, 0.25, 1.0, -0.5, -0.25, -0.25, 0.75, -0.75, 0.0, -0.5, -0.25, -0.75, -1.0, -0.25, 0.5, 0.75, 0.0, -0.75, 0.75, -1.0, 0.75, 0.5, 0.0, -1.0, -1.0, -1.0, -0.75, 0.0, 0.5, -0.75, -0.75, 1.0, -0.5, 0.25, -1.0, -0.25, -0.5, 0.0, -0.25, -0.5, -0.75, -0.25, 0.5, 1.0, -1.0, 0.0, 0.5, -0.5, -0.75, 0.75, 0.25, -0.25, -0.5, 0.0, -1.0, -0.5, -0.5, 0.0, -0.25, -1.0, -0.75, -0.5, -0.75, 0.75, 0.25, -1.0, -1.0, 0.75, 0.5, -0.5, -0.25, 0.0, 0.0, 0.75, 0.5, 0.5, 0.75, 0.0, 0.0, -0.75, 1.0, -0.25, -0.75, 0.25, -0.75, 0.5, -0.5, 0.5, 0.25, 0.0, 0.5, 0.5, 0.5, -0.5, 0.25, -0.75, -1.0, -0.5, -1.0, -0.5, ]);
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device30.pushErrorScope("validation");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    query100.destroy()
    const array3 = new Float32Array([-0.25, -0.75, 0.0, -0.75, -0.5, 0.75, 1.0, 0.0, 0.0, 0.5, 0.0, -0.5, -1.0, 0.75, 0.25, 1.0, -0.5, 0.25, 0.0, 0.75, -1.0, -0.25, -0.75, 1.0, -0.5, -1.0, 0.0, 0.0, 0.0, -0.75, 1.0, -0.5, 0.5, 0.0, -0.5, 0.5, 0.75, 0.5, 0.0, 0.25, 0.75, 0.5, -0.75, 0.5, 0.75, -0.25, -0.75, 0.75, -1.0, 0.75, 0.25, -0.25, -0.25, -0.25, 0.75, 0.0, 0.5, 0.0, 0.75, 0.5, -0.25, -0.5, -0.25, 0.5, 1.0, -0.25, -0.75, 0.75, 0.5, 0.25, -0.25, -0.25, 0.0, -0.75, -0.5, -0.75, -0.75, -1.0, -0.75, 0.5, -0.75, 1.0, -1.0, -0.25, -0.25, -0.75, 0.0, 1.0, -1.0, 1.0, -0.75, -0.5, -0.5, -0.5, -0.5, 0.0, -1.0, -1.0, 0.0, -0.75, ]);
    query100.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder300.clearBuffer(buffer300);
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    query100.destroy()
    
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    query300.destroy()
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
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
        occlusionQuerySet: undefined
    });
    buffer100.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer300.destroy()
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
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
    const array4 = new Float32Array([-1.0, 0.75, 0.75, 0.25, -1.0, 0.25, 0.5, 0.5, 0.75, 0.0, 0.75, 0.75, -1.0, 0.0, -0.25, -0.5, 0.5, 0.75, 0.75, 0.5, 0.0, -0.25, -1.0, -1.0, -0.5, 0.0, 1.0, -0.25, -0.25, 0.0, 0.25, 0.25, -0.5, 0.75, -0.75, 0.25, -1.0, -0.75, 0.5, 0.25, 0.5, 0.75, -0.25, -0.25, 0.75, -0.5, 0.0, 0.75, 0.75, -0.5, 0.0, -0.5, -1.0, -0.75, 0.0, 0.5, 0.75, -0.75, -0.5, -0.5, 1.0, 0.0, -0.75, 0.25, -0.5, 0.5, -0.75, 0.75, -0.25, -0.75, 0.75, 1.0, -0.25, -0.25, -1.0, 0.5, -1.0, -0.75, 0.0, 1.0, 1.0, 1.0, -0.5, 0.5, 1.0, -1.0, -1.0, -1.0, -0.25, -0.5, -0.75, -0.25, 0.0, -0.25, -0.75, 0.75, -1.0, 0.5, -0.5, 0.5, ]);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    
    device00.pushErrorScope("validation");
    texture300.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    buffer102.destroy()
    
    render_pass_encoder3010.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    device10.pushErrorScope("validation");
    
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_bundle_encoder001.popDebugGroup();
    
    
    
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_bundle_encoder000.insertDebugMarker("marker");
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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder002.popDebugGroup();
    texture100.destroy();
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    render_pass_encoder3010.executeBundles([])
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    
    
    
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    device00.destroy();
    
    buffer103.destroy()
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    buffer101.destroy()
    
    query102.destroy()
    
    query100.destroy()
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3020.setStencilReference(1);
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    
    
    
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    
    
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3020.setPipeline(render_pipeline300);
    compute_pass_encoder3000.popDebugGroup()
    
    
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    
    const array5 = new Float32Array([-1.0, -0.5, -0.25, 0.0, -0.5, -0.75, 0.75, 0.25, 0.25, 0.25, 0.0, -0.5, 0.0, -0.75, 0.25, -0.75, 1.0, -0.5, 0.5, 0.0, 1.0, -0.75, -0.5, 0.75, 1.0, 0.5, 0.0, -0.5, -0.25, -0.5, -1.0, -0.25, 0.25, -0.25, 0.0, 0.25, 0.75, 1.0, -0.75, -1.0, -0.25, 0.75, 0.75, -0.75, 0.5, -0.5, 0.25, -0.5, 1.0, 0.25, -1.0, -0.25, 0.75, -1.0, -0.75, 0.75, -0.25, 0.75, -0.75, 0.0, 1.0, 0.0, -0.25, -1.0, -0.5, -1.0, 0.25, 1.0, -0.25, 0.75, -0.75, -0.25, 1.0, 0.5, 0.75, 1.0, 0.75, 0.75, 0.75, 0.75, 0.5, 0.75, -1.0, 0.0, -0.75, 1.0, 0.5, 0.75, -0.25, -0.25, -0.5, -1.0, -0.75, -0.75, 1.0, 0.5, 0.5, -0.25, -1.0, -0.5, ]);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
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
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    query106.destroy()
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
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer301.destroy()
    
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3020.setBindGroup(0, bind_group300);
    
    buffer104.destroy()
    render_bundle_encoder100.popDebugGroup();
    
    query101.destroy()
    texture301.destroy();
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
    
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query103.destroy()
    
    buffer107.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device30.pushErrorScope("validation");
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    
    query100.destroy()
    render_pass_encoder3010.setPipeline(render_pipeline300);
    const array6 = new Float32Array([-0.75, 0.75, -0.5, -0.5, -1.0, 1.0, 1.0, 0.5, -0.25, 0.75, -1.0, 0.25, 0.75, 0.75, 0.5, 0.75, -0.75, 0.5, 0.5, 0.0, 1.0, 0.25, 0.25, 0.0, 0.5, -0.75, -0.75, -0.25, 1.0, -1.0, 0.25, 1.0, 0.0, 1.0, -0.5, 1.0, 1.0, 0.25, 0.5, -0.25, 0.5, -0.75, 0.0, 0.5, 0.25, 1.0, 0.0, 0.0, -1.0, -0.5, -0.5, 0.5, 0.0, 1.0, -0.25, 0.5, -0.25, 1.0, -0.75, 0.75, 0.25, 0.75, -0.75, 0.25, 0.25, 0.5, 0.75, 0.75, -1.0, 0.5, 1.0, 0.5, -1.0, 1.0, -0.25, 0.25, -0.75, -1.0, 0.5, -0.75, -1.0, 0.75, -0.5, -1.0, -0.75, 1.0, -0.25, -0.5, -0.5, -0.75, -0.25, 0.0, 1.0, 0.0, -1.0, 0.25, 0.25, 0.5, -1.0, -0.75, ]);
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    texture302.destroy();
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder3020.setStencilReference(1);
    query106.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    var shader_module3011_code = "";
    try {
        shader_module3011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3011 = await device30.createShaderModule({ label: "shader_module3011", code: shader_module3011_code })
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture304 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module3012_code = "";
    try {
        shader_module3012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3012 = await device30.createShaderModule({ label: "shader_module3012", code: shader_module3012_code })
    device30.queue.writeTexture({ texture: texture304 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module3011,
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
            module: shader_module3011,
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
    buffer106.destroy()
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeTexture({ texture: texture304 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    device30.queue.writeTexture({ texture: texture304 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder101.setPipeline(render_pipeline102);
    
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder301.setPipeline(render_pipeline301);
    device30.queue.writeTexture({ texture: texture304 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module3011,
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
            module: shader_module3011,
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
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    buffer305.destroy()
    buffer302.destroy()
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    device30.queue.writeTexture({ texture: texture304 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    
    query102.destroy()
    
    
    
    buffer105.destroy()
    
    query101.destroy()
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
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    query102.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
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
    
    
    buffer303.destroy()
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
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
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture304 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.setPipeline(render_pipeline103);
    compute_pass_encoder3000.popDebugGroup()
    
    render_pass_encoder3020.setStencilReference(1);
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
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group101);
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.queue.writeTexture({ texture: texture304 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3020.setStencilReference(1);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_pass_encoder3020.setStencilReference(1);
    query100.destroy()
    query101.destroy()
    buffer1010.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture304 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    var shader_module3013_code = "";
    try {
        shader_module3013_code = await fs.readFile(__dirname + '/shader_module3013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3013 = await device30.createShaderModule({ label: "shader_module3013", code: shader_module3013_code })
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture306 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    device30.queue.writeTexture({ texture: texture304 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query101.destroy()
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    device30.pushErrorScope("internal");
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    
    query105.destroy()
    render_pass_encoder3020.pushDebugGroup("group_marker");
    render_bundle_encoder301.popDebugGroup();
    
    
    texture306.destroy();
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query105.destroy()
    texture305.destroy();
    
    query105.destroy()
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
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
    
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_pass_encoder3010.setStencilReference(1);
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    device30.queue.writeTexture({ texture: texture304 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture303.destroy();
    device30.queue.writeTexture({ texture: texture304 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline3012 = device30.createRenderPipeline({
        label: "render_pipeline3012",
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
    query108.destroy()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const render_pipeline3013 = device30.createRenderPipeline({
        label: "render_pipeline3013",
        vertex: {
            module: shader_module3012,
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
            module: shader_module3012,
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
    var shader_module3014_code = "";
    try {
        shader_module3014_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3014 = await device30.createShaderModule({ label: "shader_module3014", code: shader_module3014_code })
    compute_pass_encoder3000.insertDebugMarker("marker")
    query103.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    texture304.destroy();
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    query102.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder101.popDebugGroup();
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    device40.destroy();
    
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder3020.insertDebugMarker("marker");
    query303.destroy()
    
    const render_pipeline3014 = device30.createRenderPipeline({
        label: "render_pipeline3014",
        vertex: {
            module: shader_module3014,
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
            module: shader_module3014,
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
                view: texture_view3031,
            },
        ],
        occlusionQuerySet: query300
    });
    const render_pipeline3015 = device30.createRenderPipeline({
        label: "render_pipeline3015",
        vertex: {
            module: shader_module3012,
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
            module: shader_module3012,
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
    query103.destroy()
    query107.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_pass_encoder3030.setPipeline(render_pipeline307);
    render_pass_encoder3030.setViewport(0, 0, texture303.width / 2, texture303.height / 2, 0, 1);
    const render_pipeline3016 = device30.createRenderPipeline({
        label: "render_pipeline3016",
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
    query101.destroy()
    buffer109.destroy()
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1011, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1011, 0);
    render_pass_encoder3030.pushDebugGroup("group_marker");
    compute_pass_encoder1010.popDebugGroup()
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query107.destroy()
    query106.destroy()
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder3030.setStencilReference(1);
    buffer307.destroy()
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    query106.destroy()
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder1010.end();
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
        layout: render_pipeline307.getBindGroupLayout(0),
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

    render_pass_encoder3030.setBindGroup(0, bind_group302);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer101, ]);
}