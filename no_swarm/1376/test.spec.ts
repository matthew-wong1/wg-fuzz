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
    
    const array0 = new Float32Array([-1.0, 1.0, 0.0, -0.25, 0.75, -1.0, 0.25, -0.5, -0.25, 0.75, 0.0, 0.25, 0.75, 0.75, -0.25, 0.5, -0.75, -1.0, 0.25, 1.0, 0.0, 0.25, 0.5, 0.5, 0.0, -0.25, 1.0, -0.5, 0.5, 1.0, 1.0, 0.75, 0.5, 0.25, 0.25, 0.25, 0.25, 0.75, 0.5, 0.25, -0.5, 0.25, -0.25, 0.75, 1.0, 1.0, 0.0, -0.5, 0.25, -0.25, -0.25, 0.0, -0.25, 0.5, 0.5, 0.5, 0.25, 1.0, -1.0, 0.0, -0.5, 0.75, 0.5, 0.25, -1.0, 0.0, -0.25, -0.25, 0.0, 0.5, 0.0, 1.0, -0.25, 0.25, 0.0, 0.0, 0.5, -0.5, 1.0, 0.0, -0.25, -0.75, -1.0, 0.25, -1.0, -0.25, 0.5, -0.75, 1.0, 0.5, 0.5, -0.5, 0.0, -1.0, -0.5, -0.25, 0.75, -0.25, -1.0, 0.25, ]);
    const array1 = new Float32Array([-1.0, -0.25, 0.75, -1.0, -0.75, 0.75, 0.0, 0.25, 0.75, -0.5, 0.0, -1.0, 0.25, -0.75, -1.0, 1.0, 0.75, -0.25, 0.75, -0.5, 0.75, 0.25, -1.0, 1.0, 0.75, -0.75, 0.75, 0.25, 0.0, -1.0, -0.25, -0.75, -0.5, 0.5, -0.75, -0.25, -0.5, 0.5, 0.25, -1.0, 0.0, 0.5, 0.75, 0.0, -0.25, 1.0, -1.0, -1.0, 1.0, 0.25, 0.25, 0.0, -0.75, 0.25, 0.75, 0.25, 0.0, -0.75, -0.5, 0.0, 0.25, 0.75, -0.25, 0.25, 0.0, -0.25, -0.75, 0.5, 0.0, 0.5, 0.75, 0.25, -0.75, 0.5, -0.75, -0.25, 0.25, 1.0, -0.5, 1.0, 1.0, -1.0, 0.5, 0.5, -0.25, -0.5, 0.5, -1.0, 0.25, -0.25, -1.0, 0.5, 1.0, -0.25, -0.25, -1.0, -0.5, 0.25, 0.5, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.pushErrorScope("out-of-memory");
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.destroy();
    const array2 = new Float32Array([-1.0, -0.75, -0.75, 0.0, -0.5, -0.75, 0.25, 0.5, 0.75, -0.5, 0.0, 0.5, -0.75, 0.25, 0.75, -0.25, 0.75, -1.0, -0.75, -1.0, -0.5, 0.5, -0.75, -0.5, -0.75, 1.0, 0.5, -0.25, -0.75, 0.5, 0.0, 0.0, 0.75, -0.75, 0.75, -0.5, -0.25, -1.0, 0.75, 0.75, 0.25, 0.75, 0.25, -0.75, -0.25, -1.0, 1.0, -0.25, -1.0, -0.5, -0.25, 0.75, -0.5, 0.75, -0.25, -0.75, 0.5, -0.75, 1.0, 0.0, -1.0, 1.0, 0.25, -0.25, 0.75, -0.75, 0.75, 1.0, 0.5, 0.25, -0.75, 0.5, 0.75, -1.0, -0.5, 0.75, -0.5, -0.5, -0.25, -0.5, 0.25, -0.5, -1.0, -0.5, 0.75, 0.25, -0.75, 0.5, 0.75, 0.5, 1.0, 0.75, 1.0, 0.75, -0.75, 1.0, 0.25, 0.25, -0.75, -0.5, ]);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    device10.pushErrorScope("validation");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    compute_pass_encoder1000.popDebugGroup()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([-1.0, -1.0, -0.75, 1.0, 0.75, 0.75, 1.0, 0.25, 0.25, -0.5, 0.75, 0.5, -0.75, 1.0, -0.75, 0.5, 1.0, 1.0, 1.0, 0.75, 0.75, -0.5, -1.0, -0.25, 0.0, -1.0, -0.5, -0.5, 0.75, 0.25, 1.0, -0.25, 0.25, 0.25, 0.75, 0.25, 0.0, -0.5, 0.75, 0.75, -0.5, 1.0, 0.5, 0.0, 0.0, -0.25, 1.0, -0.75, -1.0, -0.25, -0.25, 0.75, 0.75, -0.75, -0.75, 0.75, -0.25, -0.75, 0.25, -0.5, -0.75, -0.75, 1.0, 0.75, -0.75, -0.25, 0.5, -1.0, 0.25, 1.0, -0.5, -1.0, 0.0, -0.5, 0.25, 0.75, 0.25, -0.75, 0.25, -0.75, 1.0, -0.25, 0.75, -1.0, 1.0, 0.75, -1.0, -0.5, 0.25, 0.0, 0.25, 0.0, 0.5, 0.0, -1.0, -0.75, 1.0, 0.75, -0.25, -0.5, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const array4 = new Float32Array([-0.75, 1.0, -1.0, 1.0, 0.75, -0.25, -0.75, -0.5, -0.25, 0.75, 0.5, 0.5, 0.25, -0.75, -0.25, 1.0, -0.5, -0.5, 0.0, 0.25, -0.5, -0.25, 0.75, -1.0, -0.75, 0.5, -0.5, -0.75, 1.0, 1.0, 0.75, -0.5, 0.5, 0.25, 0.75, -0.75, -0.75, -0.25, -0.25, 0.75, 0.0, -1.0, -0.75, 0.5, -0.25, 1.0, 0.25, -0.75, 0.0, -0.25, -0.25, -1.0, -0.25, -0.75, -0.25, 0.5, 0.25, 1.0, -0.25, 0.25, -0.75, 0.75, -0.75, 0.75, -0.5, 0.5, 1.0, -0.75, -0.5, -1.0, -0.5, 0.75, -0.25, 1.0, 0.0, 1.0, -0.5, -0.5, -0.5, 0.25, -1.0, -0.25, 0.5, 1.0, 0.5, -0.5, -0.5, -0.75, 0.5, 0.5, -1.0, 0.5, -0.25, -1.0, 1.0, -0.25, 0.75, 0.25, -0.75, 0.25, ]);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    device20.queue.submit([]);
    command_encoder200.insertDebugMarker("mymarker");
    
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    command_encoder200.insertDebugMarker("mymarker");
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder101.popDebugGroup();
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
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    render_bundle_encoder101.setPipeline(render_pipeline100);
    command_encoder200.popDebugGroup()
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    query200.destroy()
    query200.destroy()
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    command_encoder102.insertDebugMarker("mymarker");
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("out-of-memory");
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
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
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    command_encoder200.insertDebugMarker("mymarker");
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
    buffer105.destroy()
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    buffer100.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout202]
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    const compute_pass_encoder1021 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1021" });
    device30.pushErrorScope("validation");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer101.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    
    command_encoder200.pushDebugGroup("mygroupmarker")
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
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout203]
    });
    query200.destroy()
    
    device20.pushErrorScope("out-of-memory");
    
    query100.destroy()
    buffer300.destroy()
    const command_buffer200 = command_encoder200.finish();
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device10.queue.writeBuffer(buffer106, 0, array3, 0, array3.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    query200.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device10.queue.writeBuffer(buffer106, 0, array2, 0, array2.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer106, 0, array1, 0, array1.length);
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder103.clearBuffer(buffer105);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
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
    compute_pass_encoder2010.insertDebugMarker("marker")
    buffer103.destroy()
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    device10.queue.submit([]);
    device10.queue.writeBuffer(buffer106, 0, array4, 0, array4.length);
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    buffer106.destroy()
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder1030.executeBundles([])
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    command_encoder102.copyBufferToBuffer(
        buffer105,
        0,
        buffer106,
        0,
        400
    );
    device20.queue.submit([command_buffer200, ]);
    render_bundle_encoder200.popDebugGroup();
    
    device20.destroy();
    buffer102.destroy()
    render_bundle_encoder100.setVertexBuffer(0, buffer100);
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
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder1031.executeBundles([])
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1031.insertDebugMarker("marker");
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16float",
        dimension: "2d"
    });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder1030.executeBundles([render_bundle_encoder100, ])
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1031.executeBundles([])
    const array5 = new Float32Array([0.75, 0.5, -0.25, 0.75, 0.0, -0.25, -0.25, 0.0, 1.0, 0.25, 0.5, -0.25, -0.75, 0.25, -0.25, 0.75, -0.75, -0.25, -0.5, 0.5, 0.0, 0.5, 0.5, -0.5, -0.5, 1.0, 0.0, -1.0, -0.75, 1.0, 0.0, 0.0, 0.0, 0.5, -0.75, 0.5, 0.25, -0.75, 0.25, -0.25, 0.0, 1.0, -0.75, -0.75, 0.0, 0.25, -0.25, 0.0, 0.75, -1.0, -0.25, -1.0, 0.25, 0.5, 0.0, -0.5, 1.0, 0.25, 0.75, 0.75, 0.25, -1.0, -0.25, -0.25, 0.25, -1.0, 0.5, -0.25, 0.5, -1.0, 0.0, 0.25, 0.75, 0.75, 0.0, -0.25, -0.75, -0.25, -1.0, 0.75, -1.0, -0.25, -1.0, 0.75, 0.5, 0.5, 0.75, -0.75, -0.5, -0.25, -1.0, -0.25, -1.0, -0.5, -0.25, 0.0, 0.0, -0.75, 0.5, -0.5, ]);
    compute_pass_encoder1021.insertDebugMarker("marker")
    
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
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1021.pushDebugGroup("group_marker")
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    texture300.destroy();
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device30.pushErrorScope("out-of-memory");
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.insertDebugMarker("marker")
    command_encoder400.pushDebugGroup("mygroupmarker")
    query100.destroy()
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
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    compute_pass_encoder1021.setPipeline(compute_pipeline101);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1031.endOcclusionQuery()
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.setPipeline(compute_pipeline101);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder300.copyBufferToBuffer(
        buffer301,
        0,
        buffer302,
        0,
        400
    );
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1021.setBindGroup(0, bind_group102);
    query100.destroy()
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_bundle_encoder100.popDebugGroup();
    buffer400.destroy()
    render_pass_encoder1031.setStencilReference(1);
    
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group103);
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16uint",
        dimension: "2d"
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
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.insertDebugMarker("marker");
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    query101.destroy()
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    
    command_encoder300.insertDebugMarker("mymarker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1011, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1011, 0);
    render_bundle_encoder101.setVertexBuffer(0, buffer108);
    
    command_encoder400.insertDebugMarker("mymarker");
    render_bundle_encoder100.drawIndirect(buffer1011, 0);
    render_pass_encoder1031.setPipeline(render_pipeline104);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1012, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1012, 0);
    
    
    command_encoder101.clearBuffer(buffer1011);
    command_encoder400.insertDebugMarker("mymarker");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    render_bundle_encoder101.drawIndirect(buffer103, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1013, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1013, 0);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    query300.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    texture102.destroy();
    render_bundle_encoder102.setPipeline(render_pipeline104);
    compute_pass_encoder1010.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group104);
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
        occlusionQuerySet: query101
    });
    command_encoder401.clearBuffer(buffer400);
    
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1021.insertDebugMarker("marker")
    
    command_encoder103.copyBufferToBuffer(
        buffer105,
        0,
        buffer1011,
        0,
        400
    );
    
    buffer104.destroy()
    device10.queue.writeBuffer(buffer1013, 0, array3, 0, array3.length);
    command_encoder101.copyBufferToBuffer(
        buffer1010,
        0,
        buffer109,
        0,
        400
    );
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer1015,
        0
    )
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.queue.writeBuffer(buffer1012, 0, array2, 0, array2.length);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    buffer1013.destroy()
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1003,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    buffer109.destroy()
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group105);
    device10.queue.writeBuffer(buffer1012, 0, array0, 0, array0.length);
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
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1031.setBindGroup(0, bind_group106);
    command_encoder400.popDebugGroup()
    
    compute_pass_encoder1010.setPipeline(compute_pipeline105);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer1014.destroy()
    device10.queue.writeBuffer(buffer1011, 0, array1, 0, array1.length);
    buffer1010.destroy()
    render_pass_encoder1010.setPipeline(render_pipeline102);
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query101
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    command_encoder101.copyBufferToBuffer(
        buffer1012,
        0,
        buffer1012,
        0,
        400
    );
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer106, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer1011, 0, array0, 0, array0.length);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1011, 0, array5, 0, array5.length);
    render_bundle_encoder300.insertDebugMarker("marker");
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
    buffer1017.destroy()
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    buffer301.destroy()
    const array6 = new Float32Array([0.25, 0.5, -0.5, 0.25, -0.75, 0.5, 0.25, -1.0, -0.5, 1.0, 0.75, -0.25, 0.25, -0.25, 1.0, 0.75, -1.0, 0.5, 0.75, 1.0, -0.5, 0.75, 0.25, -0.25, -0.5, 1.0, 0.0, -0.75, -0.25, -0.5, 1.0, 0.0, -0.75, 0.5, 0.0, 0.0, 1.0, -0.25, -0.5, 0.0, -0.75, -1.0, 0.5, -1.0, -0.5, -1.0, -0.25, 1.0, 0.75, -1.0, -1.0, -0.5, 0.0, 1.0, -0.75, 0.75, -0.5, 0.25, -0.75, 0.0, 0.5, 0.75, -0.5, -0.25, 0.0, -0.5, -0.5, 0.75, -0.5, 0.75, -0.25, 0.25, -0.25, 1.0, 0.25, 0.0, 0.5, 1.0, 0.75, -0.25, 1.0, 0.0, -0.25, 0.5, -0.25, -1.0, -0.25, -0.25, -0.5, 0.0, 1.0, -0.5, 0.5, 0.25, 0.5, 0.0, -0.75, 0.75, 0.25, -1.0, ]);
    query300.destroy()
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    
    {
        await buffer1015.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1015.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1015.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    
    render_pass_encoder1011.setPipeline(render_pipeline107);
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    
    
    device10.queue.writeBuffer(buffer1012, 0, array3, 0, array3.length);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    device10.queue.writeBuffer(buffer1011, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer1012, 0, array5, 0, array5.length);
    render_bundle_encoder101.finish();
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture103 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1020, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1020, 0);
    const array7 = new Float32Array([-0.25, 0.0, 0.25, 0.5, 0.25, 0.75, 0.75, 0.0, 0.0, 0.0, 0.5, 0.25, -1.0, 0.0, -1.0, -0.25, 0.0, -0.75, 1.0, -0.75, 0.5, 0.0, -0.75, 0.25, 1.0, -0.75, -0.75, -0.5, -1.0, 0.5, 1.0, -1.0, -0.75, 0.25, 1.0, -0.75, 1.0, -0.75, -0.75, 0.0, -0.25, -0.5, -1.0, -0.25, 0.0, 0.75, -1.0, 0.75, 1.0, -0.25, 1.0, -0.5, 0.5, 0.0, 0.0, 0.25, -1.0, 0.25, -0.25, -0.25, -0.5, 0.25, 0.25, 1.0, 0.25, 0.5, -0.5, 0.5, -0.5, -0.25, -0.75, 0.25, 1.0, 0.0, -0.25, -0.75, -0.5, -1.0, 0.0, 0.5, 0.5, 0.25, 0.5, 1.0, -0.5, 0.5, -0.5, 0.0, 1.0, 0.25, 0.75, -0.75, 0.0, 0.25, 0.5, -1.0, 1.0, -0.75, 0.25, -0.75, ]);
    buffer107.destroy()
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    
    
    
    command_encoder300.insertDebugMarker("mymarker");
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
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    compute_pass_encoder1021.insertDebugMarker("marker")
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    render_bundle_encoder300.popDebugGroup();
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    query201.destroy()
    device30.pushErrorScope("out-of-memory");
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    render_pass_encoder1011.setBindGroup(0, bind_group107);
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    device10.queue.writeBuffer(buffer1012, 0, array5, 0, array5.length);
    device10.queue.writeTexture({ texture: texture104 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer1012, 0, array3, 0, array3.length);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
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
    device10.queue.writeBuffer(buffer1011, 0, array3, 0, array3.length);
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device10.queue.submit([]);
    texture302.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1011.setVertexBuffer(0, buffer1018);
    
    command_encoder201.insertDebugMarker("mymarker");
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    command_encoder103.clearBuffer(buffer1012);
    command_encoder103.copyBufferToTexture(
        {
            buffer: buffer1020
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device10.queue.writeBuffer(buffer1018, 0, array2, 0, array2.length);
    texture301.destroy();
    
    buffer1021.destroy()
    render_pass_encoder1001.setPipeline(render_pipeline100);
    render_pass_encoder1011.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    texture104.destroy();
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1011.drawIndirect(buffer1020, 0);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder102.copyTextureToBuffer(
        {
            texture: texture100
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1011.drawIndirect(buffer104, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1023, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1023, 0);
    render_bundle_encoder200.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer1012, 0, array2, 0, array2.length);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    
    buffer1016.destroy()
    device10.queue.writeBuffer(buffer1023, 0, array5, 0, array5.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer1011, 0, array3, 0, array3.length);
    
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    render_pass_encoder1000.setPipeline(render_pipeline106);
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1031.setVertexBuffer(0, buffer100);
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1025,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group108);
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1011.end();
    render_pass_encoder1020.setPipeline(render_pipeline102);
    render_pass_encoder1031.drawIndirect(buffer1011, 0);
    render_pass_encoder3000.setPipeline(render_pipeline301);
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group109);
    render_pass_encoder1001.setVertexBuffer(0, buffer1011);
    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1029,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group1010);
    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1031,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1011);
    render_pass_encoder1020.setVertexBuffer(0, buffer1024);
    render_pass_encoder1020.setIndexBuffer(buffer1014, "uint16");
    compute_pass_encoder1021.end();
    render_pass_encoder1001.drawIndirect(buffer108, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1011.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer107, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1032, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1032, 0);
    render_pass_encoder1001.drawIndirect(buffer1032, 0);
    const command_buffer401 = command_encoder401.finish();
    compute_pass_encoder1021.end();
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group300);
    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1034,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group1012);
    render_pass_encoder1010.setVertexBuffer(0, buffer1022);
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
    render_pass_encoder1020.end();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder3000.setVertexBuffer(0, buffer302);
    compute_pass_encoder1000.end();
    render_pass_encoder1031.end();
    render_pass_encoder1020.setIndexBuffer(buffer1010, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder1010.end();
    render_pass_encoder3000.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1001.end();
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: render_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1036,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group1013);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder1000.setVertexBuffer(0, buffer1020);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1020, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1001.drawIndirect(buffer1012, 0);
    render_pass_encoder3000.end();
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    render_pass_encoder1031.end();
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder1020.end();
    compute_pass_encoder1021.popDebugGroup()
    const command_buffer102 = command_encoder102.finish();
    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1038,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1014);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1036, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    compute_pass_encoder1010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder1010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1011, 0);
    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1040,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1015);
    render_pass_encoder1001.drawIndirect(buffer1013, 0);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1020, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1030.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder3000.end();
    render_pass_encoder1000.setIndexBuffer(buffer1036, "uint16");
    device10.queue.submit([command_buffer101, ]);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1020, 0);
    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1042,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1016);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1030.draw(3);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder3000.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    compute_pass_encoder1000.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1043, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1043, 0);
    compute_pass_encoder1010.end();
    device30.queue.submit([command_buffer300, ]);
    device10.queue.submit([]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1011.drawIndirect(buffer1032, 0);
    render_pass_encoder1010.drawIndirect(buffer103, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1023, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1031.end();
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    render_pass_encoder1011.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1031.drawIndirect(buffer1011, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1031.drawIndirect(buffer1038, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1001.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1001.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder1001.drawIndirect(buffer1021, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1023, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1044, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1044, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1031.drawIndirect(buffer1043, 0);
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1001.setIndexBuffer(buffer104, "uint16");
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1045, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1045, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1000.end();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer1044, 0);
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder1000.end();
    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1047,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1017);
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndirect(buffer1045, 0);
    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1049,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1018);
    render_pass_encoder1031.drawIndirect(buffer1023, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1050, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1050, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1030.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1010.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1031.end();
    compute_pass_encoder1000.popDebugGroup()
    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1052,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1019);
    render_pass_encoder1001.drawIndirect(buffer1045, 0);
    render_pass_encoder1030.drawIndirect(buffer1020, 0);
    render_pass_encoder3000.drawIndirect(buffer300, 0);
    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1054,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1020);
    device40.queue.submit([]);
    device10.queue.submit([command_buffer103, ]);
    device30.queue.submit([]);
    render_pass_encoder1011.drawIndexedIndirect(buffer103, 0);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder1021.end();
    compute_pass_encoder1000.popDebugGroup()
    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1056,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1021);
    render_pass_encoder1000.drawIndexedIndirect(buffer1050, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1031.drawIndirect(buffer106, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1030.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder1000.end();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1000.drawIndexed(3);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.drawIndirect(buffer1011, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    render_pass_encoder1000.drawIndirect(buffer1020, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1011.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1020, 0);
    render_pass_encoder1010.drawIndirect(buffer1023, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1057, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1057, 0);
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndirect(buffer1011, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1059,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1022);
    render_pass_encoder1031.drawIndirect(buffer1011, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1036, 0);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1054, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1010.end();
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder1021.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1010, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1057, 0);
    render_pass_encoder1001.drawIndirect(buffer1026, 0);
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1020.drawIndirect(buffer1057, 0);
    render_pass_encoder3000.draw(3);
    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1061,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1023);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer108, 0);
    render_pass_encoder1010.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1023, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1000.end();
    render_pass_encoder3000.drawIndexed(3);
    compute_pass_encoder4000.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1031.drawIndirect(buffer1051, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1057, 0);
    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1063,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1024);
    render_pass_encoder1020.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1011.drawIndirect(buffer1034, 0);
    render_pass_encoder1010.drawIndirect(buffer1050, 0);
    render_pass_encoder1011.drawIndirect(buffer104, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1031.setIndexBuffer(buffer1053, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1026, 0);
    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1065,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1025);
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3000.end();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1020.drawIndirect(buffer1063, 0);
    render_pass_encoder1030.drawIndirect(buffer1046, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1023, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3000.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder1000.drawIndirect(buffer1065, 0);
    render_pass_encoder1031.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1000.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1032, 0);
    render_pass_encoder1031.drawIndirect(buffer1057, 0);
    render_pass_encoder1010.end();
    device10.queue.submit([]);
    render_pass_encoder1030.drawIndirect(buffer1045, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1016, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1031.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder3000.end();
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1001.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1026, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1066, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1066, 0);
    render_pass_encoder1011.drawIndirect(buffer1047, 0);
    compute_pass_encoder1020.end();
    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1068,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1026);
    render_pass_encoder1011.drawIndexedIndirect(buffer1011, 0);
    device10.queue.submit([]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1000.end();
    render_pass_encoder1030.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1010, "uint16");
    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1070,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1027);
    render_pass_encoder1010.drawIndexedIndirect(buffer1068, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1072,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1028);
    render_pass_encoder1031.drawIndexedIndirect(buffer1044, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1073, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1073, 0);
    render_pass_encoder1010.drawIndirect(buffer1032, 0);
    device30.queue.submit([command_buffer300, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1020.drawIndirect(buffer1062, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1020.end();
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1045, 0);
    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1075,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1029);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1020.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1076, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1076, 0);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1014, "uint16");
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1032, 0);
    render_pass_encoder1020.drawIndirect(buffer1020, 0);
    render_pass_encoder3000.drawIndexed(3);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1000.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1031.end();
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1077, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1077, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1078, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1078, 0);
    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1080,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1030);
    render_pass_encoder1011.drawIndirect(buffer1025, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.drawIndexed(3);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexedIndirect(buffer1045, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1050, 0);
    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1082 = device10.createBuffer({
        label: "buffer1082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1031 = device10.createBindGroup({
        label: "bind_group1031",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1082,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1031);
    compute_pass_encoder1010.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1030.drawIndirect(buffer1048, 0);
    render_pass_encoder1011.setIndexBuffer(buffer100, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3000.drawIndirect(buffer303, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1066, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1083 = device10.createBuffer({
        label: "buffer1083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1083, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1083, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1001.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.popDebugGroup();
    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1085 = device10.createBuffer({
        label: "buffer1085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1032 = device10.createBindGroup({
        label: "bind_group1032",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1085,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1032);
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1079, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1075, "uint16");
    compute_pass_encoder1000.end();
    compute_pass_encoder1021.end();
    render_pass_encoder1020.drawIndirect(buffer1023, 0);
    render_pass_encoder3000.end();
    render_pass_encoder1030.end();
    render_pass_encoder1011.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1013, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1086 = device10.createBuffer({
        label: "buffer1086",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1086, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1086, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1000.drawIndirect(buffer1011, 0);
    render_pass_encoder1001.drawIndirect(buffer1031, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1030.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1001.draw(3);
    compute_pass_encoder1000.end();
    render_pass_encoder1011.drawIndirect(buffer1035, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1075, 0);
    compute_pass_encoder1010.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1087 = device10.createBuffer({
        label: "buffer1087",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1087, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1087, 0);
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1043, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1001.drawIndirect(buffer1066, 0);
    render_pass_encoder1020.drawIndirect(buffer1016, 0);
    render_pass_encoder1010.end();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    device30.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    const buffer1088 = device10.createBuffer({
        label: "buffer1088",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1089 = device10.createBuffer({
        label: "buffer1089",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1033 = device10.createBindGroup({
        label: "bind_group1033",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1088,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1089,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1033);
    const buffer1090 = device10.createBuffer({
        label: "buffer1090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1091 = device10.createBuffer({
        label: "buffer1091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1034 = device10.createBindGroup({
        label: "bind_group1034",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1091,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1034);
    render_pass_encoder1031.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1043, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1001.draw(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1045, 0);
    const buffer1092 = device10.createBuffer({
        label: "buffer1092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1093 = device10.createBuffer({
        label: "buffer1093",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1035 = device10.createBindGroup({
        label: "bind_group1035",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1093,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1035);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer1066, 0);
    render_pass_encoder1011.draw(3);
    const buffer1094 = device10.createBuffer({
        label: "buffer1094",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1095 = device10.createBuffer({
        label: "buffer1095",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1036 = device10.createBindGroup({
        label: "bind_group1036",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1094,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1095,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1036);
    render_pass_encoder1010.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1031.drawIndirect(buffer102, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1011.setIndexBuffer(buffer100, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1066, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1096 = device10.createBuffer({
        label: "buffer1096",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1096, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1096, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1001.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1001.drawIndirect(buffer1073, 0);
    render_pass_encoder1011.drawIndirect(buffer1044, 0);
    compute_pass_encoder1021.end();
    render_pass_encoder1030.end();
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1065, 0);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1020.end();
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder1001.setIndexBuffer(buffer1074, "uint16");
    render_pass_encoder1011.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1020.drawIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1030.endOcclusionQuery()
    compute_pass_encoder1021.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1044, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1076, "uint16");
    const buffer1097 = device10.createBuffer({
        label: "buffer1097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1098 = device10.createBuffer({
        label: "buffer1098",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1037 = device10.createBindGroup({
        label: "bind_group1037",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1098,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1037);
    render_pass_encoder1010.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1092, 0);
    compute_pass_encoder1021.end();
    compute_pass_encoder4000.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1000.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder3000.end();
    render_pass_encoder1020.drawIndirect(buffer1012, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1099 = device10.createBuffer({
        label: "buffer1099",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1099, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1099, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10100 = device10.createBuffer({
        label: "buffer10100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10100, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10100, 0);
    render_pass_encoder1031.end();
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1020.end();
    render_pass_encoder1001.end();
    render_pass_encoder1001.drawIndirect(buffer1023, 0);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1000.end();
    render_pass_encoder1011.end();
    render_pass_encoder1031.drawIndirect(buffer1023, 0);
    render_pass_encoder1030.drawIndirect(buffer1050, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1075, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer304, 0);
    render_pass_encoder1020.drawIndirect(buffer1032, 0);
    render_pass_encoder1030.drawIndirect(buffer1077, 0);
    render_pass_encoder1011.drawIndirect(buffer1012, 0);
    render_pass_encoder1010.drawIndirect(buffer1086, 0);
    render_pass_encoder1031.drawIndirect(buffer1095, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1096, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10101 = device10.createBuffer({
        label: "buffer10101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10101, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10101, 0);
    render_pass_encoder1020.drawIndirect(buffer1038, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1095, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1031.drawIndirect(buffer1057, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    render_pass_encoder1011.drawIndirect(buffer1076, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer1020, 0);
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    render_pass_encoder1011.drawIndirect(buffer1087, 0);
    render_pass_encoder1031.drawIndirect(buffer1011, 0);
    render_pass_encoder1011.drawIndirect(buffer1065, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10102 = device10.createBuffer({
        label: "buffer10102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10102, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10102, 0);
    render_pass_encoder1010.drawIndirect(buffer1023, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10103 = device10.createBuffer({
        label: "buffer10103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10103, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10103, 0);
    render_pass_encoder1030.drawIndirect(buffer1077, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1020.drawIndirect(buffer10102, 0);
    render_pass_encoder1031.drawIndirect(buffer1079, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1011.drawIndirect(buffer1078, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1030.drawIndirect(buffer1077, 0);
    render_pass_encoder1020.end();
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1020.setIndexBuffer(buffer10103, "uint16");
    render_pass_encoder3000.draw(3);
    device40.queue.submit([command_buffer400, ]);
    const buffer10104 = device10.createBuffer({
        label: "buffer10104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10105 = device10.createBuffer({
        label: "buffer10105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1038 = device10.createBindGroup({
        label: "bind_group1038",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10105,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1038);
    render_pass_encoder1001.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1011.drawIndirect(buffer10101, 0);
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1011.end();
    render_pass_encoder1011.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.drawIndirect(buffer1099, 0);
}