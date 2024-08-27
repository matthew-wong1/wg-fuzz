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
    const array0 = new Float32Array([0.25, 0.5, -0.25, 1.0, 0.5, 0.25, 0.25, -0.25, 0.25, 0.25, -0.5, 1.0, -0.25, 1.0, -0.25, 0.5, 0.75, 0.5, 0.25, -0.25, -0.25, -0.5, -1.0, 0.25, 1.0, 1.0, 0.75, -0.25, 1.0, 0.5, -0.75, 0.75, -0.25, 0.0, -0.75, 0.25, 0.0, 0.25, -0.25, 1.0, 0.75, 1.0, 0.0, 0.5, 1.0, 0.0, -1.0, 0.75, -0.5, 1.0, 0.75, 0.5, 0.0, -1.0, -0.75, -0.75, -0.25, -1.0, 0.0, -0.5, -0.75, 0.5, -0.25, 0.5, 0.75, -0.25, 1.0, -0.75, 0.75, 0.25, 0.5, 0.25, 0.0, 0.75, -0.75, 0.5, 1.0, 0.75, 1.0, 0.5, -0.75, 0.5, 0.75, -0.75, 0.25, 0.0, 0.0, -0.75, 0.25, -0.5, -0.75, 0.0, -0.25, 0.25, 0.75, -1.0, -0.5, 1.0, 0.5, -0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const array1 = new Float32Array([-0.5, 0.75, 0.25, 0.75, 1.0, -1.0, -1.0, -1.0, 0.75, -0.25, 1.0, 0.75, -0.75, -0.75, 0.25, 0.75, -1.0, 0.5, -0.75, -0.75, 0.75, -1.0, -0.25, 0.25, -1.0, 0.75, 0.75, -1.0, 0.5, 0.75, -0.75, 0.0, -0.5, 0.25, -0.75, -0.25, 1.0, 0.5, 0.25, 0.5, 1.0, 0.75, -0.5, 0.75, 0.25, -0.25, 0.0, 0.25, 0.75, -0.5, 0.25, 0.25, -0.5, -0.5, -1.0, 0.0, 0.25, -1.0, 0.0, 0.5, 0.0, 0.5, -0.25, 0.75, -0.25, 0.75, 0.5, 1.0, -1.0, 0.25, 0.25, 0.75, -1.0, -0.5, -1.0, 0.0, 0.5, -1.0, -0.5, 0.25, 1.0, -0.5, 0.0, -0.75, -0.75, 0.5, -0.75, 0.0, -1.0, -0.25, -0.5, 0.25, 0.5, 0.5, 1.0, -1.0, 0.75, 0.25, 0.25, 0.0, ]);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
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
    query100.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.destroy();
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder102.setPipeline(render_pipeline101);
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    render_bundle_encoder103.pushDebugGroup("group_marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder103.setPipeline(render_pipeline100);
    
    render_bundle_encoder101.setPipeline(render_pipeline101);
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
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
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_bundle_encoder103.setBindGroup(0, bind_group101);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    query100.destroy()
    render_bundle_encoder102.setVertexBuffer(0, buffer105);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer105.destroy()
    buffer100.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    
    render_bundle_encoder100.setPipeline(render_pipeline102);
    query100.destroy()
    buffer101.destroy()
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    buffer102.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
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
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    texture102.destroy();
    render_bundle_encoder102.draw(3);
    
    render_bundle_encoder103.insertDebugMarker("marker");
    command_encoder100.clearBuffer(buffer101);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder100.popDebugGroup();
    
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query100
    });
    
    render_pass_encoder1000.setPipeline(render_pipeline101);
    
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder1000.insertDebugMarker("marker");
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer104.destroy()
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
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group103);
    const array2 = new Float32Array([1.0, -0.25, 0.5, -0.5, 0.25, -0.75, 0.75, 1.0, 0.75, -0.5, -0.5, -0.5, 1.0, -1.0, -0.5, 0.75, -0.25, -0.5, 1.0, 0.5, -0.25, 1.0, -0.5, -1.0, 1.0, 0.75, -1.0, 1.0, -0.25, -1.0, 0.25, 1.0, 0.5, 0.75, -0.25, 0.0, 0.75, -0.5, 0.25, 0.75, -0.25, 0.0, -1.0, -0.25, -1.0, -1.0, -0.75, -0.75, 0.0, -0.75, 1.0, 0.0, -1.0, 1.0, -1.0, 1.0, 1.0, -0.25, 0.0, 0.5, -0.25, 0.5, 0.0, -1.0, -0.75, -0.5, 0.75, -1.0, -0.75, 0.0, 0.5, -0.25, -0.25, 0.0, -0.25, -0.75, -0.5, 0.25, -0.5, -0.5, 0.0, -0.5, 0.5, -0.25, 0.25, 0.0, -1.0, -0.25, -0.25, 1.0, -0.25, -0.75, -1.0, 0.75, -1.0, -0.5, -0.5, 0.0, 1.0, -0.75, ]);
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    texture100.destroy();
    
    
    render_bundle_encoder100.setVertexBuffer(0, buffer108);
    
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    render_bundle_encoder100.draw(3);
    buffer107.destroy()
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_bundle_encoder101.setVertexBuffer(0, buffer101);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder103.insertDebugMarker("marker");
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    
    
    
    render_bundle_encoder101.draw(3);
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    const array3 = new Float32Array([-1.0, 0.25, 0.0, -0.75, 1.0, 0.5, -1.0, -0.75, -0.75, -1.0, 0.25, 0.25, 0.75, 0.25, -1.0, 1.0, 1.0, -1.0, -0.25, -0.25, 0.5, 0.25, -0.5, -0.25, 0.25, 1.0, -1.0, 0.25, -0.25, 0.0, -0.5, -0.75, 0.25, -0.25, 1.0, 0.5, 0.5, -0.5, 0.0, 0.5, 0.5, 0.25, 0.5, 0.5, -0.5, 0.0, -1.0, -0.25, 1.0, -0.5, -0.75, 0.75, -0.5, 0.25, 1.0, -0.25, 0.0, 0.0, -0.75, 1.0, 0.25, 0.25, 1.0, 0.75, -0.5, 0.0, -0.25, 0.0, 1.0, -0.25, -0.5, -0.5, -0.5, -0.25, 0.5, -0.25, 0.75, 0.0, -0.25, -1.0, 0.75, -1.0, -0.25, 1.0, -0.5, -0.75, -0.5, 0.0, -0.75, 0.25, 1.0, 0.25, -1.0, -1.0, 0.5, -0.75, 0.5, 0.0, -0.25, 0.75, ]);
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    device10.queue.writeBuffer(buffer108, 0, array1, 0, array1.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1000.setStencilReference(1);
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    
    buffer108.destroy()
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group104);
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    render_bundle_encoder100.drawIndirect(buffer104, 0);
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer106.destroy()
    const array4 = new Float32Array([1.0, 0.5, 1.0, -0.5, 0.5, 0.75, -0.75, -0.25, -0.75, -0.25, 0.25, 0.0, -0.5, 1.0, 0.75, 0.0, -0.75, 0.5, 0.5, -0.25, -0.75, 1.0, -1.0, 0.0, -1.0, -0.5, 1.0, 1.0, 0.0, 0.25, 0.5, 1.0, 0.25, 0.5, 0.5, -0.25, 0.75, 0.0, 0.75, 0.25, 0.0, -0.5, -0.75, 1.0, -1.0, 0.75, -1.0, 0.75, -0.5, 0.0, 0.5, 0.0, -0.5, 1.0, -0.5, 0.5, -0.25, -0.5, 0.75, 1.0, -0.5, 1.0, 0.25, -0.5, -0.25, 0.25, -0.75, 0.25, -1.0, 0.75, -1.0, -0.75, -1.0, 0.75, -0.75, 0.0, 0.25, 0.0, -0.75, -0.25, 0.75, -1.0, 0.5, -0.75, 0.5, 0.75, 0.25, -0.75, -1.0, -0.5, 0.25, 0.25, -0.25, 0.75, -0.75, 0.0, 0.25, -0.75, 1.0, -0.75, ]);
    render_bundle_encoder101.finish();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("out-of-memory");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder103.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder103.popDebugGroup();
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer109.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    device30.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    texture101.destroy();
    
    render_pass_encoder1000.setVertexBuffer(0, buffer109);
    texture101.destroy();
    render_bundle_encoder100.popDebugGroup();
    device10.queue.writeBuffer(buffer1010, 0, array4, 0, array4.length);
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query100
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1010.executeBundles([render_bundle_encoder101, render_bundle_encoder102, render_bundle_encoder103, ])
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder101.clearBuffer(buffer100);
    render_bundle_encoder103.setVertexBuffer(0, buffer105);
    buffer1010.destroy()
    
    command_encoder101.copyBufferToBuffer(
        buffer108,
        0,
        buffer1011,
        0,
        400
    );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    buffer400.destroy()
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
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
    render_pass_encoder1000.endOcclusionQuery()
    render_bundle_encoder103.draw(3);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder100.copyBufferToBuffer(
        buffer100,
        0,
        buffer104,
        0,
        400
    );
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder101.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer1012, 0, array4, 0, array4.length);
    render_pass_encoder1011.setPipeline(render_pipeline106);
    
    command_encoder101.clearBuffer(buffer102);
    render_bundle_encoder103.draw(3);
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1000.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    texture000.destroy();
    
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_bundle_encoder102.setIndexBuffer(buffer1011, "uint16");
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder103.setIndexBuffer(buffer108, "uint16");
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
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
    render_pass_encoder1011.insertDebugMarker("marker");
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline106.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group105);
    texture103.destroy();
    render_pass_encoder1000.draw(3);
    render_bundle_encoder102.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture104.destroy();
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.insertDebugMarker("marker");
    buffer1011.destroy()
    
    
    
    render_pass_encoder1011.setVertexBuffer(0, buffer107);
    render_pass_encoder1011.pushDebugGroup("group_marker");
    render_pass_encoder1000.setStencilReference(1);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    query100.destroy()
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder100.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1000.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device00.pushErrorScope("internal");
    device40.destroy();
    render_pass_encoder1000.insertDebugMarker("marker");
    device40.destroy();
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    buffer1012.destroy()
    buffer1014.destroy()
    device10.pushErrorScope("out-of-memory");
    command_encoder100.popDebugGroup()
    render_bundle_encoder102.setIndexBuffer(buffer1011, "uint16");
    
    device10.queue.writeTexture({ texture: texture105 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer1013, 0, array0, 0, array0.length);
    
    
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
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
    
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8sint",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.writeTexture({ texture: texture105 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder100.copyBufferToBuffer(
        buffer105,
        0,
        buffer107,
        0,
        400
    );
    
    buffer1011.destroy()
    
    device10.queue.writeTexture({ texture: texture105 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.end();
    render_pass_encoder1000.popDebugGroup();
    
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer1015.destroy()
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    query101.destroy()
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    command_encoder101.copyBufferToBuffer(
        buffer100,
        0,
        buffer1013,
        0,
        400
    );
    texture105.destroy();
    render_pass_encoder1011.setIndexBuffer(buffer1012, "uint16");
    compute_pass_encoder1010.insertDebugMarker("marker")
    query101.destroy()
    device10.queue.writeBuffer(buffer1013, 0, array2, 0, array2.length);
    
    
    
    device10.queue.submit([]);
    device10.queue.writeBuffer(buffer1013, 0, array3, 0, array3.length);
    render_pass_encoder1011.setIndexBuffer(buffer1014, "uint16");
    
    device10.queue.writeBuffer(buffer1013, 0, array0, 0, array0.length);
    
    buffer1016.destroy()
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    render_pass_encoder1011.setIndexBuffer(buffer108, "uint16");
    
    query101.destroy()
    device10.queue.writeBuffer(buffer1013, 0, array4, 0, array4.length);
    
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    render_pass_encoder1011.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1001.insertDebugMarker("marker");
    
    render_pass_encoder1001.setPipeline(render_pipeline103);
    device10.queue.writeBuffer(buffer1012, 0, array2, 0, array2.length);
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    device10.queue.writeBuffer(buffer1015, 0, array1, 0, array1.length);
    render_bundle_encoder103.insertDebugMarker("marker");
    render_pass_encoder1011.setStencilReference(1);
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group106);
    device10.queue.writeBuffer(buffer1013, 0, array4, 0, array4.length);
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    device10.queue.writeBuffer(buffer1012, 0, array4, 0, array4.length);
    query100.destroy()
    render_bundle_encoder102.drawIndexedIndirect(buffer108, 0);
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
    texture101.destroy();
    query101.destroy()
    
    
    texture107.destroy();
    render_bundle_encoder100.setIndexBuffer(buffer1011, "uint16");
    query100.destroy()
    
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query102.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder103.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer1013, 0, array1, 0, array1.length);
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1001.setStencilReference(1);
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
    
    
    texture100.destroy();
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group107);
    
    render_pass_encoder1001.setStencilReference(1);
    buffer1017.destroy()
    
    query103.destroy()
    buffer1016.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    device10.queue.writeBuffer(buffer1018, 0, array3, 0, array3.length);
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer1018,
        0
    )
    
    command_encoder102.insertDebugMarker("mymarker");
    buffer1020.destroy()
    
    
    {
        await buffer1013.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1013.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1013.unmap();
        console.log(new Float32Array(data));
    }
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1020.setPipeline(render_pipeline106);
    render_bundle_encoder100.finish();
    device10.queue.writeBuffer(buffer1013, 0, array3, 0, array3.length);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder103.insertDebugMarker("marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer1013, 0, array0, 0, array0.length);
    query100.destroy()
    
    
    render_bundle_encoder100.finish();
    texture106.destroy();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.setIndexBuffer(buffer101, "uint16");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer1013, 0, array3, 0, array3.length);
    render_pass_encoder1011.setStencilReference(1);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer103.destroy()
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    command_encoder100.clearBuffer(buffer1013);
    
    
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const compute_pass_encoder1011 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1011" });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    device10.queue.writeBuffer(buffer1013, 0, array3, 0, array3.length);
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device10.pushErrorScope("out-of-memory");
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1011.pushDebugGroup("group_marker")
    render_bundle_encoder102.popDebugGroup();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query102
    });
    query103.destroy()
    device10.queue.writeBuffer(buffer1013, 0, array3, 0, array3.length);
    render_pass_encoder1011.pushDebugGroup("group_marker");
    
    render_pass_encoder1021.setPipeline(render_pipeline108);
    render_pass_encoder1001.setStencilReference(1);
    buffer106.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query104.destroy()
    
    compute_pass_encoder1011.pushDebugGroup("group_marker")
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder1011.popDebugGroup();
    buffer1018.destroy()
    
    render_pass_encoder1011.insertDebugMarker("marker");
    render_bundle_encoder101.finish();
    
    {
        await buffer1013.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1013.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1013.unmap();
        console.log(new Float32Array(data));
    }
    device50.pushErrorScope("out-of-memory");
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    {
        await buffer1013.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1013.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1013.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder300.insertDebugMarker("marker");
    
    query103.destroy()
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1021.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    command_encoder102.copyTextureToBuffer(
        {
            texture: texture106
        },
        {
            buffer: buffer1013
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    compute_pass_encoder1010.popDebugGroup()
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1011.pushDebugGroup("group_marker");
    command_encoder100.resolveQuerySet(
        query104,
        0,
        32,
        buffer1011,
        0
    )
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    
    buffer1019.destroy()
    device10.queue.writeBuffer(buffer1013, 0, array2, 0, array2.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const array5 = new Float32Array([0.0, 0.5, -1.0, 0.25, -0.75, 1.0, 1.0, 0.5, -0.25, -0.5, -0.75, 1.0, -0.25, -0.25, 0.75, 0.0, -0.75, 0.75, -1.0, 0.0, -0.75, 0.25, -0.25, 0.25, 0.0, 1.0, -0.25, 0.75, 0.5, 0.75, 0.25, 0.25, -0.75, 0.5, -0.5, 0.75, 0.5, 0.0, -0.5, 0.0, 0.5, -0.75, 0.5, 0.5, 0.25, -0.75, 0.5, -0.25, 1.0, 0.0, 0.5, -0.5, 0.0, -0.5, 0.5, -0.25, -1.0, 0.25, 0.75, 0.75, -0.5, -1.0, 0.5, 0.0, 0.75, -0.75, 0.25, 0.5, 1.0, -0.5, 0.25, 0.25, 0.25, -1.0, -0.5, 1.0, 0.25, 0.0, -0.75, 0.0, -0.5, -0.75, -0.75, -1.0, -0.75, -0.5, -0.75, 0.0, -0.75, -0.25, 0.75, -1.0, -0.75, 0.75, -1.0, -0.25, -0.75, -1.0, 0.75, 0.75, ]);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer1013.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder101.setIndexBuffer(buffer101, "uint16");
    
    command_encoder102.copyTextureToBuffer(
        {
            texture: texture107
        },
        {
            buffer: buffer106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline108.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group108);
    render_pass_encoder1001.insertDebugMarker("marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.copyBufferToBuffer(
        buffer1019,
        0,
        buffer108,
        0,
        400
    );
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture500.destroy();
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1011.setStencilReference(1);
    
    command_encoder100.clearBuffer(buffer107);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1011.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1011.draw(3);
    compute_pass_encoder1011.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder1000.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer1019, "uint16");
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1024,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group109);
    render_pass_encoder1020.setVertexBuffer(0, buffer102);
    render_pass_encoder1020.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1020.draw(3);
    device50.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer1024, 0);
    render_pass_encoder1011.drawIndirect(buffer1012, 0);
    render_pass_encoder1001.setVertexBuffer(0, buffer1015);
    render_pass_encoder1001.draw(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1021.setVertexBuffer(0, buffer104);
    render_pass_encoder1021.drawIndirect(buffer1015, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1011.end();
    render_pass_encoder1021.end();
    render_pass_encoder1021.draw(3);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1010.end();
    render_pass_encoder1001.end();
    device40.queue.submit([]);
    device20.queue.submit([]);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1010.end();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1010.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.end();
    device50.queue.submit([]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.end();
    device80.queue.submit([]);
    render_pass_encoder1000.end();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1021, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1016, "uint16");
    device60.queue.submit([]);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1020.setIndexBuffer(buffer1012, "uint16");
    device10.queue.submit([]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1013, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1011.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1011.popDebugGroup();
    device20.queue.submit([]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1000.end();
    render_pass_encoder1020.drawIndirect(buffer1016, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1020.drawIndexed(3);
}