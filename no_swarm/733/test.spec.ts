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
    const array0 = new Float32Array([-1.0, 0.0, 0.75, 1.0, 0.5, -0.75, -0.75, 1.0, -1.0, 0.0, 0.5, 1.0, -0.5, 0.25, -0.25, -0.75, 1.0, 1.0, 0.25, 1.0, -1.0, 0.0, -1.0, -0.25, 0.5, 0.25, -0.5, 0.25, -1.0, 0.5, -0.25, 0.0, 1.0, -0.75, -0.25, -0.25, 0.5, -0.75, -1.0, -0.75, 0.0, -1.0, 0.25, 0.0, 0.5, -0.25, 0.0, 0.0, -0.75, 0.5, 0.75, -0.25, 0.0, -0.75, -1.0, 1.0, 1.0, -0.25, -1.0, 0.0, -0.25, 1.0, 0.0, -0.5, -0.75, -1.0, 0.0, -0.5, -0.5, 1.0, -0.25, -0.25, 0.0, 0.5, 1.0, 0.5, -1.0, 0.25, 0.0, 1.0, -0.75, 0.75, 0.5, -0.25, -0.5, -1.0, 0.75, 0.75, -0.75, -1.0, 0.25, -0.25, 0.75, -0.5, 0.25, -0.75, -0.25, 0.25, 0.0, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    device00.pushErrorScope("validation");
    const array1 = new Float32Array([-0.5, 0.75, -0.5, -0.25, 0.75, 0.5, -0.75, 0.75, -1.0, 0.75, -1.0, 0.75, 0.5, 0.0, 1.0, 1.0, 0.0, 0.5, 0.0, 0.0, 0.75, -1.0, -0.5, 0.0, -1.0, 1.0, 0.5, -1.0, -1.0, 0.5, 0.5, 1.0, 0.25, 0.75, 0.0, 0.0, 0.0, 1.0, -0.5, 0.75, -1.0, 0.5, -0.5, 0.25, -0.25, 0.25, 1.0, 0.75, 1.0, 0.75, -0.5, -0.25, 0.0, 0.25, 1.0, 0.75, -0.75, -0.5, 0.25, -1.0, -0.5, 1.0, 0.5, -1.0, -0.5, -0.5, -0.25, -0.75, 0.5, -0.75, 0.75, -0.25, -1.0, 0.75, -0.5, -0.75, 0.25, -0.75, 0.25, 0.75, 0.75, 0.25, -0.25, 0.5, -0.75, -1.0, -0.5, 1.0, -0.25, -0.25, -0.5, 0.25, 1.0, 1.0, 0.5, -0.5, -0.5, -0.25, 0.0, 0.75, ]);
    const array2 = new Float32Array([0.5, 0.0, -0.5, -0.25, 0.25, -0.75, 1.0, 0.0, -1.0, 0.0, 0.5, -0.5, 0.25, -0.5, 1.0, 0.25, 0.75, 0.25, 0.25, 0.0, 1.0, 0.5, 0.25, -0.5, -0.25, 0.75, 0.0, 0.75, 0.25, 0.5, 0.25, -0.75, 0.5, -0.75, 0.25, -0.5, 1.0, 0.25, 0.25, -0.5, 0.5, 0.75, -1.0, -0.5, -0.75, 0.0, 0.0, 0.5, 0.25, 0.75, 0.5, -1.0, -1.0, 0.75, -0.75, -1.0, -0.5, -0.5, -0.5, 0.75, 0.25, -0.5, -0.25, 0.0, 0.75, 0.75, 0.25, -1.0, 1.0, 0.75, -1.0, 0.25, -0.5, -1.0, -0.5, 0.0, 0.5, -0.25, 0.75, 1.0, 0.0, 0.0, 0.5, -0.25, -1.0, 1.0, 0.5, -0.5, -0.75, -0.25, -0.5, 0.25, 0.75, -0.5, 0.0, 1.0, -0.75, -0.5, -1.0, -0.5, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const array3 = new Float32Array([0.5, 1.0, 0.0, 0.25, 1.0, 0.25, -0.5, 0.5, 0.5, 0.75, -1.0, 0.0, -0.5, 0.5, -0.75, 0.75, 1.0, 0.5, 1.0, 0.0, 0.0, 1.0, -1.0, -0.25, -0.25, 0.0, 0.5, 0.25, 0.5, -0.75, 0.75, -0.5, 0.5, -1.0, 1.0, -0.75, -0.25, 0.75, 0.0, -0.75, 0.75, -0.25, 0.5, 0.0, 0.75, 0.5, -0.5, 0.25, 0.25, -1.0, -0.25, 1.0, -0.75, -1.0, -1.0, 0.25, 1.0, 0.25, 0.5, -0.25, 0.5, -0.25, -0.25, 0.25, -0.25, -0.25, -0.5, 0.75, 0.75, 0.75, 1.0, 0.5, 0.75, 1.0, 0.75, 1.0, 0.0, -0.5, 1.0, 0.25, -0.5, -0.75, 0.75, 0.75, 1.0, -0.25, -0.5, -1.0, 0.5, 0.75, 0.5, -0.5, 0.75, -1.0, -0.5, 0.5, 0.25, 1.0, 0.0, 1.0, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
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
    buffer000.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    buffer100.destroy()
    buffer001.destroy()
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device20.pushErrorScope("out-of-memory");
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array4 = new Float32Array([-0.5, 0.75, -0.25, -0.25, -0.5, -0.5, 0.0, 0.75, -0.5, 0.0, 1.0, -1.0, 0.5, 0.0, -1.0, -0.75, -1.0, 0.0, 1.0, 0.0, -0.25, 0.0, 0.25, -1.0, 0.0, -0.5, 0.75, -0.75, 0.5, 0.0, -1.0, -0.75, -1.0, -0.75, 0.75, 0.0, -1.0, -0.5, -0.25, -0.25, 0.25, 0.0, -1.0, -0.5, -0.5, -1.0, 0.0, -0.5, 0.5, 0.5, 0.25, 0.75, -0.5, 0.5, 1.0, 0.25, 0.25, 0.0, 0.0, 0.0, 0.75, -0.5, 1.0, -0.75, -1.0, -0.25, -0.25, 0.75, 0.5, 0.5, 0.25, 1.0, 0.0, 1.0, 0.25, 0.75, 0.75, 0.0, 0.75, -0.5, 0.0, -1.0, 0.5, -0.25, 0.25, -0.75, -0.5, -0.25, 0.5, 0.75, -1.0, -0.25, 0.0, 0.25, 1.0, 0.0, -0.5, -0.75, 1.0, 0.5, ]);
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const command_buffer101 = command_encoder101.finish();
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    command_encoder201.insertDebugMarker("mymarker");
    
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const array5 = new Float32Array([-0.75, 0.25, 0.75, -0.5, -0.5, -0.75, -0.5, -0.25, 0.5, -0.5, 0.5, 0.25, -0.75, 0.75, -1.0, -0.75, -0.75, 0.0, 0.25, -0.5, -0.5, 0.5, -0.25, 0.75, 0.5, 1.0, 0.25, -0.25, 0.0, -0.5, 0.75, -0.75, -0.75, 0.25, 0.75, 0.25, 1.0, -0.5, -0.25, -0.5, 0.75, 0.0, 0.0, 0.75, -0.75, 0.5, -0.75, -0.25, 1.0, -1.0, -0.75, -0.25, 0.5, 1.0, 1.0, -0.75, 0.75, -0.5, -0.25, 0.5, -1.0, -0.5, 0.5, -0.5, -0.25, 0.5, -1.0, 0.0, -1.0, 0.0, 0.0, -0.75, -0.5, 1.0, 0.5, 0.5, -1.0, 1.0, 0.5, 0.0, 1.0, 1.0, 0.0, 0.75, -0.75, -1.0, -0.5, 0.75, -0.5, -0.75, -0.5, 0.25, 0.25, 0.75, 0.25, 0.75, 0.25, 0.25, 0.75, -0.25, ]);
    
    
    const array6 = new Float32Array([1.0, -0.25, 0.25, -0.75, -1.0, 0.5, 0.0, 0.5, 1.0, 1.0, 0.0, 1.0, -0.75, -0.5, -0.5, 0.25, -0.75, 0.0, -1.0, -0.25, -1.0, 0.75, -0.25, 0.75, 0.25, 0.0, 1.0, 0.75, -1.0, 0.5, 0.75, -1.0, 1.0, 0.5, 0.75, -0.75, 0.5, 0.25, 1.0, 0.5, 0.5, 0.5, -0.5, 0.75, 1.0, 0.0, -1.0, -0.5, 0.0, 0.75, 0.0, -0.5, 0.25, -0.5, 1.0, -0.75, -0.25, -0.5, 0.0, -0.5, 0.0, 0.25, -0.25, 0.75, 0.75, 0.75, -0.25, 0.0, 0.0, 0.0, -0.5, 0.75, 0.75, 1.0, 1.0, 0.0, -1.0, -1.0, 0.25, 0.5, 0.5, 0.25, 0.25, 0.5, -0.75, -1.0, 0.25, 0.5, 0.5, -0.25, -0.5, -0.5, -1.0, 1.0, -0.25, 0.5, -0.25, -0.5, 0.0, 1.0, ]);
    command_encoder103.insertDebugMarker("mymarker");
    device10.pushErrorScope("validation");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    const command_buffer103 = command_encoder103.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder102.insertDebugMarker("mymarker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer200.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2010.popDebugGroup()
    device20.pushErrorScope("out-of-memory");
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder102.insertDebugMarker("mymarker");
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder102.insertDebugMarker("mymarker");
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer102.destroy()
    device10.pushErrorScope("internal");
    
    compute_pass_encoder2000.popDebugGroup()
    command_encoder102.insertDebugMarker("mymarker");
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
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder102.popDebugGroup()
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const command_buffer202 = command_encoder202.finish();
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
        occlusionQuerySet: undefined
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    texture100.destroy();
    const array7 = new Float32Array([0.75, 0.75, -0.75, 0.5, 0.25, 1.0, 0.5, -1.0, 0.5, 1.0, 1.0, -0.5, -0.25, 0.75, 0.0, -0.75, -0.25, -0.25, 1.0, 0.0, -0.5, 1.0, -0.5, 0.75, 0.0, 1.0, -0.25, 0.25, 1.0, 0.5, -0.25, 0.25, 0.75, -0.25, 0.0, -1.0, 0.75, 0.25, 0.5, -0.25, -0.5, 0.0, 1.0, -0.5, 1.0, 0.0, -0.25, -0.25, -0.5, -0.25, 1.0, -0.25, 0.25, 0.25, -0.75, 0.25, -1.0, -0.25, -1.0, -0.75, -1.0, -0.75, 0.0, -1.0, -0.25, -0.25, 0.5, 0.25, -0.25, 0.0, 0.25, -0.75, 1.0, -0.75, -1.0, 0.0, -0.75, -0.25, -1.0, 0.5, -0.25, 0.75, -0.25, -1.0, -0.75, 0.0, 0.5, 0.75, 0.75, 0.75, 0.0, -0.75, 0.75, 1.0, 0.75, 1.0, 0.5, 0.0, 0.75, -0.5, ]);
    render_bundle_encoder200.popDebugGroup();
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
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
    device20.pushErrorScope("out-of-memory");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const command_buffer203 = command_encoder203.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_pass_encoder1020.setStencilReference(1);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    compute_pass_encoder2010.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    
    query200.destroy()
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder1020.insertDebugMarker("marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer104.destroy()
    buffer300.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    command_encoder204.pushDebugGroup("mygroupmarker")
    buffer103.destroy()
    
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    command_encoder204.popDebugGroup()
    device30.destroy();
    compute_pass_encoder1000.insertDebugMarker("marker")
    command_encoder204.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setStencilReference(1);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder200.insertDebugMarker("marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    compute_pass_encoder2000.insertDebugMarker("marker")
    texture202.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2040.insertDebugMarker("marker")
    
    
    device20.queue.submit([command_buffer202, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder1020.executeBundles([])
    compute_pass_encoder2000.popDebugGroup()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device10.pushErrorScope("internal");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    
    
    query200.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    
    texture201.destroy();
    device40.pushErrorScope("validation");
    
    
    
    device20.pushErrorScope("internal");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder1020.insertDebugMarker("marker");
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    buffer101.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_bundle_encoder200.insertDebugMarker("marker");
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
    render_pass_encoder1020.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    render_pass_encoder1020.insertDebugMarker("marker");
    
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
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
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.insertDebugMarker("marker");
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query202.destroy()
    texture101.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder1020.insertDebugMarker("marker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
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
        occlusionQuerySet: undefined
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer201.destroy()
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.insertDebugMarker("marker");
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder105.insertDebugMarker("mymarker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout202]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder2000.insertDebugMarker("marker")
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
    
    render_pass_encoder1040.insertDebugMarker("marker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture400.destroy();
    render_pass_encoder1040.setPipeline(render_pipeline100);
    render_pass_encoder1050.setStencilReference(1);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1050.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture203.destroy();
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device50.destroy();
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
    
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1040.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    render_pass_encoder1020.insertDebugMarker("marker");
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder2040.setPipeline(compute_pipeline200);
    query200.destroy()
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query101.destroy()
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
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
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    query102.destroy()
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.setPipeline(render_pipeline102);
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    compute_pass_encoder2040.insertDebugMarker("marker")
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    render_bundle_encoder101.setPipeline(render_pipeline101);
    
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout206,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setPipeline(render_pipeline103);
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.setPipeline(render_pipeline100);
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    buffer202.destroy()
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query202.destroy()
    
    buffer106.destroy()
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
    
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    
    
    
    
    query101.destroy()
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query102.destroy()
    render_pass_encoder1040.setStencilReference(1);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    compute_pass_encoder2010.popDebugGroup()
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    compute_pass_encoder2010.setPipeline(compute_pipeline201);
    render_bundle_encoder100.insertDebugMarker("marker");
    query100.destroy()
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query101.destroy()
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout204]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1050.popDebugGroup();
    
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query201
    });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group100);
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2050.setStencilReference(1);
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2050.setPipeline(render_pipeline200);
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.setPipeline(render_pipeline100);
    render_pass_encoder2050.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    
    
    render_pass_encoder1050.pushDebugGroup("group_marker");
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
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query201.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout203]
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    query103.destroy()
    compute_pass_encoder4000.popDebugGroup()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    query102.destroy()
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group101);
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2050.setBindGroup(0, bind_group200);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder2040.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
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
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
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
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group202);
    render_pass_encoder1040.popDebugGroup();
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group102);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2010, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2010, 0);
    compute_pass_encoder2000.end();
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group203);
    device10.queue.submit([command_buffer101, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2040.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    command_encoder204.popDebugGroup()
    const command_buffer204 = command_encoder204.finish();
    const command_buffer200 = command_encoder200.finish();
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder2010.end();
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer200, command_buffer204, ]);
}