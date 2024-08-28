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
    
    
    
    const array0 = new Float32Array([0.75, 0.5, 1.0, -1.0, 0.5, 1.0, -0.75, 1.0, -0.25, -0.75, -0.75, 0.0, -0.75, 0.5, 0.0, 0.75, 0.75, 0.5, 0.0, 1.0, -0.5, -0.5, 0.0, 1.0, 0.0, 0.75, -0.75, 1.0, 0.5, 0.75, -1.0, 0.25, -0.25, -0.75, -0.25, 0.0, 0.25, -1.0, -0.5, -0.75, 0.25, 0.5, 1.0, 0.25, 1.0, -0.25, -0.5, 1.0, 0.25, -1.0, 0.5, -1.0, 0.5, -0.5, 0.25, -0.25, 1.0, 0.75, -0.75, 0.0, -0.5, -1.0, 1.0, 0.5, -0.25, 0.5, -0.5, -0.5, -0.25, 1.0, 1.0, 0.75, -1.0, 0.75, 0.0, 0.75, 1.0, 0.25, -1.0, 0.5, 0.0, 0.75, 0.0, -1.0, -0.25, 0.0, -0.25, 0.75, -1.0, -0.25, -0.75, -1.0, -0.5, 0.5, -1.0, 0.0, 0.25, 0.25, 0.0, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([1.0, -1.0, 0.25, 0.5, -0.25, 0.0, 0.0, 0.25, -1.0, -0.25, -0.75, -1.0, 1.0, -0.5, -1.0, 0.0, 0.5, -1.0, 0.25, 0.25, 0.5, -0.5, -0.75, 0.5, -0.75, -0.75, -0.25, -0.25, 1.0, -0.75, -1.0, 0.5, 0.25, 0.25, 0.25, -1.0, -1.0, -0.5, 0.75, -1.0, -0.25, -0.75, 0.5, 1.0, 0.0, -0.25, 0.25, 0.25, -0.25, -1.0, -1.0, -1.0, 0.25, -1.0, 0.25, 1.0, 0.75, -0.75, -1.0, 1.0, 0.0, 0.5, -1.0, 0.75, -0.25, -0.75, 1.0, -0.5, 0.5, 0.75, -0.75, -0.25, -0.25, -0.75, 1.0, -0.5, 0.5, 0.0, 0.75, -1.0, 1.0, 0.75, 0.5, 0.0, 0.5, -0.75, -0.5, -0.5, 0.75, -0.25, 0.25, 0.0, 0.0, -0.25, 0.25, -0.25, -0.5, -0.25, -0.25, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([0.0, -0.5, 0.25, -0.25, 1.0, -0.25, 0.5, 0.25, 0.5, 0.75, -0.5, 0.0, 0.75, -0.5, 0.25, 1.0, 0.5, -0.25, 1.0, 1.0, -0.75, 0.0, -0.75, 1.0, 1.0, -0.75, -0.5, 0.25, -0.75, 1.0, -0.75, 0.5, 0.5, -0.75, -0.5, 0.0, 0.0, 1.0, 0.0, -0.25, 0.75, -1.0, 0.0, -0.75, 0.5, 0.75, -0.75, 0.5, -0.5, 1.0, 0.75, 0.25, -0.75, -0.25, 0.75, 0.25, 1.0, 0.5, 0.0, 0.25, 0.5, -0.75, -0.75, -0.75, 0.5, 0.0, 0.0, -1.0, -0.5, -0.5, -0.25, -0.75, 0.5, 0.75, 0.0, 0.25, 0.25, 0.5, 0.25, 0.5, 0.0, 0.5, 1.0, 1.0, -0.25, -0.25, 0.25, 1.0, 0.0, -1.0, 0.0, -0.75, 0.5, -0.75, 1.0, 0.25, 0.5, -1.0, 0.75, 0.75, ]);
    command_encoder000.insertDebugMarker("mymarker");
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
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
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder001.pushDebugGroup("mygroupmarker")
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
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("validation");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    query400.destroy()
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    query400.destroy()
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device30.destroy();
    
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder401.pushDebugGroup("mygroupmarker")
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array3 = new Float32Array([-0.75, 0.5, -0.5, -1.0, -1.0, -0.25, 0.25, -0.5, 1.0, 0.25, 0.0, 0.5, 0.75, 0.25, 0.75, 0.25, 0.25, 0.25, 0.5, 0.75, 1.0, 0.0, 0.5, -0.25, 0.75, 0.25, 0.25, 0.5, 0.0, 0.25, 0.25, 0.5, 1.0, -0.5, 1.0, 0.25, 1.0, 0.25, -0.75, -0.25, 0.0, 0.75, 0.75, -0.5, 0.5, 1.0, 0.25, 0.5, -1.0, 0.0, -0.75, 0.0, -0.25, 0.25, 0.25, -0.25, 0.25, 0.75, 0.75, 0.5, -0.75, 0.75, -0.75, -1.0, 1.0, 1.0, -1.0, 1.0, 1.0, 0.25, 0.5, 1.0, -0.5, 0.25, 0.25, -0.25, -0.5, -0.5, -0.75, 1.0, 0.75, 0.0, 0.5, 0.75, -0.25, -0.25, -0.25, -0.75, -1.0, 1.0, -0.25, 0.0, 0.25, -1.0, -0.75, 0.5, 0.25, 1.0, 1.0, 1.0, ]);
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder001.insertDebugMarker("mymarker");
    texture000.destroy();
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    texture400.destroy();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.popDebugGroup()
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
    
    buffer000.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder003.insertDebugMarker("mymarker");
    const command_buffer001 = command_encoder001.finish();
    render_bundle_encoder000.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
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
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device10.pushErrorScope("out-of-memory");
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
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer400.destroy()
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    device40.pushErrorScope("out-of-memory");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
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
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    buffer001.destroy()
    const command_buffer003 = command_encoder003.finish();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    query400.destroy()
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    query200.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    render_bundle_encoder000.popDebugGroup();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.pushErrorScope("validation");
    device40.pushErrorScope("internal");
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
    
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    texture401.destroy();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    command_encoder002.popDebugGroup()
    render_bundle_encoder402.insertDebugMarker("marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    buffer401.destroy()
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    compute_pass_encoder4010.pushDebugGroup("group_marker")
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
        layout: render_pipeline000.getBindGroupLayout(0),
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    
    buffer403.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    buffer402.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    compute_pass_encoder4010.popDebugGroup()
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.setPipeline(render_pipeline400);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer200.destroy()
    render_bundle_encoder401.popDebugGroup();
    texture200.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    
    
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query400.destroy()
    device50.pushErrorScope("out-of-memory");
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    texture100.destroy();
    compute_pass_encoder0000.popDebugGroup()
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_bundle_encoder101.popDebugGroup();
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    query201.destroy()
    query101.destroy()
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    render_bundle_encoder001.popDebugGroup();
    query200.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    command_encoder002.insertDebugMarker("mymarker");
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query201.destroy()
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
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    query103.destroy()
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
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
    buffer407.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    render_bundle_encoder001.setPipeline(render_pipeline003);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    render_bundle_encoder402.popDebugGroup();
    
    buffer003.destroy()
    query501.destroy()
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    query103.destroy()
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder006.insertDebugMarker("mymarker");
    
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    command_encoder006.pushDebugGroup("mygroupmarker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    query401.destroy()
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    query102.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.submit([command_buffer003, ]);
    command_encoder005.insertDebugMarker("mymarker");
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    buffer004.destroy()
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group002);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    device20.pushErrorScope("out-of-memory");
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    command_encoder004.insertDebugMarker("mymarker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer006.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_bundle_encoder000.popDebugGroup();
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    buffer408.destroy()
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
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
        occlusionQuerySet: query502
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder007.insertDebugMarker("mymarker");
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    query501.destroy()
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query401.destroy()
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_pass_encoder5000.beginOcclusionQuery(0)
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_buffer007 = command_encoder007.finish();
    compute_pass_encoder0020.setPipeline(compute_pipeline002);
    
    texture101.destroy();
    command_encoder501.insertDebugMarker("mymarker");
    query000.destroy()
    
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group003);
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4000.popDebugGroup()
    
    buffer005.destroy()
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    command_encoder006.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    buffer501.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    command_encoder502.pushDebugGroup("mygroupmarker")
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder501.copyTextureToBuffer(
        {
            texture: texture500
        },
        {
            buffer: buffer500
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query001.destroy()
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const array4 = new Float32Array([0.25, -0.5, 0.0, -0.5, 1.0, 0.5, 0.5, 0.75, 0.25, 0.0, 1.0, -0.5, 1.0, -1.0, 1.0, 0.25, -0.25, -1.0, -1.0, -0.5, 0.0, -0.5, -0.25, 0.0, -0.5, 0.0, 1.0, -1.0, 0.5, -0.75, 0.75, -0.25, -0.25, 0.25, 0.25, -0.5, -1.0, 1.0, 0.5, -0.25, 0.0, 0.5, -0.25, 1.0, 0.25, 0.5, -0.75, -0.25, -0.75, 0.5, -0.25, -1.0, 0.5, -1.0, 0.0, -1.0, -1.0, 0.25, -1.0, 0.25, 1.0, -0.25, -0.75, 0.0, 0.25, 1.0, -1.0, 1.0, -0.25, 0.75, -0.75, 0.0, 0.5, -0.5, 1.0, 0.0, 0.0, 1.0, 0.0, -1.0, 1.0, -1.0, 0.75, 0.0, 1.0, 0.0, -1.0, 1.0, 0.25, -0.5, -0.25, 1.0, 0.5, 1.0, 1.0, -0.75, -0.75, -0.75, -0.25, 0.25, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture201.destroy();
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group401);
    
    command_encoder004.insertDebugMarker("mymarker");
    query002.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    query402.destroy()
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    compute_pass_encoder4010.setPipeline(compute_pipeline401);
    device00.queue.writeBuffer(buffer0012, 0, array3, 0, array3.length);
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder100.insertDebugMarker("mymarker");
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4011, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4011, 0);
    render_bundle_encoder100.popDebugGroup();
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device70.destroy();
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder5000.pushDebugGroup("group_marker");
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query501
    });
    compute_pass_encoder0060.setPipeline(compute_pipeline000);
    command_encoder501.copyTextureToBuffer(
        {
            texture: texture500
        },
        {
            buffer: buffer500
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder0020.popDebugGroup()
    query103.destroy()
    
    command_encoder501.copyTextureToBuffer(
        {
            texture: texture500
        },
        {
            buffer: buffer500
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    texture002.destroy();
    query500.destroy()
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_pass_encoder5000.executeBundles([])
    command_encoder004.pushDebugGroup("mygroupmarker")
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    texture203.destroy();
    command_encoder501.copyTextureToBuffer(
        {
            texture: texture500
        },
        {
            buffer: buffer500
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder400.popDebugGroup();
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    command_encoder004.insertDebugMarker("mymarker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    buffer4010.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    query002.destroy()
    command_encoder101.insertDebugMarker("mymarker");
    render_bundle_encoder001.popDebugGroup();
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    query103.destroy()
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    query101.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder401.setPipeline(render_pipeline402);
    query100.destroy()
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
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer001, command_buffer007, ]);
    render_pass_encoder5000.endOcclusionQuery()
    render_pass_encoder5000.popDebugGroup();
    compute_pass_encoder4000.end();
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group004);
    compute_pass_encoder0000.end();
    command_encoder004.popDebugGroup()
    compute_pass_encoder0020.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer101 = command_encoder101.finish();
    const command_buffer004 = command_encoder004.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer102 = command_encoder102.finish();
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0015, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0015, 0);
    const command_buffer002 = command_encoder002.finish();
    const command_buffer005 = command_encoder005.finish();
    const command_buffer000 = command_encoder000.finish();
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer005, ]);
    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4013,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group402);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0060.end();
    device10.queue.submit([command_buffer102, ]);
    command_encoder006.popDebugGroup()
    const command_buffer006 = command_encoder006.finish();
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder4010.end();
    command_encoder401.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    const command_buffer401 = command_encoder401.finish();
    device40.queue.submit([command_buffer401, ]);
    const command_buffer400 = command_encoder400.finish();
}