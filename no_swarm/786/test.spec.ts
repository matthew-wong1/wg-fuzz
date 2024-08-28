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
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device10.pushErrorScope("validation");
    texture100.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const array0 = new Float32Array([1.0, -0.75, -0.5, 0.0, -0.25, 0.0, -0.75, -1.0, -1.0, 0.0, -0.5, -0.25, 0.25, 1.0, 0.75, 0.5, 0.5, -1.0, -1.0, 0.5, -0.5, 0.25, 0.5, 1.0, -0.5, 0.75, 1.0, 0.5, -1.0, -0.5, 0.5, -1.0, 0.5, 0.25, -1.0, -0.5, 0.75, 1.0, -1.0, -1.0, 0.0, -0.5, -1.0, 1.0, 0.5, -0.75, -0.75, -1.0, -1.0, -0.75, -0.5, -0.25, 1.0, 0.25, -1.0, -0.5, -1.0, 0.75, 0.75, 0.5, -1.0, -0.75, 0.75, 0.5, -0.75, 1.0, 0.75, 0.5, 0.25, -0.75, 0.0, 0.75, 1.0, 0.75, 0.0, 0.5, -0.75, 0.75, 0.0, 1.0, -0.25, -1.0, 0.25, -0.75, -0.25, 0.0, -0.75, 0.5, 0.75, 1.0, 1.0, -1.0, -1.0, 0.75, 0.0, 0.0, -0.75, 0.25, -0.5, 0.25, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    buffer100.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
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
    const command_buffer100 = command_encoder100.finish();
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const array1 = new Float32Array([1.0, -1.0, 0.75, 0.5, 1.0, -0.25, 0.75, 0.5, -0.25, 1.0, -1.0, 0.0, 0.0, 0.5, -0.5, 0.0, -0.75, 0.75, -1.0, 0.0, 1.0, -0.5, 0.5, 0.75, -0.25, 0.0, -0.25, 1.0, 1.0, -0.25, 1.0, 0.25, -0.25, 0.75, -0.75, 0.25, 0.5, 0.0, 0.0, 0.0, -0.5, 1.0, 0.0, 1.0, 0.75, 0.0, 0.0, 0.25, -0.25, -0.25, -0.25, -1.0, -0.75, 1.0, 0.25, 1.0, -0.75, 0.75, 1.0, 0.5, 0.0, -0.5, -0.5, -0.25, -1.0, 1.0, -0.25, -1.0, 0.25, 0.25, -1.0, -0.5, -0.75, 0.5, 0.5, 0.25, 0.0, 0.0, -0.75, 0.5, 0.0, 0.25, 1.0, 0.75, -0.75, -0.5, 1.0, -0.75, 0.5, 1.0, 0.5, -0.25, -0.25, -0.25, 0.5, 0.0, 1.0, 1.0, -0.75, -0.25, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device10.queue.submit([command_buffer100, ]);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    texture101.destroy();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const array2 = new Float32Array([-0.75, 0.25, 0.0, -0.25, -0.5, 0.5, -0.25, 0.75, 0.75, 0.25, 0.0, -0.5, 0.75, 0.75, 0.75, 0.0, -1.0, 1.0, -0.25, -0.5, 0.75, -0.5, 0.5, 0.0, 0.25, 0.0, -1.0, 1.0, 0.75, 0.25, -0.75, -0.75, -0.5, 1.0, -0.25, -1.0, 0.25, -0.75, 0.25, 0.0, 1.0, 0.75, -0.25, -0.25, 0.75, -1.0, 1.0, 1.0, 1.0, 0.75, -0.75, 0.75, -0.5, 1.0, -0.5, -0.25, -1.0, 0.75, 0.5, -0.5, 0.5, 0.25, 0.0, -0.5, -1.0, -1.0, 0.25, -0.5, 0.0, -0.5, -0.25, 0.75, 0.0, 0.0, -0.5, 1.0, 0.5, 0.75, -1.0, -0.5, -1.0, -0.75, -1.0, 0.25, -0.5, -1.0, -0.25, 0.75, 0.5, 0.75, 0.0, -1.0, 0.25, 1.0, -0.25, 0.75, 0.75, 0.75, -0.5, 1.0, ]);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder101.popDebugGroup();
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
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
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device10.pushErrorScope("out-of-memory");
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder101.setPipeline(render_pipeline101);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    render_bundle_encoder102.setPipeline(render_pipeline101);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.popDebugGroup();
    
    render_bundle_encoder100.popDebugGroup();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
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
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
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
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group101);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    texture000.destroy();
    query100.destroy()
    
    
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    buffer104.destroy()
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    render_bundle_encoder102.insertDebugMarker("marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
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
    device20.pushErrorScope("validation");
    render_bundle_encoder102.setVertexBuffer(0, buffer100);
    render_bundle_encoder102.draw(3);
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query100.destroy()
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    texture001.destroy();
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    device10.pushErrorScope("out-of-memory");
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    query100.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const array3 = new Float32Array([0.5, -1.0, 1.0, -0.75, -1.0, 0.5, 0.75, 0.5, 0.0, 0.0, 1.0, -0.5, -1.0, 0.0, 0.75, -0.5, 0.75, -0.25, -0.25, 0.0, 0.5, 0.5, 0.75, -0.75, 1.0, 1.0, 0.5, -0.5, -1.0, -0.5, 1.0, -0.5, 0.25, 0.0, 0.75, -1.0, -1.0, 1.0, -0.75, -0.25, -0.5, 0.75, -1.0, -0.75, 1.0, 0.5, -0.25, -0.75, 0.0, 0.0, -0.5, 0.25, -0.75, -0.5, 1.0, -0.75, 0.5, 0.75, -0.5, -0.75, -0.25, 0.0, -0.5, 1.0, 0.75, 0.25, 0.75, -0.25, -1.0, 0.5, 0.25, -1.0, 1.0, 0.0, 0.75, -0.25, 0.0, -0.75, 0.5, -0.75, -0.5, -0.75, -1.0, -1.0, -0.75, 0.0, 0.25, -1.0, -0.75, -0.5, -1.0, -0.5, 0.75, 0.25, -0.5, 1.0, 0.0, -1.0, -0.75, 0.5, ]);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_bundle_encoder101.popDebugGroup();
    query101.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder100.setVertexBuffer(0, buffer100);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    query102.destroy()
    
    texture102.destroy();
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.destroy();
    
    buffer105.destroy()
    render_bundle_encoder100.draw(3);
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    render_bundle_encoder100.finish();
    command_encoder102.insertDebugMarker("mymarker");
    render_bundle_encoder102.finish();
    device30.destroy();
    query100.destroy()
    command_encoder102.popDebugGroup()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    
    
    
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    query101.destroy()
    
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
    device00.pushErrorScope("out-of-memory");
    
    
    compute_pass_encoder2000.popDebugGroup()
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    compute_pass_encoder2010.insertDebugMarker("marker")
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_buffer102 = command_encoder102.finish();
    
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    query100.destroy()
    buffer106.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    query200.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32uint",
        dimension: "2d"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    texture002.destroy();
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.insertDebugMarker("mymarker");
    
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
    
    
    
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    buffer103.destroy()
    
    query201.destroy()
    query101.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    
    const command_buffer000 = command_encoder000.finish();
    command_encoder202.insertDebugMarker("mymarker");
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
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
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
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
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    buffer500.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    buffer200.destroy()
    
    texture105.destroy();
    command_encoder001.insertDebugMarker("mymarker");
    const array4 = new Float32Array([0.0, -1.0, 0.75, 0.5, -1.0, -0.5, -0.25, 0.25, -0.25, -0.25, -1.0, 0.25, -0.75, 0.25, 0.0, 1.0, 0.25, 0.25, -0.75, -0.75, 0.25, 0.5, -0.5, 0.5, 0.5, 0.25, 0.75, -0.75, -0.25, 0.5, -0.25, 0.25, 0.75, -0.5, -0.5, -0.25, 0.25, 0.75, 0.5, 0.0, 0.25, 0.75, -0.5, -1.0, 0.0, -0.5, -0.5, -0.5, 0.5, 1.0, 0.5, 0.25, -0.25, 0.0, 1.0, -0.5, 0.25, -1.0, -0.75, 0.5, -0.5, -1.0, 0.75, 0.0, 0.75, 0.5, -0.25, -0.5, -1.0, -0.5, 0.25, -0.75, 1.0, -1.0, 0.75, 0.25, 0.0, 0.75, 1.0, 0.75, 0.25, 0.75, 0.5, 0.0, 0.0, -1.0, 0.75, 0.5, 1.0, 1.0, 0.75, -0.75, -0.5, -0.75, 0.25, -0.25, 0.0, 0.0, 1.0, 0.0, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    query100.destroy()
    const command_buffer202 = command_encoder202.finish();
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device70.destroy();
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    
    const command_buffer001 = command_encoder001.finish();
    
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    
    
    
    device50.pushErrorScope("internal");
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture003.destroy();
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    texture200.destroy();
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
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
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    query500.destroy()
    compute_pass_encoder2010.popDebugGroup()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
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
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    
    query102.destroy()
    
    device10.queue.submit([command_buffer102, ]);
    
    
    
    query103.destroy()
    const array5 = new Float32Array([1.0, 1.0, -0.75, -0.5, 0.25, 0.25, 0.75, -1.0, 0.75, 0.0, 1.0, 0.5, 0.0, 1.0, 0.75, 0.5, 1.0, 0.75, 1.0, 0.5, 0.5, -0.75, 1.0, 0.0, 1.0, 0.25, 0.25, 0.25, 0.25, 0.0, -0.75, -0.25, -0.5, -1.0, 0.75, -1.0, 0.75, 0.0, 0.25, -0.75, -0.25, -0.5, -0.75, 1.0, -0.25, 0.5, -0.5, 0.75, 0.5, 1.0, 0.25, 0.0, -0.5, -0.5, -0.5, 0.0, 0.25, 0.5, 0.75, 0.5, 1.0, 0.5, -0.25, -0.5, -0.75, -1.0, 0.5, 0.5, -0.25, -1.0, 0.75, 1.0, 0.5, 0.5, -0.25, -0.5, -0.5, -1.0, -0.25, -0.25, -0.5, 0.5, -1.0, -1.0, 0.25, -0.25, 0.0, -0.5, -0.5, -0.25, 0.5, -0.25, -0.25, 0.5, 1.0, 0.0, -1.0, -0.5, 0.75, 0.0, ]);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    compute_pass_encoder1010.insertDebugMarker("marker")
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    query103.destroy()
    
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
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
    
    query102.destroy()
    query001.destroy()
    
    compute_pass_encoder2000.popDebugGroup()
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    query001.destroy()
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    query200.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
    
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query500.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    query105.destroy()
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_pass_encoder2030.executeBundles([])
    const texture_view1042 = texture104.createView({ label: "texture_view1042" });
    render_bundle_encoder001.insertDebugMarker("marker");
    query104.destroy()
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
    
    query201.destroy()
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pipeline1018 = device10.createRenderPipeline({
        label: "render_pipeline1018",
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
    texture103.destroy();
    const render_pipeline1019 = device10.createRenderPipeline({
        label: "render_pipeline1019",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    query101.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    buffer102.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder2030.insertDebugMarker("marker");
    
    
    texture106.destroy();
    query200.destroy()
    const render_pipeline1020 = device10.createRenderPipeline({
        label: "render_pipeline1020",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    buffer201.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer501,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer502,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    query000.destroy()
    
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    compute_pass_encoder2010.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture_view1043 = texture104.createView({ label: "texture_view1043" });
    
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
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const render_pipeline1021 = device10.createRenderPipeline({
        label: "render_pipeline1021",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device10.queue.writeTexture({ texture: texture108 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query101.destroy()
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
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    texture501.destroy();
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
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    const render_pipeline1022 = device10.createRenderPipeline({
        label: "render_pipeline1022",
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
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2030.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture108 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2030.setPipeline(render_pipeline200);
    compute_pass_encoder1010.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5000.setPipeline(render_pipeline500);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group200);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
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
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group102);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    render_pass_encoder5000.setBindGroup(0, bind_group501);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer206, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer206, 0);
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group202);
    compute_pass_encoder2000.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder1010.end();
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder2010.end();
    command_encoder101.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer101, ]);
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer201, ]);
}