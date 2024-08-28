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
    const array0 = new Float32Array([-1.0, -0.75, -0.5, -0.25, -0.75, 0.75, 1.0, 0.25, 0.75, 0.0, -0.25, 0.0, 0.25, 0.5, 0.0, 1.0, 0.5, 0.0, -0.75, -1.0, -0.25, 0.0, 0.0, -0.5, -0.25, 0.25, -0.5, -0.25, -0.75, -0.25, 0.75, -0.25, -0.75, -0.75, 0.25, -0.75, 1.0, 0.0, 0.25, 0.75, -1.0, -1.0, -0.75, -0.5, -1.0, 0.5, 0.0, -0.75, -0.25, 1.0, 0.75, 0.25, 0.0, 0.25, -0.25, 1.0, -1.0, -1.0, -0.25, -0.5, 0.25, -1.0, -0.5, 0.75, 0.25, -0.75, 0.75, 0.25, 0.5, -0.5, 0.75, 1.0, 0.75, -0.25, -0.25, 0.75, 0.25, 0.0, -1.0, 0.25, -0.5, 0.0, 0.5, 0.5, -0.75, 0.75, 0.75, -0.75, 1.0, 1.0, 0.25, -1.0, 1.0, 0.5, 1.0, -1.0, 0.25, 1.0, 0.25, 0.25, ]);
    const array1 = new Float32Array([0.0, 0.25, 0.0, 0.75, 0.25, 0.25, 0.0, 0.0, 1.0, -0.25, 0.0, 0.75, -0.25, 0.75, 0.0, 0.25, -0.25, 0.5, 1.0, 0.25, 0.0, 0.5, 0.75, 0.5, 0.25, 0.75, 0.25, 0.25, 0.0, -0.75, 1.0, -0.5, 0.75, 0.0, -1.0, -0.5, 0.5, 0.5, 0.0, -0.25, 0.5, -0.5, -1.0, -0.25, -1.0, 0.75, -0.25, 0.25, 1.0, 0.5, 0.0, -0.75, -0.5, 0.75, -0.25, 0.0, -0.25, 0.0, 0.5, 0.25, 0.75, 0.75, -0.5, 1.0, 1.0, -0.25, 1.0, -0.75, 1.0, -1.0, -0.5, -0.75, 1.0, -1.0, -0.75, 0.25, 1.0, 0.75, 0.75, 0.0, 0.75, -0.5, 1.0, -0.75, 1.0, 1.0, 0.5, 0.5, 0.5, 1.0, 1.0, -0.25, -0.75, 0.5, 0.0, 0.75, -0.25, -1.0, -0.75, -1.0, ]);
    const array2 = new Float32Array([-0.25, 0.5, 0.5, -0.5, 1.0, -0.25, -1.0, -0.25, 0.5, 1.0, 0.75, 0.5, 0.25, 1.0, -0.5, 0.5, -0.5, 0.25, 0.5, -0.5, -0.75, 0.25, 0.0, -0.25, -0.5, -0.5, 0.5, -0.5, -0.25, 0.5, 0.25, 1.0, 0.0, 0.25, 0.25, 0.25, -0.75, 0.75, -0.25, 0.5, -0.5, -1.0, 1.0, 0.25, 0.0, -0.25, 0.5, -1.0, -0.25, -0.5, -0.5, -0.5, 0.75, 0.5, 0.25, -0.5, -0.75, -1.0, 0.75, 0.75, 1.0, -0.25, -1.0, -1.0, 0.5, 0.5, -0.25, -1.0, -0.5, 0.0, 0.75, 0.5, 0.25, -0.75, -0.5, -1.0, -1.0, -0.5, 0.0, 0.5, -1.0, 0.0, 0.0, -1.0, 1.0, 0.25, 0.25, -0.25, 0.25, -0.75, 0.0, 0.5, -1.0, 0.75, 0.25, 0.75, 1.0, 0.0, 0.75, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.pushErrorScope("out-of-memory");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    command_encoder000.insertDebugMarker("mymarker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("validation");
    const array3 = new Float32Array([0.75, -0.5, 0.75, -0.25, 0.25, -0.25, 1.0, -0.25, -0.75, 0.75, -0.5, 0.0, -1.0, -0.5, 0.0, 0.75, 0.75, -0.75, -0.25, 1.0, 0.25, 0.75, -1.0, 0.25, 0.75, 0.75, -0.25, 1.0, 0.75, -0.75, 0.75, 0.0, 1.0, 0.5, -1.0, 0.25, 0.75, -0.25, -0.25, 0.0, 0.25, -0.5, -0.75, -0.5, 1.0, -0.5, 0.5, 1.0, 0.25, 0.25, 0.0, -0.75, 0.0, -0.25, -0.5, 0.75, 0.0, 0.75, 0.75, -0.5, 1.0, -0.5, 0.5, -0.25, 1.0, -1.0, 0.75, 0.75, -0.25, 0.0, 0.25, -0.25, -0.75, 0.0, 0.75, -0.75, 0.0, 0.25, -1.0, 0.25, -1.0, 1.0, 0.0, 0.75, 0.5, -0.5, 1.0, -0.75, 0.75, 0.5, -1.0, -0.25, 0.5, -1.0, 0.5, 0.25, 0.5, 0.0, 0.5, 0.25, ]);
    const command_buffer000 = command_encoder000.finish();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32sint",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("out-of-memory");
    const array4 = new Float32Array([-0.5, 0.5, -0.75, -0.75, -0.75, 0.5, -0.5, -0.75, 0.5, -0.5, -1.0, -0.75, 0.75, -1.0, 0.5, -1.0, -1.0, -0.25, -0.75, -0.25, -1.0, 0.25, -0.75, -1.0, -1.0, -0.25, 1.0, 0.0, 0.0, 0.75, 1.0, 0.75, 0.75, 0.5, 0.0, -1.0, 0.0, -0.25, 1.0, 0.25, -1.0, -0.25, 0.5, 0.5, 0.0, 0.75, -1.0, 0.5, 0.75, 0.25, 0.5, 0.5, 1.0, -0.75, 0.0, -0.25, 1.0, 0.0, 0.25, 0.75, 0.75, -0.5, 0.0, 0.25, -0.25, -1.0, 0.5, -0.5, 0.0, -1.0, 0.25, -0.75, -1.0, 0.0, 1.0, 0.5, -0.25, 0.75, -0.75, -0.75, 0.25, 0.25, 0.0, 1.0, 0.5, 0.0, -1.0, -0.25, 0.5, 0.0, -1.0, -1.0, 0.75, -0.75, -0.5, -0.5, -0.75, 0.75, -0.5, 0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    texture000.destroy();
    
    
    device00.queue.submit([command_buffer000, ]);
    command_encoder001.insertDebugMarker("mymarker");
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_buffer002 = command_encoder002.finish();
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_buffer001 = command_encoder001.finish();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    buffer000.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    compute_pass_encoder1000.popDebugGroup()
    
    
    buffer001.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    texture100.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
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
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    texture101.destroy();
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1000.popDebugGroup()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder500.insertDebugMarker("mymarker");
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device60.pushErrorScope("internal");
    const array5 = new Float32Array([0.25, 1.0, -0.75, 1.0, 0.25, -0.75, 0.0, 1.0, -0.75, 0.25, 0.0, 0.25, 0.5, -1.0, 0.0, 0.25, -0.5, 0.25, 1.0, 1.0, -0.75, 1.0, 0.5, 0.25, -0.75, -0.75, -0.5, 0.0, 0.5, -0.5, -0.5, 1.0, 0.0, -1.0, 1.0, -0.5, 0.75, -0.5, 0.5, 0.5, -0.5, -0.25, -1.0, -0.25, -0.75, 0.0, -0.25, 1.0, 0.5, 0.0, -0.25, -1.0, -1.0, 1.0, -0.5, -0.25, 1.0, 0.75, 0.0, -0.5, -0.25, -0.75, -1.0, 1.0, 0.0, 1.0, -0.25, 0.25, 0.25, -0.5, -0.25, -0.25, 0.5, 0.25, 0.5, 0.0, -0.5, 0.75, 1.0, 0.0, 0.75, 0.0, 1.0, -1.0, 0.5, 0.0, -0.5, 0.0, -0.25, 0.0, 1.0, 0.5, -0.25, 0.75, -0.25, -1.0, 0.0, -0.75, -0.75, -0.5, ]);
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    compute_pass_encoder5000.insertDebugMarker("marker")
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    device60.destroy();
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    device40.pushErrorScope("validation");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_bundle_encoder101.setPipeline(render_pipeline101);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    texture200.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.popDebugGroup();
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder002.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device40.pushErrorScope("internal");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
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
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    render_bundle_encoder101.insertDebugMarker("marker");
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    const command_buffer300 = command_encoder300.finish();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
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
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    query102.destroy()
    device50.pushErrorScope("validation");
    
    
    device30.queue.submit([command_buffer300, ]);
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
    query401.destroy()
    
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    device00.pushErrorScope("internal");
    query200.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    const command_buffer301 = command_encoder301.finish();
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
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
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_buffer200 = command_encoder200.finish();
    command_encoder004.pushDebugGroup("mygroupmarker")
    query500.destroy()
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    query502.destroy()
    command_encoder101.pushDebugGroup("mygroupmarker")
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    buffer500.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array6 = new Float32Array([0.5, 1.0, -0.25, -0.25, 0.25, 0.0, 0.5, 0.0, 1.0, -0.75, 0.0, -0.75, -0.5, -1.0, 0.5, 1.0, 0.0, -1.0, 0.25, 1.0, 0.75, 1.0, -0.5, 0.0, -1.0, -0.75, 0.5, 0.0, 0.5, -0.75, 0.5, 0.0, 0.0, 0.5, 0.75, 0.25, 0.0, -0.25, 0.5, -1.0, 1.0, 0.0, 0.25, -0.5, -1.0, -0.25, 0.5, -0.75, -0.75, -0.5, 0.75, 0.0, 0.75, 0.5, 0.25, -0.75, 0.25, 0.5, -1.0, -0.5, 0.0, 0.5, 1.0, 0.75, 0.0, 0.5, -0.5, 0.25, -0.75, 0.5, -0.25, 0.75, 0.0, -0.5, -0.25, -0.75, -0.75, -0.5, 1.0, -1.0, -0.25, -0.25, -0.25, -0.25, 0.75, 0.5, 0.25, 0.25, 0.25, -1.0, 1.0, 0.75, -0.5, 0.25, -0.25, -0.75, 0.25, -0.5, -1.0, -0.5, ]);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query201.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    query400.destroy()
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_bundle_encoder101.popDebugGroup();
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    render_bundle_encoder200.popDebugGroup();
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
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
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    
    
    
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
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
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const array7 = new Float32Array([-0.5, 0.75, -1.0, 1.0, -0.5, -0.25, 1.0, 0.0, 0.0, -1.0, -0.5, 0.0, 1.0, -1.0, 0.0, -0.5, 0.5, 1.0, 0.0, 0.0, 0.0, -0.25, 0.5, -1.0, -0.5, 0.5, -0.25, 1.0, -0.75, 1.0, -0.5, -0.5, 0.75, -0.25, 0.5, 0.0, -0.5, 0.25, -1.0, -0.75, -1.0, 1.0, -0.5, 0.25, 0.75, 1.0, -0.25, 1.0, 0.5, 0.25, 0.75, 1.0, -1.0, -0.5, -0.25, 0.0, -0.5, 1.0, 0.0, -0.25, 0.5, 0.0, 0.0, -0.25, 0.0, -0.75, 0.0, -0.25, 0.25, -0.5, 0.5, -0.25, 0.75, -1.0, -1.0, -0.25, -0.75, -0.75, 0.25, 0.75, -1.0, -1.0, 0.0, 0.0, 1.0, -1.0, -1.0, 0.0, 1.0, 0.25, 0.5, 0.5, -0.25, 0.5, -0.5, -0.5, 0.5, -0.25, 0.25, -0.5, ]);
    command_encoder101.popDebugGroup()
    query402.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    query400.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device30.queue.submit([command_buffer301, ]);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
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
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    texture102.destroy();
    render_bundle_encoder300.insertDebugMarker("marker");
    compute_pass_encoder5020.popDebugGroup()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer400.destroy()
    device20.pushErrorScope("internal");
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer501.destroy()
    render_bundle_encoder101.popDebugGroup();
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
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    buffer003.destroy()
    
    query100.destroy()
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.setPipeline(render_pipeline000);
    
    render_bundle_encoder001.popDebugGroup();
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
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
    
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    query500.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    buffer101.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    query500.destroy()
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer100.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder500.insertDebugMarker("marker");
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    
    command_encoder005.insertDebugMarker("mymarker");
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    command_encoder004.popDebugGroup()
    
    
    const array8 = new Float32Array([0.5, -0.25, -0.5, 0.5, 0.25, 0.25, 0.25, -0.75, -0.75, 0.0, -1.0, -0.75, -0.5, -0.75, -1.0, 0.0, -0.25, 0.5, 0.75, 0.25, -1.0, 0.75, -0.5, -0.75, -0.5, 1.0, 0.5, -0.5, -0.75, -0.25, 0.75, 0.25, 0.5, -0.25, -1.0, -1.0, -1.0, 0.5, 1.0, 0.5, 0.75, 0.25, -0.5, -1.0, 0.5, -0.25, -0.75, -0.75, -0.5, 0.75, -0.5, 0.75, -0.75, -1.0, -0.25, 0.75, -0.5, 0.25, -1.0, 0.25, -0.25, 0.0, 0.5, -0.75, 0.5, 0.0, 0.0, -1.0, 0.75, 1.0, -0.25, 0.0, -0.75, 1.0, -0.25, 0.5, 0.5, 0.5, -0.25, 0.5, -1.0, 0.75, -1.0, 0.0, -0.5, 1.0, -0.5, 0.5, 0.0, -0.75, 1.0, -0.75, 0.0, -1.0, -0.25, -0.25, 1.0, 0.75, 0.75, 0.5, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder101.insertDebugMarker("mymarker");
    
    query502.destroy()
    query101.destroy()
    
    render_bundle_encoder201.popDebugGroup();
    buffer503.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    query401.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder300.popDebugGroup();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer004.destroy()
    const command_buffer101 = command_encoder101.finish();
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture400.destroy();
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    
    render_bundle_encoder200.setPipeline(render_pipeline201);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer300.destroy()
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
    command_encoder201.popDebugGroup()
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    device10.pushErrorScope("internal");
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    query101.destroy()
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    
    buffer103.destroy()
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
    query400.destroy()
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
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
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group102);
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5010.setPipeline(compute_pipeline501);
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer107, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer107, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    command_encoder004.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    
    
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    render_pass_encoder0050.beginOcclusionQuery(0)
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder201.setPipeline(render_pipeline201);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    
    
    render_pass_encoder0040.setPipeline(render_pipeline003);
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder5020.setPipeline(compute_pipeline501);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    compute_pass_encoder5020.setBindGroup(0, bind_group501);
    const command_buffer201 = command_encoder201.finish();
    const uint32_5020 = new Uint32Array(3);

    uint32_5020[0] = 100;
    uint32_5020[1] = 1;
    uint32_5020[2] = 1;

    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer508, 0, uint32_5020, 0, uint32_5020.length);

    compute_pass_encoder5020.dispatchWorkgroupsIndirect(buffer508, 0);
    compute_pass_encoder5000.popDebugGroup()
    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer509,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5010,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group502);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    render_pass_encoder0050.setPipeline(render_pipeline001);
    compute_pass_encoder5020.popDebugGroup()
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group001);
    compute_pass_encoder1000.end();
    compute_pass_encoder5020.end();
    render_pass_encoder0050.setVertexBuffer(0, buffer002);
    device00.queue.submit([command_buffer001, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    compute_pass_encoder5000.end();
    render_pass_encoder0050.draw(3);
    render_pass_encoder0050.end();
    const command_buffer005 = command_encoder005.finish();
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    const command_buffer100 = command_encoder100.finish();
    const command_buffer502 = command_encoder502.finish();
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder5010.dispatchWorkgroups(100);
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group002);
    compute_pass_encoder5010.end();
    device50.queue.submit([command_buffer500, command_buffer502, ]);
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder0040.setVertexBuffer(0, buffer000);
    render_pass_encoder0040.drawIndirect(buffer001, 0);
    render_pass_encoder0040.end();
    command_encoder004.popDebugGroup()
    const command_buffer004 = command_encoder004.finish();
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer100, ]);
}