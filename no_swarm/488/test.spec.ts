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
    
    
    const array0 = new Float32Array([-0.5, -1.0, -0.25, -0.5, 0.5, -0.5, -0.75, -0.5, -0.5, -0.75, -0.75, 0.75, 0.0, -1.0, 0.5, 0.5, -0.5, -0.25, 0.5, 0.0, -0.75, 0.75, -0.75, 0.75, -0.5, -0.5, -0.75, -0.25, -1.0, 0.75, -0.75, -1.0, 0.0, 0.25, 0.75, 0.25, 0.5, -1.0, -0.75, 1.0, 1.0, 0.5, -0.75, 0.25, -0.5, -0.25, -0.25, -0.75, -0.5, -1.0, 0.0, -0.5, 0.75, -1.0, 0.5, 0.5, 0.5, -0.5, -0.25, -1.0, 0.75, 1.0, -1.0, -1.0, -0.5, 0.75, -0.25, 0.5, 0.5, -0.75, -0.5, -0.75, 0.5, -0.25, -0.25, -0.75, 0.25, 0.25, -0.75, -0.25, 0.75, -1.0, 0.75, -0.25, 0.5, 0.25, 1.0, -0.25, 0.0, -0.75, -0.25, 0.25, 1.0, -1.0, 0.25, 0.5, -0.25, -1.0, 1.0, -0.5, ]);
    
    
    
    
    const array1 = new Float32Array([0.5, 0.25, 1.0, -0.25, 0.5, 0.5, 1.0, 1.0, 0.25, 1.0, 0.5, 0.5, 0.5, -1.0, -0.75, 0.75, -1.0, 0.0, 1.0, 0.25, -0.5, 0.0, 0.5, 1.0, -1.0, -0.75, 0.25, 0.75, -0.25, 0.75, 0.75, -1.0, 1.0, -0.25, -0.75, -0.25, 0.25, 0.0, 0.5, -0.75, -0.75, -1.0, 1.0, 1.0, -0.75, 0.5, 0.5, -1.0, 0.75, -1.0, -0.5, 0.5, -0.25, 0.0, -1.0, -0.25, -0.75, 0.5, 0.5, -1.0, 0.75, 1.0, -0.5, 0.25, 1.0, 0.5, -0.25, -0.5, 0.75, -0.75, 1.0, -0.75, -1.0, -0.5, 0.25, -1.0, -0.75, -1.0, 0.5, 0.0, -0.25, -0.75, 0.25, 1.0, 0.5, -1.0, 1.0, 0.25, -0.5, -0.75, -0.75, 0.75, 0.25, 0.75, 0.5, -0.75, 0.75, 0.25, 1.0, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.insertDebugMarker("mymarker");
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array2 = new Float32Array([0.0, -1.0, 1.0, -0.5, -0.75, -0.75, -0.5, -1.0, 0.25, -0.5, 0.0, -0.75, 1.0, 0.25, -0.25, -1.0, 0.5, -1.0, -0.75, 1.0, 0.5, 1.0, -1.0, 0.5, -1.0, -0.75, -0.75, 0.25, -0.5, -1.0, -0.75, 0.0, 0.0, -0.75, -1.0, 0.0, -0.25, 0.0, 0.0, -0.25, 0.0, -0.75, -1.0, 0.25, 0.25, 0.25, -0.5, -0.5, 0.25, 0.25, 0.0, -1.0, -1.0, 0.75, -0.5, 0.75, -0.5, 0.5, -0.25, -0.75, 0.75, 0.75, 0.0, 0.5, -0.75, -0.75, -1.0, 0.75, -1.0, -0.25, 0.25, -0.75, -0.75, 0.75, 0.5, 0.75, 0.5, -0.25, -0.75, -0.25, 0.75, -0.5, 0.25, 0.0, 0.25, 0.5, -1.0, -0.25, -0.25, 0.25, 0.0, 0.0, 0.0, 0.25, -0.5, -0.5, 0.25, -0.25, 1.0, -1.0, ]);
    device00.pushErrorScope("validation");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    command_encoder000.insertDebugMarker("mymarker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
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
    device10.pushErrorScope("out-of-memory");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_buffer000 = command_encoder000.finish();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    buffer101.destroy()
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer100.destroy()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query000.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    buffer000.destroy()
    
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder100.pushDebugGroup("mygroupmarker")
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    
    const command_buffer101 = command_encoder101.finish();
    command_encoder001.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.popDebugGroup();
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.insertDebugMarker("mymarker");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array3 = new Float32Array([-0.75, 0.75, 0.75, -0.25, -1.0, 0.0, -0.5, -0.5, -0.25, -0.75, 0.25, -0.75, -0.5, 0.75, -0.25, -0.5, -0.5, 1.0, 0.5, 0.25, -0.25, -0.5, -0.5, -0.75, 0.5, -0.25, -0.75, -0.5, -0.75, 0.75, -0.75, -1.0, 0.5, 0.75, -1.0, 0.0, 0.5, -0.25, 1.0, -0.75, -0.25, 0.0, -0.5, 0.25, -0.5, 0.0, -1.0, 0.5, 0.75, 1.0, 0.25, -1.0, -0.5, 0.25, 0.25, 0.25, 0.5, -1.0, 0.25, -0.75, 0.0, 1.0, -0.75, 0.5, -1.0, -0.5, -0.75, 0.75, 0.5, -0.25, -0.5, 0.5, 0.0, -0.5, 0.25, 0.75, -0.75, -0.75, 1.0, 0.5, 0.0, -0.75, -1.0, 0.0, -1.0, -1.0, -0.75, -0.5, 0.25, 0.75, -0.25, 1.0, -0.5, -1.0, 0.75, -0.25, 0.0, 0.75, 1.0, -0.5, ]);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8sint",
        dimension: "2d"
    });
    
    device10.queue.submit([command_buffer101, ]);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    buffer001.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    compute_pass_encoder1000.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder102.insertDebugMarker("mymarker");
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
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
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query002.destroy()
    compute_pass_encoder0010.setPipeline(compute_pipeline003);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    texture000.destroy();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    compute_pass_encoder0010.insertDebugMarker("marker")
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    device00.queue.submit([command_buffer000, ]);
    query100.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    
    render_bundle_encoder002.setPipeline(render_pipeline001);
    device00.pushErrorScope("internal");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    device20.pushErrorScope("out-of-memory");
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
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
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture200.destroy();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    command_encoder200.pushDebugGroup("mygroupmarker")
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
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder201.insertDebugMarker("mymarker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    query200.destroy()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    texture201.destroy();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_bundle_encoder001.setPipeline(render_pipeline000);
    query001.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
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
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group000);
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    texture101.destroy();
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    command_encoder201.clearBuffer(buffer200);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    query003.destroy()
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    const array4 = new Float32Array([-0.75, -0.5, -1.0, 1.0, 1.0, 0.25, 0.25, -0.25, 0.5, -0.75, -1.0, -0.25, 0.0, 0.75, 1.0, 0.5, -0.5, -1.0, 0.0, 0.0, 1.0, 1.0, 0.75, 0.0, -1.0, 0.75, -0.25, -1.0, -0.75, -0.25, 0.25, -1.0, 0.25, -1.0, 0.0, 0.75, 0.0, 0.5, -0.25, 0.5, 0.5, 1.0, 0.0, 1.0, -0.75, -0.5, 0.0, -0.25, -1.0, 1.0, -0.75, -0.25, 0.75, -0.5, 0.0, 0.5, 1.0, -0.75, -1.0, -1.0, 0.5, 0.25, 0.5, -1.0, -0.75, 0.0, -0.25, 0.5, -0.25, -0.25, -0.75, -0.75, -0.25, -0.5, 0.75, -0.25, 0.0, 1.0, 1.0, 0.5, -0.75, -0.25, 0.25, -0.25, 0.5, -0.75, 0.25, 0.75, 0.0, 0.75, -0.5, 1.0, -1.0, 0.0, -0.5, 0.75, -0.5, 1.0, 0.75, 0.5, ]);
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.clearBuffer(buffer200);
    command_encoder200.popDebugGroup()
    
    render_bundle_encoder100.popDebugGroup();
    
    
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
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder202.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    buffer200.destroy()
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.setPipeline(render_pipeline101);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_bundle_encoder200.popDebugGroup();
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1020.setPipeline(compute_pipeline102);
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

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    query003.destroy()
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group101);
    render_bundle_encoder101.setPipeline(render_pipeline102);
    buffer105.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline102);
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group102);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder201.insertDebugMarker("mymarker");
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder201.insertDebugMarker("mymarker");
    compute_pass_encoder1020.popDebugGroup()
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    
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
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    
    render_bundle_encoder100.setPipeline(render_pipeline101);
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer109, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer109, 0);
    
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
    
    query100.destroy()
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
    
    
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
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
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    buffer103.destroy()
    const array5 = new Float32Array([0.75, 1.0, 0.25, -0.75, 0.0, -0.25, -0.75, -1.0, 0.25, -0.75, -0.75, -0.25, -0.75, 0.25, -0.25, 0.25, 0.25, -1.0, -1.0, -0.5, -1.0, 0.5, -1.0, 0.5, 0.25, 0.0, 1.0, 0.0, 0.25, 0.25, -0.5, -1.0, -0.25, 0.5, -0.25, 0.75, -0.25, -0.25, 1.0, -0.25, -0.75, -0.5, -0.75, 0.0, 0.0, 0.75, 0.25, -0.5, -1.0, 0.75, 1.0, 0.5, -0.75, -0.5, -0.25, -0.5, 0.5, 1.0, 0.75, -0.75, -0.5, 0.5, 0.5, -0.25, 1.0, 0.0, -0.25, 1.0, -0.5, -0.75, 1.0, 1.0, -0.25, 0.75, -0.25, -0.75, -0.25, -0.25, 1.0, 0.5, 0.75, 0.0, 0.5, 1.0, 0.75, -1.0, 0.75, -0.25, 0.75, -1.0, -1.0, 0.0, -0.25, 1.0, 1.0, 1.0, -0.25, -0.25, 0.0, 0.75, ]);
    device10.queue.writeBuffer(buffer109, 0, array4, 0, array4.length);
    const array6 = new Float32Array([0.0, -0.5, 0.75, 1.0, 1.0, 0.25, -0.75, -0.75, 0.0, -0.5, 0.25, 0.25, -1.0, -1.0, 0.0, -0.5, -0.25, -0.75, 0.25, 0.0, -0.5, -1.0, 0.5, -0.5, -0.5, -0.5, -1.0, -0.5, -1.0, 0.75, 0.0, 0.0, 0.0, -0.75, -0.5, 0.0, 0.25, 0.5, -1.0, 1.0, 0.25, 0.75, -0.5, 0.75, 0.5, 0.75, 0.5, -0.75, -0.5, 0.0, 0.75, 1.0, 0.5, 1.0, 0.25, 0.0, 0.75, 0.25, -0.75, 0.25, 0.5, 0.75, 0.0, 1.0, -1.0, 0.5, -1.0, -0.25, -0.75, 0.0, -1.0, 1.0, -0.5, 0.0, -0.75, 0.25, 0.75, 0.75, 0.5, -0.75, -1.0, 0.75, 1.0, 0.5, 0.75, -1.0, 0.5, 0.25, -1.0, -0.25, -0.5, 1.0, -1.0, -0.25, -1.0, -1.0, -0.75, 0.5, 0.75, 0.5, ]);
    
    device10.pushErrorScope("out-of-memory");
    buffer1010.destroy()
    query100.destroy()
    buffer102.destroy()
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device00.pushErrorScope("out-of-memory");
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
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
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer109, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer109, 0, array5, 0, array5.length);
    buffer107.destroy()
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    buffer007.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer109, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer109, 0, array2, 0, array2.length);
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder201.popDebugGroup();
    
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
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    query004.destroy()
    
    buffer109.destroy()
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setPipeline(render_pipeline105);
    render_pass_encoder1030.beginOcclusionQuery(0)
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("validation");
    render_bundle_encoder102.popDebugGroup();
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    render_bundle_encoder102.pushDebugGroup("group_marker");
    buffer106.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query201.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder101.popDebugGroup();
    
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.popDebugGroup();
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    buffer004.destroy()
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
        occlusionQuerySet: query101
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setStencilReference(1);
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    texture001.destroy();
    render_bundle_encoder201.popDebugGroup();
    query003.destroy()
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
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    buffer201.destroy()
    render_pass_encoder1030.insertDebugMarker("marker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1040.insertDebugMarker("marker");
    buffer002.destroy()
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group104);
    render_bundle_encoder200.setPipeline(render_pipeline200);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    compute_pass_encoder2000.popDebugGroup()
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    const command_buffer002 = command_encoder002.finish();
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1040.setPipeline(render_pipeline100);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    render_pass_encoder1030.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
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
    render_bundle_encoder102.popDebugGroup();
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
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
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.setVertexBuffer(0, buffer202);
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    query200.destroy()
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    buffer1012.destroy()
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    
    query002.destroy()
    
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    render_bundle_encoder202.insertDebugMarker("marker");
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1020.popDebugGroup()
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
        layout: render_pipeline105.getBindGroupLayout(0),
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
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1030.endOcclusionQuery()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1020.end();
    compute_pass_encoder1000.end();
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group106);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder100.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer102 = command_encoder102.finish();
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group003);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0010, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0010, 0);
    compute_pass_encoder0010.end();
    device10.queue.submit([command_buffer102, ]);
    command_encoder001.popDebugGroup()
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer001, ]);
}