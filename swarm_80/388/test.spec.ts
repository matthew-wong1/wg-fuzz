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
    
    const array0 = new Float32Array([0.25, 0.75, -0.25, 0.75, -0.75, 0.25, -0.75, 0.75, 0.75, -0.75, -1.0, 1.0, -0.25, -1.0, -1.0, -1.0, -1.0, -0.75, 0.25, -0.75, 0.5, -1.0, -0.25, 0.0, -0.75, 0.5, -1.0, -1.0, -0.75, 0.25, -0.5, 0.0, 0.5, 0.0, -0.75, -0.75, 0.75, 0.0, 0.5, 0.25, 0.75, 0.0, 0.5, -0.75, 0.75, 0.5, -0.75, 0.75, -0.25, -1.0, 0.5, -0.25, -0.75, 0.0, -1.0, 0.25, -1.0, 1.0, -0.25, 1.0, -0.75, -1.0, 0.5, -0.25, 0.75, -0.25, 0.75, 0.25, 0.0, 0.75, 1.0, -1.0, -0.75, -0.75, 0.75, 0.5, 0.0, -0.25, -1.0, -1.0, 0.25, 0.5, -1.0, 0.5, 1.0, 1.0, 1.0, -0.5, -0.75, -0.25, 0.5, 1.0, -0.25, -0.75, 0.0, 0.5, 0.75, 0.25, 0.75, 1.0, ]);
    
    
    const array1 = new Float32Array([-0.5, 0.25, 1.0, 0.0, -0.5, 0.25, -0.5, -0.25, -0.75, -0.75, -0.5, 0.75, 0.75, -0.5, 0.75, 0.25, 0.5, 0.25, -0.5, -0.75, -1.0, 1.0, 0.25, -1.0, 0.0, -0.25, 0.5, -0.25, 0.75, 0.25, 0.25, 0.25, -0.5, 0.75, -0.25, 1.0, 1.0, -0.75, 0.0, -0.25, 1.0, -0.75, -0.75, -0.25, -0.25, -1.0, -0.75, 0.75, 0.25, 0.75, -0.25, -0.75, 0.25, 0.5, 0.5, 1.0, 0.25, 0.75, 0.75, -0.5, 0.0, 0.0, 0.75, 1.0, 0.0, 0.5, -0.5, 0.75, -1.0, 0.5, 1.0, 1.0, 0.5, -1.0, -1.0, 0.25, -0.75, 0.0, 0.25, 0.75, 0.5, -0.75, -0.5, 1.0, -0.25, -0.75, 0.0, 0.0, 0.25, 0.0, -0.25, -0.75, 0.25, 0.5, 0.25, -0.75, 1.0, -0.75, 0.0, 0.25, ]);
    const array2 = new Float32Array([-0.25, 0.25, -1.0, -0.25, -1.0, 0.75, -0.75, -0.5, 0.5, 0.5, -0.75, -1.0, -0.75, 0.25, -0.75, 0.0, 0.75, -0.75, 1.0, 0.75, -0.25, 0.0, 1.0, -0.75, 0.0, 0.0, -0.25, -1.0, 0.5, -0.5, -0.75, -0.5, -0.5, 1.0, 0.5, -0.75, 0.75, -0.75, -1.0, 0.25, -1.0, 0.0, 0.0, 0.0, -0.75, -0.75, -0.75, 0.25, 0.75, -1.0, -0.75, 0.25, -0.75, 1.0, 0.75, 0.5, 0.5, 1.0, 1.0, 0.0, 1.0, -0.75, 0.0, -0.5, 0.5, -0.25, -0.5, 0.5, 0.25, 0.25, -0.5, 0.75, 0.5, -0.75, 0.0, 0.75, 1.0, 0.5, 0.75, 1.0, 1.0, 1.0, -0.5, -1.0, 0.0, 0.25, -0.75, -0.5, -1.0, 0.5, 0.75, 0.75, -0.5, -0.75, 1.0, 0.0, 1.0, -0.25, -1.0, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.destroy();
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    const array3 = new Float32Array([0.75, -0.75, 0.5, 0.75, -0.75, -0.5, -1.0, -1.0, 0.5, -0.5, 0.5, 0.75, 1.0, 0.25, 0.25, -0.75, 0.0, 0.25, 0.75, 0.25, 0.0, 0.0, -1.0, 1.0, 0.5, 0.0, -0.5, 1.0, 0.0, -1.0, -0.75, -0.25, 0.0, 0.25, 0.25, -0.25, -1.0, -0.25, -0.5, 0.0, -0.5, -0.75, 0.75, -0.75, 0.5, 0.0, 0.75, -0.75, -0.75, 0.75, -0.25, -1.0, 1.0, 1.0, -0.5, -0.75, 0.5, -0.5, 0.0, 0.5, -0.5, 1.0, -0.75, 0.75, -0.75, -0.75, -1.0, -0.25, 0.5, 1.0, -0.5, 1.0, 0.0, 0.0, -0.75, 0.5, -0.75, 0.75, -0.25, -0.25, 0.0, 0.5, 0.25, -0.5, 0.75, -0.25, -1.0, -1.0, -0.75, 0.5, -0.25, 0.25, -0.25, 1.0, 0.5, 0.0, 1.0, -0.25, 0.0, 1.0, ]);
    
    const array4 = new Float32Array([0.0, 0.75, 0.25, -0.5, 0.5, 0.0, 1.0, -0.5, -1.0, -0.5, 0.75, 0.25, 0.75, 0.25, 1.0, -0.5, 0.75, 0.75, -0.25, 1.0, -0.25, -1.0, 1.0, -0.5, 0.25, 0.75, -0.5, 0.5, 0.25, 0.75, 0.75, -0.75, 0.0, -0.25, -1.0, -0.25, 0.5, 0.25, -0.5, -1.0, 1.0, 0.5, -0.25, 1.0, -1.0, -0.25, 1.0, -0.75, 0.0, 1.0, -0.75, 0.25, 0.25, -0.25, -0.75, 0.25, 0.75, -0.25, 0.75, 0.5, 0.25, 0.5, -0.25, 0.5, -0.75, -0.75, -0.25, 0.0, -0.75, -0.75, 0.25, 0.5, -0.5, -0.75, 0.0, 0.25, 1.0, -0.25, -1.0, 0.75, -1.0, -1.0, -0.5, 0.25, -0.5, -0.25, 1.0, 0.75, 0.25, 0.5, 0.25, -0.25, -0.25, 0.5, 1.0, 0.0, -0.75, 0.0, 0.5, 0.75, ]);
    
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array5 = new Float32Array([-0.75, -1.0, 0.0, 0.0, -0.75, -1.0, 0.25, 0.25, 0.0, 0.0, 0.75, -0.5, -0.75, 0.25, -1.0, -0.75, -0.5, 0.5, 0.0, -0.5, -1.0, 0.5, 1.0, -0.25, 1.0, -0.75, -0.25, 0.0, 0.5, 1.0, 0.25, -0.5, -0.5, -0.25, -1.0, -0.25, -0.25, -1.0, -0.75, -0.5, 0.75, -0.75, -0.5, 1.0, 0.25, -0.75, 0.0, -1.0, 0.25, -1.0, 0.0, 0.0, 0.25, -0.25, 0.0, 0.25, 0.25, -0.75, -1.0, 0.0, 0.75, 0.75, -1.0, 0.25, -1.0, -0.25, 0.0, 0.5, -0.75, -0.5, 1.0, 0.5, 0.0, 0.25, 1.0, 0.75, -0.5, -0.5, -0.25, -0.25, 0.75, -0.25, 0.25, 0.25, 0.0, 0.5, 0.75, 0.0, 1.0, 0.0, -1.0, 0.75, 0.5, -0.75, -0.5, 0.5, 0.25, 0.5, -0.25, -0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    buffer100.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.insertDebugMarker("mymarker");
    
    const array6 = new Float32Array([-0.25, -0.25, 0.0, -0.5, -1.0, 0.0, 0.0, -0.75, -1.0, -0.5, -0.25, 0.75, -0.5, -0.25, -0.5, -0.5, 0.0, -0.5, -1.0, -1.0, 0.75, -0.5, 0.0, -0.25, 0.75, -0.5, -0.5, -0.75, 0.75, 0.5, 0.5, -0.75, 1.0, -0.5, 1.0, 0.0, 0.0, 0.5, -0.25, -0.5, -0.75, -0.75, 1.0, 1.0, 1.0, 0.75, -0.25, 0.75, -0.25, 0.0, -0.25, 0.75, 0.5, -1.0, 0.0, 0.25, -0.75, 0.75, -0.75, 0.0, -0.25, 0.5, 0.5, -0.75, 0.5, 0.0, -0.5, -1.0, -0.75, -0.5, -0.25, -0.25, 0.0, 0.75, 0.25, 0.0, 0.25, 1.0, -0.5, -0.25, 0.25, 1.0, 0.75, -0.75, -0.5, -0.5, 0.5, 0.75, 0.5, -0.75, 1.0, 0.75, 0.75, 1.0, -0.75, -1.0, 0.5, 1.0, 0.5, 0.25, ]);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder102.popDebugGroup();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer200.destroy()
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_buffer200 = command_encoder200.finish();
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
    command_encoder100.pushDebugGroup("mygroupmarker")
    const array7 = new Float32Array([0.75, -0.75, 1.0, 1.0, 0.0, -0.25, 0.0, -0.75, 1.0, -0.25, -0.25, -0.25, -0.75, 0.25, 0.0, -0.25, -1.0, -0.5, 0.0, -1.0, 0.75, -1.0, 0.0, 0.25, -0.25, -0.25, 0.0, 0.0, 0.0, 0.5, 0.5, -0.75, 1.0, -0.5, -1.0, 1.0, -0.75, -0.75, 0.25, -0.75, 0.25, -0.25, -0.75, 1.0, -0.75, 0.5, 0.25, -0.5, -0.25, 0.5, 0.5, -1.0, -0.25, -0.25, -1.0, 0.75, 0.25, 0.5, 0.0, 0.0, 0.25, -0.25, 1.0, -1.0, -0.25, 0.25, 0.25, 0.0, 0.25, 0.75, -1.0, 0.75, 0.25, -0.75, 1.0, 0.5, 0.75, 0.25, 1.0, 0.5, -0.75, -0.25, 0.25, 0.5, -0.5, -0.25, -0.25, -0.5, -1.0, 1.0, -0.75, 0.75, 0.25, -0.25, -0.5, -1.0, 0.75, 0.0, -0.5, -0.75, ]);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder201.insertDebugMarker("mymarker");
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    const array8 = new Float32Array([-0.75, 0.25, 1.0, 0.0, 1.0, 0.25, -0.25, -0.25, 0.5, -0.75, 1.0, 0.75, -0.25, -0.5, 0.0, 1.0, -1.0, 1.0, 0.0, -0.25, 1.0, 0.5, 1.0, -0.75, 1.0, -0.75, -1.0, 0.5, -1.0, 0.75, 0.75, -0.75, 0.0, -0.75, 0.5, -0.75, -0.25, 0.25, 0.5, -1.0, 0.25, 0.75, 0.25, -0.75, 0.25, 0.0, 0.0, 0.25, -1.0, 0.75, 0.75, 0.5, 1.0, 0.75, -0.5, 0.75, -0.25, -0.75, 0.0, -1.0, 0.0, 0.0, -0.75, -1.0, 0.0, 1.0, 0.25, 0.75, 0.5, 0.0, -0.75, 0.25, 0.0, -0.5, 0.25, 0.25, 0.75, 0.75, 0.5, -0.75, -0.25, -0.75, 0.5, -0.75, 0.0, -0.75, -0.25, 1.0, -0.5, 1.0, -0.75, 1.0, 0.75, -0.75, -0.25, -0.5, 0.5, -0.5, -0.75, 0.5, ]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
    command_encoder201.pushDebugGroup("mygroupmarker")
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    
    buffer102.destroy()
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    render_bundle_encoder101.popDebugGroup();
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query100.destroy()
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    buffer201.destroy()
    query100.destroy()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
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
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder202.insertDebugMarker("mymarker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    query101.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
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
    buffer101.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    render_bundle_encoder101.popDebugGroup();
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    compute_pass_encoder1010.popDebugGroup()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder100.setPipeline(render_pipeline100);
    compute_pass_encoder2010.popDebugGroup()
    
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer105, 0, array8, 0, array8.length);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder102.setPipeline(render_pipeline102);
    compute_pass_encoder1010.insertDebugMarker("marker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    device20.queue.submit([command_buffer200, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    device10.queue.writeBuffer(buffer105, 0, array7, 0, array7.length);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder101.setPipeline(render_pipeline102);
    render_bundle_encoder101.popDebugGroup();
    
    texture100.destroy();
    
    buffer104.destroy()
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder2010.popDebugGroup()
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
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
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder2010.popDebugGroup()
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.writeBuffer(buffer105, 0, array4, 0, array4.length);
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const array9 = new Float32Array([0.0, -0.5, -0.5, -0.75, -0.5, -0.75, -0.25, 0.0, 0.0, 0.25, 0.75, -0.5, -0.5, 0.75, -1.0, 0.75, 0.75, 0.75, 0.75, 0.0, -0.5, 0.5, 0.25, 0.5, -1.0, 0.5, 0.25, 0.5, 0.75, 0.75, 1.0, -0.25, -0.5, -0.75, -0.5, 0.0, 1.0, 0.25, 0.25, -0.75, 0.75, 0.25, -0.75, -0.5, -0.5, 0.75, -0.5, -0.25, 1.0, -0.75, -0.25, -0.5, -0.75, 0.25, 0.25, 0.25, 0.0, 0.0, -1.0, 1.0, -1.0, -0.25, -0.5, -0.75, 0.0, -0.75, 0.5, 0.5, -1.0, 0.0, -0.25, 0.75, -0.5, 0.25, 0.25, 1.0, -0.5, 0.75, 0.25, -1.0, 1.0, -0.5, -0.75, 0.75, 0.5, -0.25, 0.75, 0.25, 0.25, 1.0, -0.75, 0.0, -0.5, 1.0, -1.0, 1.0, -0.5, -1.0, -0.5, -0.75, ]);
    
    buffer103.destroy()
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const array10 = new Float32Array([-0.5, 1.0, 0.75, 1.0, 0.0, 0.25, -0.75, 0.75, 0.75, -0.75, -0.5, 0.5, -1.0, 0.0, -0.5, -0.75, 0.0, 0.75, 0.0, -0.25, 0.25, -0.75, 0.25, -0.5, -0.5, 0.75, -0.75, 0.75, 0.75, 1.0, -0.25, 0.25, 0.25, 0.75, 0.25, -1.0, 1.0, -0.75, 1.0, 0.5, -0.5, 0.0, 1.0, 0.5, 0.0, 1.0, -0.5, -1.0, 0.0, 0.0, -0.75, -0.75, -1.0, 0.75, 0.5, 0.5, -0.75, 0.0, 1.0, -0.5, 0.5, 0.0, -1.0, -0.75, 1.0, 0.5, 0.5, -0.75, -0.75, -1.0, -0.5, 0.25, -0.5, 0.0, 0.75, -0.25, -1.0, 0.5, 0.0, -0.25, 1.0, 0.5, 0.0, -1.0, 0.75, -0.5, 0.75, -0.25, -0.75, -0.5, -1.0, 0.5, 1.0, -0.75, 0.0, 0.25, -0.5, 0.75, 0.25, -0.5, ]);
    const array11 = new Float32Array([0.5, -0.75, 0.0, 0.75, -0.25, 0.0, 0.75, 0.0, 1.0, 0.0, 0.75, 0.75, -0.75, -0.75, -0.5, -0.25, 0.5, -0.25, 0.5, 0.25, -1.0, -0.75, 0.25, 0.5, 0.75, 0.0, -0.5, -1.0, 0.5, -0.75, 0.5, 0.25, -0.5, 1.0, -0.25, -0.5, -0.75, 0.0, -0.25, 0.0, -0.25, -0.5, -0.25, 0.25, 0.25, 0.5, -1.0, 1.0, -0.75, -0.25, -1.0, 0.5, 1.0, 0.25, -0.75, 0.5, -0.75, 0.25, -0.5, -0.75, -0.25, 0.75, -0.5, -1.0, -0.75, 0.75, -0.75, 0.0, -1.0, -0.75, -0.5, 0.0, -1.0, -0.5, -1.0, -0.75, 0.75, 0.75, -0.75, -0.25, 1.0, 0.5, -0.5, 0.75, 1.0, -1.0, -0.5, 0.75, 0.5, 0.5, -0.25, 0.25, 0.5, -0.5, -0.5, 0.0, -0.25, -0.5, 1.0, -1.0, ]);
    
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    buffer204.destroy()
    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
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
    
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device10.queue.writeBuffer(buffer105, 0, array8, 0, array8.length);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    
    buffer105.destroy()
    buffer202.destroy()
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    query101.destroy()
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    
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
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    texture200.destroy();
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder100.popDebugGroup();
    buffer203.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device20.queue.writeBuffer(buffer207, 0, array11, 0, array11.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    texture101.destroy();
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    device20.queue.writeBuffer(buffer207, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer207, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer207, 0, array8, 0, array8.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    query101.destroy()
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
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
        occlusionQuerySet: query101
    });
    device20.queue.writeBuffer(buffer207, 0, array7, 0, array7.length);
    render_pass_encoder1020.setPipeline(render_pipeline102);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer207, 0, array2, 0, array2.length);
    
    device30.destroy();
    buffer206.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device20.queue.writeBuffer(buffer207, 0, array9, 0, array9.length);
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder2030.executeBundles([])
    
    query201.destroy()
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    device20.queue.writeBuffer(buffer207, 0, array6, 0, array6.length);
    
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    device20.queue.writeBuffer(buffer207, 0, array7, 0, array7.length);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer207, 0, array0, 0, array0.length);
    render_bundle_encoder102.popDebugGroup();
    device10.queue.writeBuffer(buffer106, 0, array4, 0, array4.length);
    
    
    device10.queue.writeBuffer(buffer106, 0, array9, 0, array9.length);
    
    buffer207.destroy()
    {
        await buffer106.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer106.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer106.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2010.popDebugGroup()
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    buffer106.destroy()
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    buffer205.destroy()
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    query102.destroy()
    
    compute_pass_encoder1010.insertDebugMarker("marker")
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
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder2020.insertDebugMarker("marker")
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query102.destroy()
    
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder1020.insertDebugMarker("marker");
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query100.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.popDebugGroup();
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder2030.insertDebugMarker("marker");
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    compute_pass_encoder1000.popDebugGroup()
    query100.destroy()
    
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query102.destroy()
    texture203.destroy();
    query102.destroy()
    query104.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const array12 = new Float32Array([-0.5, 0.5, 0.0, 0.5, 1.0, 0.25, 0.0, -0.5, -0.25, -0.75, -0.25, -1.0, -0.75, -0.75, -0.25, 0.75, -0.75, 0.75, -0.5, -0.75, -0.25, 0.5, 0.25, -1.0, 1.0, -0.5, 1.0, 0.5, -0.25, -0.5, -1.0, 0.5, 1.0, 0.5, 0.0, 0.5, -1.0, 1.0, -0.75, 0.5, -0.25, 0.25, 1.0, -0.5, 1.0, 0.75, 0.0, 1.0, 0.25, 0.25, -1.0, 0.75, -0.25, -0.25, -0.25, 0.25, -0.25, -0.5, 1.0, -0.25, 0.25, 0.0, -0.75, 0.75, -1.0, 0.25, 0.25, 0.0, 1.0, -0.5, 0.0, 0.75, -0.25, 0.25, -1.0, 0.75, 0.0, 0.75, 1.0, -1.0, 0.75, 1.0, 0.0, -0.25, 0.0, 0.25, 1.0, 0.25, 0.0, -1.0, -0.75, 0.5, 0.5, 0.5, 1.0, 0.0, 0.0, -1.0, 0.5, -0.25, ]);
    
    query200.destroy()
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.insertDebugMarker("marker");
    query101.destroy()
    texture202.destroy();
    texture102.destroy();
    query100.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder2020.insertDebugMarker("marker")
    compute_pass_encoder2010.insertDebugMarker("marker")
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer209, 0, array8, 0, array8.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer209, 0, array12, 0, array12.length);
    query105.destroy()
    const array13 = new Float32Array([-0.75, 0.0, 0.5, 0.75, -0.5, -0.5, 0.75, -1.0, 0.25, 0.5, -0.25, 0.25, 0.25, 0.25, 0.25, 0.5, -0.75, 0.5, 0.75, -1.0, 0.0, 0.5, 0.5, 0.5, 0.5, -1.0, -0.25, 0.25, 0.5, 1.0, 0.0, 0.0, -0.75, 1.0, 1.0, 0.25, -0.75, 0.75, 1.0, 0.5, 1.0, 1.0, -1.0, 1.0, 1.0, 0.25, 0.5, 0.5, 0.0, -0.5, 0.5, 0.0, -0.5, 0.0, -0.75, -0.25, 0.5, -1.0, 1.0, 0.75, 0.25, 0.0, 0.75, -0.75, 0.0, -0.25, 0.0, -0.25, -0.25, 0.0, 0.25, -0.5, 0.5, 0.5, -0.5, 0.75, -0.25, -0.5, 0.75, -1.0, 0.5, 0.0, -1.0, 0.25, 0.5, 0.25, -0.5, 0.75, -1.0, -1.0, -0.5, 0.75, 0.5, 0.25, 0.25, 0.25, 0.25, -0.25, 1.0, -1.0, ]);
    device20.queue.writeBuffer(buffer209, 0, array7, 0, array7.length);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_pass_encoder2030.executeBundles([])
    render_bundle_encoder101.popDebugGroup();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.queue.writeTexture({ texture: texture204 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2030.setStencilReference(1);
    compute_pass_encoder2010.insertDebugMarker("marker")
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    device20.queue.writeBuffer(buffer209, 0, array6, 0, array6.length);
    compute_pass_encoder2020.popDebugGroup()
    buffer108.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder2010.popDebugGroup()
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder1020.insertDebugMarker("marker");
    buffer107.destroy()
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    render_pass_encoder1020.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    query201.destroy()
    render_pass_encoder2030.insertDebugMarker("marker");
    query201.destroy()
    
    device20.queue.writeTexture({ texture: texture204 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeBuffer(buffer209, 0, array5, 0, array5.length);
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device20.queue.writeTexture({ texture: texture204 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.insertDebugMarker("marker");
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    device20.queue.writeBuffer(buffer209, 0, array7, 0, array7.length);
    
    const bind_group_layout108 = device10.createBindGroupLayout({ 
        label: "bind_group_layout108",
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
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    device20.queue.writeTexture({ texture: texture204 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    query102.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    device20.queue.writeBuffer(buffer209, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer209, 0, array3, 0, array3.length);
    render_pass_encoder1020.setStencilReference(1);
    
    query106.destroy()
    query101.destroy()
    query104.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device20.queue.writeBuffer(buffer209, 0, array11, 0, array11.length);
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder1010.popDebugGroup()
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    device20.queue.writeTexture({ texture: texture204 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture204 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder202.popDebugGroup();
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
    device20.queue.writeBuffer(buffer209, 0, array4, 0, array4.length);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    buffer2010.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder2030.setStencilReference(1);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
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
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer209, 0, array12, 0, array12.length);
    render_bundle_encoder102.popDebugGroup();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    device20.queue.writeBuffer(buffer209, 0, array2, 0, array2.length);
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.setPipeline(render_pipeline200);
    query102.destroy()
    device20.queue.writeBuffer(buffer209, 0, array1, 0, array1.length);
    device20.queue.writeTexture({ texture: texture204 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder2030.setPipeline(render_pipeline201);
    query103.destroy()
    buffer209.destroy()
    device20.queue.writeTexture({ texture: texture204 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    query100.destroy()
    
    query201.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
}