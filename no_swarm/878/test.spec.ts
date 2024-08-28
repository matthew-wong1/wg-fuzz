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
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    query000.destroy()
    device00.pushErrorScope("validation");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const array0 = new Float32Array([0.5, -0.75, -0.25, 0.5, 1.0, -1.0, -0.5, -0.25, -0.75, -1.0, -0.75, 1.0, 0.0, 0.75, 0.0, 0.25, -0.25, 0.75, 0.25, -0.5, 0.5, -0.25, -1.0, -0.5, 0.75, -0.75, 0.0, 0.5, 0.75, 0.25, -0.25, -0.5, 0.5, 1.0, 0.0, 0.0, -0.25, -1.0, -0.75, -0.75, 1.0, -0.25, 1.0, 1.0, -0.75, -1.0, 0.75, -0.25, 0.5, 0.0, -0.75, -0.25, 0.0, -0.5, 1.0, -0.75, -0.75, 0.5, 1.0, 1.0, 0.0, -0.5, -0.75, 0.25, 0.0, 0.0, 0.25, -1.0, 0.5, 0.75, -0.5, 0.5, -0.5, -0.25, -0.25, -1.0, -0.5, -0.5, 1.0, 0.5, 1.0, 0.75, -0.75, 0.75, 0.25, 0.75, -1.0, 0.75, -0.5, 0.5, 0.25, 0.75, -1.0, 1.0, 0.0, 0.75, 0.5, 0.0, 1.0, 0.5, ]);
    texture001.destroy();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query000.destroy()
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    texture100.destroy();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    texture002.destroy();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device10.pushErrorScope("internal");
    command_encoder100.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const command_buffer101 = command_encoder101.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder102.insertDebugMarker("mymarker");
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    command_encoder100.insertDebugMarker("mymarker");
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    command_encoder000.popDebugGroup()
    
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
    command_encoder000.clearBuffer(buffer001);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.setPipeline(render_pipeline002);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.setPipeline(render_pipeline004);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer003.destroy()
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    texture000.destroy();
    command_encoder102.pushDebugGroup("mygroupmarker")
    const array1 = new Float32Array([-0.75, 0.0, -0.5, 0.5, 0.5, -1.0, -0.75, -0.5, -1.0, 1.0, -1.0, 0.0, -0.75, 0.25, 0.25, 0.0, -0.5, -0.75, -0.25, 0.5, 0.5, -0.5, 0.75, -0.75, -0.25, -1.0, 0.0, 1.0, 0.5, -0.5, 0.0, -0.5, 0.0, -0.75, -0.75, 0.0, -0.5, -0.75, -0.25, 0.75, 0.0, -1.0, 0.5, -0.25, 0.25, 0.5, 0.5, -0.25, 0.0, 1.0, 0.0, 0.75, 0.5, 0.5, 0.25, -1.0, 0.0, 0.75, -0.25, 0.5, 1.0, -0.75, -0.25, -1.0, 0.0, -0.75, -1.0, 0.5, 0.5, 1.0, -0.25, 0.0, -0.75, 0.25, -0.75, 1.0, -0.5, -0.5, -0.5, 0.5, 0.5, 0.25, -0.5, -1.0, -0.75, -1.0, -0.75, 0.75, -0.5, -1.0, 0.75, 0.75, -1.0, 0.25, -0.5, -1.0, 0.0, -0.5, -1.0, -0.25, ]);
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    
    command_encoder000.insertDebugMarker("mymarker");
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    buffer004.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    buffer002.destroy()
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0000.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    buffer100.destroy()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device30.destroy();
    device00.pushErrorScope("internal");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_pass_encoder0000.executeBundles([])
    render_bundle_encoder002.setPipeline(render_pipeline004);
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    command_encoder102.popDebugGroup()
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder0000.setStencilReference(1);
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    
    
    
    query100.destroy()
    render_pass_encoder0000.setPipeline(render_pipeline005);
    render_pass_encoder0000.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const command_buffer102 = command_encoder102.finish();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    texture102.destroy();
    render_pass_encoder0000.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    
    
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    device00.pushErrorScope("internal");
    device10.pushErrorScope("out-of-memory");
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    command_encoder002.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture007.destroy();
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "stencil8",
        dimension: "2d"
    });
    compute_pass_encoder1000.popDebugGroup()
    query001.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    texture003.destroy();
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const array2 = new Float32Array([-1.0, -0.5, -0.25, -1.0, 1.0, -0.25, 0.75, 0.0, -0.5, -0.25, 1.0, -0.25, 0.75, 0.0, -0.25, -0.5, -0.25, -0.75, -0.25, 0.0, 0.5, 0.25, -1.0, 1.0, 0.0, -1.0, -1.0, 0.25, 0.0, 0.75, 0.5, -1.0, 0.25, -0.5, -0.5, -1.0, 0.75, 0.5, -0.25, 0.0, 0.5, -0.5, -0.75, 0.25, 0.75, 0.25, -0.5, -0.75, -0.25, -0.25, -1.0, 0.5, -1.0, 0.5, 1.0, -1.0, 1.0, 0.5, 0.0, 1.0, 0.5, 0.75, -0.25, -1.0, -0.5, 0.25, 1.0, 0.0, -0.75, -0.25, 0.5, 0.75, -0.75, 0.75, -1.0, -1.0, -0.5, -0.5, 1.0, -0.25, -0.25, 0.5, 0.25, -1.0, 0.5, -1.0, 0.0, 1.0, 0.5, 0.0, 0.5, 0.5, -0.75, -1.0, -0.25, 0.5, -1.0, -0.5, 0.75, -1.0, ]);
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
    buffer000.destroy()
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
        occlusionQuerySet: query102
    });
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    query000.destroy()
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    device00.queue.writeTexture({ texture: texture006 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture006 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setPipeline(render_pipeline001);
    
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
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    buffer006.destroy()
    
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder0010.popDebugGroup()
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    query001.destroy()
    
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    
    
    render_bundle_encoder002.popDebugGroup();
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query001.destroy()
    
    render_pass_encoder1030.insertDebugMarker("marker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_pass_encoder0000.insertDebugMarker("marker");
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    
    
    const array3 = new Float32Array([-0.75, -0.75, -0.75, 1.0, 1.0, -0.75, -0.75, 1.0, -0.5, -1.0, -0.25, -0.25, 0.25, 0.5, 0.0, 1.0, -0.75, 0.5, -0.25, 1.0, 0.0, -0.25, -0.25, 1.0, 0.75, 1.0, -0.5, -0.75, -1.0, -0.5, 1.0, -0.25, 0.0, -0.75, 1.0, -0.25, -0.5, 0.75, 0.5, 0.25, -1.0, 0.0, -1.0, -0.75, 0.0, -1.0, 1.0, -1.0, 0.75, 0.25, -0.25, 0.0, 1.0, 0.25, 0.75, 0.25, 0.0, 0.0, -0.75, 0.5, -1.0, 0.75, 0.25, -1.0, -0.5, 0.75, 1.0, -0.25, -0.5, 0.5, -1.0, 0.75, 0.25, 0.25, 1.0, -0.75, -0.75, -1.0, 0.5, 0.5, -0.25, 0.75, -0.25, -0.5, -0.25, -0.75, -0.75, -1.0, 0.5, 0.75, 1.0, -0.25, 0.75, -1.0, -0.5, -0.25, 0.5, 0.75, -1.0, 0.75, ]);
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
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder104.pushDebugGroup("mygroupmarker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    command_encoder104.popDebugGroup()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder104.pushDebugGroup("mygroupmarker")
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group002);
    render_pass_encoder1030.insertDebugMarker("marker");
    
    buffer005.destroy()
    render_pass_encoder0000.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    
    buffer007.destroy()
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
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group003);
    command_encoder104.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    render_pass_encoder0000.setStencilReference(1);
    
    
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    
    render_pass_encoder0020.insertDebugMarker("marker");
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    texture005.destroy();
    render_bundle_encoder100.setVertexBuffer(0, buffer101);
    buffer102.destroy()
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer001.destroy()
    buffer200.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer0011.destroy()
    
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    render_pass_encoder0000.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    query103.destroy()
    texture200.destroy();
    render_pass_encoder1030.beginOcclusionQuery(0)
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
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
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder1030.setPipeline(render_pipeline100);
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder200.insertDebugMarker("mymarker");
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture0010 = device00.createTexture({
        label: "texture0010",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.endOcclusionQuery()
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group101);
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
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    command_encoder200.insertDebugMarker("mymarker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
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
    compute_pass_encoder1040.insertDebugMarker("marker")
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
        occlusionQuerySet: query103
    });
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0060,
            },
        ],
        occlusionQuerySet: query001
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
    texture004.destroy();
    render_bundle_encoder100.popDebugGroup();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    query001.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder1050.executeBundles([])
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    
    compute_pass_encoder1040.popDebugGroup()
    buffer108.destroy()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer101.destroy()
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
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
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
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
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_bundle_encoder101.setPipeline(render_pipeline101);
    
    
    
    buffer106.destroy()
    render_pass_encoder0030.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1050.pushDebugGroup("group_marker");
    
    render_pass_encoder0030.setViewport(0, 0, texture006.width / 2, texture006.height / 2, 0, 1);
    
    
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.destroy();
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder0020.setStencilReference(1);
    query100.destroy()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0030.executeBundles([])
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout103]
    });
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    query101.destroy()
    texture101.destroy();
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    render_pass_encoder0030.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
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
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group004);
    render_pass_encoder0030.setPipeline(render_pipeline000);
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder1030.beginOcclusionQuery(0)
    render_pass_encoder1050.executeBundles([])
    
    render_pass_encoder0000.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    
    
    query101.destroy()
    render_pass_encoder0000.insertDebugMarker("marker");
    
    const texture_view00100 = texture0010.createView({ label: "texture_view00100" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    buffer201.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    
    render_pass_encoder1030.pushDebugGroup("group_marker");
    device20.pushErrorScope("validation");
    command_encoder201.pushDebugGroup("mygroupmarker")
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
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

    render_pass_encoder0030.setBindGroup(0, bind_group005);
    render_pass_encoder0000.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder1050.setPipeline(render_pipeline100);
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device00.queue.writeTexture({ texture: texture006 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer009.destroy()
    buffer0013.destroy()
    
    render_pass_encoder0020.popDebugGroup();
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_pass_encoder1030.endOcclusionQuery()
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    render_pass_encoder1050.setStencilReference(1);
    
    query100.destroy()
    
    device00.queue.writeTexture({ texture: texture006 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.draw(3);
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    
    query102.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    query104.destroy()
    
    query103.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
        vertex: {
            module: shader_module0010,
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
            module: shader_module0010,
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    
    render_pass_encoder1030.setStencilReference(1);
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    
    buffer109.destroy()
    query105.destroy()
    command_encoder201.insertDebugMarker("mymarker");
    
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const compute_pass_encoder1060 = command_encoder106.beginComputePass({ label: "compute_pass_encoder1060" });
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer008.destroy()
    buffer0012.destroy()
    
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1032,
            },
        ],
        occlusionQuerySet: query100
    });
    buffer0010.destroy()
    device00.queue.writeTexture({ texture: texture006 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
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

    render_pass_encoder1050.setBindGroup(0, bind_group102);
    render_pass_encoder1070.setPipeline(render_pipeline102);
    compute_pass_encoder1040.setPipeline(compute_pipeline100);
    render_pass_encoder1030.setVertexBuffer(0, buffer105);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1050.setVertexBuffer(0, buffer105);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.draw(3);
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1070.setBindGroup(0, bind_group103);
    render_pass_encoder1050.end();
    compute_pass_encoder2000.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
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
    const command_buffer105 = command_encoder105.finish();
    compute_pass_encoder1060.setPipeline(compute_pipeline100);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer105, ]);
    command_encoder201.popDebugGroup()
    compute_pass_encoder1040.popDebugGroup()
    const command_buffer201 = command_encoder201.finish();
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1060.setBindGroup(0, bind_group105);
    render_pass_encoder1070.setVertexBuffer(0, buffer101);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group106);
    compute_pass_encoder1000.end();
    command_encoder100.popDebugGroup()
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1020, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1020, 0);
    const uint32_1060 = new Uint32Array(3);

    uint32_1060[0] = 100;
    uint32_1060[1] = 1;
    uint32_1060[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1060, 0, uint32_1060.length);

    compute_pass_encoder1060.dispatchWorkgroupsIndirect(buffer1021, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1070.drawIndirect(buffer1021, 0);
    compute_pass_encoder1060.end();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1030.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1070.end();
    device10.queue.submit([command_buffer100, ]);
    const command_buffer106 = command_encoder106.finish();
    const command_buffer107 = command_encoder107.finish();
    render_pass_encoder1030.end();
    const command_buffer103 = command_encoder103.finish();
    const command_buffer104 = command_encoder104.finish();
    device10.queue.submit([command_buffer103, command_buffer104, ]);
}