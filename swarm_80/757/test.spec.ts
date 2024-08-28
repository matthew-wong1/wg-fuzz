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
    
    const array0 = new Float32Array([1.0, -0.5, 0.75, 0.5, 1.0, 0.25, 0.0, 1.0, -0.5, 0.5, -1.0, 0.25, 0.5, 0.25, 0.75, 0.5, -0.25, 1.0, 0.75, 0.75, 0.25, 0.25, 0.25, -0.25, -0.75, 1.0, 0.0, 0.75, -1.0, 0.5, -0.25, 0.25, 1.0, 0.75, -0.5, -0.5, 0.25, 1.0, 0.0, -0.75, -0.25, -1.0, -0.25, -0.5, -0.75, 1.0, 1.0, -0.25, 0.75, 0.5, 0.25, -0.25, -0.75, 1.0, -1.0, 0.5, -1.0, 0.0, 0.25, -0.75, -1.0, 0.0, 0.0, 0.25, 0.25, -0.25, -0.5, 0.5, 0.0, 0.75, 1.0, 1.0, -0.5, -0.5, 0.25, 1.0, 0.25, 0.75, -0.5, -1.0, 0.5, 0.25, 0.75, -1.0, 0.5, 1.0, 0.25, -0.5, -1.0, 0.0, 0.75, 1.0, -0.5, -0.25, 0.0, -0.75, -0.25, 1.0, 0.75, 0.75, ]);
    
    
    const array1 = new Float32Array([0.5, -0.5, 0.25, -0.5, 0.25, -0.75, -0.5, 1.0, -0.25, 0.25, 0.0, 0.5, -1.0, -0.25, 0.75, -0.75, -0.25, 1.0, -0.25, -0.25, 0.25, 1.0, 0.25, -0.75, 0.5, 0.0, -0.75, 0.0, 0.75, 0.75, 0.25, -0.75, -0.5, 1.0, -0.75, 0.0, 0.5, 1.0, -0.5, 0.75, -0.75, 0.0, 0.75, 0.25, -0.25, 1.0, 1.0, 0.75, -1.0, -0.25, -0.5, 1.0, -0.75, 0.75, -0.25, 1.0, 0.5, -1.0, 0.0, 0.0, -0.5, 0.5, -0.75, 0.5, 0.75, -0.25, 0.25, 0.0, -0.5, 0.25, 0.5, 0.25, -1.0, -0.25, -1.0, -1.0, 0.0, -0.5, 0.25, -0.75, 0.25, -0.75, 0.0, -0.75, -0.75, 0.5, 0.25, 0.5, 1.0, 0.5, -1.0, 0.5, -0.5, 0.0, 0.0, -1.0, 1.0, -1.0, 0.25, 0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const array2 = new Float32Array([0.5, 1.0, -1.0, -0.25, 0.0, -1.0, -0.25, -0.75, 0.0, -1.0, 0.5, 0.25, -0.75, 0.5, 0.5, -1.0, 0.0, -0.25, -0.5, 0.75, -0.5, -0.25, 0.25, 0.25, 0.0, 0.25, 0.5, -0.25, 0.0, 0.5, 0.25, 0.25, 0.5, 1.0, 0.5, 0.0, 0.5, 1.0, 0.0, 0.0, 0.75, -0.5, -0.25, -0.75, 1.0, 0.25, 1.0, -0.25, -0.25, 0.75, -0.5, 0.25, -0.5, -1.0, 1.0, 0.5, -0.75, 0.75, -0.5, -0.75, 0.75, -0.25, -0.75, -1.0, 0.5, 0.75, 1.0, -0.5, 0.5, 1.0, 0.0, 1.0, 1.0, 1.0, -0.25, -1.0, -0.5, 0.5, 0.25, 0.75, 0.25, -0.5, 0.75, 0.5, 0.25, 1.0, -1.0, 0.25, 0.0, 1.0, 0.5, -0.5, 0.25, -0.25, 0.5, -0.25, 0.25, 0.25, -0.25, -0.25, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    
    
    const array3 = new Float32Array([1.0, 0.5, 0.75, 1.0, -1.0, -0.5, 0.75, -0.25, 1.0, -0.5, -1.0, -1.0, 0.5, 1.0, -1.0, 0.75, 0.5, -0.75, 1.0, -0.25, -0.5, -0.75, 0.0, -0.25, 1.0, 0.25, 0.5, -0.5, 0.75, 0.0, 0.75, 0.0, -0.25, 0.5, -0.75, 0.0, 0.0, -0.75, -0.75, 1.0, 1.0, 0.75, 1.0, -1.0, -0.5, -0.75, 0.0, 1.0, -0.75, 0.5, 1.0, 0.25, -0.25, -1.0, 0.5, 0.75, 0.5, -0.25, 0.0, -0.75, -0.5, -0.25, -0.75, 1.0, 0.75, 0.25, 1.0, -0.25, -0.75, 0.5, -1.0, 1.0, 1.0, 0.0, 0.5, -0.25, -1.0, 0.0, 0.75, 0.75, 0.25, 0.0, -0.75, 1.0, 0.25, -0.75, 0.25, 0.0, 0.0, -0.75, -0.25, -0.5, -0.75, 1.0, 0.5, -0.25, 0.25, 0.25, 1.0, -0.5, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("out-of-memory");
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    buffer101.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    query100.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    texture100.destroy();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
    buffer103.destroy()
    query100.destroy()
    
    device10.pushErrorScope("validation");
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("internal");
    
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
    render_bundle_encoder102.setPipeline(render_pipeline100);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.popDebugGroup();
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    query101.destroy()
    texture101.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    buffer102.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder101.insertDebugMarker("mymarker");
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    render_bundle_encoder102.popDebugGroup();
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_bundle_encoder101.popDebugGroup();
    texture102.destroy();
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
    device10.pushErrorScope("internal");
    query102.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    query102.destroy()
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer100.destroy()
    query101.destroy()
    query102.destroy()
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    query101.destroy()
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const array4 = new Float32Array([-1.0, 0.0, -0.75, 0.0, 0.5, 0.0, 1.0, -1.0, 0.25, -0.75, -0.5, -0.75, 0.5, -0.75, -1.0, -1.0, 0.75, 0.5, -1.0, -1.0, 0.0, 0.75, -0.5, 0.75, -0.5, 0.5, -0.75, 0.25, 0.75, -1.0, 0.5, 1.0, -0.75, 1.0, 0.5, 0.0, 0.5, 0.5, -0.5, -1.0, 0.75, -0.5, 0.5, 0.5, -1.0, -0.25, 1.0, 0.5, -0.25, 0.75, -0.25, 0.0, 0.0, 1.0, 0.25, -1.0, 1.0, -0.75, 0.5, 0.25, -0.75, 1.0, 0.75, 0.75, 0.0, 0.0, -0.75, -0.75, 0.5, -0.25, -1.0, -0.5, 0.5, 1.0, 0.0, 0.25, -0.25, 0.0, 0.0, -0.75, 0.5, 1.0, 0.25, 0.25, -0.75, -0.25, 0.25, 0.0, 0.25, 0.75, -1.0, -1.0, 0.0, 1.0, 0.25, 0.0, 0.0, 0.5, -0.75, 0.0, ]);
    const array5 = new Float32Array([-0.5, 0.5, 0.25, 1.0, -0.75, 0.0, 1.0, -0.25, -0.5, -0.5, -0.75, 1.0, -0.75, 0.75, -0.75, 0.5, 0.25, 1.0, 0.25, -0.5, 0.0, 1.0, 0.5, 0.0, 1.0, 0.5, 1.0, -0.25, 0.5, -0.25, -1.0, 0.75, 0.5, -0.25, 0.0, -1.0, 0.75, 0.0, 0.75, -1.0, -0.75, -0.75, 0.5, -0.75, -0.5, -0.75, 0.25, -0.75, 0.25, 0.5, -0.25, -0.5, 0.75, -0.75, 0.5, -1.0, 0.25, 0.25, 0.0, -0.25, -0.5, 0.5, 0.5, -0.75, -0.75, -1.0, 0.75, -0.25, -0.75, 0.0, -0.75, 0.75, -0.25, -0.75, -0.25, 0.25, -0.5, -0.5, 0.5, -0.25, 0.5, -1.0, 0.5, -0.75, 0.0, -0.25, 1.0, -1.0, 0.25, -1.0, 0.5, 0.5, -0.5, 0.0, 0.5, -0.5, -0.5, -1.0, -0.75, -0.25, ]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder102.popDebugGroup();
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder101.setPipeline(render_pipeline101);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const array6 = new Float32Array([-0.25, 0.75, -0.25, 1.0, 0.5, -1.0, -0.5, -0.5, -1.0, 1.0, -0.5, -1.0, 0.75, -0.5, 0.5, -0.25, 1.0, 0.25, 1.0, 0.0, -0.75, -0.5, 1.0, 1.0, -1.0, -1.0, 0.25, 0.25, 0.25, -1.0, -0.5, 0.5, -1.0, -0.25, -1.0, 0.5, 0.5, -0.25, -0.25, 0.5, -1.0, 0.75, -0.75, 1.0, 0.75, 0.0, 0.0, 0.25, -0.25, 0.75, 0.25, -0.5, 0.25, 0.5, 0.5, -0.5, -0.75, 0.25, -0.75, -0.75, -0.25, -0.5, 0.75, -0.75, -0.75, 0.0, -0.5, -0.5, -0.25, 0.75, 0.25, -0.75, -1.0, 0.25, -0.75, 1.0, -0.75, -0.25, -0.5, 0.0, -0.5, 0.0, 0.5, -0.25, 1.0, -0.75, -0.75, 0.0, 0.5, -0.25, -0.75, -1.0, 1.0, -0.75, 0.75, -0.5, -0.75, -0.25, -0.75, 1.0, ]);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    compute_pass_encoder1010.popDebugGroup()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    render_bundle_encoder100.popDebugGroup();
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

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    
    render_bundle_encoder102.setVertexBuffer(0, buffer101);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    buffer107.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder101.popDebugGroup();
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    query100.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder104.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1000.popDebugGroup()
    
    query103.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    query104.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
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
    buffer104.destroy()
    render_bundle_encoder102.draw(3);
    render_bundle_encoder100.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    query101.destroy()
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    buffer106.destroy()
    device30.pushErrorScope("internal");
    const array7 = new Float32Array([-0.75, -0.5, -1.0, -0.5, 1.0, -0.75, 0.0, 0.25, 0.25, -1.0, 0.0, 0.25, 0.5, 1.0, 1.0, -0.75, 1.0, 0.25, 0.25, 0.0, 1.0, 0.25, -0.75, -1.0, 0.5, 0.75, 0.5, 0.0, -0.75, -1.0, 0.75, -0.75, 0.25, 0.5, -0.25, 0.75, -1.0, -0.5, -0.5, 0.75, 0.0, 0.0, -0.25, -0.5, 0.75, 1.0, -1.0, -1.0, -0.75, 0.75, -0.25, 0.0, 0.25, -0.75, 0.25, -0.75, 0.25, 0.75, 0.0, 0.5, 0.75, -0.75, 0.75, 0.0, -1.0, -1.0, 0.25, 1.0, 0.25, 0.0, -0.5, -0.25, 0.25, -0.25, 0.5, -0.25, -0.25, 0.5, 0.5, 0.25, -1.0, 0.25, 0.25, -0.5, -0.5, 1.0, -0.25, -0.5, 0.5, 1.0, 0.5, 1.0, -0.25, -1.0, 0.5, 0.5, 1.0, 0.25, -0.75, 0.25, ]);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    query100.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    query101.destroy()
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    query104.destroy()
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    command_encoder200.insertDebugMarker("mymarker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
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
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    
    query102.destroy()
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.popDebugGroup();
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    query100.destroy()
    query300.destroy()
    render_bundle_encoder100.setVertexBuffer(0, buffer101);
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    render_bundle_encoder100.draw(3);
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    buffer200.destroy()
    buffer109.destroy()
    
    
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    buffer300.destroy()
    device10.pushErrorScope("validation");
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    
    device20.pushErrorScope("validation");
    
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    render_bundle_encoder100.insertDebugMarker("marker");
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
    
    query300.destroy()
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    render_bundle_encoder301.setPipeline(render_pipeline300);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
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
    
    compute_pass_encoder1030.popDebugGroup()
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
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
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder302.setPipeline(render_pipeline300);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1040.popDebugGroup()
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
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
    
    device40.pushErrorScope("out-of-memory");
    const command_buffer105 = command_encoder105.finish();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    buffer201.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        layout: render_pipeline300.getBindGroupLayout(0),
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
    
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    device40.destroy();
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    texture201.destroy();
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query100.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    buffer302.destroy()
    
    
    query102.destroy()
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    
    device30.pushErrorScope("out-of-memory");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder1010.popDebugGroup()
    query100.destroy()
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    render_bundle_encoder302.popDebugGroup();
    buffer202.destroy()
    
    
    
    const array8 = new Float32Array([0.25, 0.25, -1.0, -0.75, -1.0, 0.25, 0.5, 0.0, -1.0, 1.0, -0.5, -0.25, 0.75, 0.0, -0.25, -0.75, -0.5, 0.5, 0.75, -0.5, 0.25, 1.0, -1.0, -0.5, 0.0, -0.25, 0.25, 1.0, -0.25, -0.5, 0.5, -0.75, -0.25, 0.75, 0.0, -0.75, 0.5, 0.5, 0.25, 1.0, 0.75, -0.25, 0.75, 1.0, 0.25, -0.5, -0.25, -1.0, 0.25, -0.75, 0.5, 1.0, -1.0, 1.0, 0.5, -0.5, -0.5, 0.5, 0.75, -0.25, -0.75, -0.25, 0.0, 0.0, 0.75, 0.0, 0.5, 0.5, -0.25, 0.25, -0.5, 0.5, -1.0, -1.0, 0.75, -0.25, -0.75, 0.5, 0.0, -0.25, 0.0, 0.5, 0.75, 0.25, -0.25, 1.0, 0.0, 0.25, 0.25, 1.0, 1.0, 0.0, -1.0, -0.75, -0.75, 0.25, 0.25, -1.0, -1.0, -0.25, ]);
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    render_bundle_encoder301.pushDebugGroup("group_marker");
    buffer108.destroy()
    render_bundle_encoder301.popDebugGroup();
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    render_bundle_encoder300.insertDebugMarker("marker");
    texture200.destroy();
    render_bundle_encoder300.popDebugGroup();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.popDebugGroup();
    buffer1011.destroy()
    buffer301.destroy()
    
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
    
    
    texture104.destroy();
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
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    
    query104.destroy()
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm",
        dimension: "2d"
    });
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
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    const array9 = new Float32Array([-0.25, -0.25, -0.5, -1.0, 0.5, -0.25, 1.0, 0.75, -0.5, -0.25, 0.75, -0.5, -0.75, 1.0, -0.25, 0.5, -0.25, -0.75, 0.75, -0.25, 1.0, -0.5, -0.5, 1.0, 0.5, 0.25, -0.5, -0.25, 0.75, -0.25, -0.75, 0.5, 0.5, 0.25, 1.0, 0.25, -0.5, -0.25, 0.75, -0.75, 0.0, 0.25, -1.0, 0.0, 0.5, 0.0, 0.75, -0.5, 0.5, -0.5, -0.5, 0.5, -0.5, -1.0, -1.0, -0.75, -0.75, 0.25, -0.25, 1.0, -0.25, 0.0, -0.25, 1.0, -0.25, -0.25, 0.5, -0.25, -0.25, -0.75, 0.5, 0.0, -1.0, 0.25, 0.0, 0.5, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, 0.75, 0.75, 1.0, 1.0, -0.75, 0.25, 0.75, 1.0, 0.0, 0.5, -1.0, -1.0, -1.0, 0.0, 0.0, 0.0, 1.0, -0.5, ]);
    
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    texture103.destroy();
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    query200.destroy()
    device20.queue.writeBuffer(buffer203, 0, array6, 0, array6.length);
    render_bundle_encoder101.popDebugGroup();
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
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
    render_bundle_encoder102.popDebugGroup();
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    command_encoder201.insertDebugMarker("mymarker");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
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
    render_bundle_encoder301.pushDebugGroup("group_marker");
    query106.destroy()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
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

    render_bundle_encoder302.setBindGroup(0, bind_group302);
    texture301.destroy();
    query102.destroy()
    
    compute_pass_encoder1000.popDebugGroup()
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    render_bundle_encoder200.popDebugGroup();
    buffer1010.destroy()
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    
    render_bundle_encoder202.setPipeline(render_pipeline201);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer306.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder106.insertDebugMarker("mymarker");
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder2000.popDebugGroup()
    texture300.destroy();
    query100.destroy()
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    render_bundle_encoder102.finish();
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    query101.destroy()
    query300.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    buffer204.destroy()
    texture105.destroy();
    buffer1012.destroy()
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    query200.destroy()
    texture302.destroy();
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    query104.destroy()
    query200.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
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
    
    
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    render_bundle_encoder201.setPipeline(render_pipeline202);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_pipeline1016 = device10.createRenderPipeline({
        label: "render_pipeline1016",
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
    
    
    
    query105.destroy()
    render_bundle_encoder301.popDebugGroup();
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query300.destroy()
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    query100.destroy()
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    render_bundle_encoder202.insertDebugMarker("marker");
    
    query103.destroy()
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    const compute_pass_encoder1060 = command_encoder106.beginComputePass({ label: "compute_pass_encoder1060" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device20.queue.writeBuffer(buffer203, 0, array8, 0, array8.length);
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_pipeline1017 = device10.createRenderPipeline({
        label: "render_pipeline1017",
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
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const array10 = new Float32Array([0.5, 1.0, 0.5, -1.0, 0.25, 0.25, 0.0, 0.5, -0.25, -0.75, 0.75, -0.5, 0.0, 0.75, 0.75, 0.75, 0.0, 0.0, -0.25, -0.25, -1.0, 0.25, -0.5, 0.0, -0.25, 0.75, 0.0, 0.5, -1.0, 0.5, -0.25, -0.75, 0.75, 1.0, 0.25, -1.0, 0.25, -0.75, 1.0, -1.0, 0.25, -1.0, -0.25, 0.25, 0.5, 0.5, -0.25, -0.75, -0.5, -0.75, 0.25, 0.25, -1.0, -0.25, -0.25, -0.25, 0.75, 1.0, 0.5, 0.0, 1.0, 0.5, 0.75, 0.75, -1.0, -0.5, -0.75, 0.0, 0.75, 0.5, 1.0, 1.0, -0.75, 1.0, -0.5, 0.0, -0.25, -1.0, 0.5, -0.75, 0.75, 0.25, 0.0, 0.5, 0.25, 0.5, 0.0, 0.0, -1.0, -0.75, 0.0, -0.25, 0.5, 1.0, 0.75, -0.25, 1.0, -1.0, -0.75, 0.75, ]);
    device20.queue.writeBuffer(buffer203, 0, array7, 0, array7.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder200.setPipeline(render_pipeline201);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    buffer304.destroy()
    query300.destroy()
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder1020.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
}