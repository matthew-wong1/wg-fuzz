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
    
    const array0 = new Float32Array([0.25, -0.5, -0.75, 1.0, -0.5, 0.25, -1.0, 0.75, 0.25, -0.25, 0.0, -0.25, 1.0, 0.0, -0.75, -0.5, -1.0, 0.25, 0.0, -0.75, -0.5, 1.0, -0.5, -1.0, -0.25, 0.75, -0.5, 0.5, 1.0, 0.75, -1.0, 0.25, -0.25, 0.0, -0.25, 0.25, 0.25, 1.0, 0.5, 0.5, -0.25, 0.25, 1.0, -0.75, -0.5, -0.5, -0.75, -0.5, -0.5, -1.0, 0.0, -1.0, -0.25, -1.0, 0.0, -1.0, 0.0, -0.75, -1.0, 0.5, 0.5, 0.25, 0.0, 0.25, -1.0, -0.25, -0.25, -0.25, 0.75, -0.75, 0.75, -1.0, -0.75, -1.0, -0.75, -0.5, 0.0, -0.25, 0.0, -0.5, 1.0, 0.0, -0.5, -0.5, -0.25, 0.0, 0.0, 0.5, 1.0, -0.5, 0.75, 0.0, -1.0, -0.75, -0.25, -0.25, 0.75, -0.25, -0.25, 1.0, ]);
    const array1 = new Float32Array([-0.25, -0.75, 0.25, -0.75, -0.5, 0.5, -0.25, -0.5, 0.25, 0.25, -0.25, 0.0, -1.0, -0.25, -0.75, 0.75, 0.25, 1.0, 0.5, -0.5, -0.25, 0.25, -1.0, 0.0, 0.0, 0.5, -1.0, -0.25, 1.0, 0.0, -0.75, 0.0, -1.0, -0.5, -1.0, 0.0, 0.75, -1.0, 0.0, -0.75, -0.75, 1.0, 1.0, -0.75, -1.0, 1.0, -1.0, -0.5, -0.75, 0.5, -1.0, 0.75, -0.75, 1.0, 0.25, -0.5, 0.25, 1.0, 0.75, -0.25, 1.0, -1.0, -0.25, -0.5, -0.5, -0.75, -1.0, -0.75, -0.75, -1.0, -0.75, 0.0, 0.0, -0.75, 0.75, -1.0, -1.0, 0.5, 0.5, 1.0, 0.25, 0.5, -0.5, -0.25, 0.5, 0.5, -1.0, 1.0, 0.0, -0.75, -0.25, 0.5, -0.5, 1.0, 1.0, 0.25, -0.5, -0.25, 0.5, 0.25, ]);
    
    
    const array2 = new Float32Array([0.25, 1.0, 0.75, 0.25, 1.0, -0.75, -0.25, 0.25, -0.5, -1.0, -0.75, 0.25, -1.0, 0.75, 0.5, 0.25, 1.0, -0.75, -1.0, 0.75, -0.25, -0.75, -0.5, -0.75, -0.5, 0.5, 0.25, 0.5, 1.0, 1.0, -0.25, 0.75, -0.5, -0.75, -0.75, -1.0, 0.75, -0.75, -0.75, -0.25, -0.25, -0.5, -0.5, 0.75, 0.0, 0.75, -1.0, 0.5, 0.25, -0.5, 0.5, -0.25, -0.25, 0.0, 0.0, 0.0, 0.5, 0.75, -0.75, 0.0, -0.75, -0.25, -0.5, 0.0, -0.25, -0.5, -1.0, -0.5, 1.0, 0.0, 0.75, 0.75, 0.75, -1.0, 1.0, -0.25, -1.0, 1.0, -1.0, 0.25, -0.25, 0.25, 1.0, -0.75, -1.0, -0.5, 0.0, -0.75, -1.0, 0.5, -0.5, 1.0, -1.0, -0.5, 0.0, 0.0, -0.5, -0.5, 0.75, -0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    const array3 = new Float32Array([-1.0, -0.5, -0.5, 0.25, 0.75, 0.0, 0.5, -0.75, -0.75, 0.0, -0.75, 0.25, -0.5, -0.5, -0.75, 0.25, 1.0, 0.25, 0.5, -0.5, 0.0, -0.75, 0.75, 0.25, -1.0, 1.0, 0.5, -0.5, -0.25, 0.5, 1.0, 0.75, 0.5, 0.25, 0.25, 0.25, 1.0, -0.25, 0.0, 0.0, -1.0, -0.25, -0.25, -0.5, 0.75, 0.0, -1.0, 0.25, -0.25, 0.5, 0.0, 0.75, 0.5, 0.5, -0.25, -0.5, -0.5, 0.0, -0.5, -0.25, -0.75, -0.75, -0.25, 0.0, 0.5, -0.75, 0.25, 0.75, -1.0, 0.25, 0.0, -0.75, 0.5, -0.75, 0.5, -0.5, 0.75, 0.25, 0.5, 0.0, 0.25, 0.5, -0.5, 0.5, -0.25, 1.0, 0.5, 1.0, 0.0, -0.5, -0.25, 0.5, -0.75, 0.5, -0.5, 0.75, -0.75, 0.75, -0.75, 0.25, ]);
    
    const array4 = new Float32Array([0.5, 0.75, -0.5, 0.25, 0.25, 1.0, 0.25, -1.0, 1.0, -0.75, 0.0, 0.75, -1.0, 0.75, 0.25, -0.75, -0.5, 0.75, -0.5, 0.75, 0.5, 0.75, -0.75, 0.0, 0.0, -0.75, -1.0, 0.5, 1.0, 0.75, -0.5, 0.0, 0.25, 0.5, -0.5, -0.25, -0.75, -1.0, 1.0, -0.5, -0.5, 0.25, 0.25, 0.5, 0.0, 0.5, -1.0, 0.25, -1.0, 0.0, -1.0, -0.75, 0.75, 1.0, -1.0, 0.5, 0.25, 0.75, -0.75, 0.25, 0.25, 0.0, 0.75, -0.75, 0.5, 1.0, -0.75, -0.75, 0.25, 0.0, -0.25, -0.75, 0.25, -0.75, 0.75, -0.5, 0.5, 0.25, 0.75, -0.75, -0.75, 0.25, -0.25, 0.25, 0.75, 0.25, 0.75, 0.5, 0.5, -0.5, 0.75, 0.5, -0.5, 1.0, 0.75, -1.0, -0.5, 1.0, 0.0, -0.75, ]);
    
    const array5 = new Float32Array([0.25, -0.75, -0.25, 0.0, -0.25, -1.0, -0.75, 0.25, 0.25, 0.75, -1.0, 0.25, -0.5, -0.25, -1.0, 1.0, 0.0, -0.75, -1.0, -0.75, 0.5, -0.5, 1.0, 0.75, -0.5, 0.5, -0.5, 1.0, 0.0, -0.25, -0.5, -0.75, 0.25, 0.5, -1.0, 0.5, 0.25, -0.75, 0.0, 1.0, 1.0, -0.75, 0.75, -0.5, 0.5, 0.75, -0.25, 0.0, 0.5, 1.0, -0.25, -0.5, 0.5, -0.25, -0.75, -0.5, -0.5, 0.75, 0.25, -0.25, -0.5, -0.25, 1.0, -0.25, 0.25, 1.0, -1.0, 0.5, 0.25, 0.0, -1.0, 0.25, 0.25, 0.0, 0.75, -0.75, 0.0, 0.5, 0.25, 0.0, 0.0, 1.0, 0.0, 0.75, 1.0, -0.75, 0.75, -0.25, 0.25, 0.0, 0.25, -0.75, 0.0, -1.0, 0.75, -0.25, -1.0, 0.5, -0.25, -1.0, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query100.destroy()
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture102.destroy();
    query101.destroy()
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    texture101.destroy();
    
    
    buffer102.destroy()
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    query101.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    buffer100.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device10.pushErrorScope("validation");
    device20.destroy();
    compute_pass_encoder1000.popDebugGroup()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    query103.destroy()
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    buffer101.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    texture100.destroy();
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    texture103.destroy();
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    
    texture104.destroy();
    device10.queue.writeBuffer(buffer106, 0, array4, 0, array4.length);
    
    query103.destroy()
    buffer104.destroy()
    
    
    device10.queue.writeBuffer(buffer106, 0, array1, 0, array1.length);
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array6 = new Float32Array([0.25, 0.0, 0.75, 0.5, -0.25, -0.5, -0.25, 1.0, -0.25, 0.0, -0.25, -0.25, 0.75, 0.75, 1.0, 0.5, 0.5, 1.0, 0.75, -0.5, 0.0, 0.0, -0.5, 0.75, -0.25, -0.25, -0.25, 0.25, -0.5, -0.75, -0.75, 0.0, -0.5, -0.25, -0.75, 0.0, -0.75, -0.5, 0.75, 1.0, 0.25, 0.5, -0.75, 0.5, 0.75, 0.5, -1.0, 0.75, 0.75, 0.75, -0.5, 0.0, -0.75, -0.75, -0.25, 0.0, 0.25, 0.25, 0.25, -1.0, 0.0, 0.25, 0.25, 0.0, -0.75, 0.25, 0.5, 0.75, -0.75, 0.0, -0.25, 0.75, -0.5, -0.25, -0.75, -0.75, 0.75, -0.25, -0.5, -0.5, 0.75, -0.5, -1.0, 0.0, 1.0, 0.75, -0.25, -0.25, 1.0, 0.5, 0.75, 0.0, 0.75, -0.5, 0.0, 0.5, -0.25, 1.0, -0.5, -0.75, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeTexture({ texture: texture105 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture105 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    compute_pass_encoder1010.pushDebugGroup("group_marker")
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
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    
    query100.destroy()
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.queue.writeBuffer(buffer106, 0, array5, 0, array5.length);
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    buffer106.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
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
    
    
    device10.queue.writeTexture({ texture: texture105 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device10.pushErrorScope("validation");
    render_bundle_encoder101.setPipeline(render_pipeline101);
    
    
    query101.destroy()
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    device10.queue.writeTexture({ texture: texture105 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query103.destroy()
    texture105.destroy();
    query102.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query103
    });
    
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder100.popDebugGroup();
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture106.destroy();
    
    const array7 = new Float32Array([-0.25, -1.0, 0.75, 0.5, 0.0, -0.75, -1.0, 0.0, -0.5, -0.5, 0.25, -0.25, -1.0, -0.5, 0.25, 0.25, -0.25, -1.0, -0.25, 0.5, 0.5, 0.25, -1.0, 0.5, -1.0, -1.0, 1.0, 0.75, -0.75, -1.0, 0.25, -0.75, -0.75, 0.75, 0.5, -0.25, -0.25, -0.5, -0.25, 0.0, -0.25, 0.0, 0.0, -0.25, 0.0, -0.25, -0.25, -1.0, -0.25, -1.0, -1.0, -0.75, 0.75, 0.5, -1.0, 0.5, 0.75, -1.0, -0.5, -0.75, 0.0, -0.75, 1.0, 0.75, 0.5, 0.0, 0.5, 0.75, -0.5, -0.75, -1.0, 0.25, -1.0, 0.25, 1.0, 0.75, -0.75, -0.75, 1.0, -0.25, 0.75, 0.75, 0.75, -0.25, 0.25, -0.25, -0.75, 0.75, -0.75, -0.5, -0.25, -0.75, -0.75, 0.25, -0.25, 0.0, 0.0, -0.25, 0.25, 1.0, ]);
    render_pass_encoder1020.setPipeline(render_pipeline103);
    
    
    render_pass_encoder1020.insertDebugMarker("marker");
    
    render_pass_encoder1020.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
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
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.destroy();
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer108.destroy()
    query104.destroy()
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query102.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    query101.destroy()
    
    device10.queue.writeTexture({ texture: texture107 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture107 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder100.insertDebugMarker("marker");
    {
        await buffer109.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer109.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer109.unmap();
        console.log(new Float32Array(data));
    }
    
    device10.queue.writeBuffer(buffer109, 0, array0, 0, array0.length);
    buffer105.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture107 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    device10.queue.writeTexture({ texture: texture107 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.popDebugGroup();
    
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    render_pass_encoder1020.pushDebugGroup("group_marker");
    {
        await buffer109.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer109.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer109.unmap();
        console.log(new Float32Array(data));
    }
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device10.pushErrorScope("internal");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query102
    });
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    render_pass_encoder1030.setPipeline(render_pipeline101);
    device10.queue.writeBuffer(buffer109, 0, array4, 0, array4.length);
    const array8 = new Float32Array([0.5, 0.75, 0.0, -0.25, -0.25, 0.75, 0.25, 1.0, 1.0, 0.0, 0.5, 0.0, 0.25, -0.75, -1.0, -0.75, 0.75, -0.25, -0.75, -0.25, -0.25, -0.5, 0.25, 0.0, -0.5, -0.25, 1.0, -0.25, 0.75, 1.0, -0.75, -0.75, 1.0, -0.75, 0.5, -0.25, 0.75, 0.0, 0.75, 0.25, -0.75, -1.0, 0.75, 0.75, -0.75, 0.0, 0.25, -0.25, 1.0, 0.5, 0.0, -0.25, 0.0, 1.0, -1.0, 0.75, 0.0, 0.5, -1.0, -0.5, 0.5, -0.5, 0.5, -1.0, 0.75, -0.75, 0.0, 0.0, 0.75, -0.75, -0.75, -0.25, 0.5, 0.0, 0.25, -0.25, 0.75, -0.25, 0.25, 0.0, 0.75, -0.25, -0.75, 0.75, -0.25, 0.25, -1.0, -0.5, -0.75, 0.25, -0.5, 0.5, 0.5, 1.0, -1.0, 0.25, -0.75, 0.25, 0.5, -0.25, ]);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture109 = device10.createTexture({
        label: "texture109",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    device10.queue.writeTexture({ texture: texture107 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture_view1080 = texture108.createView({ label: "texture_view1080" });
    buffer109.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1080,
            },
        ],
        occlusionQuerySet: query104
    });
    buffer107.destroy()
    
    buffer103.destroy()
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    texture108.destroy();
    query105.destroy()
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    query105.destroy()
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const array9 = new Float32Array([0.25, 0.25, 0.5, -0.5, 0.0, 0.25, 0.75, 0.0, -1.0, -0.5, 0.25, 0.75, 0.0, 0.0, 0.25, 1.0, 0.0, -0.5, -0.75, 0.0, 0.5, -1.0, -1.0, -0.25, -0.5, -0.75, 0.75, -1.0, 0.5, -0.25, -1.0, 0.25, -0.75, -1.0, 1.0, 0.25, -0.75, -0.5, 0.75, -0.25, -0.5, -0.75, 0.5, -0.75, -0.25, -0.25, 0.0, 0.5, -0.75, 1.0, -1.0, 0.5, 0.25, 0.75, -0.25, -0.5, -0.5, -0.75, -0.5, 0.0, 1.0, 0.75, 0.5, 0.75, -0.25, 0.25, 0.75, -0.5, -0.25, -0.5, 0.75, -0.25, -0.5, 0.0, -0.75, -1.0, 0.0, 0.75, 0.0, -0.75, 0.5, 0.0, -0.25, -1.0, 0.5, 1.0, -0.25, -0.75, 0.25, 0.25, -0.75, 0.0, -0.75, -0.75, 0.75, -0.5, -0.75, -0.25, -1.0, 0.75, ]);
    const array10 = new Float32Array([-0.5, -1.0, -0.75, 0.5, 0.25, 1.0, -1.0, 0.25, -1.0, 0.25, 1.0, 0.5, 1.0, -0.75, -1.0, -1.0, -0.5, -1.0, -0.25, 0.0, -0.5, -0.25, -1.0, 0.25, -0.5, -0.25, -0.25, -0.75, -0.75, -0.5, 0.5, -1.0, 0.5, -0.75, 0.0, 0.25, -1.0, -0.75, 0.75, -0.5, -0.75, 1.0, 0.75, 0.5, 0.5, -0.5, 0.5, -0.5, -1.0, 0.25, -0.75, 0.75, 1.0, 1.0, 0.25, 0.25, -0.75, -0.5, 1.0, -0.75, -1.0, 0.0, 0.25, 0.0, 1.0, 0.75, 0.5, -0.25, -0.5, -0.25, 1.0, -1.0, 0.25, -1.0, 0.5, 1.0, 0.5, 0.0, -0.75, 0.75, -1.0, 0.0, -0.75, 0.5, -0.5, -0.5, 0.5, 0.25, 0.0, -1.0, -0.5, -0.75, 0.25, -1.0, 0.5, -1.0, 0.75, -1.0, -0.75, 0.75, ]);
    
    device10.queue.writeTexture({ texture: texture107 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    command_encoder105.resolveQuerySet(
        query105,
        0,
        32,
        buffer103,
        0
    )
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query104
    });
    device10.queue.writeTexture({ texture: texture107 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1040.setViewport(0, 0, texture108.width / 2, texture108.height / 2, 0, 1);
    render_pass_encoder1050.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture107 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder1050.setPipeline(render_pipeline1011);
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
    render_pass_encoder1040.setPipeline(render_pipeline100);
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    
    query105.destroy()
    render_pass_encoder1040.setStencilReference(1);
    
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1050.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture107 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1010.insertDebugMarker("marker")
    query100.destroy()
    render_pass_encoder1020.popDebugGroup();
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    compute_pass_encoder1000.popDebugGroup()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1080,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1060.setPipeline(render_pipeline105);
    render_bundle_encoder102.setPipeline(render_pipeline105);
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group102);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1040.setScissorRect(0, 0, texture108.width / 2, texture108.height / 2);
    device10.queue.writeTexture({ texture: texture107 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const array11 = new Float32Array([-0.75, -0.5, -0.5, 0.5, 1.0, -0.5, 0.0, -0.5, 0.75, 1.0, -0.75, 1.0, -0.5, -0.5, 0.0, 0.5, -0.75, 0.5, -0.5, 0.0, 0.5, 0.25, -0.25, 0.75, 0.75, 0.25, 0.5, -0.25, 0.25, 1.0, -0.5, -0.25, -0.5, 0.0, 0.75, 0.5, -0.25, 0.0, -0.25, 0.25, -0.25, -0.25, -1.0, 1.0, 1.0, 0.5, 0.5, 1.0, -0.5, 1.0, 0.75, 0.5, 0.25, -0.5, 0.5, 0.5, -1.0, 0.25, -0.5, -0.5, 0.75, -0.25, 0.75, -0.5, 1.0, -0.5, 1.0, 1.0, -0.5, -1.0, 0.5, 0.25, -0.75, -0.25, -1.0, 0.75, -1.0, -1.0, -0.5, 0.75, -0.5, 1.0, 0.25, -0.75, 0.5, -0.5, 0.0, 0.0, 0.75, 0.5, 1.0, 0.75, 0.25, -1.0, 0.0, -0.75, -0.75, 0.75, 1.0, 0.0, ]);
    
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1040.setViewport(0, 0, texture108.width / 2, texture108.height / 2, 0, 1);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    query104.destroy()
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1090 = texture109.createView({ label: "texture_view1090" });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.setStencilReference(1);
    query104.destroy()
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group103);
    
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.insertDebugMarker("marker");
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group104);
    texture109.destroy();
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1060.setViewport(0, 0, texture108.width / 2, texture108.height / 2, 0, 1);
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    device10.queue.writeTexture({ texture: texture107 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query104.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
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
    render_pass_encoder1060.setScissorRect(0, 0, texture108.width / 2, texture108.height / 2);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group105);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture107 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1060.setStencilReference(1);
    render_pass_encoder1030.popDebugGroup();
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer1011.destroy()
    render_pass_encoder1060.setStencilReference(1);
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1060.setStencilReference(1);
    buffer1015.destroy()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer1012.destroy()
    
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder102.insertDebugMarker("marker");
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
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.queue.writeTexture({ texture: texture107 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    device10.queue.writeTexture({ texture: texture107 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    device10.queue.writeTexture({ texture: texture107 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1071 = texture107.createView({ label: "texture_view1071" });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
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
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1070.setPipeline(render_pipeline1013);
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder102.popDebugGroup();
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    buffer1013.destroy()
    render_pass_encoder1040.setScissorRect(0, 0, texture108.width / 2, texture108.height / 2);
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline1011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group106);
    const texture1010 = device10.createTexture({
        label: "texture1010",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture1010 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.writeTexture({ texture: texture1010 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1010 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1060.pushDebugGroup("group_marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture1010 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline1013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    render_pass_encoder1070.setBindGroup(0, bind_group107);
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    buffer1019.destroy()
    
    render_pass_encoder1060.popDebugGroup();
    
    device10.queue.writeTexture({ texture: texture107 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture107 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer1014.destroy()
    render_pass_encoder1070.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.queue.writeTexture({ texture: texture1010 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1072 = texture107.createView({ label: "texture_view1072" });
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pass_encoder1080 = command_encoder108.beginRenderPass({
        label: "render_pass_encoder1080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query102
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1022, 0, array9, 0, array9.length);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture107 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1010 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    device10.queue.writeTexture({ texture: texture1010 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1023, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1023, 0);
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1023, 0, array9, 0, array9.length);
    device10.queue.writeBuffer(buffer1023, 0, array1, 0, array1.length);
    const texture1011 = device10.createTexture({
        label: "texture1011",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture1010 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.queue.writeBuffer(buffer1022, 0, array5, 0, array5.length);
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const array12 = new Float32Array([-0.25, 0.75, 0.75, -1.0, -0.25, 0.75, 0.25, 0.0, -1.0, 0.25, -0.75, 0.0, -0.75, -1.0, -0.75, 0.5, -0.25, 0.25, -0.75, -0.25, -1.0, -0.5, -0.5, -0.5, 0.75, 1.0, -0.5, 0.25, 0.75, -0.5, -0.75, 0.25, -0.5, 0.25, -1.0, 0.5, 0.75, 0.75, 0.25, 1.0, -0.75, -0.5, -0.25, 1.0, -0.75, 0.75, -1.0, 0.75, 0.5, -0.25, 0.0, 0.75, 0.5, 0.75, 0.0, -0.25, -0.75, 1.0, 0.75, -0.5, 0.0, 0.5, 0.75, 0.75, 0.5, -0.25, 0.75, -0.75, 0.0, -0.25, 0.0, 1.0, 0.25, 0.5, 0.25, 0.25, -0.5, 0.5, 0.25, -0.75, -0.75, 0.25, 0.75, 0.75, 0.5, -0.25, 0.0, 1.0, 1.0, -0.5, -1.0, 0.5, -0.5, -0.5, -0.75, -0.25, 0.0, 0.0, -0.5, 0.75, ]);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1080.setPipeline(render_pipeline101);
    device10.queue.writeTexture({ texture: texture107 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const render_pipeline1016 = device10.createRenderPipeline({
        label: "render_pipeline1016",
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
    device10.queue.writeTexture({ texture: texture1010 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1070.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer1022, 0, array5, 0, array5.length);
    
    device10.queue.writeTexture({ texture: texture107 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture1010 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer1023, 0, array7, 0, array7.length);
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    texture1010.destroy();
    command_encoder109.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_pass_encoder1090 = command_encoder109.beginRenderPass({
        label: "render_pass_encoder1090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1090,
            },
        ],
        occlusionQuerySet: query104
    });
    device10.queue.writeTexture({ texture: texture107 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query105.destroy()
    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1026,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group108);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1060.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture107 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1090.setPipeline(render_pipeline103);
    query103.destroy()
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1028,
                },
            },
        ],
    });

    render_pass_encoder1090.setBindGroup(0, bind_group109);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout104]
    });
    buffer1028.destroy()
    render_pass_encoder1070.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1070.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1030,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group1010);
    
    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query101.destroy()
    render_pass_encoder1060.setViewport(0, 0, texture108.width / 2, texture108.height / 2, 0, 1);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1050.insertDebugMarker("marker");
    
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1010.end();
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder1000.popDebugGroup()
    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1033,
                },
            },
        ],
    });

    render_pass_encoder1060.setBindGroup(0, bind_group1011);
    compute_pass_encoder1000.end();
    render_pass_encoder1050.popDebugGroup();
    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1035,
                },
            },
        ],
    });

    render_pass_encoder1080.setBindGroup(0, bind_group1012);
    device10.queue.submit([command_buffer101, ]);
    const command_buffer100 = command_encoder100.finish();
}