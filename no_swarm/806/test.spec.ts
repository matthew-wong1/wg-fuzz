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
    
    const array0 = new Float32Array([-0.5, -1.0, 1.0, -1.0, 0.5, -1.0, 0.25, 0.75, -1.0, 0.0, -0.75, -0.25, -0.25, 0.75, -0.25, 0.25, -0.25, -0.5, -0.5, 0.5, 0.5, 0.5, -0.5, -0.75, -0.5, 0.25, 1.0, 1.0, -1.0, -0.75, 0.0, 0.75, -0.5, -0.75, 0.25, 0.5, 0.0, -0.5, 0.75, -0.25, -0.75, 0.75, 0.75, 1.0, -0.25, 0.75, -1.0, 0.25, 0.75, 0.25, 1.0, 0.5, -0.75, -1.0, -0.5, -1.0, -0.5, 0.0, -0.5, 0.25, -0.75, -1.0, -1.0, 0.75, -0.75, -0.5, 0.0, -0.5, -0.75, -0.25, -0.75, 0.5, 0.0, -0.25, -0.25, -0.75, 0.75, -0.25, 0.0, -0.75, 0.25, -0.75, -0.5, -0.5, 0.0, 0.75, -0.25, 0.0, -0.75, 0.0, 0.75, 0.25, -0.25, 0.75, 0.25, 0.25, 0.5, -0.25, 0.0, 0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([0.5, -0.5, -1.0, 0.25, 0.75, -0.75, -0.25, -1.0, 1.0, -0.5, -0.5, 1.0, 0.5, 0.5, -0.75, 0.25, 0.0, -1.0, -0.5, 0.5, 0.0, -1.0, 0.75, 0.25, -1.0, -1.0, -0.25, -0.75, 0.0, 0.0, -1.0, -0.25, -0.25, -0.75, 0.25, 1.0, 0.25, -0.25, 0.5, -1.0, 1.0, 1.0, 0.75, 1.0, -0.25, -1.0, -0.75, -1.0, 0.5, 0.5, 0.5, -0.75, -1.0, 1.0, 0.5, 1.0, 0.5, 0.75, 0.75, 1.0, -0.5, -0.25, 0.25, 0.25, -0.25, -0.25, -0.25, -0.75, -0.25, -0.5, 0.5, 0.5, 0.75, 0.5, 0.0, -0.5, 1.0, -0.25, 0.75, 0.75, -0.25, -0.75, 0.5, 0.5, -0.25, 0.25, -1.0, -0.75, 0.75, -1.0, -0.25, -0.75, 0.25, -0.5, 0.25, -0.5, 0.25, 1.0, 0.0, 0.0, ]);
    const array2 = new Float32Array([-0.5, -0.5, -0.25, -0.75, -0.5, 0.0, 0.5, -0.5, -0.25, -0.25, -0.5, 0.0, -0.25, 1.0, 1.0, 0.5, -0.5, 0.5, 0.25, -0.5, 0.25, 1.0, -0.5, 0.75, -0.75, -0.25, 0.5, -0.25, 0.25, 0.25, 1.0, 0.5, 1.0, -0.25, 0.25, 1.0, 1.0, 0.0, 0.5, 1.0, 0.5, 1.0, 0.0, -0.5, -0.5, 0.75, -1.0, 0.5, -0.25, 0.75, 0.5, -0.25, -0.5, 0.25, 0.75, -0.25, 0.25, -0.25, -0.75, 0.0, 0.5, 0.0, -0.25, -0.5, -0.75, 1.0, 1.0, 1.0, -0.5, -0.25, -0.25, 0.0, 1.0, 0.25, 0.25, 0.75, 0.75, 1.0, 0.75, -0.75, -0.75, -0.75, 0.5, 0.25, -0.25, -0.75, 0.25, 0.75, 0.5, -0.75, -0.25, -0.5, -0.5, 0.75, 0.5, -0.5, 0.5, -0.75, -0.75, -1.0, ]);
    
    
    
    const array3 = new Float32Array([-0.25, -1.0, -0.75, 0.5, -1.0, -0.25, -0.5, 0.25, -0.75, -0.5, 0.75, -0.5, 0.25, -0.75, 1.0, -0.5, -0.25, -0.25, -1.0, 0.5, -0.25, 1.0, -0.5, 1.0, 0.0, -1.0, -0.5, -0.75, 0.25, -0.5, 0.5, 1.0, 1.0, 0.5, 0.25, -0.5, 1.0, -0.75, 1.0, -0.75, -0.25, 0.25, -0.25, 0.75, -1.0, 0.25, 0.5, 0.0, 0.75, -0.75, 0.25, -0.5, -0.25, -1.0, 1.0, -0.25, -0.75, 0.0, 0.75, -0.25, 0.5, -0.5, 0.25, -0.25, -0.5, -0.5, -0.5, 0.25, 1.0, -1.0, -1.0, 1.0, 0.75, 0.5, -0.5, 1.0, 0.75, 1.0, -0.75, 0.0, 0.0, 0.0, -0.25, -0.25, 1.0, 1.0, 0.0, 0.5, -0.25, -0.25, -1.0, 1.0, 0.5, 0.75, 0.25, -1.0, -0.5, -1.0, -0.25, -1.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    texture000.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    texture001.destroy();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const array4 = new Float32Array([0.5, 0.75, 0.25, 0.75, -0.25, 0.5, -0.5, 1.0, -0.25, 1.0, 0.75, 0.75, 0.75, -0.5, 0.75, 1.0, 0.75, 0.75, -0.5, -0.25, 0.75, 0.0, 0.0, 0.5, 0.0, 0.25, -0.25, -1.0, -0.75, -1.0, -0.5, 1.0, -0.25, 0.25, 1.0, -0.5, -0.25, 0.0, -1.0, -0.75, -0.75, -0.75, 0.75, -0.75, 0.25, 0.0, -1.0, 0.5, 0.25, -0.5, 0.25, 0.0, -0.5, 0.25, -1.0, 0.25, 0.25, 0.0, 0.25, 0.75, 1.0, 1.0, 0.25, 0.75, -0.75, 0.5, 0.25, 0.5, 1.0, 0.5, -0.25, -0.75, -0.25, 0.25, 0.25, -0.25, -0.5, 0.5, -1.0, 0.25, -0.5, -1.0, -0.25, 0.25, -0.25, 0.75, -0.75, 0.75, 0.0, -0.75, 0.5, -1.0, 0.5, 0.75, 1.0, -0.75, 0.0, 0.5, 0.75, 0.75, ]);
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device40.pushErrorScope("internal");
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array5 = new Float32Array([-1.0, 1.0, -0.75, -0.5, -1.0, -0.5, 0.5, 0.25, 0.0, -1.0, 0.25, -0.25, 0.25, 0.0, -1.0, 1.0, 1.0, -1.0, -0.25, 1.0, 0.0, 0.75, -0.75, -0.5, 0.25, -1.0, -0.75, 0.5, -0.25, 0.0, 1.0, 0.25, -0.75, 0.0, 0.0, -0.5, -0.75, 1.0, 0.75, 0.0, 0.75, 0.5, 0.0, 0.75, 1.0, 0.75, -1.0, -1.0, -1.0, 0.0, -0.5, -0.25, 0.5, 0.25, -0.5, -0.5, -1.0, 0.25, -0.75, -0.5, 1.0, 0.5, -1.0, -0.25, 1.0, 0.75, 0.75, -0.5, 0.0, -0.25, 0.0, 0.5, -0.25, 0.25, 0.25, 1.0, -0.5, -0.25, -0.75, -0.25, -0.5, -1.0, 0.75, -1.0, 0.5, -0.25, 0.0, -0.25, 0.25, -0.25, 0.5, -0.5, -1.0, 0.5, -0.75, 0.25, 1.0, 0.25, -0.5, -0.75, ]);
    command_encoder300.insertDebugMarker("mymarker");
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("out-of-memory");
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    texture002.destroy();
    const sampler401 = device40.createSampler( { label: "sampler401" } );
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.pushErrorScope("internal");
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    command_encoder301.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer301 = command_encoder301.finish();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
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
    render_bundle_encoder000.insertDebugMarker("marker");
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    buffer001.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    compute_pass_encoder3000.insertDebugMarker("marker")
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
    render_bundle_encoder001.popDebugGroup();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    query404.destroy()
    const array6 = new Float32Array([0.75, -1.0, 1.0, 0.75, 0.0, -0.75, 0.75, 0.75, -1.0, -0.5, 0.5, 0.0, -0.5, 1.0, -1.0, 0.75, -0.25, -0.75, 1.0, -0.5, 1.0, -0.25, 0.0, 0.0, 0.25, 0.5, 0.25, 0.75, -1.0, 0.0, -1.0, 1.0, 0.0, 0.0, -0.75, 1.0, -0.5, -0.5, -0.75, 0.0, 0.5, -0.25, 0.25, 0.75, 0.5, 0.5, 0.5, 0.0, 0.25, -0.5, -0.75, -0.5, -0.25, -1.0, -0.5, -0.75, -0.75, 1.0, 1.0, -0.5, -0.75, 0.5, 0.5, 0.5, 0.25, -0.25, 0.25, -0.75, -0.5, -0.75, 0.5, 1.0, 0.75, 0.75, 1.0, 0.5, 0.75, -0.75, 0.75, 1.0, -0.5, 0.25, -0.75, 0.25, 0.0, -0.75, 0.25, 0.0, 0.5, 0.5, 0.75, 0.0, 0.5, 0.75, -1.0, 0.25, 0.0, -0.75, 0.25, -0.25, ]);
    device50.pushErrorScope("internal");
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
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    query403.destroy()
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    buffer400.destroy()
    const command_buffer302 = command_encoder302.finish();
    
    buffer000.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
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
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const command_buffer000 = command_encoder000.finish();
    
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    query400.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    
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
    command_encoder001.insertDebugMarker("mymarker");
    render_bundle_encoder500.insertDebugMarker("marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder001.insertDebugMarker("marker");
    query000.destroy()
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer303 = command_encoder303.finish();
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.setPipeline(render_pipeline302);
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    command_encoder001.pushDebugGroup("mygroupmarker")
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    query402.destroy()
    
    
    device20.destroy();
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder400.setPipeline(render_pipeline400);
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    device40.pushErrorScope("internal");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    query000.destroy()
    texture400.destroy();
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder001.insertDebugMarker("mymarker");
    buffer002.destroy()
    const command_buffer003 = command_encoder003.finish();
    
    query000.destroy()
    
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    
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
        layout: render_pipeline400.getBindGroupLayout(0),
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
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
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
    render_bundle_encoder002.popDebugGroup();
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device30.queue.submit([command_buffer303, ]);
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    query401.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    command_encoder500.insertDebugMarker("mymarker");
    render_bundle_encoder500.popDebugGroup();
    buffer301.destroy()
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
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder4010.popDebugGroup()
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    buffer300.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const command_buffer004 = command_encoder004.finish();
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
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
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    query400.destroy()
    
    render_bundle_encoder400.popDebugGroup();
    query406.destroy()
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    buffer003.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    const query407 = device40.createQuerySet({
        label: "query407",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
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
    
    
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    query403.destroy()
    device00.pushErrorScope("validation");
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query400.destroy()
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    render_bundle_encoder001.setPipeline(render_pipeline001);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    buffer402.destroy()
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    query403.destroy()
    render_bundle_encoder401.setPipeline(render_pipeline401);
    
    
    texture500.destroy();
    
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout402]
    });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.setPipeline(render_pipeline303);
    
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    device50.pushErrorScope("out-of-memory");
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
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group401);
    query405.destroy()
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    
    texture401.destroy();
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5000.popDebugGroup()
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    buffer500.destroy()
    
    
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
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    query406.destroy()
    compute_pass_encoder4010.setPipeline(compute_pipeline400);
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer303.destroy()
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
        vertex: {
            module: shader_module307,
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
            module: shader_module307,
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
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    texture300.destroy();
    
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const array7 = new Float32Array([0.5, -0.25, 0.0, 0.25, 0.5, -0.5, -0.75, 0.0, 0.25, 0.5, 0.0, 0.0, -1.0, -0.75, -1.0, -0.75, 0.0, 1.0, -0.5, -0.5, 0.5, -0.75, 0.0, 0.75, 0.5, 0.25, -0.25, 0.5, 0.25, -1.0, -0.25, -0.5, 1.0, -1.0, -1.0, -1.0, 0.25, 0.5, -0.75, 1.0, 0.5, 0.25, 0.25, -1.0, -1.0, -0.25, -0.5, 0.75, 0.75, 0.5, -0.75, 0.75, -0.75, 0.25, -0.75, -0.5, 0.0, 0.25, 0.5, 0.0, 1.0, 0.0, 0.0, -0.5, 0.5, -0.75, -1.0, -1.0, 1.0, 0.75, 0.75, 0.0, -0.75, 0.25, 0.5, 0.0, 0.5, 0.25, 0.5, 0.5, 0.75, -0.5, -0.5, -0.5, 0.5, 0.25, 0.25, 0.5, -0.25, -0.25, -0.25, 0.0, 1.0, 0.75, -0.5, 0.75, 0.0, -0.5, 1.0, -1.0, ]);
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group000);
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    query000.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_bundle_encoder500.insertDebugMarker("marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    
    compute_pass_encoder0020.popDebugGroup()
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    buffer004.destroy()
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.setPipeline(render_pipeline401);
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    buffer006.destroy()
    
    buffer501.destroy()
    
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

    compute_pass_encoder4000.setBindGroup(0, bind_group402);
    render_bundle_encoder301.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer008, 0, array3, 0, array3.length);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    buffer406.destroy()
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    command_encoder005.clearBuffer(buffer008);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query402.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
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
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_bundle_encoder402.setBindGroup(0, bind_group403);
    query500.destroy()
    
    
    device00.pushErrorScope("validation");
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer008, 0, array3, 0, array3.length);
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout300,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    buffer4010.destroy()
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5010.insertDebugMarker("marker")
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
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
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group003);
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
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
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout404]
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.dispatchWorkgroups(100);
    
    
    compute_pass_encoder0010.end();
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
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group404);
    const command_buffer304 = command_encoder304.finish();
    compute_pass_encoder4000.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4000.end();
    const command_buffer005 = command_encoder005.finish();
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder4010.popDebugGroup()
    device30.queue.submit([command_buffer304, ]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    command_encoder001.popDebugGroup()
    compute_pass_encoder4010.end();
    command_encoder400.popDebugGroup()
    const command_buffer401 = command_encoder401.finish();
    const command_buffer400 = command_encoder400.finish();
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    device00.queue.submit([command_buffer004, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0013, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0013, 0);
    const command_buffer001 = command_encoder001.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0020.end();
    const command_buffer002 = command_encoder002.finish();
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer308, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer308, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    compute_pass_encoder3000.end();
    const command_buffer300 = command_encoder300.finish();
}