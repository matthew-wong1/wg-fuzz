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
    const array0 = new Float32Array([-0.5, 0.25, 0.5, 0.5, -1.0, -1.0, -0.75, -0.5, -0.25, 0.25, -0.25, 0.75, 1.0, -0.5, 0.75, -1.0, -1.0, 0.0, 0.75, 0.0, -0.75, -0.25, 0.5, 0.25, 0.5, 0.0, -0.5, 0.5, 0.5, 1.0, 0.75, -0.75, -0.5, 0.25, 1.0, -0.5, 0.75, -0.5, 0.5, 0.25, -1.0, 0.0, 0.0, 0.25, 0.75, 0.75, 0.5, 0.25, 0.0, -1.0, 0.25, 0.5, -0.5, -0.5, 0.25, 0.5, 0.0, -0.5, 0.25, 1.0, 0.25, -0.25, 0.5, 0.0, 0.25, -0.75, -0.25, 0.5, -0.25, 0.0, 0.0, -0.5, 0.75, 0.0, 0.75, -0.25, 0.5, 1.0, 0.0, 0.25, 0.25, 0.5, 0.25, -1.0, 0.25, 0.0, 0.75, -0.5, -0.5, 1.0, 0.0, -0.75, -0.5, 0.5, 0.0, -1.0, 0.75, 1.0, 0.25, 0.75, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("internal");
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device20.pushErrorScope("out-of-memory");
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.pushErrorScope("validation");
    render_bundle_encoder000.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    buffer201.destroy()
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array1 = new Float32Array([0.75, -0.75, -1.0, -1.0, -0.25, -1.0, 0.5, -0.75, 0.5, 0.0, 0.25, 0.75, 0.25, 0.0, 0.0, -0.25, -0.5, 0.75, -1.0, -0.5, 1.0, -0.75, -1.0, -1.0, -1.0, 0.0, 0.5, 0.5, -0.5, -0.25, -0.25, -1.0, 0.5, -1.0, -0.75, 0.75, -1.0, 1.0, -0.5, 1.0, 1.0, 0.75, 0.75, -0.75, 0.5, 0.5, 0.25, -1.0, 0.0, -0.5, 1.0, 1.0, 0.5, -0.25, 0.75, -0.25, -0.75, -0.75, 0.0, -0.75, 0.0, 1.0, -1.0, -1.0, 1.0, 0.0, 0.5, 1.0, -0.75, -0.25, 0.0, -0.5, -1.0, -1.0, 0.25, 0.5, -1.0, -0.25, 0.25, -0.25, 0.75, 0.5, -0.75, 1.0, 0.75, -0.75, 0.75, -0.25, -0.75, 0.0, 0.75, 0.75, 0.75, 0.75, -0.25, 0.5, 0.75, -0.5, 0.25, -0.25, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device20.pushErrorScope("out-of-memory");
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    buffer100.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer200.destroy()
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    buffer000.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array2 = new Float32Array([0.75, -0.75, -1.0, 0.0, 0.75, 0.5, 0.75, -0.5, -0.75, 0.75, -0.5, -0.5, 0.75, -0.25, -0.5, 0.5, -1.0, -0.25, 0.5, 0.5, -0.75, -0.25, -0.25, 0.0, -0.5, -1.0, 0.5, 0.75, 0.75, 0.0, -0.5, 0.0, -0.25, 1.0, 0.25, -0.25, -1.0, -0.25, 0.25, -0.25, 0.5, -0.75, 0.0, -0.75, 0.0, 1.0, 0.0, -1.0, -0.75, 0.0, -0.75, -1.0, -0.75, -1.0, -0.25, 0.0, -0.75, -0.5, -0.25, 1.0, 1.0, 0.0, -1.0, 0.75, 0.75, 0.0, 0.25, 0.0, -0.75, 1.0, 0.0, -0.25, -1.0, 1.0, 1.0, -0.5, 0.25, -0.5, -1.0, 0.5, -1.0, 0.5, -1.0, 0.75, -1.0, -0.75, 0.75, -1.0, -1.0, -1.0, -0.5, -0.5, 0.25, -1.0, -0.75, 0.0, -1.0, -0.75, 1.0, -0.75, ]);
    const array3 = new Float32Array([0.25, 0.25, -1.0, -0.25, 0.5, 0.75, 0.75, -0.5, 0.25, -1.0, 0.0, 0.75, 0.25, 1.0, 0.75, 1.0, 0.0, -0.25, -0.5, -0.75, -1.0, -0.75, -0.25, 0.5, -1.0, 0.5, -0.5, 0.5, -0.5, -0.75, -0.5, -0.75, 1.0, 0.0, 0.5, 0.25, -0.5, 0.25, -0.25, 0.75, 0.75, 1.0, 0.0, -1.0, 1.0, 0.5, 1.0, 0.0, -0.5, 0.0, 0.25, 0.5, 0.75, 0.0, -1.0, -0.75, 0.0, -1.0, 0.25, 1.0, -1.0, 0.25, 0.25, -0.25, 0.0, 0.0, 1.0, -0.75, -1.0, -0.25, -1.0, -1.0, 0.0, -0.75, -0.25, -0.5, -0.75, 0.25, 0.75, -1.0, -1.0, 1.0, -1.0, 0.25, -0.75, -0.5, 1.0, 1.0, 1.0, -0.25, -0.5, 0.75, -0.25, 0.5, 0.25, -0.25, -0.25, -0.75, 0.0, 0.75, ]);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    texture200.destroy();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32sint",
        dimension: "2d"
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device00.destroy();
    
    command_encoder200.insertDebugMarker("mymarker");
    const command_buffer200 = command_encoder200.finish();
    
    device10.pushErrorScope("validation");
    query100.destroy()
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8snorm",
        dimension: "2d"
    });
    buffer203.destroy()
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    render_pass_encoder1010.insertDebugMarker("marker");
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    texture101.destroy();
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    
    const command_buffer400 = command_encoder400.finish();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    buffer102.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture102.destroy();
    query101.destroy()
    device10.pushErrorScope("internal");
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder1000.popDebugGroup()
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    query102.destroy()
    
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    buffer202.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query101.destroy()
    texture103.destroy();
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([-0.25, 0.5, -1.0, 0.5, 0.5, 0.0, -1.0, 0.5, 0.25, 0.5, -0.75, -0.75, 0.0, 0.75, -1.0, 1.0, 0.5, -1.0, -0.75, 0.0, 0.25, 0.25, 0.75, -0.75, -0.75, 0.75, 1.0, 0.25, -1.0, -0.75, -0.5, 1.0, -0.25, -0.25, 1.0, -1.0, 1.0, 0.25, 0.5, -0.5, -0.5, 1.0, -0.25, -0.25, -0.5, 0.25, 0.0, -0.75, -0.25, 0.75, -0.5, -0.5, 0.75, 1.0, -0.25, -1.0, -0.25, 0.0, 0.75, -0.75, 0.25, -0.75, -1.0, 0.25, 0.0, -0.75, 1.0, 0.5, 0.0, 0.25, -1.0, -0.25, -0.5, 0.25, 0.0, -0.5, -0.25, 1.0, 0.5, -0.75, -0.75, 0.0, 1.0, 0.25, -1.0, 0.5, 1.0, -0.5, 1.0, -0.5, -0.75, -0.75, 1.0, 0.5, 0.0, 0.75, 0.25, 0.25, -0.75, -1.0, ]);
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
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.setStencilReference(1);
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder401.insertDebugMarker("mymarker");
    
    render_pass_encoder1010.popDebugGroup();
    render_bundle_encoder200.setPipeline(render_pipeline202);
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder202.setPipeline(render_pipeline200);
    buffer204.destroy()
    device30.pushErrorScope("internal");
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    
    
    
    
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    const array5 = new Float32Array([-0.25, -0.5, -0.5, -0.25, 0.0, 0.5, 0.25, 0.75, -0.25, -0.25, 0.0, 0.25, 0.5, 0.5, 0.5, -1.0, -1.0, -0.5, 0.0, -0.75, 0.0, -0.75, -0.5, -1.0, 0.25, 0.0, 1.0, -0.25, 0.0, 0.25, 0.0, 1.0, 0.25, 0.5, 0.0, -1.0, 0.0, -0.75, -0.5, 0.75, 0.0, -0.25, -1.0, 1.0, 0.5, 0.25, 1.0, 0.25, -0.25, -0.75, 1.0, 1.0, 0.25, 0.25, 0.5, 1.0, 1.0, -1.0, -1.0, 0.5, 0.25, 0.25, 0.75, 0.25, 0.0, -0.25, 1.0, 0.25, 0.25, -1.0, 0.75, 1.0, 0.75, 1.0, 0.5, 0.75, 1.0, 0.5, 1.0, -1.0, 0.75, 0.75, 0.75, -0.5, 1.0, 1.0, -0.25, 0.5, -0.5, 1.0, 0.5, -1.0, 0.25, 1.0, -0.25, -1.0, -1.0, 0.0, -0.75, 0.5, ]);
    render_bundle_encoder401.setPipeline(render_pipeline400);
    texture100.destroy();
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    
    const array6 = new Float32Array([-0.5, -0.75, -0.5, 0.5, 0.25, -0.25, -1.0, -0.75, 0.75, 0.25, -1.0, 0.75, -1.0, -0.25, -0.5, 0.5, 0.5, 1.0, 0.0, 0.0, -0.5, 0.5, 0.75, -0.5, 0.5, -0.75, -1.0, 0.5, 0.75, -1.0, 0.25, -1.0, -0.75, 0.75, 1.0, 1.0, 0.0, 0.25, 0.0, -1.0, 0.25, 0.0, -0.75, -0.75, -0.5, -0.75, -0.75, 1.0, 0.5, -1.0, 0.75, 0.0, -0.5, -0.25, -1.0, 0.25, -0.75, -0.25, -1.0, -0.25, 1.0, -0.5, -0.25, 0.75, 0.25, -0.75, -0.25, -0.75, 0.25, 1.0, -1.0, -0.75, -1.0, 0.0, 1.0, 1.0, -0.25, 0.25, -0.75, 0.25, -0.75, -1.0, 0.5, -0.75, -0.5, -0.5, 1.0, 1.0, 0.0, 0.25, -1.0, -0.25, 0.75, -1.0, 0.25, 1.0, -0.75, 0.75, 0.0, 1.0, ]);
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer206.destroy()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder400.setPipeline(render_pipeline401);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    texture201.destroy();
    device20.pushErrorScope("internal");
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    buffer300.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder202.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    query101.destroy()
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    texture300.destroy();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
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
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_pass_encoder1010.executeBundles([])
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    command_encoder201.pushDebugGroup("mygroupmarker")
    const command_buffer202 = command_encoder202.finish();
    query300.destroy()
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    render_pass_encoder1010.executeBundles([])
    
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    buffer400.destroy()
    query400.destroy()
    query100.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    
    render_pass_encoder1010.setPipeline(render_pipeline102);
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group202);
    render_bundle_encoder202.insertDebugMarker("marker");
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder1010.insertDebugMarker("marker");
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query300.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    buffer2011.destroy()
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    query300.destroy()
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    device20.queue.writeBuffer(buffer209, 0, array6, 0, array6.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    command_encoder300.insertDebugMarker("mymarker");
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    
    buffer207.destroy()
    render_pass_encoder1010.insertDebugMarker("marker");
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    query103.destroy()
    query101.destroy()
    
    device20.queue.writeBuffer(buffer209, 0, array2, 0, array2.length);
    
    command_encoder201.popDebugGroup()
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    render_bundle_encoder401.popDebugGroup();
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_pass_encoder1010.setStencilReference(1);
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    device50.destroy();
    texture400.destroy();
    device20.queue.writeBuffer(buffer209, 0, array3, 0, array3.length);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    
    render_pass_encoder1010.setStencilReference(1);
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    device20.queue.writeBuffer(buffer209, 0, array3, 0, array3.length);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device60.destroy();
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
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
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group401);
    render_bundle_encoder100.popDebugGroup();
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    buffer104.destroy()
    compute_pass_encoder2010.setPipeline(compute_pipeline202);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer209, 0, array1, 0, array1.length);
    query102.destroy()
    
    query200.destroy()
    buffer205.destroy()
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group100);
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
    
    
    
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    device40.queue.submit([command_buffer400, ]);
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
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
    device20.pushErrorScope("internal");
    compute_pass_encoder4020.insertDebugMarker("marker")
    query102.destroy()
    
    texture104.destroy();
    query101.destroy()
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    device20.queue.writeBuffer(buffer209, 0, array5, 0, array5.length);
    render_pass_encoder1010.setVertexBuffer(0, buffer104);
    device10.pushErrorScope("internal");
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    buffer106.destroy()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    
    
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile(__dirname + '/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const command_buffer403 = command_encoder403.finish();
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const array7 = new Float32Array([-0.25, 0.5, 1.0, 1.0, -0.25, -1.0, 0.5, 0.75, 0.75, -1.0, 0.0, 0.5, -1.0, -0.75, 1.0, -0.75, 0.0, 0.25, 0.75, -1.0, 1.0, 0.25, -0.25, 0.75, 0.75, 0.75, 0.25, 1.0, -0.5, 1.0, -1.0, 0.75, -0.25, 0.25, -0.75, -1.0, -0.75, -0.75, -0.75, -1.0, 0.25, 0.0, -0.25, 0.0, 1.0, -1.0, 1.0, 0.5, 0.0, 0.25, 1.0, 0.5, 0.5, -1.0, 0.75, 0.0, -0.25, -0.75, -0.25, 1.0, 0.5, 0.5, 0.25, -1.0, 0.0, 0.5, 0.5, -0.25, 0.5, 0.5, -0.75, 0.25, 0.25, 0.0, -1.0, 0.0, 1.0, 0.75, -1.0, 0.0, 1.0, -0.5, 0.5, -0.25, -0.75, 0.5, 0.0, 0.75, -0.5, 0.0, -1.0, -0.25, 0.5, 0.75, -1.0, 0.25, 0.5, 0.75, 0.25, 0.5, ]);
    buffer405.destroy()
    
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    buffer2010.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder202.popDebugGroup();
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder201.popDebugGroup();
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    var shader_module4010_code = "";
    try {
        shader_module4010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4010 = await device40.createShaderModule({ label: "shader_module4010", code: shader_module4010_code })
    buffer404.destroy()
    render_pass_encoder1010.insertDebugMarker("marker");
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    render_pass_encoder1020.setPipeline(render_pipeline103);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1010.popDebugGroup();
    
    query301.destroy()
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    command_encoder301.insertDebugMarker("mymarker");
    
    render_bundle_encoder101.setPipeline(render_pipeline101);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.setPipeline(render_pipeline101);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder202.insertDebugMarker("marker");
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer209, 0, array5, 0, array5.length);
    device30.pushErrorScope("internal");
    command_encoder302.insertDebugMarker("mymarker");
    
    device40.pushErrorScope("validation");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    texture105.destroy();
    device20.queue.writeBuffer(buffer209, 0, array6, 0, array6.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    compute_pass_encoder4020.popDebugGroup()
    
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group203);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    command_encoder301.popDebugGroup()
    const command_buffer301 = command_encoder301.finish();
    const command_buffer303 = command_encoder303.finish();
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder4010.setPipeline(compute_pipeline400);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group402);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4020.setPipeline(compute_pipeline400);
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
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group101);
    const command_buffer304 = command_encoder304.finish();
    render_pass_encoder1020.setVertexBuffer(0, buffer104);
    compute_pass_encoder4010.popDebugGroup()
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
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group403);
    render_pass_encoder1010.drawIndirect(buffer103, 0);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4011, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4011, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    render_pass_encoder1010.end();
    const command_buffer201 = command_encoder201.finish();
    compute_pass_encoder4010.end();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer403, ]);
    device30.queue.submit([command_buffer301, command_buffer303, command_buffer304, ]);
    command_encoder101.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1020.end();
    compute_pass_encoder4020.end();
    const command_buffer102 = command_encoder102.finish();
    const command_buffer402 = command_encoder402.finish();
    const command_buffer401 = command_encoder401.finish();
    device40.queue.submit([command_buffer401, ]);
    device20.queue.submit([command_buffer201, ]);
    device40.queue.submit([command_buffer402, ]);
}