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
    
    
    
    
    const array0 = new Float32Array([0.5, 0.5, 1.0, -0.25, -1.0, 0.25, 0.75, -0.5, -0.5, -0.75, 0.0, 1.0, -0.75, 1.0, 0.5, 1.0, -0.25, -0.25, -0.5, -1.0, -0.5, -0.25, 0.75, 0.75, -1.0, 0.25, -0.5, 1.0, 0.0, -0.5, -0.75, -0.75, 0.25, 0.25, -0.75, -1.0, 0.5, -0.75, 0.25, -0.75, 0.75, 0.0, 0.25, -1.0, 1.0, 0.75, 0.75, 0.0, 0.0, 0.75, 0.25, -0.75, -0.25, 0.25, 0.75, -1.0, 0.25, -0.75, 0.25, -1.0, -0.25, -0.75, 0.25, 0.25, 0.0, -0.25, -0.5, -0.75, 0.25, -1.0, 0.25, 0.5, 1.0, 0.25, -0.75, 0.25, -0.5, -1.0, 0.5, 0.25, 1.0, 0.0, -0.5, -0.5, 1.0, 0.5, -0.25, 1.0, 0.0, 1.0, 0.0, 0.5, -1.0, -0.5, 0.75, 0.0, -0.25, 0.5, 0.0, -0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query001.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer100 = command_encoder100.finish();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    device10.pushErrorScope("out-of-memory");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device00.pushErrorScope("out-of-memory");
    
    query000.destroy()
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const command_buffer000 = command_encoder000.finish();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query100.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    query101.destroy()
    query001.destroy()
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer100.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query000.destroy()
    render_bundle_encoder000.popDebugGroup();
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
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
    const array1 = new Float32Array([-0.25, 0.75, 0.75, 0.0, -0.75, 1.0, -0.25, -1.0, -0.75, -0.75, 1.0, 0.0, -0.5, -0.25, 0.5, 0.75, -0.5, 0.0, 0.5, 0.0, -0.5, -0.5, 0.5, -0.25, -0.25, -1.0, -0.5, -0.25, -0.5, -0.5, 0.25, 0.75, 1.0, -0.5, 0.75, 0.25, -0.75, -0.25, 0.5, 0.5, 0.75, -0.75, -1.0, 0.5, -1.0, 0.5, -1.0, 1.0, 0.25, 1.0, -0.75, -0.75, 1.0, -1.0, 0.5, 1.0, -0.5, 0.75, -0.5, 0.25, -1.0, -0.25, 0.75, -0.5, 1.0, 0.25, 1.0, 0.25, 0.75, -0.75, 0.75, 1.0, 0.25, 0.5, -0.25, -0.5, 0.5, -0.75, -1.0, -0.5, 0.75, 1.0, 0.0, -0.75, -0.5, 1.0, -0.5, -1.0, 0.0, 0.75, -0.5, -0.25, -0.25, -0.25, -0.75, 0.5, -0.75, 0.0, -0.75, 0.0, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.insertDebugMarker("mymarker");
    query102.destroy()
    const command_buffer001 = command_encoder001.finish();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder1010.popDebugGroup()
    device20.destroy();
    query101.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const array2 = new Float32Array([1.0, 0.75, 1.0, 0.75, 0.25, -1.0, -0.5, 0.25, 0.75, -0.75, 0.0, 0.75, 1.0, 0.75, 0.5, -0.5, -0.25, 0.0, 0.0, -0.25, 0.25, 0.5, 0.25, 1.0, 0.0, -1.0, -0.75, -1.0, 1.0, 0.5, 0.75, 0.75, 0.75, 0.75, -1.0, 0.0, -0.75, 0.0, 0.5, -0.75, 0.5, 0.75, -0.25, 0.0, -0.25, -1.0, 0.5, -0.75, -0.75, 0.25, 0.75, 0.75, -0.75, 1.0, -0.25, -0.75, -0.75, -1.0, 0.75, 1.0, -0.25, 0.5, 1.0, -1.0, -0.75, 0.5, -0.5, -0.5, 0.75, 0.0, -0.75, 1.0, -0.25, 0.5, 1.0, 1.0, -0.75, -0.75, 1.0, 0.0, 0.5, 0.25, -0.75, -0.5, 0.0, 0.75, -0.25, 1.0, 0.5, 0.5, 0.5, 0.0, 1.0, -0.75, 1.0, 0.75, 0.75, -0.5, -0.75, 0.75, ]);
    buffer101.destroy()
    buffer001.destroy()
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_bundle_encoder001.insertDebugMarker("marker");
    query102.destroy()
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    texture100.destroy();
    compute_pass_encoder1010.popDebugGroup()
    const array3 = new Float32Array([-0.25, 0.5, 0.5, 1.0, 1.0, -0.25, 0.0, 0.0, -1.0, 1.0, -0.5, 0.5, -0.5, -0.75, -0.5, -1.0, -0.25, -0.75, -0.25, 0.0, -1.0, 1.0, 0.5, 0.75, -0.75, -0.25, 0.5, 0.5, -0.5, 0.5, 0.0, 0.5, 0.0, -1.0, 0.0, 0.75, 0.25, -1.0, 0.75, 1.0, 1.0, 0.5, 0.25, 0.75, -0.25, -1.0, -0.5, 0.0, 0.25, 0.25, 0.5, 0.5, -1.0, 0.0, -0.75, -0.25, 0.25, 0.5, 0.75, -0.25, -0.75, 0.5, -0.75, 0.5, -0.75, 0.0, 0.5, 0.0, 0.25, 0.25, 0.25, 0.5, -0.25, 0.5, -0.25, -1.0, 0.75, -0.5, 0.0, -1.0, -1.0, -0.25, 0.25, -0.25, -0.75, 0.25, 1.0, -1.0, 0.25, -0.25, -1.0, 0.25, 0.5, 0.25, -0.75, 0.25, -0.75, -1.0, 0.0, 0.25, ]);
    render_bundle_encoder000.popDebugGroup();
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    
    query102.destroy()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query101.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device10.pushErrorScope("validation");
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    
    query002.destroy()
    texture101.destroy();
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer000.destroy()
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query101.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture102.destroy();
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
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
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    query000.destroy()
    
    command_encoder002.popDebugGroup()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder002.clearBuffer(buffer002);
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
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.popDebugGroup();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    compute_pass_encoder1020.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    
    buffer002.destroy()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    query000.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    query103.destroy()
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    query100.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.popDebugGroup();
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    query101.destroy()
    query103.destroy()
    render_bundle_encoder100.setPipeline(render_pipeline102);
    buffer102.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder103.clearBuffer(buffer103);
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer004.destroy()
    query002.destroy()
    
    
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
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    query001.destroy()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query102.destroy()
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder1020.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder1030.executeBundles([])
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.executeBundles([])
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.setPipeline(render_pipeline001);
    query103.destroy()
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group000);
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
    
    
    buffer003.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder300.insertDebugMarker("mymarker");
    render_pass_encoder1030.setPipeline(render_pipeline104);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder002.setVertexBuffer(0, buffer000);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    buffer005.destroy()
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    query105.destroy()
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group100);
    query100.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    buffer105.destroy()
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    render_bundle_encoder000.popDebugGroup();
    
    
    const texture_view0014 = texture001.createView({ label: "texture_view0014" });
    
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    buffer104.destroy()
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0030.setPipeline(render_pipeline000);
    buffer400.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.pushErrorScope("internal");
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array4 = new Float32Array([0.75, -0.25, -0.25, 0.0, -1.0, -0.25, 0.75, 0.75, -1.0, -0.25, 0.0, 1.0, -0.25, -0.25, -0.5, 1.0, -1.0, 0.5, 0.75, 1.0, 0.25, 0.25, 0.25, 0.5, -0.25, -1.0, -0.25, -0.75, 0.75, 1.0, -0.75, -0.5, -1.0, 0.5, -0.5, 1.0, 1.0, 0.0, 0.0, 0.25, 0.75, -0.75, 0.75, 1.0, -1.0, -0.75, 0.25, -0.5, -0.5, -0.75, 0.0, -1.0, 0.75, -0.5, -0.5, 0.5, -0.5, 0.5, -0.75, -1.0, 0.25, 0.0, -0.75, 0.75, 0.75, -0.5, -0.25, 0.25, 0.5, 1.0, -0.25, 0.0, 0.0, 0.75, -0.5, 1.0, 0.75, -0.5, 0.5, -0.5, 0.75, 0.25, 1.0, 0.75, 0.25, 0.75, 0.25, -1.0, 0.0, 0.25, -0.75, -0.25, -0.75, 0.0, -0.75, -1.0, 0.25, -0.5, -0.25, 1.0, ]);
    query102.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer103.destroy()
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    
    
    
    device40.destroy();
    
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder0030.setStencilReference(1);
    
    render_pass_encoder1040.setPipeline(render_pipeline103);
    
    query004.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query002.destroy()
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
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
    
    texture003.destroy();
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    texture002.destroy();
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0020.setPipeline(compute_pipeline003);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    command_encoder300.insertDebugMarker("mymarker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    const texture_view0015 = texture001.createView({ label: "texture_view0015" });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    device10.queue.submit([command_buffer100, ]);
    
    render_pass_encoder1040.popDebugGroup();
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group101);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    command_encoder500.insertDebugMarker("mymarker");
    buffer106.destroy()
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer006.destroy()
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    texture001.destroy();
    render_pass_encoder1030.popDebugGroup();
    
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    render_bundle_encoder002.draw(3);
    const array5 = new Float32Array([0.5, 1.0, -0.75, -0.75, 0.0, 0.5, 0.25, 1.0, -1.0, 1.0, 0.75, -0.5, -1.0, 0.25, 0.5, 0.0, 0.0, -1.0, 1.0, 0.75, 0.75, 0.0, -0.75, 1.0, 1.0, -0.5, 1.0, -0.75, 0.5, -0.75, 0.0, 0.0, 1.0, -0.25, -1.0, 0.5, 1.0, -0.5, -0.25, -0.25, 1.0, -0.25, 0.75, 1.0, 0.75, -0.5, -1.0, 1.0, -1.0, 0.0, 0.5, -0.25, -0.5, -0.5, -0.75, -1.0, -0.25, -0.5, 0.25, -0.75, 1.0, -0.5, 0.0, -0.25, 0.0, -0.5, 0.25, -0.25, -1.0, -1.0, 0.75, 0.5, 1.0, 0.75, 0.25, 0.25, 1.0, -0.5, -0.5, 0.75, 0.75, -0.5, 0.5, 0.75, 0.5, -0.5, -1.0, -0.5, 1.0, -0.5, -0.75, 0.25, -0.25, 0.0, -0.5, -0.5, 0.0, 1.0, -0.75, -0.25, ]);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    query300.destroy()
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    texture103.destroy();
    
    const array6 = new Float32Array([0.5, -1.0, 0.25, 0.5, 1.0, 1.0, 0.0, 0.25, 0.75, 0.75, 1.0, -1.0, -1.0, -0.75, -0.5, -1.0, 0.25, 1.0, 1.0, -0.5, 0.25, 0.5, -0.5, -0.25, 0.25, -0.75, 0.0, 0.75, 1.0, -1.0, -0.75, 0.25, 0.25, -0.5, 0.75, 1.0, -0.25, -1.0, -0.25, 0.75, -0.5, 0.0, 1.0, 0.25, -0.75, 0.25, 0.25, 1.0, 0.5, 0.75, 0.75, -1.0, 0.0, -0.25, -0.75, 0.5, -0.5, -0.5, 0.5, -0.25, -0.25, -1.0, 0.75, -0.5, 1.0, 0.75, -1.0, -1.0, 0.5, 0.0, 0.5, 0.75, 0.75, -1.0, -0.75, 0.5, -0.25, -0.25, 0.0, 1.0, 0.0, -0.25, 0.25, 0.25, -0.75, -1.0, -0.25, 0.25, 0.5, -0.75, 1.0, -0.25, -0.75, 0.25, -0.25, 0.25, -0.75, 0.25, 1.0, -0.5, ]);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    buffer007.destroy()
    
    
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    render_pass_encoder1040.pushDebugGroup("group_marker");
    command_encoder500.insertDebugMarker("mymarker");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query104
    });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_pass_encoder1050.setPipeline(render_pipeline106);
    buffer008.destroy()
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1050.beginOcclusionQuery(0)
    texture000.destroy();
    render_pass_encoder1030.popDebugGroup();
    buffer009.destroy()
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder000.insertDebugMarker("marker");
    device10.pushErrorScope("internal");
    query301.destroy()
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder1050.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    query001.destroy()
    render_pass_encoder0030.popDebugGroup();
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    query001.destroy()
    const texture_view0042 = texture004.createView({ label: "texture_view0042" });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.setStencilReference(1);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const array7 = new Float32Array([1.0, -1.0, 0.5, -0.5, -0.25, -0.5, -0.25, 0.75, 0.75, -0.25, -1.0, -0.75, -0.75, 1.0, -0.25, -0.5, 0.0, 1.0, 0.25, -0.25, -1.0, -0.75, -0.5, 0.75, 0.5, 0.75, 0.25, -0.5, -0.75, 0.75, -0.5, -1.0, 0.75, -0.5, -0.75, -1.0, -1.0, 0.0, 0.25, -0.75, 0.25, -0.25, -0.5, -0.25, 1.0, -1.0, -0.5, 0.0, 0.5, 1.0, 0.5, 0.0, -0.5, 1.0, 1.0, -1.0, 0.25, -0.75, -0.5, -0.75, -0.25, 0.75, 0.25, 0.0, 1.0, 0.5, 1.0, -0.75, -0.75, 0.25, 0.5, -0.75, 0.75, 0.0, 0.25, 0.5, -0.75, -0.5, -0.25, 0.25, 1.0, -0.5, 0.5, -0.75, 0.75, -0.25, 0.0, 0.5, -0.25, 0.25, 0.25, 1.0, 0.0, 0.5, 1.0, 0.25, -0.25, 0.75, -0.25, 0.25, ]);
    buffer500.destroy()
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
    compute_pass_encoder1010.insertDebugMarker("marker")
    query300.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder300.popDebugGroup();
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const command_buffer300 = command_encoder300.finish();
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1030.setVertexBuffer(0, buffer108);
    render_pass_encoder1030.draw(3);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline106.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group102);
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
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group002);
    render_pass_encoder1050.endOcclusionQuery()
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
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
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group003);
    compute_pass_encoder1020.popDebugGroup()
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0016, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0016, 0);
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder0030.setVertexBuffer(0, buffer000);
    render_pass_encoder0030.drawIndirect(buffer0016, 0);
    render_pass_encoder1030.end();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1050.setVertexBuffer(0, buffer108);
    render_pass_encoder1040.setVertexBuffer(0, buffer108);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1050.draw(3);
    render_pass_encoder1040.draw(3);
    render_pass_encoder0030.end();
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1050.end();
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1040.end();
    const command_buffer501 = command_encoder501.finish();
    compute_pass_encoder0020.popDebugGroup()
    const command_buffer301 = command_encoder301.finish();
    const command_buffer104 = command_encoder104.finish();
    device10.queue.submit([command_buffer103, ]);
    const command_buffer105 = command_encoder105.finish();
    device50.queue.submit([command_buffer501, ]);
    device10.queue.submit([command_buffer104, ]);
    device30.queue.submit([command_buffer301, ]);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder0020.end();
    const command_buffer003 = command_encoder003.finish();
    const command_buffer002 = command_encoder002.finish();
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer003, ]);
}