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
    
    
    const array0 = new Float32Array([1.0, 1.0, 0.0, -1.0, 0.75, 1.0, 0.5, -0.5, 1.0, 0.25, 0.0, 1.0, 0.5, 0.25, 0.5, 1.0, 0.5, 0.25, 0.5, -0.75, -1.0, -0.25, 0.25, -0.5, -0.25, 0.5, 0.0, 1.0, -0.75, 1.0, -1.0, 0.75, 0.75, -0.75, 0.75, -0.5, -0.75, 0.75, -0.75, 0.0, -1.0, 1.0, -0.25, -0.75, -0.75, -0.5, -0.5, 1.0, 0.25, 0.75, 1.0, -0.25, 0.5, -1.0, -0.75, 0.0, 0.25, 1.0, 0.5, 0.75, 1.0, -0.5, -0.75, 0.5, 0.25, 0.5, -0.75, 1.0, -1.0, 1.0, -0.5, -0.5, -0.25, 0.5, 0.75, 0.5, 0.75, 1.0, -0.5, 0.25, 0.5, 0.5, 0.25, -0.75, 1.0, 0.0, 0.25, -0.25, 0.5, 0.5, -1.0, 0.0, 0.0, -0.5, 1.0, 0.0, 0.25, 0.5, 1.0, 0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const array1 = new Float32Array([0.25, 0.5, 0.75, -0.5, 0.5, 1.0, -1.0, -0.5, 0.0, 0.5, 1.0, 0.25, -0.5, -0.5, 0.0, 0.0, -0.75, -0.25, 0.5, 0.5, -1.0, 0.5, 0.75, 0.25, 0.5, 0.75, 0.5, 0.75, -0.25, -0.75, -0.75, 0.25, -0.25, -0.75, -1.0, 0.5, 0.0, -0.75, -0.75, 0.0, -1.0, 0.75, 0.5, -0.75, 1.0, -0.25, 0.5, 0.25, 0.5, 1.0, 0.5, 0.0, 0.0, 0.5, 0.0, 0.75, -0.25, -0.25, -0.25, -0.75, 0.0, -1.0, -0.5, -1.0, 0.25, -0.75, 0.5, 0.75, 0.75, -1.0, 0.0, -0.5, 0.5, 0.75, 0.75, -1.0, 1.0, -0.25, 1.0, -1.0, -1.0, -0.5, 0.0, -0.25, -0.25, -0.25, -1.0, 1.0, 0.0, 0.5, 0.25, -0.75, -1.0, 0.0, 1.0, 0.25, -0.5, -0.25, -0.75, -1.0, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    
    const array2 = new Float32Array([0.25, 0.0, -1.0, -1.0, 0.5, -0.5, 0.25, -0.5, -0.25, 0.75, -1.0, 1.0, 0.5, -0.75, 0.0, -0.5, -1.0, -0.75, -0.25, -0.25, -1.0, -0.5, -1.0, 1.0, -0.5, -0.25, -0.25, -0.75, 1.0, -1.0, -1.0, -0.75, -1.0, -0.75, -0.75, -0.25, -1.0, -0.75, -0.5, -0.25, -0.75, -0.75, -0.25, -0.75, -1.0, -0.25, -1.0, -0.75, -0.75, -0.75, -0.25, -0.5, 0.75, 0.0, 0.5, 0.75, 0.75, -1.0, 0.0, 0.75, 0.25, 0.25, 0.75, -0.5, 0.25, 0.25, 0.5, 0.5, -0.25, 0.25, -0.75, -0.5, 0.0, 1.0, -1.0, -0.75, -1.0, -1.0, 0.75, 1.0, 0.25, 1.0, 0.75, -0.25, 0.5, 0.75, -1.0, -0.75, 1.0, 0.25, 1.0, 1.0, 0.25, 0.25, -0.25, -1.0, -1.0, -0.5, 0.75, -1.0, ]);
    
    
    device00.destroy();
    
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("internal");
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.insertDebugMarker("mymarker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array3 = new Float32Array([-0.5, -0.25, -0.5, 0.25, -0.5, 0.5, 0.75, -0.5, -0.75, 0.25, 0.0, 1.0, -0.25, 0.0, 0.5, 0.5, -0.5, 1.0, -1.0, 0.75, 0.25, 0.5, -0.5, 0.25, 0.5, 0.0, -1.0, -0.25, -0.25, 0.0, -0.5, 1.0, -0.5, 0.25, -0.5, 0.75, 0.5, -0.75, -0.25, -1.0, 0.75, 0.5, 0.5, 0.5, 1.0, 0.75, 0.75, -0.5, -0.75, -0.5, -0.75, -0.75, -1.0, -1.0, -0.5, 0.5, -0.75, -0.25, 0.0, 0.75, 0.25, -1.0, -0.75, 0.75, 1.0, 0.75, 0.25, -1.0, -1.0, -0.75, 0.25, 1.0, 0.75, 0.25, 1.0, 0.25, -0.75, 0.5, -1.0, -1.0, 0.0, 1.0, 1.0, -1.0, 0.75, 0.5, -0.75, -0.25, 1.0, -0.75, 1.0, -0.5, 0.5, 0.25, -0.5, 0.0, -0.75, 0.0, 0.25, -1.0, ]);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
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
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    query100.destroy()
    device10.pushErrorScope("out-of-memory");
    query100.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([-0.75, 0.75, 0.0, -0.75, 0.5, 0.75, -0.75, 1.0, -0.75, -1.0, -0.25, -1.0, -0.25, 0.0, 0.25, -0.25, -0.5, -1.0, 0.5, 0.0, -0.5, 0.5, 0.0, 1.0, 1.0, 0.75, -1.0, -1.0, -0.25, -0.25, 0.0, 0.25, 0.25, 0.25, 0.5, 0.75, 0.75, -1.0, 1.0, -0.75, -1.0, 0.5, 0.0, -1.0, 0.5, -0.75, -1.0, 0.75, -0.25, -1.0, 0.5, -0.5, -1.0, 0.5, -0.5, 0.0, -0.25, 0.0, -0.75, -0.25, -0.25, -0.75, 1.0, 1.0, 1.0, 0.25, -0.5, 0.0, 0.5, -1.0, -0.75, -0.5, -0.5, -0.75, -0.25, 1.0, -0.25, 0.0, 0.25, 0.75, -1.0, -1.0, 1.0, 0.5, -0.5, 0.75, -1.0, -0.5, -0.25, -0.5, 0.25, 1.0, 0.25, 0.75, -0.75, 0.75, -0.5, 0.75, 0.25, 0.25, ]);
    command_encoder101.insertDebugMarker("mymarker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    query100.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    command_encoder102.insertDebugMarker("mymarker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_buffer102 = command_encoder102.finish();
    command_encoder101.clearBuffer(buffer100);
    device10.queue.submit([command_buffer102, ]);
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    render_bundle_encoder100.setPipeline(render_pipeline101);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    
    buffer100.destroy()
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_buffer101 = command_encoder101.finish();
    command_encoder103.pushDebugGroup("mygroupmarker")
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    texture100.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder100.insertDebugMarker("marker");
    query100.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query101.destroy()
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer101.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query101.destroy()
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    buffer102.destroy()
    
    compute_pass_encoder1030.popDebugGroup()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder104.insertDebugMarker("mymarker");
    command_encoder104.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    device20.destroy();
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const command_buffer105 = command_encoder105.finish();
    query100.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    device10.pushErrorScope("validation");
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    const array5 = new Float32Array([0.0, 0.0, -0.5, 0.5, 0.75, 0.0, -0.5, 0.0, 0.75, 1.0, 0.5, -0.5, -1.0, -1.0, -0.75, -1.0, -0.5, 0.0, 0.25, 0.75, 1.0, -0.25, -1.0, 0.25, 0.0, 0.0, -0.25, 1.0, -0.5, -0.5, -0.25, 0.0, -1.0, 0.0, -0.25, 1.0, -0.25, -0.75, -0.5, 0.5, -0.5, 0.75, -0.75, -0.25, -1.0, -0.5, -0.25, -0.75, -0.5, 0.25, 0.75, 1.0, 0.75, -0.25, 1.0, 0.5, -0.75, 0.0, -0.75, 1.0, -1.0, 1.0, -0.25, -0.75, 0.5, -1.0, -0.25, 1.0, -0.75, -0.75, 1.0, -0.75, 0.5, 0.25, 0.0, -1.0, 0.0, -0.5, -0.25, -1.0, -0.75, 0.0, -0.75, -1.0, 0.0, 1.0, -0.75, 0.5, 0.25, -0.25, -1.0, 0.0, 0.5, 0.25, 0.75, 1.0, 1.0, 0.0, 0.25, -1.0, ]);
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
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.setPipeline(render_pipeline100);
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    
    render_bundle_encoder102.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline102);
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    compute_pass_encoder1030.popDebugGroup()
    
    device10.queue.writeBuffer(buffer108, 0, array5, 0, array5.length);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer108.destroy()
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device10.queue.writeBuffer(buffer109, 0, array3, 0, array3.length);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_bundle_encoder102.setBindGroup(0, bind_group102);
    device10.queue.writeBuffer(buffer109, 0, array0, 0, array0.length);
    
    buffer106.destroy()
    
    compute_pass_encoder1040.setPipeline(compute_pipeline102);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer109, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer109, 0, array3, 0, array3.length);
    
    device10.queue.writeBuffer(buffer109, 0, array4, 0, array4.length);
    compute_pass_encoder1030.setPipeline(compute_pipeline100);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer109, 0, array2, 0, array2.length);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.queue.writeBuffer(buffer109, 0, array0, 0, array0.length);
    
    render_pass_encoder1060.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group103);
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer109, 0, array4, 0, array4.length);
    query101.destroy()
    buffer104.destroy()
    
    render_pass_encoder1060.insertDebugMarker("marker");
    buffer109.destroy()
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder107.pushDebugGroup("mygroupmarker")
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
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
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
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
    
    render_pass_encoder1070.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    buffer105.destroy()
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture103.destroy();
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1014, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1014, 0);
    device10.queue.writeBuffer(buffer1014, 0, array3, 0, array3.length);
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture104.destroy();
    render_pass_encoder1070.setPipeline(render_pipeline101);
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
    buffer1013.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder1060.pushDebugGroup("group_marker");
    
    
    render_pass_encoder1060.setPipeline(render_pipeline103);
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1070.setBindGroup(0, bind_group104);
    
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    device10.queue.writeBuffer(buffer1014, 0, array5, 0, array5.length);
    buffer103.destroy()
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    buffer1010.destroy()
    buffer1014.destroy()
    query102.destroy()
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
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group105);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    buffer1019.destroy()
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
    render_bundle_encoder102.popDebugGroup();
    device50.pushErrorScope("internal");
    render_pass_encoder1070.insertDebugMarker("marker");
    
    
    render_pass_encoder1070.insertDebugMarker("marker");
    render_pass_encoder1060.setStencilReference(1);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    query100.destroy()
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    texture102.destroy();
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
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
    query500.destroy()
    query102.destroy()
    
    buffer1015.destroy()
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    
    render_pass_encoder1070.pushDebugGroup("group_marker");
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    texture101.destroy();
    render_pass_encoder1070.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    command_encoder500.insertDebugMarker("mymarker");
    
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
    command_encoder500.insertDebugMarker("mymarker");
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1021, 0);
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const array6 = new Float32Array([0.75, 1.0, -1.0, 0.5, -0.25, 0.0, -0.75, -0.5, -0.5, 0.75, 1.0, 0.5, -0.5, -0.5, -0.25, 1.0, -0.25, -1.0, 0.75, -0.25, -0.5, -0.75, 0.25, 0.0, -0.5, -1.0, -0.25, -0.25, -0.75, 0.25, 0.0, -0.75, -0.5, -0.5, 0.75, -1.0, 1.0, 0.5, -0.25, 0.5, 0.75, -0.5, -0.75, -1.0, -0.75, -0.5, 0.75, 0.5, 0.0, -0.75, -1.0, -1.0, -1.0, 0.0, -0.5, 0.5, 0.5, 1.0, 0.0, 0.5, 0.75, 0.75, 0.75, 0.25, 0.75, -0.75, 0.5, -1.0, 0.5, -1.0, 0.25, -1.0, 0.0, 0.25, 0.5, -0.75, 0.25, -0.5, -1.0, 0.75, 1.0, 0.75, -1.0, -0.75, 0.25, 0.25, -0.5, -0.25, 0.25, 0.0, 0.5, 1.0, -0.75, -0.5, 0.0, 0.75, -0.5, -1.0, 0.5, 0.0, ]);
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    compute_pass_encoder1030.popDebugGroup()
    
    device10.queue.writeBuffer(buffer1021, 0, array1, 0, array1.length);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1070.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1070.setStencilReference(1);
    render_pass_encoder1070.insertDebugMarker("marker");
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1021, 0, array2, 0, array2.length);
    render_pass_encoder1060.setStencilReference(1);
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    
    buffer501.destroy()
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
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer1021, 0, array5, 0, array5.length);
    
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([-0.25, 0.75, 0.0, 0.75, -0.25, 0.5, -0.5, 0.0, 0.25, -0.25, -0.5, 1.0, -0.25, -1.0, -1.0, 0.25, -0.75, 0.5, 0.0, -0.75, -1.0, 0.75, -1.0, 0.25, 1.0, -0.25, -0.25, 0.0, 1.0, -0.5, 0.5, -0.75, 0.5, -0.5, 0.0, -1.0, -0.75, -0.75, 0.5, -0.25, -1.0, -1.0, -0.5, 0.25, 0.75, 0.0, -0.75, -1.0, -0.25, 1.0, 0.5, -0.5, 0.0, 0.75, 0.25, 0.0, 0.75, -1.0, -0.5, 0.5, 1.0, -0.5, -0.5, -0.25, -0.75, 0.25, 0.75, -0.25, -0.75, 0.25, 0.75, -0.5, 0.0, 0.5, -0.25, -0.5, -0.5, 0.25, 0.5, -1.0, 0.75, 0.25, 0.5, 0.25, 0.75, -0.25, 0.0, 0.5, 1.0, 0.75, 0.0, -0.75, 0.5, -1.0, 0.75, 1.0, -1.0, -1.0, -0.5, 0.5, ]);
    
    render_pass_encoder1070.popDebugGroup();
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("validation");
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout103,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer1021, 0, array1, 0, array1.length);
    texture105.destroy();
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    buffer1016.destroy()
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    query101.destroy()
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_pass_encoder1070.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_pass_encoder1070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    render_bundle_encoder102.popDebugGroup();
    device10.queue.writeBuffer(buffer1021, 0, array0, 0, array0.length);
    render_pass_encoder1060.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout105,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    query100.destroy()
    device10.queue.writeBuffer(buffer1021, 0, array4, 0, array4.length);
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout108,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
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
    
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout109,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    buffer1017.destroy()
    
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group106);
    const render_pass_encoder1080 = command_encoder108.beginRenderPass({
        label: "render_pass_encoder1080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    device50.pushErrorScope("out-of-memory");
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer1021, 0, array0, 0, array0.length);
    buffer107.destroy()
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout108,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout108,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    buffer1023.destroy()
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1070.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    buffer1018.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    device10.queue.writeBuffer(buffer1021, 0, array6, 0, array6.length);
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout104,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout106,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1080.setPipeline(render_pipeline104);
    const command_encoder1010 = device10.createCommandEncoder({ label: "command_encoder1010" });
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout107,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout104,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_pass_encoder1070.insertDebugMarker("marker");
    render_pass_encoder1070.pushDebugGroup("group_marker");
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder10100 = command_encoder1010.beginComputePass({ label: "compute_pass_encoder10100" });
    const command_encoder1011 = device10.createCommandEncoder({ label: "command_encoder1011" });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout105,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    query101.destroy()
    query102.destroy()
    
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout106,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    buffer1020.destroy()
    compute_pass_encoder10100.setPipeline(compute_pipeline1026);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1024, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1024, 0);
    const command_buffer1011 = command_encoder1011.finish();
    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1026,
                },
            },
        ],
    });

    render_pass_encoder1060.setBindGroup(0, bind_group107);
    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline1026.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1028,
                },
            },
        ],
    });

    compute_pass_encoder10100.setBindGroup(0, bind_group108);
    render_pass_encoder1060.popDebugGroup();
    const uint32_10100 = new Uint32Array(3);

    uint32_10100[0] = 100;
    uint32_10100[1] = 1;
    uint32_10100[2] = 1;

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1029, 0, uint32_10100, 0, uint32_10100.length);

    compute_pass_encoder10100.dispatchWorkgroupsIndirect(buffer1029, 0);
    compute_pass_encoder1000.end();
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
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1080.setBindGroup(0, bind_group109);
    render_pass_encoder1070.popDebugGroup();
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder10100.end();
    const command_buffer109 = command_encoder109.finish();
    const command_buffer1010 = command_encoder1010.finish();
    compute_pass_encoder1030.end();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1040.end();
    command_encoder103.popDebugGroup()
    const command_buffer103 = command_encoder103.finish();
    command_encoder104.popDebugGroup()
    device10.queue.submit([command_buffer100, command_buffer103, command_buffer109, command_buffer1010, command_buffer1011, ]);
    const command_buffer104 = command_encoder104.finish();
    device10.queue.submit([command_buffer104, ]);
}