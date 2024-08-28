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
    
    const array0 = new Float32Array([-0.25, 0.0, 1.0, 0.25, -0.25, -1.0, 0.25, 0.25, 0.5, -0.25, 0.0, -0.5, -0.5, -0.5, 0.5, -0.25, 0.5, 0.25, 0.25, -0.5, 1.0, -1.0, 0.5, 0.25, 0.0, 0.0, -0.5, 0.75, -0.75, 0.0, -1.0, 0.5, 0.75, 0.5, -0.5, -0.25, 0.25, 0.25, -0.25, 0.75, 0.25, 1.0, 0.0, 0.25, -1.0, 0.5, 1.0, -1.0, 0.75, -0.25, -0.5, -0.25, 0.75, 0.25, 0.25, -1.0, 0.5, -1.0, 1.0, 0.75, -0.75, -0.75, -0.75, -1.0, 0.25, 0.25, 1.0, 0.75, 0.75, 0.0, 0.0, -1.0, -1.0, 0.75, -0.75, 0.75, 1.0, -0.25, 0.5, -1.0, -1.0, -0.25, 0.25, -1.0, 0.25, 0.25, -0.25, 1.0, -1.0, 0.5, 0.0, 0.75, 1.0, 0.75, -0.5, 0.25, -1.0, 0.25, 1.0, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    buffer000.destroy()
    command_encoder000.insertDebugMarker("mymarker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    command_encoder000.insertDebugMarker("mymarker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16float",
        dimension: "2d"
    });
    query000.destroy()
    const array1 = new Float32Array([0.75, 1.0, -1.0, 0.5, 0.25, -1.0, 0.5, 0.0, 0.5, -0.5, -0.25, 0.25, 0.75, -0.75, -0.25, 0.0, 0.25, 0.0, 0.0, -0.25, 0.75, 0.0, 0.0, 1.0, -0.25, 0.0, 0.0, 0.75, -0.75, 1.0, -0.25, -0.75, 0.75, 1.0, 0.75, 0.0, 0.0, -0.5, 0.0, -0.5, 0.0, 1.0, -0.5, 0.25, -0.5, 1.0, 1.0, 0.25, 0.0, 1.0, -0.5, -0.25, 0.75, 0.0, 1.0, 0.75, -0.75, -0.5, 0.5, 0.5, 1.0, 0.5, 0.0, 0.75, -0.5, -1.0, -0.25, -1.0, 0.0, -1.0, -1.0, 0.0, -0.25, 0.75, -0.25, -0.75, -1.0, 0.75, -1.0, -1.0, 1.0, -1.0, -1.0, -0.75, 0.25, -1.0, 0.75, 0.25, 0.5, 0.5, 0.75, 0.5, 1.0, -1.0, 0.0, -0.75, 0.75, 1.0, -0.25, -0.5, ]);
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device00.pushErrorScope("internal");
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer002.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    command_encoder001.insertDebugMarker("mymarker");
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer003.destroy()
    
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const command_buffer300 = command_encoder300.finish();
    
    
    compute_pass_encoder0000.popDebugGroup()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer001.destroy()
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
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
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.pushErrorScope("validation");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    command_encoder301.insertDebugMarker("mymarker");
    
    
    
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
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    texture000.destroy();
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    query000.destroy()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device30.queue.submit([command_buffer300, ]);
    
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    const array2 = new Float32Array([-1.0, 0.0, 1.0, -0.75, 0.0, 0.25, -0.25, -0.75, -1.0, 0.0, 0.5, -0.5, 1.0, 0.75, 0.0, 0.5, 0.5, 0.25, -0.75, 0.0, 1.0, 0.0, -0.75, -0.75, -0.5, 0.75, 0.25, 1.0, 1.0, 0.0, 0.5, 0.25, 0.5, -0.25, 1.0, -1.0, 1.0, 0.25, 1.0, 0.0, 1.0, -0.75, 0.25, -0.75, -1.0, -1.0, -0.25, 0.0, -1.0, -0.25, 1.0, 0.75, -1.0, -0.25, -0.75, -0.5, 0.75, -0.5, 0.5, 0.25, 0.5, 1.0, 1.0, 0.25, 0.0, -0.25, 0.25, -1.0, 1.0, -1.0, 1.0, 0.5, -0.25, -0.25, 0.25, -0.25, -0.75, -0.75, 0.25, -0.75, 0.75, 0.5, -1.0, 0.0, -0.5, -0.75, 0.0, 0.25, -0.75, -1.0, -0.25, -1.0, -1.0, 0.5, 0.5, 0.0, 0.75, 1.0, 0.0, -1.0, ]);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout402]
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const command_buffer402 = command_encoder402.finish();
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    texture100.destroy();
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    command_encoder303.pushDebugGroup("mygroupmarker")
    command_encoder401.clearBuffer(buffer401);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("internal");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device10.pushErrorScope("out-of-memory");
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
    
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder101.insertDebugMarker("marker");
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
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    render_pass_encoder0020.setPipeline(render_pipeline000);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder401.insertDebugMarker("mymarker");
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    device00.pushErrorScope("out-of-memory");
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    buffer100.destroy()
    render_bundle_encoder002.setPipeline(render_pipeline001);
    
    query400.destroy()
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group000);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    query200.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    
    buffer004.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder401.insertDebugMarker("mymarker");
    
    command_encoder401.clearBuffer(buffer401);
    const command_buffer304 = command_encoder304.finish();
    
    render_bundle_encoder402.insertDebugMarker("marker");
    query001.destroy()
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    command_encoder303.insertDebugMarker("mymarker");
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    texture101.destroy();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    device40.pushErrorScope("validation");
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    buffer401.destroy()
    
    
    query400.destroy()
    buffer005.destroy()
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    texture200.destroy();
    compute_pass_encoder0010.popDebugGroup()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0020.setStencilReference(1);
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
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
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
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    render_bundle_encoder100.popDebugGroup();
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    texture301.destroy();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    render_bundle_encoder002.popDebugGroup();
    
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
    render_bundle_encoder101.popDebugGroup();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    buffer200.destroy()
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder303.insertDebugMarker("mymarker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    query300.destroy()
    command_encoder303.popDebugGroup()
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture400.destroy();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    render_pass_encoder0030.insertDebugMarker("marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    texture102.destroy();
    
    query001.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth32float",
        dimension: "2d"
    });
    render_bundle_encoder000.popDebugGroup();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.popDebugGroup();
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    texture202.destroy();
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
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
    query201.destroy()
    
    render_bundle_encoder401.setPipeline(render_pipeline400);
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
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device30.pushErrorScope("validation");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder000.setPipeline(render_pipeline002);
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16float",
        dimension: "2d"
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
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
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group001);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    render_bundle_encoder101.setPipeline(render_pipeline101);
    
    
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    texture401.destroy();
    
    
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group003);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    buffer007.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    texture302.destroy();
    
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    
    render_bundle_encoder100.setPipeline(render_pipeline101);
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout403]
    });
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const array3 = new Float32Array([-1.0, 1.0, 0.25, -1.0, -1.0, 0.0, 1.0, -0.25, -0.5, -0.5, 1.0, 0.5, 1.0, -0.25, 0.25, 0.5, 0.25, 0.0, 0.0, -1.0, 0.0, 0.25, 0.25, -0.75, -0.5, 0.25, 0.5, 0.5, 1.0, 1.0, -0.5, -0.5, 1.0, 0.25, 0.0, 0.75, -0.75, -0.75, 0.0, 0.25, -1.0, -0.25, 1.0, 0.0, 0.0, 1.0, -0.5, 0.75, -0.5, 1.0, -0.75, 0.25, 0.75, -0.75, -0.5, -0.75, -0.75, 0.0, 0.5, 0.25, 1.0, 0.5, -0.75, 0.75, -0.25, 0.5, -0.25, -1.0, -0.75, -0.25, -0.5, 0.0, -1.0, 0.0, -0.25, -1.0, 1.0, 0.25, -0.75, 1.0, -0.75, 0.25, -0.5, -0.25, 0.5, 0.5, -1.0, 1.0, 0.5, -0.5, -1.0, 1.0, 0.75, -0.75, -0.25, 0.0, -0.5, -1.0, 0.25, 0.0, ]);
    buffer301.destroy()
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
    device50.pushErrorScope("out-of-memory");
    const array4 = new Float32Array([-1.0, -0.25, -0.5, 0.25, -1.0, -0.75, 0.25, 0.5, -0.25, 0.5, -0.25, -0.25, -0.75, -1.0, 0.75, 0.25, 0.25, 0.0, 0.25, 1.0, -1.0, -1.0, 0.0, 0.5, -0.75, 0.5, -1.0, -0.5, 0.5, 0.5, 0.5, 1.0, 0.25, 0.5, 0.25, 0.5, 0.25, 1.0, -0.5, 0.0, 1.0, -0.25, 0.0, -0.75, 0.75, -0.25, 0.5, 0.25, -1.0, 1.0, -0.75, -1.0, -0.5, 0.0, -0.25, -0.75, 0.5, -0.5, -0.25, -1.0, 0.0, -0.5, -0.5, -0.75, 0.25, 1.0, -1.0, 1.0, -1.0, 0.5, -0.5, 1.0, -0.5, 1.0, 0.25, -1.0, 0.75, 0.75, 0.75, -0.75, 0.0, 0.75, 0.25, -0.75, 0.0, -0.25, -0.75, 1.0, -0.25, -0.25, 0.75, -0.5, 0.0, 0.75, 0.0, 0.0, 1.0, 0.25, -1.0, 0.25, ]);
    compute_pass_encoder3050.insertDebugMarker("marker")
    render_pass_encoder1000.setStencilReference(1);
    query400.destroy()
    render_pass_encoder1000.setPipeline(render_pipeline101);
    device20.pushErrorScope("out-of-memory");
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
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.setVertexBuffer(0, buffer002);
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    buffer0011.destroy()
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder302.insertDebugMarker("marker");
    buffer201.destroy()
    query300.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    query401.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0030.setPipeline(render_pipeline001);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder3030.executeBundles([])
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder001.setVertexBuffer(0, buffer002);
    render_bundle_encoder001.draw(3);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
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
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    render_bundle_encoder402.popDebugGroup();
    
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout400]
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.insertDebugMarker("marker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    compute_pass_encoder3020.insertDebugMarker("marker")
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
    render_bundle_encoder002.draw(3);
    render_bundle_encoder401.insertDebugMarker("marker");
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group004);
    render_pass_encoder0030.insertDebugMarker("marker");
    query100.destroy()
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.popDebugGroup();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0030.setVertexBuffer(0, buffer002);
    render_pass_encoder0030.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0030.draw(3);
    compute_pass_encoder0000.popDebugGroup()
    command_encoder401.popDebugGroup()
    render_pass_encoder0020.setVertexBuffer(0, buffer002);
    render_pass_encoder0030.end();
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group101);
    render_pass_encoder0020.draw(3);
    device30.queue.submit([command_buffer304, ]);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0020.end();
    const command_buffer401 = command_encoder401.finish();
    const command_buffer002 = command_encoder002.finish();
    device00.queue.submit([command_buffer003, ]);
    const command_buffer403 = command_encoder403.finish();
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder0010.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
}