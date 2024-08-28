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
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array0 = new Float32Array([-0.75, 0.75, -0.75, 0.0, 1.0, 0.0, 0.0, -0.75, 1.0, 0.0, -1.0, -1.0, -0.75, 1.0, 0.75, -0.5, 0.75, 1.0, -0.5, -0.5, -1.0, -1.0, -0.25, -1.0, -0.5, 0.5, -0.75, -1.0, -0.75, 0.5, 0.25, -0.5, 0.0, -0.75, -0.5, 0.25, 0.25, 0.25, -0.5, -0.75, 0.75, 0.75, 0.5, -1.0, 0.25, 1.0, -1.0, 0.5, 0.0, 0.25, 0.5, 0.75, -0.5, 1.0, 1.0, -0.5, -0.25, -0.25, 1.0, -0.75, -0.75, -0.75, 0.5, -0.5, 0.0, 1.0, 1.0, 0.0, 0.5, -1.0, -0.25, 1.0, 0.5, -1.0, 0.5, 1.0, -0.5, -0.75, 1.0, 0.0, -1.0, -0.25, -0.75, 1.0, 0.25, -0.25, -0.5, -1.0, -0.75, 0.0, 0.75, -0.75, 0.0, 0.25, 0.5, 0.0, -0.5, -1.0, -0.5, -1.0, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([-1.0, 0.25, -0.25, 0.25, 0.75, 0.5, -0.75, 1.0, -0.5, -0.5, 0.5, 0.25, 0.5, 0.5, -0.25, 0.75, 0.0, 1.0, -0.25, 0.75, -0.5, -0.25, -1.0, -1.0, -0.25, -0.75, 0.25, 0.25, 0.75, 0.5, 0.5, -0.75, -0.75, -0.25, 0.25, -0.25, 0.5, 0.75, 0.5, -0.5, -1.0, -1.0, -0.5, 0.75, -0.25, 0.5, -0.75, -1.0, -0.5, -0.75, 0.5, -0.75, -0.75, -1.0, -0.75, -0.25, -1.0, -0.25, 0.25, -0.25, 0.25, -1.0, 0.5, -0.25, 0.5, -1.0, 1.0, 1.0, 0.0, -0.25, 1.0, -0.5, 0.25, 0.0, -0.5, -0.25, 0.5, -0.5, 0.75, -1.0, 0.75, 1.0, 0.5, 0.25, 0.25, -0.25, -0.25, 0.75, 0.75, 0.25, 1.0, 0.5, -0.25, -1.0, -1.0, 1.0, 0.75, -0.75, 0.25, -0.25, ]);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.pushErrorScope("out-of-memory");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.destroy();
    
    
    device00.pushErrorScope("out-of-memory");
    
    buffer000.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device00.pushErrorScope("internal");
    
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const array2 = new Float32Array([1.0, 0.5, 0.5, -0.75, 0.75, 0.5, -0.75, -1.0, -1.0, 1.0, -0.5, -1.0, -0.75, -1.0, -1.0, -0.5, 0.0, -0.75, 1.0, -0.25, 0.25, 0.5, -1.0, -0.5, -1.0, -0.25, -0.25, -1.0, -0.75, 0.0, -1.0, 0.75, -1.0, -0.75, 0.0, 1.0, -0.75, -0.75, -0.25, 0.25, 0.75, -1.0, 0.0, 0.75, -0.5, -0.75, 0.5, 0.25, -0.25, -0.25, 1.0, 0.75, -1.0, -0.25, -0.75, 0.25, 0.5, -1.0, 0.5, 0.0, 0.75, -1.0, 0.75, 0.75, -0.5, 0.5, 0.5, -0.5, 0.0, 0.75, 0.25, -0.75, -0.5, -0.25, 0.5, -0.25, 0.75, 0.75, -0.75, -1.0, 0.25, -0.75, -0.5, -0.25, -0.5, 0.5, 0.25, -0.25, 0.25, 0.5, 0.0, 0.75, 0.5, -0.25, -0.5, 0.75, 0.5, 0.5, -0.75, 0.0, ]);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer001.destroy()
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    compute_pass_encoder4000.popDebugGroup()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const array3 = new Float32Array([0.0, 0.25, 0.5, 0.75, 0.25, 0.25, -0.75, -0.25, -1.0, 0.5, -0.5, -1.0, -1.0, 0.0, 0.25, -0.75, -0.5, -0.5, 0.5, 0.5, 0.0, -0.25, -0.75, 1.0, 0.5, 0.75, 1.0, -0.75, 0.75, 1.0, -0.25, 0.75, 0.0, -0.75, 1.0, 0.0, -0.75, -1.0, -0.5, 0.25, 0.25, -1.0, -1.0, 0.0, -0.75, 1.0, -0.25, -0.25, 0.25, -0.25, 0.25, 0.0, 0.25, 0.25, 0.25, 0.75, 1.0, 0.5, -0.25, 0.75, 1.0, -0.5, 0.75, 0.5, -0.5, 1.0, -1.0, -0.5, -0.75, -1.0, 0.75, 1.0, 0.25, -0.75, 1.0, 1.0, -0.75, 1.0, 0.25, 1.0, 0.0, 1.0, -0.5, -0.75, -0.25, 0.5, -0.75, -0.25, 0.5, -0.25, -0.5, 0.25, 0.25, 0.25, -0.75, 0.0, 0.0, 0.0, 0.75, 0.25, ]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device20.destroy();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
    
    texture000.destroy();
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
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.popDebugGroup();
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array4 = new Float32Array([-0.75, -0.75, 0.25, -0.75, 0.25, -0.75, 0.25, 0.25, -0.75, -0.5, -0.75, -0.5, 0.5, 1.0, 0.0, -0.25, -0.25, 0.0, 0.75, 0.0, -1.0, 0.0, 0.5, -0.5, -1.0, -0.25, -0.5, -1.0, -0.5, 0.75, 0.75, -0.5, 0.75, 0.25, -0.5, 1.0, -0.75, -0.25, 0.25, 1.0, 0.0, 0.0, -0.75, 0.25, 0.25, 0.25, -0.5, -1.0, 0.25, 0.5, 0.25, -0.5, -0.75, 0.25, -0.75, -0.5, -0.5, 0.5, 0.75, -0.75, 0.5, -1.0, -0.25, -1.0, 0.75, 0.75, -0.5, 0.0, 0.75, 0.75, 0.0, -0.25, 0.75, -0.5, 0.5, 0.75, -0.75, 0.75, -0.75, -0.75, 0.25, -1.0, -0.25, 0.25, 0.75, 0.5, -1.0, -0.75, 1.0, 0.75, 0.75, -0.25, -0.25, 0.0, 0.75, 0.75, 0.5, -0.5, 1.0, 0.25, ]);
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    
    render_bundle_encoder402.insertDebugMarker("marker");
    const array5 = new Float32Array([-0.5, -0.25, 1.0, 1.0, -0.25, -1.0, -0.75, 1.0, 0.25, 0.0, -0.5, -1.0, 0.5, 0.25, 0.75, -1.0, -0.25, 0.5, -0.25, 0.25, -0.25, 0.75, 0.25, -0.5, -0.5, 0.5, -0.75, 0.5, -0.75, -1.0, 0.75, -0.25, 0.75, 0.75, 0.5, -1.0, 0.25, 0.0, -0.5, -0.25, 0.0, 1.0, -0.25, 1.0, 0.75, 0.75, 0.5, 1.0, 0.25, -0.5, -0.5, 1.0, 0.5, 0.5, 0.0, 0.25, -0.25, -1.0, 1.0, 1.0, -0.75, -1.0, 0.75, 0.5, 0.5, -0.75, 0.25, -0.5, -1.0, -1.0, -0.25, 0.5, -0.25, 0.75, 0.25, -1.0, 0.75, 0.5, 0.25, 0.5, 0.5, -0.25, 1.0, -0.5, 0.75, 0.25, 0.25, 0.75, -0.75, -0.25, 0.75, 1.0, -0.25, -1.0, -0.75, -0.25, -0.5, 1.0, -0.75, 0.75, ]);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array6 = new Float32Array([-0.5, 0.5, 1.0, -1.0, -0.25, 0.75, -1.0, -0.75, -0.25, 0.75, -1.0, -0.5, 1.0, -0.5, 0.75, -1.0, 0.5, -1.0, 0.75, -0.75, -0.75, -0.5, 0.5, 0.0, -0.25, -0.5, -0.75, 0.75, 0.75, -1.0, -1.0, 1.0, -0.25, -1.0, 0.5, 0.0, -0.5, 0.75, -0.25, 0.0, 1.0, 1.0, 0.25, 0.0, 0.75, 1.0, 0.25, 1.0, 0.5, 0.0, 0.5, -0.5, -0.5, -0.75, -0.25, 1.0, -0.25, 0.5, -1.0, -1.0, -0.75, 1.0, 1.0, 1.0, 0.25, 1.0, -0.75, -0.75, -1.0, 0.25, -1.0, 0.0, 0.75, 1.0, 0.5, 0.0, 0.0, 0.0, 0.5, 1.0, -0.25, -0.75, -1.0, -0.25, -0.5, 0.0, 0.0, 0.5, 0.25, 0.25, -0.25, 0.75, 0.75, -0.5, -0.5, -0.75, 1.0, 0.25, 0.25, -0.25, ]);
    device00.destroy();
    render_bundle_encoder401.pushDebugGroup("group_marker");
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    query400.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    texture401.destroy();
    
    
    buffer400.destroy()
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device60.pushErrorScope("validation");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    buffer402.destroy()
    
    render_bundle_encoder401.insertDebugMarker("marker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.destroy();
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    query400.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    texture403.destroy();
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder400.popDebugGroup();
    const texture_view4003 = texture400.createView({ label: "texture_view4003" });
    
    
    query400.destroy()
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_bundle_encoder400.insertDebugMarker("marker");
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
    
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer401.destroy()
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    
    
    const texture_view4004 = texture400.createView({ label: "texture_view4004" });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_bundle_encoder401.popDebugGroup();
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer403.destroy()
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query400.destroy()
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    
    texture402.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    texture400.destroy();
    device70.pushErrorScope("internal");
    
    texture700.destroy();
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth16unorm",
        dimension: "2d"
    });
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    texture800.destroy();
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4002,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    
    compute_pass_encoder4000.popDebugGroup()
    
    render_bundle_encoder402.popDebugGroup();
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const array7 = new Float32Array([0.75, -0.5, -0.25, -1.0, -0.25, 0.25, 0.25, 0.25, -0.5, 0.75, 0.75, -0.5, -0.25, 0.5, 1.0, 0.0, 0.5, -0.5, 0.5, 0.0, 0.5, -0.25, 0.25, 0.25, 0.25, 0.5, 0.75, -0.75, -0.75, -0.75, -0.75, -0.5, 1.0, -1.0, 0.0, 0.0, 0.5, 0.75, 0.0, -0.25, 1.0, 0.75, -0.75, -0.75, 0.75, -0.75, 1.0, -0.5, 0.75, -1.0, -0.5, 0.5, 0.75, 0.0, 1.0, 1.0, -1.0, 0.5, -0.25, -0.5, 1.0, 0.5, -0.75, -0.75, 1.0, 0.25, 0.0, 0.5, 0.0, -0.75, -1.0, -1.0, -1.0, -0.5, 0.25, 0.0, -1.0, 0.25, 0.25, -0.25, -0.25, 0.0, -0.5, -0.25, 0.75, 0.75, -0.25, -0.25, 0.25, 0.5, -0.5, -0.75, 1.0, -0.75, -0.25, 0.25, 0.75, -1.0, -1.0, 1.0, ]);
    
    
    
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    device40.pushErrorScope("internal");
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    query400.destroy()
    
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
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
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    query800.destroy()
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    render_bundle_encoder402.insertDebugMarker("marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    texture701.destroy();
    
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    device80.destroy();
    
    
    query400.destroy()
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture702.destroy();
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    device70.pushErrorScope("internal");
    
    query400.destroy()
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4040,
            },
        ],
        occlusionQuerySet: query400
    });
    
    const array8 = new Float32Array([-0.25, 0.75, 0.5, 0.5, 0.25, -0.5, 0.75, -0.75, -0.25, 0.5, 1.0, -1.0, 0.75, 0.25, -1.0, 0.25, 0.5, -1.0, -0.75, 1.0, 0.5, 0.0, 1.0, -1.0, -0.75, -0.25, -0.75, -1.0, -1.0, 0.5, 1.0, 1.0, -0.25, 0.5, 0.5, 0.25, 0.25, -0.75, -0.5, -0.25, 0.5, -1.0, 0.0, -1.0, -0.5, -0.75, 0.5, -0.75, 0.5, -0.75, 1.0, -0.5, 0.0, -0.75, -0.75, 0.25, -0.25, 0.25, 1.0, -0.75, -1.0, -1.0, 0.5, 0.25, 0.75, -0.25, 0.75, -0.25, 0.75, 1.0, -1.0, -0.75, 0.5, -0.25, 0.0, -1.0, 0.5, -0.25, -0.25, -0.5, 1.0, -0.25, 0.25, -0.75, -1.0, 0.25, 0.75, -0.25, -0.5, -0.75, -0.25, -1.0, 0.5, 0.75, 0.75, 1.0, -1.0, 0.25, 0.5, 0.0, ]);
    device90.destroy();
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    
    render_pass_encoder4030.setScissorRect(0, 0, texture404.width / 2, texture404.height / 2);
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    
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
    const texture_view7030 = texture703.createView({ label: "texture_view7030" });
    query700.destroy()
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_pass_encoder4030.setStencilReference(1);
    render_bundle_encoder402.insertDebugMarker("marker");
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    
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
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    const texture_view7031 = texture703.createView({ label: "texture_view7031" });
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    
    
    
    compute_pass_encoder4010.setPipeline(compute_pipeline400);
    render_pass_encoder4020.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder4030.pushDebugGroup("group_marker");
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    render_pass_encoder4020.setStencilReference(1);
    
    
    query700.destroy()
    const texture704 = device70.createTexture({
        label: "texture704",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4030.setStencilReference(1);
    
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4040.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const texture_view7032 = texture703.createView({ label: "texture_view7032" });
    
    
    render_pass_encoder4030.setPipeline(render_pipeline400);
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const texture_view7040 = texture704.createView({ label: "texture_view7040" });
    
    render_pass_encoder4040.pushDebugGroup("group_marker");
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    const texture_view4041 = texture404.createView({ label: "texture_view4041" });
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder700.insertDebugMarker("marker");
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const render_pass_encoder4050 = command_encoder405.beginRenderPass({
        label: "render_pass_encoder4050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4040,
            },
        ],
        occlusionQuerySet: undefined
    });
    query701.destroy()
    render_pass_encoder4050.setViewport(0, 0, texture404.width / 2, texture404.height / 2, 0, 1);
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder400.popDebugGroup();
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    query703.destroy()
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    const texture_view7041 = texture704.createView({ label: "texture_view7041" });
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    const texture_view7033 = texture703.createView({ label: "texture_view7033" });
    render_pass_encoder4050.setPipeline(render_pipeline400);
    query703.destroy()
    
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
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
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

    compute_pass_encoder4010.setBindGroup(0, bind_group400);
    render_pass_encoder4050.insertDebugMarker("marker");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder4040.executeBundles([])
    
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4040.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    buffer700.destroy()
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    compute_pass_encoder4010.popDebugGroup()
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder4000.popDebugGroup()
    query703.destroy()
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4040.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_pass_encoder4030.setStencilReference(1);
    render_pass_encoder4040.setStencilReference(1);
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    query400.destroy()
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    device70.pushErrorScope("validation");
    
    device40.queue.writeBuffer(buffer406, 0, array1, 0, array1.length);
    
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4040.setPipeline(render_pipeline401);
    
    render_bundle_encoder400.setPipeline(render_pipeline401);
    device40.queue.writeBuffer(buffer406, 0, array4, 0, array4.length);
    buffer409.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer406, 0, array0, 0, array0.length);
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view7034 = texture703.createView({ label: "texture_view7034" });
    render_pass_encoder4030.setViewport(0, 0, texture404.width / 2, texture404.height / 2, 0, 1);
    
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    buffer408.destroy()
    render_pass_encoder4030.setScissorRect(0, 0, texture404.width / 2, texture404.height / 2);
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
    texture404.destroy();
    
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout403,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module703,
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
            module: shader_module703,
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
    render_pass_encoder4050.setStencilReference(1);
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.setPipeline(render_pipeline401);
    query702.destroy()
    query400.destroy()
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer406, 0, array3, 0, array3.length);
    buffer701.destroy()
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
        vertex: {
            module: shader_module703,
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
            module: shader_module703,
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
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_pass_encoder4050.pushDebugGroup("group_marker");
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout403,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4010, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4010, 0);
    render_pass_encoder4050.setStencilReference(1);
    render_bundle_encoder700.setPipeline(render_pipeline701);
    
    device40.queue.writeBuffer(buffer406, 0, array7, 0, array7.length);
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4020.pushDebugGroup("group_marker");
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
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
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_pass_encoder4050.setViewport(0, 0, texture404.width / 2, texture404.height / 2, 0, 1);
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device100.pushErrorScope("out-of-memory");
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder4050.popDebugGroup();
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
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
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group401);
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
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
                    buffer: buffer4013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4014,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group402);
    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
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
                    buffer: buffer4015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4016,
                },
            },
        ],
    });

    render_pass_encoder4040.setBindGroup(0, bind_group403);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4020.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder4040.popDebugGroup();
    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4018,
                },
            },
        ],
    });

    render_pass_encoder4050.setBindGroup(0, bind_group404);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4000.end();
    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4020,
                },
            },
        ],
    });

    render_pass_encoder4030.setBindGroup(0, bind_group405);
    const command_buffer400 = command_encoder400.finish();
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder4010.end();
    const command_buffer401 = command_encoder401.finish();
    device40.queue.submit([command_buffer401, ]);
}