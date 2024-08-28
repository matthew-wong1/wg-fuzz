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
    
    const array0 = new Float32Array([1.0, -0.5, 0.0, -0.25, -0.75, -1.0, 0.0, -0.5, 1.0, -0.25, -0.5, -1.0, 0.5, 0.5, 0.0, 0.5, 0.5, 0.75, 0.75, 0.75, 0.0, 0.5, 1.0, 0.75, 1.0, -0.25, 1.0, -0.25, 0.75, 0.5, 0.25, 0.0, -0.5, -0.5, -0.75, 0.0, -0.25, 0.75, -0.25, -0.75, 0.75, 0.5, 0.0, 1.0, -0.25, 0.5, 0.5, 0.5, 0.25, -1.0, -0.5, 0.0, -1.0, -1.0, -0.75, -0.75, 1.0, -1.0, -0.75, 0.0, 1.0, -0.5, 0.5, 0.5, 0.5, -0.5, 0.5, -0.75, 0.75, 0.25, -0.5, 1.0, -0.5, -0.75, -1.0, 0.0, 0.75, 0.0, -1.0, -0.5, 0.0, -0.5, -0.5, 1.0, 0.5, -0.25, -0.5, -1.0, 1.0, 1.0, 0.0, 1.0, 0.75, 0.25, 0.25, -1.0, -0.75, -0.25, -0.75, -0.5, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("out-of-memory");
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    device00.pushErrorScope("internal");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const array1 = new Float32Array([-0.75, 0.75, 0.25, 1.0, 1.0, 0.75, 0.0, -0.25, -0.25, 0.25, -1.0, -0.75, 0.5, 0.5, -0.25, -1.0, 0.75, 0.5, 0.0, 0.5, 0.0, 0.75, -0.75, -1.0, -0.5, 0.5, -1.0, 0.0, 0.0, -0.5, -0.75, 0.5, -0.25, 0.0, -0.5, -0.75, 0.0, -0.75, -0.75, -0.25, 0.75, -0.5, 0.0, -1.0, 0.25, -0.75, -0.25, -0.75, 0.75, 0.75, 0.0, 0.25, 0.5, -0.5, -0.25, 0.0, 0.25, -0.75, 0.5, 0.75, -0.25, -0.5, 1.0, -0.75, 0.75, -0.75, -0.75, -1.0, -0.75, -0.75, 0.25, -0.75, -0.25, 0.5, -1.0, -0.25, -0.75, -1.0, -1.0, 0.5, 0.75, -1.0, -0.25, 0.5, -1.0, -1.0, -0.25, 0.75, 0.75, 0.25, 0.25, -0.75, 0.5, 1.0, 0.25, 0.75, 1.0, 1.0, -0.5, -0.25, ]);
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture000.destroy();
    device10.pushErrorScope("out-of-memory");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
    const array2 = new Float32Array([0.5, -1.0, 1.0, -0.5, 0.25, -0.75, -0.5, -0.25, -0.5, -0.5, 0.0, 0.0, -0.5, -0.75, -0.75, -0.25, -0.75, 1.0, 0.5, -0.75, -0.25, 0.0, 0.5, -1.0, -1.0, 0.5, -0.25, -0.25, -0.75, -0.5, 0.75, -0.75, -0.5, 0.0, 0.25, 0.0, -0.5, -0.5, 0.25, 0.0, 0.75, 1.0, -0.75, -0.5, -0.5, 0.75, -1.0, -0.25, 0.75, 1.0, 0.0, 0.5, 0.75, -0.5, -0.25, -0.75, -0.25, 0.0, 0.75, 0.0, 0.5, -0.5, -1.0, 1.0, -1.0, 0.75, 0.25, -0.5, -0.5, -1.0, -0.75, 0.75, 0.0, 1.0, 0.25, 0.5, 0.5, 1.0, 0.25, 0.5, 0.5, 0.25, 0.75, -0.25, -0.25, -0.75, 0.5, -0.75, 1.0, 0.0, 0.0, 0.75, 0.25, -1.0, 0.0, 0.75, -1.0, -0.75, -1.0, 1.0, ]);
    device30.pushErrorScope("validation");
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    buffer000.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const command_buffer000 = command_encoder000.finish();
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
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query100.destroy()
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    query101.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    texture300.destroy();
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query100.destroy()
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    compute_pass_encoder3000.popDebugGroup()
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("internal");
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    
    buffer200.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    command_encoder302.insertDebugMarker("mymarker");
    query300.destroy()
    command_encoder301.pushDebugGroup("mygroupmarker")
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
    command_encoder301.insertDebugMarker("mymarker");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
    
    
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    query300.destroy()
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device40.pushErrorScope("internal");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query000.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
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
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const array3 = new Float32Array([0.0, -0.75, -0.75, -0.5, 0.75, 1.0, -0.25, -0.25, 0.0, -1.0, 0.75, 1.0, 0.75, 0.0, -0.75, -1.0, -0.75, -0.5, 0.5, 0.0, -0.75, -0.5, 1.0, 0.75, -1.0, 0.75, 0.0, -0.75, -0.75, -0.75, 0.0, 0.5, 0.0, -1.0, 0.5, -0.25, -1.0, 0.75, -0.5, 0.25, 0.75, 1.0, 1.0, -0.75, -0.25, 0.0, -1.0, 1.0, -0.5, -0.5, 1.0, -1.0, 0.75, 1.0, -0.25, 0.0, 0.5, 0.0, 0.75, -0.5, -0.75, -0.25, -0.75, -1.0, 0.75, -0.25, -0.75, 0.5, 0.25, -0.75, -0.25, 1.0, 1.0, -0.25, -0.75, 0.5, 0.75, 0.0, 0.5, 1.0, 1.0, 0.0, 1.0, 0.75, 0.5, -0.75, 0.75, 0.0, -0.25, -0.25, 0.5, 1.0, -0.5, 0.25, 0.5, 0.0, 0.25, 0.75, 1.0, 0.25, ]);
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
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_bundle_encoder000.setPipeline(render_pipeline007);
    
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
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    texture200.destroy();
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_bundle_encoder301.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    command_encoder301.popDebugGroup()
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
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
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder301.insertDebugMarker("marker");
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
        layout: render_pipeline007.getBindGroupLayout(0),
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
    
    render_bundle_encoder300.popDebugGroup();
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    
    query102.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
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
    command_encoder301.insertDebugMarker("mymarker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device10.pushErrorScope("internal");
    
    
    texture400.destroy();
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    render_bundle_encoder200.popDebugGroup();
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    query300.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder001.setPipeline(render_pipeline003);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3020.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query001.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    texture001.destroy();
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer100.destroy()
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer001.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_buffer102 = command_encoder102.finish();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    
    
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
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    texture401.destroy();
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query400.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.setPipeline(render_pipeline006);
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    render_pass_encoder2000.executeBundles([])
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
    
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder001.insertDebugMarker("mymarker");
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([-0.5, 0.0, 0.25, 1.0, -0.75, 0.25, 0.0, -0.5, -0.25, -0.25, -0.25, -0.75, -0.75, -0.5, 0.75, -0.5, 0.5, -0.25, 0.5, -0.75, -0.5, -0.75, 1.0, -1.0, 0.5, -0.25, 0.25, 1.0, 0.25, 0.75, -0.5, -0.75, -0.5, 0.5, 0.5, -0.75, -0.5, -0.5, -1.0, 0.5, -1.0, -0.25, -0.75, 0.75, 1.0, 0.75, -0.25, 0.5, -0.25, 0.75, 0.0, 0.5, -1.0, 0.0, 1.0, 1.0, 0.75, 0.25, -0.5, -0.5, 0.25, -1.0, 1.0, 0.25, -1.0, 0.0, -1.0, 0.75, 0.25, -0.25, -0.75, -0.25, 0.5, 0.5, -0.75, 0.5, 0.0, -0.75, 0.5, -0.25, 0.0, 0.0, -0.5, 0.75, -1.0, 0.5, 0.75, 0.0, 0.0, 0.0, 0.25, -0.75, 0.5, 0.0, 1.0, -0.25, 0.25, 0.25, 1.0, 0.5, ]);
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    query102.destroy()
    render_pass_encoder2000.setPipeline(render_pipeline201);
    
    device00.pushErrorScope("out-of-memory");
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    render_pass_encoder2000.setStencilReference(1);
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder304.pushDebugGroup("mygroupmarker")
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    query101.destroy()
    compute_pass_encoder3000.popDebugGroup()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    buffer004.destroy()
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    texture201.destroy();
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    query401.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer202.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    
    command_encoder304.insertDebugMarker("mymarker");
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    
    
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_bundle_encoder301.insertDebugMarker("marker");
    command_encoder001.pushDebugGroup("mygroupmarker")
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setPipeline(render_pipeline0012);
    texture301.destroy();
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder3000.popDebugGroup()
    
    
    render_bundle_encoder202.setPipeline(render_pipeline203);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
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
        occlusionQuerySet: query100
    });
    query100.destroy()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    
    query400.destroy()
    
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    device10.pushErrorScope("validation");
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    device00.queue.submit([command_buffer000, ]);
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
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.setPipeline(render_pipeline203);
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    query300.destroy()
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    compute_pass_encoder3020.popDebugGroup()
    
    
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    texture002.destroy();
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder002.popDebugGroup();
    
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
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
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder2000.insertDebugMarker("marker");
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout003,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
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
    query200.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    query103.destroy()
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    query300.destroy()
    
    render_pass_encoder3030.executeBundles([])
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    buffer103.destroy()
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
    buffer206.destroy()
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.setVertexBuffer(0, buffer004);
    render_pass_encoder1030.setStencilReference(1);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    buffer002.destroy()
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.queue.submit([command_buffer102, ]);
    const texture_view4031 = texture403.createView({ label: "texture_view4031" });
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group202);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
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
        layout: render_pipeline0012.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group001);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.popDebugGroup()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer106, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer106, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group101);
    compute_pass_encoder1000.end();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0010.setVertexBuffer(0, buffer004);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer109, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer109, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0010.end();
    command_encoder001.popDebugGroup()
    const command_buffer001 = command_encoder001.finish();
    command_encoder101.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer101, ]);
}