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
    const array0 = new Float32Array([0.25, -0.25, 0.75, 0.75, -1.0, 1.0, 0.25, -0.25, -1.0, 0.75, -0.5, 0.25, 1.0, 1.0, 0.75, -0.25, -0.75, 0.0, 0.75, 0.5, -0.5, 0.0, -0.75, 0.0, 0.25, 0.5, -1.0, 1.0, 0.25, 0.5, 0.25, 0.0, 0.75, -0.5, -0.75, -0.5, -0.75, -0.25, -0.75, 1.0, 0.5, 1.0, -0.5, -0.25, 0.0, 0.0, 0.75, 0.5, 0.75, 1.0, -0.75, 0.25, 0.0, 0.0, 1.0, -1.0, -0.5, -0.75, 0.5, 0.75, -0.5, 0.0, 0.25, -1.0, 0.5, 0.5, -1.0, -1.0, 0.75, -0.75, 0.5, 0.5, -1.0, 0.25, 0.25, 0.75, 0.5, 0.0, -0.5, 0.0, -0.25, 0.0, -0.5, 1.0, -0.25, 0.75, -1.0, 1.0, 0.0, -1.0, 0.0, -0.75, -0.75, -0.5, -1.0, 0.0, 1.0, -1.0, -1.0, -0.5, ]);
    
    const array1 = new Float32Array([0.0, 0.0, -0.5, -0.75, -1.0, 0.0, 0.75, 0.5, 0.5, -0.75, 0.25, -0.75, 0.75, 0.25, 1.0, 1.0, 0.0, 0.0, 1.0, 0.75, 1.0, 0.75, -0.75, 0.0, 0.25, -0.75, 0.25, 0.5, 0.5, 0.0, -0.75, -0.25, -1.0, -0.25, 0.75, 0.5, 0.25, 0.75, 0.75, 0.75, 0.5, 0.5, 0.25, 0.25, 0.5, 1.0, -1.0, -1.0, 0.25, 0.25, -0.75, -1.0, 0.5, -1.0, -0.5, -0.5, 0.75, -1.0, 0.5, 0.75, -0.75, 0.0, -0.25, 0.5, -0.5, -1.0, 0.5, 1.0, -1.0, 0.75, 0.25, 0.0, 0.0, 0.5, 1.0, -0.25, 0.0, -1.0, -0.25, -1.0, -1.0, 0.25, 0.75, 0.5, -0.25, -1.0, 0.0, -1.0, -0.5, 0.5, -1.0, 0.25, 1.0, 0.75, -1.0, -0.5, -0.75, -0.25, 0.0, 1.0, ]);
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.insertDebugMarker("mymarker");
    const array2 = new Float32Array([0.75, -0.75, 0.5, 1.0, -1.0, 1.0, 0.75, 0.0, -0.25, 1.0, 0.25, 1.0, 0.5, -0.25, 0.75, -0.5, -1.0, 0.25, 0.0, -1.0, 0.0, 0.5, 0.5, 0.5, 0.5, -0.25, 0.0, -1.0, -0.75, 0.0, 0.0, 0.25, 0.0, -0.75, 0.0, -0.75, -0.5, -0.25, 0.75, -1.0, -0.5, 1.0, -0.5, 0.25, 1.0, -0.5, 0.25, -1.0, 1.0, 0.0, 0.5, 0.75, 0.75, -0.25, -0.25, -0.25, 0.0, 0.5, 1.0, 0.5, -0.5, 0.25, -0.5, 0.5, -0.25, -0.5, -0.25, -0.75, -1.0, 0.75, 0.25, -0.5, -1.0, -0.5, -0.75, 0.0, 0.75, -0.75, -0.5, -1.0, 0.75, 1.0, 0.75, -0.75, 1.0, 0.75, 0.5, 0.0, 0.5, 0.25, -0.25, -1.0, 0.25, 0.75, -0.75, -0.25, -1.0, 0.0, 0.5, -1.0, ]);
    
    device00.pushErrorScope("internal");
    
    const array3 = new Float32Array([1.0, 1.0, -0.25, 0.0, 1.0, -0.75, 0.0, 0.25, -0.5, -0.25, 0.75, -0.75, 0.25, 0.0, -0.25, 0.75, -0.5, -0.25, 0.75, 0.0, 1.0, 0.5, 0.5, 0.25, -0.75, 0.75, -0.25, 0.75, -0.75, -0.75, 0.25, -0.75, 0.25, 0.25, 0.5, 0.5, 0.0, 0.0, 0.75, -0.5, 1.0, -1.0, 0.75, 0.0, -0.5, -0.5, -0.75, 0.0, 0.75, 0.75, -1.0, -0.5, 0.25, 0.0, -1.0, -0.25, -0.5, 1.0, -0.75, 0.0, 0.5, -0.25, 0.25, -0.75, 0.75, 1.0, -0.25, 0.5, 0.5, 0.5, -1.0, -0.5, 0.5, -0.75, 0.5, -0.25, 0.0, 1.0, -0.5, 1.0, -0.5, -0.5, -0.5, 0.25, -0.5, -0.5, 0.75, -0.75, 0.25, 0.25, -1.0, 1.0, -0.25, 0.5, 0.0, 0.5, -1.0, 0.5, -0.5, -0.5, ]);
    const array4 = new Float32Array([-1.0, -0.5, -1.0, 0.75, -0.5, -0.5, 0.25, -0.25, -0.5, -0.25, -0.25, -0.5, 1.0, 1.0, 0.0, -0.5, -0.25, 0.75, -0.75, 0.25, -0.25, 0.0, -0.5, -0.75, 0.25, -0.5, -1.0, 1.0, 0.75, 0.5, 0.0, -0.5, 1.0, 1.0, 0.5, -0.75, 1.0, -1.0, 0.75, 0.25, 0.0, -0.5, -0.5, 1.0, -0.25, 1.0, 0.0, -1.0, 0.25, 1.0, -0.5, -0.75, -0.5, -0.25, 0.25, 0.75, 0.5, 1.0, -0.75, 0.25, -1.0, 0.25, 0.0, 0.5, 1.0, 0.25, 1.0, 0.5, 0.75, 0.0, -1.0, 0.0, -0.75, -0.5, 0.5, 0.0, -1.0, 0.0, 0.25, -0.5, -1.0, -0.25, 0.25, -0.5, 0.0, -0.25, 1.0, 0.75, -0.5, 1.0, -0.75, 1.0, -0.75, 1.0, 0.75, -1.0, -1.0, -1.0, 0.25, 0.5, ]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    buffer000.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    const command_buffer001 = command_encoder001.finish();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture100.destroy();
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const array5 = new Float32Array([0.25, 0.5, -1.0, -0.5, 0.5, 1.0, -0.75, 0.25, 1.0, 0.75, 0.5, -0.75, 0.0, 0.75, 0.5, -1.0, -0.75, 1.0, 0.25, -1.0, 0.25, 0.25, -0.5, -0.5, 0.25, 0.25, 0.5, -0.75, 0.5, 0.75, -0.75, -0.5, -0.75, -0.25, 0.5, -0.25, -0.75, -0.25, 0.5, 0.75, 0.5, 0.0, 0.0, 1.0, -0.75, 0.25, -0.25, 0.25, 1.0, 0.0, -0.25, 0.5, 0.25, -0.75, 0.75, -0.5, 0.5, 0.0, -0.75, -0.75, -0.5, 1.0, -0.5, 0.0, 0.25, 0.25, 0.25, -0.75, 0.25, -0.25, -0.75, 0.25, 0.5, 0.75, 0.0, 0.0, -0.25, 0.75, 0.25, -0.75, -0.75, 0.5, -1.0, -0.5, -1.0, 0.5, 0.75, 1.0, -0.5, 0.75, 0.5, 1.0, 0.0, -0.25, -0.5, 1.0, 1.0, -0.75, -0.75, 0.75, ]);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.destroy();
    device00.pushErrorScope("validation");
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
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
    
    
    const array6 = new Float32Array([0.5, 0.25, 0.0, -1.0, 1.0, -0.5, -0.25, -1.0, 0.5, -0.75, 1.0, -0.75, 0.5, 0.0, 0.0, -0.5, 1.0, -0.25, 0.5, 0.5, 1.0, 0.75, -0.5, 0.0, -0.25, -0.75, -0.5, -1.0, -0.75, -0.75, 0.0, -0.75, -1.0, 0.5, 0.5, -1.0, -0.25, -0.25, -0.75, 1.0, 1.0, -0.25, -0.25, 0.25, 0.5, -0.5, 0.5, 0.75, -0.25, -1.0, 0.75, 1.0, 0.5, -0.75, -0.5, 1.0, -0.75, 0.0, -1.0, 1.0, 0.0, 0.5, 0.5, -1.0, -0.75, 0.75, -0.25, 0.25, 0.5, -1.0, -0.5, 0.5, 0.25, -0.25, 0.75, 0.25, -0.5, -1.0, 0.75, -0.5, 0.0, -1.0, -0.5, 0.5, -1.0, -0.5, 0.0, -0.25, -0.75, 0.25, 0.75, -0.75, -0.5, 0.25, 0.25, -1.0, 0.5, -1.0, 1.0, -0.5, ]);
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query000.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query000.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
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
    const array7 = new Float32Array([-1.0, 0.75, -0.5, -0.75, 0.75, 0.0, 1.0, 0.25, -0.25, -1.0, -0.25, 0.0, 0.5, 0.0, 0.5, -0.25, 1.0, -0.5, -1.0, 0.5, 1.0, 1.0, 0.0, -0.75, 0.0, 0.5, 0.0, -1.0, -0.5, 0.75, -0.5, -1.0, 0.0, 0.0, -1.0, -0.75, -0.5, 0.75, 0.0, -1.0, 0.5, 0.0, -0.75, 0.25, 0.25, 0.25, -0.75, 0.5, 1.0, 0.0, 0.0, -1.0, 0.5, 0.75, 0.0, 0.5, -1.0, -0.75, -0.5, 1.0, 0.75, -0.25, -0.5, -0.25, 0.0, 0.5, 0.5, -1.0, -0.75, 0.75, -1.0, 0.25, -0.25, 1.0, 1.0, -0.75, 0.5, -0.5, 0.25, -1.0, 0.25, -0.5, 0.25, 0.25, 0.5, -0.5, -1.0, 0.75, 0.5, 1.0, 0.0, 0.0, -0.5, -1.0, -0.75, -0.5, -0.75, -0.75, -0.25, -0.25, ]);
    
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
    
    
    
    compute_pass_encoder0030.popDebugGroup()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    device20.destroy();
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    device30.pushErrorScope("validation");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.popDebugGroup();
    
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder004.pushDebugGroup("mygroupmarker")
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    command_encoder004.popDebugGroup()
    query001.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    
    
    render_bundle_encoder000.popDebugGroup();
    
    device30.pushErrorScope("validation");
    
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder300.insertDebugMarker("mymarker");
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
    device00.queue.submit([command_buffer001, ]);
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture001.destroy();
    query300.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder0000.popDebugGroup()
    
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder300.insertDebugMarker("mymarker");
    query300.destroy()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    buffer002.destroy()
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0050.setPipeline(render_pipeline001);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    compute_pass_encoder0020.setPipeline(compute_pipeline001);
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0030.popDebugGroup()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    command_encoder300.insertDebugMarker("mymarker");
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    buffer300.destroy()
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group000);
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer005, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer005, 0);
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    compute_pass_encoder0040.setPipeline(compute_pipeline003);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.popDebugGroup();
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
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder0000.setPipeline(compute_pipeline002);
    compute_pass_encoder0030.setPipeline(compute_pipeline005);
    compute_pass_encoder0030.insertDebugMarker("marker")
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group001);
    texture002.destroy();
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder300.popDebugGroup()
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0050.pushDebugGroup("group_marker");
    compute_pass_encoder0040.dispatchWorkgroups(100);
    buffer001.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32uint",
        dimension: "2d"
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0010, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0010, 0);
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
        layout: compute_pipeline005.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group003);
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder0050.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture004 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    
    texture005.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer008.destroy()
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0010, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer0010, 0, array7, 0, array7.length);
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    const texture_view0042 = texture004.createView({ label: "texture_view0042" });
    texture300.destroy();
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer009.destroy()
    compute_pass_encoder0040.end();
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0042,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder300.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture006 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer0010.destroy()
    render_pass_encoder0040.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture006 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer007.destroy()
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    buffer005.destroy()
    buffer003.destroy()
    const command_buffer300 = command_encoder300.finish();
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    buffer0011.destroy()
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setPipeline(render_pipeline003);
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    texture004.destroy();
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group004);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture006 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.setPipeline(render_pipeline003);
    device00.pushErrorScope("internal");
    compute_pass_encoder0020.insertDebugMarker("marker")
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group005);
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture006 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_pass_encoder0040.insertDebugMarker("marker");
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    buffer0013.destroy()
    buffer0012.destroy()
    buffer0015.destroy()
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0041,
            },
        ],
        occlusionQuerySet: query002
    });
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    texture301.destroy();
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.pushErrorScope("internal");
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder0060.beginOcclusionQuery(0)
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query300
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder0040.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    render_pass_encoder3020.executeBundles([])
    render_bundle_encoder000.insertDebugMarker("marker");
    const array8 = new Float32Array([0.0, -1.0, 0.75, -0.5, 0.25, 0.75, 0.25, -0.75, -0.75, 0.75, 1.0, 0.5, 0.25, 0.75, 0.25, -0.75, -1.0, 0.0, 0.75, -1.0, 0.25, -0.75, 0.75, 0.75, -1.0, 0.25, -0.25, -0.5, -1.0, 1.0, 0.0, -1.0, 0.0, -0.25, -0.5, 0.75, 0.5, -1.0, 0.5, -1.0, 1.0, 0.25, 0.75, -0.25, 0.25, -1.0, 0.75, 0.0, -0.5, -0.5, -0.75, 0.75, -0.25, 1.0, -1.0, -1.0, 0.0, -0.75, -0.5, 0.25, 0.5, 0.0, 0.5, 0.25, 0.5, -0.5, -0.25, -0.5, -0.25, -1.0, -0.25, 0.75, -0.25, -0.5, 0.0, -0.5, -0.75, 0.0, 0.0, 0.25, -1.0, 0.5, -1.0, 0.0, 0.25, -1.0, 0.5, 0.25, -1.0, 0.0, 0.25, 0.75, 1.0, 0.25, 1.0, -0.75, 0.75, 0.25, 0.25, 0.5, ]);
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_pass_encoder3020.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    query000.destroy()
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    texture000.destroy();
    render_pass_encoder0040.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture006 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query300.destroy()
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder3020.setStencilReference(1);
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group006);
    device00.queue.writeTexture({ texture: texture006 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder3020.executeBundles([])
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture006 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    render_pass_encoder0060.executeBundles([])
    
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0060.setPipeline(render_pipeline002);
    device00.queue.writeTexture({ texture: texture006 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    device00.queue.writeTexture({ texture: texture006 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
    const array9 = new Float32Array([-0.75, -0.75, -0.25, -0.25, -0.5, 0.5, 0.25, 1.0, 0.25, 0.5, 0.75, -0.75, 0.25, 0.25, 0.75, 0.5, -0.75, -0.25, -0.5, -0.25, 0.25, 0.5, -0.5, 0.5, 0.75, -1.0, -0.5, -0.75, 0.0, 0.75, -0.25, 1.0, -0.75, -1.0, -0.25, 0.75, 0.25, 0.25, -0.75, 0.5, -0.25, 0.0, -1.0, 0.0, 0.5, -0.75, 0.5, -0.75, -0.25, -0.75, 1.0, 1.0, 0.0, 0.5, -0.25, -0.25, 0.75, 0.0, 0.5, 0.25, -0.25, 0.75, 0.0, 0.75, -0.5, -0.5, 0.0, 1.0, 0.25, 1.0, -0.5, -1.0, -0.5, 0.0, 1.0, -0.5, -0.75, 0.5, 0.75, 1.0, 1.0, -0.75, 0.0, -0.75, 0.25, -0.25, -0.25, -1.0, -0.75, -1.0, 0.5, -0.75, 0.5, 1.0, 1.0, 0.75, -0.25, 1.0, -0.5, 0.25, ]);
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture006 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    render_pass_encoder0050.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture006 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    buffer0016.destroy()
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.popDebugGroup();
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    query003.destroy()
    device00.queue.writeTexture({ texture: texture006 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout004]
    });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture006 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder3010.setPipeline(compute_pipeline302);
    texture003.destroy();
    device00.queue.writeTexture({ texture: texture006 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    texture302.destroy();
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout004]
    });
    command_encoder303.pushDebugGroup("mygroupmarker")
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer0014.destroy()
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    device40.pushErrorScope("internal");
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    render_pass_encoder3020.insertDebugMarker("marker");
    render_pass_encoder3020.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.pushDebugGroup("group_marker");
    compute_pass_encoder0000.end();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group007);
    compute_pass_encoder0020.popDebugGroup()
    command_encoder303.popDebugGroup()
    compute_pass_encoder0020.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0060.endOcclusionQuery()
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder4000.popDebugGroup()
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group008);
    compute_pass_encoder0030.end();
    const command_buffer303 = command_encoder303.finish();
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
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group300);
    device00.queue.submit([command_buffer000, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3010.dispatchWorkgroups(100);
    const command_buffer002 = command_encoder002.finish();
    compute_pass_encoder3010.end();
    const command_buffer003 = command_encoder003.finish();
    device30.queue.submit([command_buffer303, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.popDebugGroup();
    const command_buffer301 = command_encoder301.finish();
}