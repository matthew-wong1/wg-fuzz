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
    
    
    
    const array0 = new Float32Array([-0.75, 0.5, 1.0, 0.5, -1.0, -1.0, -0.5, -1.0, 1.0, 0.25, 0.5, 0.25, 0.75, 0.5, -0.5, -0.75, 1.0, -1.0, 0.25, -1.0, -0.75, -0.75, 0.25, -1.0, -0.25, 0.5, 0.0, 0.75, -1.0, -0.25, 0.75, 1.0, -0.5, -0.5, 0.75, 0.75, 0.25, 0.5, 0.25, -1.0, 0.75, -0.5, 0.25, 1.0, 0.0, 0.25, 0.25, 0.25, 1.0, -0.25, 0.5, -1.0, 0.0, 0.75, -0.25, -0.75, 0.75, 0.25, 0.75, 0.5, -0.25, -0.25, 1.0, 0.0, 0.5, 0.75, -0.25, 0.25, -1.0, 0.25, -0.5, 0.25, 1.0, -0.5, -0.25, 0.75, 0.25, 1.0, -1.0, -0.5, -1.0, -0.25, 0.5, 0.25, -0.75, -1.0, 0.5, -0.75, 0.0, 1.0, 0.5, 0.25, -1.0, 0.5, 0.5, -0.75, -0.25, -0.25, 0.5, -0.25, ]);
    
    const array1 = new Float32Array([0.0, 0.0, -0.25, -0.5, 0.25, 0.5, -0.75, 1.0, -0.75, -1.0, -0.5, 0.5, -0.75, 0.25, 0.25, 0.5, 0.75, 0.75, -0.75, -0.5, 0.75, -0.75, 0.0, -0.5, 0.0, 0.25, 1.0, -0.25, -0.5, -1.0, 0.75, 1.0, 0.5, -0.25, -0.5, 0.25, 1.0, -0.5, 0.25, 0.0, 0.5, -0.25, -0.5, 0.25, 0.25, 0.0, 0.0, -0.75, 0.75, -0.75, -0.75, 0.0, 0.25, 0.5, -0.25, 1.0, -0.75, -0.25, -0.5, -0.75, -0.5, -0.5, -0.75, 0.0, 0.75, 0.75, -0.25, -0.75, 0.75, -0.75, -0.75, 1.0, -0.5, 0.0, 0.25, -0.5, 0.5, 0.0, -0.75, 0.0, 0.5, 0.75, -0.75, 0.0, -0.75, 0.25, 0.25, 0.25, -0.25, 0.5, 0.25, 0.75, -0.5, 0.75, 0.25, 0.0, -0.25, -0.75, 1.0, 0.0, ]);
    
    const array2 = new Float32Array([-0.25, -0.25, 0.0, 0.25, -0.25, -0.5, 0.5, 0.25, 0.25, 0.0, -0.25, 0.75, -0.5, 0.0, -0.75, -1.0, -1.0, -1.0, 0.0, 1.0, 0.25, -1.0, -0.5, 0.5, -0.5, -0.25, -0.25, -0.5, -0.25, 0.75, 0.25, -0.75, 1.0, 0.25, 0.0, 0.5, -1.0, -1.0, 0.25, -0.5, -0.25, 0.0, -0.25, 0.75, 0.75, 0.0, 0.5, -0.25, -0.75, 0.0, -0.5, 0.5, -1.0, 0.5, -0.25, -1.0, 0.25, 0.5, 0.75, -0.25, 0.5, -1.0, 1.0, 0.0, 1.0, 0.25, 1.0, -0.75, 0.75, 1.0, -0.25, 0.5, -0.25, -0.5, -0.75, 0.0, 0.25, -1.0, 0.0, 0.75, 0.5, 1.0, -1.0, 0.25, 0.0, -0.25, 0.75, 0.25, -0.5, -0.5, -0.5, 1.0, 1.0, 1.0, 0.25, 0.75, 0.5, 0.5, -1.0, 0.25, ]);
    
    
    
    const array3 = new Float32Array([0.0, -1.0, 0.75, 0.25, -0.5, 0.25, 0.5, 0.75, 0.0, 0.5, -0.75, 0.25, -0.25, -0.25, 0.0, -1.0, 0.25, -0.75, -1.0, 0.25, 0.0, 0.0, 0.5, 0.25, -0.5, -0.5, 0.75, 0.25, -0.5, -0.5, -0.5, 0.75, 0.75, -0.5, -0.5, 0.75, -0.75, -0.5, -0.75, 0.75, -1.0, 0.0, 1.0, 0.0, -0.25, 0.25, 0.25, 0.5, 0.0, -1.0, -1.0, 1.0, 0.25, 0.0, -0.75, 0.5, 1.0, 0.5, -0.5, -0.75, 0.25, -0.25, 0.0, 0.0, -0.75, 0.25, 1.0, 0.25, 0.0, -1.0, 0.75, -0.75, 1.0, 0.25, 1.0, 0.0, 0.25, -0.75, 0.25, -0.25, 0.25, 1.0, 0.5, -0.5, 0.5, -0.25, 0.5, -0.5, 0.5, -0.25, -1.0, 1.0, -0.25, -0.5, 0.5, 1.0, -0.25, -0.25, 0.25, 0.75, ]);
    
    const array4 = new Float32Array([-0.5, 0.0, 1.0, -1.0, -0.5, 0.75, -0.75, -0.75, 0.5, -1.0, 0.75, 0.25, 0.75, 0.0, 0.75, -0.25, -0.75, 1.0, 0.75, 0.75, -0.5, -0.5, -1.0, 0.5, -0.25, -0.75, 0.25, 0.25, 0.5, 0.25, 1.0, 0.25, 0.5, 0.0, 0.0, 1.0, 0.0, 0.75, 0.25, 1.0, -0.75, -1.0, 0.0, 0.75, 1.0, 0.75, 0.5, 0.5, -0.25, 0.5, -0.75, -0.25, -1.0, 0.25, -0.75, 0.25, -0.5, -1.0, 0.75, -0.5, -0.5, -0.5, 0.0, -0.25, 0.5, 0.0, -0.5, 0.25, -1.0, -1.0, -0.75, 0.5, 1.0, 0.0, -0.25, 0.75, 1.0, 1.0, -0.5, 0.25, -1.0, 0.0, -0.5, 0.25, -0.5, -0.25, 0.0, -0.25, 0.5, -0.5, -0.75, 0.5, -0.5, 0.75, -0.5, 0.75, 0.75, 0.25, -1.0, -0.25, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    command_encoder100.popDebugGroup()
    
    
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
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder100.insertDebugMarker("mymarker");
    
    device00.destroy();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const array5 = new Float32Array([0.5, -0.75, -0.75, 0.75, 0.5, -1.0, 0.75, -0.75, -0.75, -0.25, 0.5, -1.0, 0.5, -0.5, 0.5, -0.25, -0.75, -0.5, -0.75, -0.75, 0.0, 0.75, 0.75, -0.25, -0.5, 1.0, 0.25, 0.5, 0.5, 0.75, 0.0, -0.25, 1.0, 0.5, 0.0, 0.75, -0.5, 0.25, 1.0, -1.0, -0.75, 0.5, -0.75, -0.5, -1.0, 0.5, -0.5, 1.0, -0.25, 0.25, 0.0, -0.5, -0.25, 0.0, 1.0, -1.0, -0.75, -0.5, 0.5, -1.0, 0.0, 0.0, -0.25, 1.0, 0.5, -0.5, 0.5, 1.0, -0.75, 0.25, 1.0, -1.0, -0.75, 0.5, -0.5, -0.75, 0.75, -0.5, 0.75, -1.0, 0.5, 1.0, -0.75, -0.25, 0.75, 0.5, -0.5, 0.75, 0.25, 0.25, -0.5, 0.5, 0.5, -1.0, 0.0, -0.25, 1.0, -0.75, 0.0, 0.25, ]);
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device10.pushErrorScope("validation");
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([1.0, 0.25, 0.75, 0.25, -0.75, 0.75, 0.75, 1.0, 0.5, 0.25, 1.0, 1.0, 1.0, -0.5, -1.0, 0.25, 0.25, 0.25, 0.5, 0.0, 0.75, -0.75, 0.5, 0.0, -0.25, -0.5, -1.0, -0.75, -1.0, 0.25, -0.5, -0.5, -1.0, 0.25, 0.25, -0.25, 0.0, 0.0, 0.25, 0.75, 1.0, -1.0, -0.75, 1.0, -0.25, 1.0, 0.5, 0.5, -0.5, 0.5, 0.0, 0.0, -0.75, 0.0, 0.25, -0.75, 0.0, 0.75, -1.0, -0.25, 0.0, -0.5, 0.75, 0.25, 1.0, -0.75, 0.75, 0.0, 0.5, -0.5, -0.75, 0.0, -0.5, -1.0, 0.0, 1.0, -1.0, -0.75, -0.5, 0.5, -0.75, -0.25, -1.0, 1.0, 0.0, -0.75, -1.0, 0.25, -0.75, 0.75, 0.5, 0.0, -0.75, 0.25, -0.75, -1.0, 0.5, 0.25, -0.5, -0.25, ]);
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query101.destroy()
    
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query101.destroy()
    
    
    
    const array7 = new Float32Array([0.75, 1.0, 1.0, 0.5, 1.0, 0.0, 0.0, 0.0, 0.75, 0.5, -0.5, 0.5, -0.5, -1.0, 1.0, -1.0, -0.5, -1.0, -1.0, -0.25, 0.5, -1.0, 1.0, -0.5, -0.25, 0.25, 0.75, -0.75, -0.25, 1.0, -1.0, 0.5, -1.0, -1.0, 1.0, 1.0, 0.25, -0.5, 0.25, 1.0, -0.25, -0.75, 0.0, 0.0, 1.0, -0.75, 0.75, 0.75, 0.0, 0.25, -0.5, 0.25, 0.75, 1.0, 0.5, -1.0, 0.5, 1.0, 0.5, -0.25, -0.25, -0.75, 0.0, 1.0, -1.0, -0.5, -0.75, 1.0, -0.25, -0.25, -0.5, -1.0, -1.0, -0.25, -0.75, 0.25, 0.25, 0.0, 0.75, 0.0, 0.0, -0.75, -1.0, -0.75, -0.75, -0.25, 0.75, -0.75, 1.0, 0.25, 0.25, -0.75, 0.5, -0.5, 0.0, 0.0, 0.5, 0.0, -0.75, 0.75, ]);
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    device30.destroy();
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device20.destroy();
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array8 = new Float32Array([-0.25, 0.5, 0.0, 0.5, 1.0, -0.75, -0.25, -0.5, -1.0, 0.25, -0.25, -0.5, -0.5, 0.0, -0.75, 0.25, 0.5, -0.25, -0.25, 0.25, 0.5, -0.5, 1.0, -0.5, 0.75, 0.0, 0.75, -0.75, -1.0, 0.25, -0.75, -1.0, -0.75, 0.0, -0.5, 0.75, 0.75, -1.0, -0.75, -0.5, 1.0, -0.5, 0.5, -0.75, 0.25, 0.0, 0.0, 0.5, -1.0, -0.75, -0.25, 1.0, 0.0, 0.5, 1.0, -0.25, 1.0, 0.75, -0.25, 0.5, -0.5, -0.25, -0.25, -0.5, -0.25, 0.75, 0.0, 0.25, 0.25, -0.25, 0.75, 1.0, 0.5, -0.75, -0.25, 0.5, 0.0, -0.5, -0.25, -0.5, -0.75, 0.5, -0.25, -0.5, 0.0, -0.75, 0.25, 0.75, 0.0, 1.0, -0.5, 1.0, -1.0, 0.25, 0.5, -1.0, 0.0, 0.25, -0.75, 1.0, ]);
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    render_bundle_encoder100.popDebugGroup();
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query102.destroy()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    query103.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer102.destroy()
    query101.destroy()
    texture100.destroy();
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const array9 = new Float32Array([-0.5, 0.25, -0.5, -1.0, -0.5, -0.5, -0.25, -0.25, 1.0, 0.0, 1.0, 0.25, 0.5, 0.5, 1.0, 0.25, 0.5, -1.0, 0.25, -1.0, 0.25, 1.0, 0.75, 0.5, -0.25, 0.25, 0.5, -0.25, 0.75, -0.5, -1.0, 1.0, -0.5, -0.75, -0.5, -0.75, 0.5, -0.25, 0.25, 0.75, 0.75, -0.25, -0.5, -0.25, -0.5, 0.75, 0.25, 0.5, 0.0, 1.0, -1.0, 0.5, -0.5, 0.75, 1.0, 0.75, 0.0, 0.75, -0.75, 0.5, 0.0, 0.5, 0.75, -0.75, 0.25, -1.0, -0.75, 0.5, -0.25, 0.5, 0.0, -0.75, 0.5, -1.0, 0.0, -0.75, -0.75, 0.25, 0.5, -0.75, -0.5, 0.5, 0.0, 1.0, -0.5, 0.5, 0.5, 0.25, -1.0, -1.0, 0.25, -0.25, 0.5, -1.0, -0.5, 1.0, 0.5, 0.75, -0.25, 0.25, ]);
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query104
    });
    render_pass_encoder1010.setPipeline(render_pipeline102);
    query103.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder101.setPipeline(render_pipeline102);
    
    render_pass_encoder1010.setStencilReference(1);
    
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder102.setPipeline(render_pipeline101);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
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
        occlusionQuerySet: query100
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

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    render_pass_encoder1010.beginOcclusionQuery(0)
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    buffer101.destroy()
    
    buffer105.destroy()
    render_bundle_encoder102.setVertexBuffer(0, buffer100);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder100.setPipeline(render_pipeline101);
    buffer100.destroy()
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder1020.setPipeline(render_pipeline100);
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
        occlusionQuerySet: query100
    });
    
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_bundle_encoder101.setVertexBuffer(0, buffer100);
    texture101.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group102);
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
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
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

    render_bundle_encoder100.setBindGroup(0, bind_group103);
    render_pass_encoder1010.setVertexBuffer(0, buffer100);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const array10 = new Float32Array([0.5, 0.75, -1.0, 0.0, -1.0, -0.5, -0.75, -0.75, -0.25, -0.5, 0.0, 0.75, -0.75, 0.5, 0.75, -1.0, 0.25, 0.25, 1.0, 0.0, 0.75, -0.25, 0.25, 0.0, 0.0, 0.5, 0.5, 1.0, 0.5, 0.75, -0.5, -0.25, -0.25, -0.75, 0.0, 0.5, 0.5, 0.5, -1.0, 0.25, -0.75, -0.25, 0.5, -0.25, -0.75, -1.0, 1.0, -0.5, -1.0, 0.0, -1.0, -0.5, -0.5, 1.0, -0.75, 1.0, -1.0, -1.0, -0.25, 1.0, -0.75, 0.5, -1.0, 0.5, 0.5, -0.5, -0.75, -0.5, -1.0, 0.25, -0.75, -0.25, -1.0, 0.75, 0.0, -0.75, 0.75, -1.0, 1.0, -0.25, 0.5, -1.0, -0.75, -1.0, 1.0, 0.25, 0.0, -0.75, -0.25, 1.0, -0.25, -0.25, -0.5, 0.25, 0.0, -0.5, 0.75, 0.25, 0.75, 0.25, ]);
    
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
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    compute_pass_encoder1000.setPipeline(compute_pipeline103);
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder1010.draw(3);
    buffer108.destroy()
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder100.setVertexBuffer(0, buffer100);
    buffer107.destroy()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_pass_encoder1030.setPipeline(render_pipeline101);
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
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
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    render_pass_encoder1040.setPipeline(render_pipeline100);
    render_pass_encoder1040.setStencilReference(1);
    
    buffer103.destroy()
    
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group104);
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.insertDebugMarker("marker");
    
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    
    
    render_bundle_encoder102.draw(3);
    query105.destroy()
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder102.finish();
    render_pass_encoder1040.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer106.destroy()
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.setStencilReference(1);
    render_bundle_encoder101.draw(3);
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
    render_pass_encoder1040.beginOcclusionQuery(0)
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group105);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    
    
    
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
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group106);
    buffer1011.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1030.insertDebugMarker("marker");
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
    
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const array11 = new Float32Array([-0.5, 0.75, -0.5, 0.0, -0.75, 0.5, -0.25, -1.0, 0.0, -1.0, 0.5, 1.0, -1.0, 1.0, -0.5, 1.0, 0.5, 0.75, -0.75, 0.0, -0.75, -1.0, -0.25, 1.0, 0.25, 0.5, -1.0, 0.75, -0.5, -1.0, 0.5, 0.5, 0.5, 0.0, -1.0, -1.0, 0.25, 0.0, 0.75, -0.75, -0.75, 0.75, 0.25, 0.75, -0.5, 1.0, -1.0, 0.75, 0.25, 0.25, -1.0, -0.5, 0.75, 0.25, 0.75, -0.5, -1.0, 0.0, -0.75, -0.5, 1.0, 0.5, 0.0, 0.5, 0.25, 0.0, -1.0, 0.5, 1.0, 0.25, -0.75, 1.0, -0.75, 1.0, -1.0, -0.5, 0.5, -1.0, -0.25, 0.75, -0.5, 0.25, -0.75, -0.5, 0.5, 0.5, -0.5, 1.0, 0.75, 0.5, -1.0, 0.5, 0.5, 1.0, -0.5, 0.0, 0.5, -1.0, 0.25, -0.5, ]);
    render_bundle_encoder100.draw(3);
    buffer1016.destroy()
    render_pass_encoder1040.insertDebugMarker("marker");
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
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
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    query100.destroy()
    query103.destroy()
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
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
    query101.destroy()
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.insertDebugMarker("marker");
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
    query101.destroy()
    buffer109.destroy()
    
    render_pass_encoder1040.endOcclusionQuery()
    query102.destroy()
    query105.destroy()
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.setVertexBuffer(0, buffer100);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1018, 0);
    render_pass_encoder1020.setVertexBuffer(0, buffer100);
    render_pass_encoder1050.setPipeline(render_pipeline106);
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder1000.popDebugGroup()
    buffer1010.destroy()
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    buffer1017.destroy()
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer1018, 0, array6, 0, array6.length);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query101.destroy()
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.end();
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
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
        occlusionQuerySet: query103
    });
    render_pass_encoder1011.setPipeline(render_pipeline106);
    device10.queue.writeBuffer(buffer1018, 0, array10, 0, array10.length);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1011.pushDebugGroup("group_marker");
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.setStencilReference(1);
    buffer1012.destroy()
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
    buffer1018.destroy()
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer1013.destroy()
    buffer1014.destroy()
    
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout104,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setStencilReference(1);
    
    
    
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
        layout: render_pipeline106.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group107);
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1030.popDebugGroup();
    
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group108);
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    buffer1022.destroy()
    
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query106.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query105.destroy()
    
    
    query102.destroy()
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    query104.destroy()
    
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1060.setPipeline(render_pipeline103);
    render_pass_encoder1030.drawIndirect(buffer1018, 0);
    
    
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout103,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.popDebugGroup();
    
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    buffer1020.destroy()
    render_pass_encoder1040.insertDebugMarker("marker");
    
    
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    query105.destroy()
    query106.destroy()
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
    
    buffer1015.destroy()
    
    query109.destroy()
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
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
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1060.setBindGroup(0, bind_group109);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout105,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    buffer104.destroy()
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1040.insertDebugMarker("marker");
    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.end();
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
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
    device10.pushErrorScope("validation");
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    buffer400.destroy()
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    query108.destroy()
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query106.destroy()
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1060.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const array12 = new Float32Array([-0.25, 0.0, -1.0, -0.5, 0.75, -0.75, 1.0, 0.5, 0.0, -0.5, 0.0, 1.0, -0.25, 0.5, -1.0, 1.0, 1.0, 0.25, 0.25, 0.0, -0.5, 1.0, -0.75, 0.25, 0.5, -0.25, 0.25, 0.5, -0.25, -0.5, -0.25, 0.75, -0.25, -0.75, -0.75, 0.5, 0.25, -0.5, 0.5, 0.0, -1.0, 1.0, 0.0, -0.75, 0.75, -0.25, 1.0, 0.25, -0.5, 0.25, -1.0, -0.75, 0.75, -0.25, -0.75, -0.5, -0.5, -1.0, -0.25, 1.0, 1.0, -0.75, 0.25, 0.75, 0.5, -1.0, -0.75, -0.5, 0.5, 0.75, 0.75, -0.75, -0.25, -1.0, -1.0, -0.5, 0.5, 0.25, -1.0, 0.0, 1.0, 1.0, 0.0, -1.0, -0.75, 0.5, -1.0, -0.5, -0.25, 0.0, 0.25, -0.5, 1.0, 0.0, -0.25, 0.25, 1.0, -0.25, -1.0, -0.25, ]);
    render_pass_encoder1040.setVertexBuffer(0, buffer100);
    
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    query108.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1060.setStencilReference(1);
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout103,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setStencilReference(1);
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    texture102.destroy();
    render_pass_encoder1031.setPipeline(render_pipeline103);
    render_pass_encoder1040.drawIndirect(buffer1018, 0);
    render_pass_encoder1011.setVertexBuffer(0, buffer100);
    render_pass_encoder1011.drawIndirect(buffer1018, 0);
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group1010);
    compute_pass_encoder1000.end();
    render_pass_encoder1031.setVertexBuffer(0, buffer100);
    render_pass_encoder1060.setVertexBuffer(0, buffer100);
    render_pass_encoder1020.end();
    render_pass_encoder1031.drawIndirect(buffer1018, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder1031.end();
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1011.end();
    const command_buffer101 = command_encoder101.finish();
    const command_buffer102 = command_encoder102.finish();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1060.drawIndirect(buffer1018, 0);
    render_pass_encoder1060.end();
    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1029,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group1011);
    const command_buffer104 = command_encoder104.finish();
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1050.setVertexBuffer(0, buffer100);
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer102, command_buffer103, ]);
    render_pass_encoder1050.draw(3);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1050.end();
    const command_buffer105 = command_encoder105.finish();
}